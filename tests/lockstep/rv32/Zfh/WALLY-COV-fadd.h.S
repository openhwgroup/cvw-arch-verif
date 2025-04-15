///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fadd.h.S
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
add x23, x20, x31 # perform first operation
fadd.h f24, f13, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x21, x2 # perform first operation
fadd.h f16, f8, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x11, x20 # perform first operation
fadd.h f15, f28, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f5, f31, f10 # perform first operation
fadd.h f10, f5, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f21, f23, f25 # perform first operation
fadd.h f13, f14, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x30, x17 # perform first operation
fadd.h f30, f16, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f15, f17 # perform first operation
fadd.h f8, f20, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f9, f3, f22 # perform first operation
fadd.h f9, f21, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f8, f26 # perform first operation
fadd.h f2, f10, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f15, f30, f26 # perform first operation
fadd.h f30, f27, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f15, f14, f1 # perform first operation
fadd.h f1, f16, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f3, f8 # perform first operation
fadd.h f25, f21, f10 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xdecab615 # load x3 with value 0xdecab615
sw x3, 0(x2) # store 0xdecab615 in memory
flh f0, 0(x2) # load 0xdecab615 from memory into f0
la x2, scratch
li x3, 0xd695781f # load x3 with value 0xd695781f
sw x3, 0(x2) # store 0xd695781f in memory
flh f25, 0(x2) # load 0xd695781f from memory into f25
fadd.h f3, f0, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x6b61f71a # load x3 with value 0x6b61f71a
sw x3, 0(x2) # store 0x6b61f71a in memory
flh f1, 0(x2) # load 0x6b61f71a from memory into f1
la x2, scratch
li x3, 0x16064ea1 # load x3 with value 0x16064ea1
sw x3, 0(x2) # store 0x16064ea1 in memory
flh f20, 0(x2) # load 0x16064ea1 from memory into f20
fadd.h f10, f1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xf958fa9f # load x3 with value 0xf958fa9f
sw x3, 0(x2) # store 0xf958fa9f in memory
flh f2, 0(x2) # load 0xf958fa9f from memory into f2
la x2, scratch
li x3, 0x2666943c # load x3 with value 0x2666943c
sw x3, 0(x2) # store 0x2666943c in memory
flh f26, 0(x2) # load 0x2666943c from memory into f26
fadd.h f24, f2, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xea73977e # load x3 with value 0xea73977e
sw x3, 0(x2) # store 0xea73977e in memory
flh f3, 0(x2) # load 0xea73977e from memory into f3
la x2, scratch
li x3, 0xbcfec62d # load x3 with value 0xbcfec62d
sw x3, 0(x2) # store 0xbcfec62d in memory
flh f26, 0(x2) # load 0xbcfec62d from memory into f26
fadd.h f27, f3, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x941982f0 # load x3 with value 0x941982f0
sw x3, 0(x2) # store 0x941982f0 in memory
flh f4, 0(x2) # load 0x941982f0 from memory into f4
la x2, scratch
li x3, 0x883b516d # load x3 with value 0x883b516d
sw x3, 0(x2) # store 0x883b516d in memory
flh f22, 0(x2) # load 0x883b516d from memory into f22
fadd.h f28, f4, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6a0cbeae # load x3 with value 0x6a0cbeae
sw x3, 0(x2) # store 0x6a0cbeae in memory
flh f5, 0(x2) # load 0x6a0cbeae from memory into f5
la x2, scratch
li x3, 0x6fe283af # load x3 with value 0x6fe283af
sw x3, 0(x2) # store 0x6fe283af in memory
flh f23, 0(x2) # load 0x6fe283af from memory into f23
fadd.h f13, f5, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5d0d225e # load x3 with value 0x5d0d225e
sw x3, 0(x2) # store 0x5d0d225e in memory
flh f6, 0(x2) # load 0x5d0d225e from memory into f6
la x2, scratch
li x3, 0x921a422f # load x3 with value 0x921a422f
sw x3, 0(x2) # store 0x921a422f in memory
flh f3, 0(x2) # load 0x921a422f from memory into f3
fadd.h f20, f6, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2a2af718 # load x3 with value 0x2a2af718
sw x3, 0(x2) # store 0x2a2af718 in memory
flh f7, 0(x2) # load 0x2a2af718 from memory into f7
la x2, scratch
li x3, 0x56c8d281 # load x3 with value 0x56c8d281
sw x3, 0(x2) # store 0x56c8d281 in memory
flh f22, 0(x2) # load 0x56c8d281 from memory into f22
fadd.h f13, f7, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x74d70d8e # load x3 with value 0x74d70d8e
sw x3, 0(x2) # store 0x74d70d8e in memory
flh f8, 0(x2) # load 0x74d70d8e from memory into f8
la x2, scratch
li x3, 0x14cc55da # load x3 with value 0x14cc55da
sw x3, 0(x2) # store 0x14cc55da in memory
flh f21, 0(x2) # load 0x14cc55da from memory into f21
fadd.h f30, f8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xd894f21a # load x3 with value 0xd894f21a
sw x3, 0(x2) # store 0xd894f21a in memory
flh f9, 0(x2) # load 0xd894f21a from memory into f9
la x2, scratch
li x3, 0x797d3dd2 # load x3 with value 0x797d3dd2
sw x3, 0(x2) # store 0x797d3dd2 in memory
flh f25, 0(x2) # load 0x797d3dd2 from memory into f25
fadd.h f28, f9, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x0b457a69 # load x3 with value 0x0b457a69
sw x3, 0(x2) # store 0x0b457a69 in memory
flh f10, 0(x2) # load 0x0b457a69 from memory into f10
la x2, scratch
li x3, 0x09b05d54 # load x3 with value 0x09b05d54
sw x3, 0(x2) # store 0x09b05d54 in memory
flh f30, 0(x2) # load 0x09b05d54 from memory into f30
fadd.h f7, f10, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x2ad9d670 # load x3 with value 0x2ad9d670
sw x3, 0(x2) # store 0x2ad9d670 in memory
flh f11, 0(x2) # load 0x2ad9d670 from memory into f11
la x2, scratch
li x3, 0x4e29abe7 # load x3 with value 0x4e29abe7
sw x3, 0(x2) # store 0x4e29abe7 in memory
flh f26, 0(x2) # load 0x4e29abe7 from memory into f26
fadd.h f2, f11, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x29321cf7 # load x3 with value 0x29321cf7
sw x3, 0(x2) # store 0x29321cf7 in memory
flh f12, 0(x2) # load 0x29321cf7 from memory into f12
la x2, scratch
li x3, 0x522b039f # load x3 with value 0x522b039f
sw x3, 0(x2) # store 0x522b039f in memory
flh f3, 0(x2) # load 0x522b039f from memory into f3
fadd.h f13, f12, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x64cc8870 # load x3 with value 0x64cc8870
sw x3, 0(x2) # store 0x64cc8870 in memory
flh f13, 0(x2) # load 0x64cc8870 from memory into f13
la x2, scratch
li x3, 0x6293efff # load x3 with value 0x6293efff
sw x3, 0(x2) # store 0x6293efff in memory
flh f16, 0(x2) # load 0x6293efff from memory into f16
fadd.h f10, f13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x7c7e50cb # load x3 with value 0x7c7e50cb
sw x3, 0(x2) # store 0x7c7e50cb in memory
flh f14, 0(x2) # load 0x7c7e50cb from memory into f14
la x2, scratch
li x3, 0x8e9d26b7 # load x3 with value 0x8e9d26b7
sw x3, 0(x2) # store 0x8e9d26b7 in memory
flh f31, 0(x2) # load 0x8e9d26b7 from memory into f31
fadd.h f6, f14, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x9a5cb7af # load x3 with value 0x9a5cb7af
sw x3, 0(x2) # store 0x9a5cb7af in memory
flh f15, 0(x2) # load 0x9a5cb7af from memory into f15
la x2, scratch
li x3, 0xa4a5d73f # load x3 with value 0xa4a5d73f
sw x3, 0(x2) # store 0xa4a5d73f in memory
flh f5, 0(x2) # load 0xa4a5d73f from memory into f5
fadd.h f30, f15, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x19cabdae # load x3 with value 0x19cabdae
sw x3, 0(x2) # store 0x19cabdae in memory
flh f16, 0(x2) # load 0x19cabdae from memory into f16
la x2, scratch
li x3, 0xed7b3623 # load x3 with value 0xed7b3623
sw x3, 0(x2) # store 0xed7b3623 in memory
flh f19, 0(x2) # load 0xed7b3623 from memory into f19
fadd.h f18, f16, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xea312fc9 # load x3 with value 0xea312fc9
sw x3, 0(x2) # store 0xea312fc9 in memory
flh f17, 0(x2) # load 0xea312fc9 from memory into f17
la x2, scratch
li x3, 0x0b6efd4c # load x3 with value 0x0b6efd4c
sw x3, 0(x2) # store 0x0b6efd4c in memory
flh f23, 0(x2) # load 0x0b6efd4c from memory into f23
fadd.h f28, f17, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x605fe0d9 # load x3 with value 0x605fe0d9
sw x3, 0(x2) # store 0x605fe0d9 in memory
flh f18, 0(x2) # load 0x605fe0d9 from memory into f18
la x2, scratch
li x3, 0x91c6125f # load x3 with value 0x91c6125f
sw x3, 0(x2) # store 0x91c6125f in memory
flh f11, 0(x2) # load 0x91c6125f from memory into f11
fadd.h f14, f18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x11ae1652 # load x3 with value 0x11ae1652
sw x3, 0(x2) # store 0x11ae1652 in memory
flh f19, 0(x2) # load 0x11ae1652 from memory into f19
la x2, scratch
li x3, 0x59684530 # load x3 with value 0x59684530
sw x3, 0(x2) # store 0x59684530 in memory
flh f25, 0(x2) # load 0x59684530 from memory into f25
fadd.h f22, f19, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xd6cb21b5 # load x3 with value 0xd6cb21b5
sw x3, 0(x2) # store 0xd6cb21b5 in memory
flh f20, 0(x2) # load 0xd6cb21b5 from memory into f20
la x2, scratch
li x3, 0xcb4ffdec # load x3 with value 0xcb4ffdec
sw x3, 0(x2) # store 0xcb4ffdec in memory
flh f30, 0(x2) # load 0xcb4ffdec from memory into f30
fadd.h f2, f20, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x91430e6c # load x3 with value 0x91430e6c
sw x3, 0(x2) # store 0x91430e6c in memory
flh f21, 0(x2) # load 0x91430e6c from memory into f21
la x2, scratch
li x3, 0xf59e6265 # load x3 with value 0xf59e6265
sw x3, 0(x2) # store 0xf59e6265 in memory
flh f14, 0(x2) # load 0xf59e6265 from memory into f14
fadd.h f9, f21, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xe821999f # load x3 with value 0xe821999f
sw x3, 0(x2) # store 0xe821999f in memory
flh f22, 0(x2) # load 0xe821999f from memory into f22
la x2, scratch
li x3, 0x237d5e12 # load x3 with value 0x237d5e12
sw x3, 0(x2) # store 0x237d5e12 in memory
flh f10, 0(x2) # load 0x237d5e12 from memory into f10
fadd.h f14, f22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x7de20444 # load x3 with value 0x7de20444
sw x3, 0(x2) # store 0x7de20444 in memory
flh f23, 0(x2) # load 0x7de20444 from memory into f23
la x2, scratch
li x3, 0x1739cb85 # load x3 with value 0x1739cb85
sw x3, 0(x2) # store 0x1739cb85 in memory
flh f28, 0(x2) # load 0x1739cb85 from memory into f28
fadd.h f25, f23, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x42408557 # load x3 with value 0x42408557
sw x3, 0(x2) # store 0x42408557 in memory
flh f24, 0(x2) # load 0x42408557 from memory into f24
la x2, scratch
li x3, 0x431c828d # load x3 with value 0x431c828d
sw x3, 0(x2) # store 0x431c828d in memory
flh f7, 0(x2) # load 0x431c828d from memory into f7
fadd.h f18, f24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xa762cfd4 # load x3 with value 0xa762cfd4
sw x3, 0(x2) # store 0xa762cfd4 in memory
flh f25, 0(x2) # load 0xa762cfd4 from memory into f25
la x2, scratch
li x3, 0x95c91ed8 # load x3 with value 0x95c91ed8
sw x3, 0(x2) # store 0x95c91ed8 in memory
flh f7, 0(x2) # load 0x95c91ed8 from memory into f7
fadd.h f6, f25, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xbde16ddc # load x3 with value 0xbde16ddc
sw x3, 0(x2) # store 0xbde16ddc in memory
flh f26, 0(x2) # load 0xbde16ddc from memory into f26
la x2, scratch
li x3, 0x03faf589 # load x3 with value 0x03faf589
sw x3, 0(x2) # store 0x03faf589 in memory
flh f14, 0(x2) # load 0x03faf589 from memory into f14
fadd.h f28, f26, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xad6ab6b4 # load x3 with value 0xad6ab6b4
sw x3, 0(x2) # store 0xad6ab6b4 in memory
flh f27, 0(x2) # load 0xad6ab6b4 from memory into f27
la x2, scratch
li x3, 0x8887972c # load x3 with value 0x8887972c
sw x3, 0(x2) # store 0x8887972c in memory
flh f26, 0(x2) # load 0x8887972c from memory into f26
fadd.h f14, f27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x112f3a1c # load x3 with value 0x112f3a1c
sw x3, 0(x2) # store 0x112f3a1c in memory
flh f28, 0(x2) # load 0x112f3a1c from memory into f28
la x2, scratch
li x3, 0x9dba1fcb # load x3 with value 0x9dba1fcb
sw x3, 0(x2) # store 0x9dba1fcb in memory
flh f24, 0(x2) # load 0x9dba1fcb from memory into f24
fadd.h f20, f28, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x857d0cbf # load x3 with value 0x857d0cbf
sw x3, 0(x2) # store 0x857d0cbf in memory
flh f29, 0(x2) # load 0x857d0cbf from memory into f29
la x2, scratch
li x3, 0xdbdafa04 # load x3 with value 0xdbdafa04
sw x3, 0(x2) # store 0xdbdafa04 in memory
flh f21, 0(x2) # load 0xdbdafa04 from memory into f21
fadd.h f30, f29, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x7e375dab # load x3 with value 0x7e375dab
sw x3, 0(x2) # store 0x7e375dab in memory
flh f30, 0(x2) # load 0x7e375dab from memory into f30
la x2, scratch
li x3, 0xc5e54dc4 # load x3 with value 0xc5e54dc4
sw x3, 0(x2) # store 0xc5e54dc4 in memory
flh f31, 0(x2) # load 0xc5e54dc4 from memory into f31
fadd.h f25, f30, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xbbda883b # load x3 with value 0xbbda883b
sw x3, 0(x2) # store 0xbbda883b in memory
flh f31, 0(x2) # load 0xbbda883b from memory into f31
la x2, scratch
li x3, 0x8590887d # load x3 with value 0x8590887d
sw x3, 0(x2) # store 0x8590887d in memory
flh f21, 0(x2) # load 0x8590887d from memory into f21
fadd.h f17, f31, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xaba48b97 # load x3 with value 0xaba48b97
sw x3, 0(x2) # store 0xaba48b97 in memory
flh f7, 0(x2) # load 0xaba48b97 from memory into f7
la x2, scratch
li x3, 0x6e4b092e # load x3 with value 0x6e4b092e
sw x3, 0(x2) # store 0x6e4b092e in memory
flh f0, 0(x2) # load 0x6e4b092e from memory into f0
fadd.h f14, f7, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x5307d01b # load x3 with value 0x5307d01b
sw x3, 0(x2) # store 0x5307d01b in memory
flh f19, 0(x2) # load 0x5307d01b from memory into f19
la x2, scratch
li x3, 0x5247b40f # load x3 with value 0x5247b40f
sw x3, 0(x2) # store 0x5247b40f in memory
flh f1, 0(x2) # load 0x5247b40f from memory into f1
fadd.h f2, f19, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0xc351299e # load x3 with value 0xc351299e
sw x3, 0(x2) # store 0xc351299e in memory
flh f10, 0(x2) # load 0xc351299e from memory into f10
la x2, scratch
li x3, 0xdf6ca674 # load x3 with value 0xdf6ca674
sw x3, 0(x2) # store 0xdf6ca674 in memory
flh f2, 0(x2) # load 0xdf6ca674 from memory into f2
fadd.h f17, f10, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x8c725ef4 # load x3 with value 0x8c725ef4
sw x3, 0(x2) # store 0x8c725ef4 in memory
flh f12, 0(x2) # load 0x8c725ef4 from memory into f12
la x2, scratch
li x3, 0x7c9c41b2 # load x3 with value 0x7c9c41b2
sw x3, 0(x2) # store 0x7c9c41b2 in memory
flh f3, 0(x2) # load 0x7c9c41b2 from memory into f3
fadd.h f28, f12, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3ad944bb # load x3 with value 0x3ad944bb
sw x3, 0(x2) # store 0x3ad944bb in memory
flh f5, 0(x2) # load 0x3ad944bb from memory into f5
la x2, scratch
li x3, 0xd66c82d5 # load x3 with value 0xd66c82d5
sw x3, 0(x2) # store 0xd66c82d5 in memory
flh f4, 0(x2) # load 0xd66c82d5 from memory into f4
fadd.h f13, f5, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
la x2, scratch
li x3, 0xd16eb941 # load x3 with value 0xd16eb941
sw x3, 0(x2) # store 0xd16eb941 in memory
flh f19, 0(x2) # load 0xd16eb941 from memory into f19
la x2, scratch
li x3, 0x37944d97 # load x3 with value 0x37944d97
sw x3, 0(x2) # store 0x37944d97 in memory
flh f5, 0(x2) # load 0x37944d97 from memory into f5
fadd.h f7, f19, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf1727c7b # load x3 with value 0xf1727c7b
sw x3, 0(x2) # store 0xf1727c7b in memory
flh f20, 0(x2) # load 0xf1727c7b from memory into f20
la x2, scratch
li x3, 0xcc4a3e79 # load x3 with value 0xcc4a3e79
sw x3, 0(x2) # store 0xcc4a3e79 in memory
flh f6, 0(x2) # load 0xcc4a3e79 from memory into f6
fadd.h f9, f20, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x68f1ed50 # load x3 with value 0x68f1ed50
sw x3, 0(x2) # store 0x68f1ed50 in memory
flh f28, 0(x2) # load 0x68f1ed50 from memory into f28
la x2, scratch
li x3, 0x6724cdcc # load x3 with value 0x6724cdcc
sw x3, 0(x2) # store 0x6724cdcc in memory
flh f7, 0(x2) # load 0x6724cdcc from memory into f7
fadd.h f10, f28, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x8810106e # load x3 with value 0x8810106e
sw x3, 0(x2) # store 0x8810106e in memory
flh f3, 0(x2) # load 0x8810106e from memory into f3
la x2, scratch
li x3, 0xc5103fd2 # load x3 with value 0xc5103fd2
sw x3, 0(x2) # store 0xc5103fd2 in memory
flh f8, 0(x2) # load 0xc5103fd2 from memory into f8
fadd.h f6, f3, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x6ea464a4 # load x3 with value 0x6ea464a4
sw x3, 0(x2) # store 0x6ea464a4 in memory
flh f7, 0(x2) # load 0x6ea464a4 from memory into f7
la x2, scratch
li x3, 0xa8456648 # load x3 with value 0xa8456648
sw x3, 0(x2) # store 0xa8456648 in memory
flh f9, 0(x2) # load 0xa8456648 from memory into f9
fadd.h f16, f7, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x0d4fc3ed # load x3 with value 0x0d4fc3ed
sw x3, 0(x2) # store 0x0d4fc3ed in memory
flh f31, 0(x2) # load 0x0d4fc3ed from memory into f31
la x2, scratch
li x3, 0x592068cf # load x3 with value 0x592068cf
sw x3, 0(x2) # store 0x592068cf in memory
flh f10, 0(x2) # load 0x592068cf from memory into f10
fadd.h f18, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xbd8cde79 # load x3 with value 0xbd8cde79
sw x3, 0(x2) # store 0xbd8cde79 in memory
flh f29, 0(x2) # load 0xbd8cde79 from memory into f29
la x2, scratch
li x3, 0xdf86f3c2 # load x3 with value 0xdf86f3c2
sw x3, 0(x2) # store 0xdf86f3c2 in memory
flh f11, 0(x2) # load 0xdf86f3c2 from memory into f11
fadd.h f5, f29, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x6bcc4fa9 # load x3 with value 0x6bcc4fa9
sw x3, 0(x2) # store 0x6bcc4fa9 in memory
flh f23, 0(x2) # load 0x6bcc4fa9 from memory into f23
la x2, scratch
li x3, 0x0b5aab93 # load x3 with value 0x0b5aab93
sw x3, 0(x2) # store 0x0b5aab93 in memory
flh f12, 0(x2) # load 0x0b5aab93 from memory into f12
fadd.h f20, f23, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xd07bd0d4 # load x3 with value 0xd07bd0d4
sw x3, 0(x2) # store 0xd07bd0d4 in memory
flh f3, 0(x2) # load 0xd07bd0d4 from memory into f3
la x2, scratch
li x3, 0x53a516be # load x3 with value 0x53a516be
sw x3, 0(x2) # store 0x53a516be in memory
flh f13, 0(x2) # load 0x53a516be from memory into f13
fadd.h f2, f3, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x5b409d5c # load x3 with value 0x5b409d5c
sw x3, 0(x2) # store 0x5b409d5c in memory
flh f9, 0(x2) # load 0x5b409d5c from memory into f9
la x2, scratch
li x3, 0x373cf936 # load x3 with value 0x373cf936
sw x3, 0(x2) # store 0x373cf936 in memory
flh f14, 0(x2) # load 0x373cf936 from memory into f14
fadd.h f10, f9, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xed8ae7a0 # load x3 with value 0xed8ae7a0
sw x3, 0(x2) # store 0xed8ae7a0 in memory
flh f16, 0(x2) # load 0xed8ae7a0 from memory into f16
la x2, scratch
li x3, 0x8d80945d # load x3 with value 0x8d80945d
sw x3, 0(x2) # store 0x8d80945d in memory
flh f15, 0(x2) # load 0x8d80945d from memory into f15
fadd.h f20, f16, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x379d8dbd # load x3 with value 0x379d8dbd
sw x3, 0(x2) # store 0x379d8dbd in memory
flh f14, 0(x2) # load 0x379d8dbd from memory into f14
la x2, scratch
li x3, 0x5a722d32 # load x3 with value 0x5a722d32
sw x3, 0(x2) # store 0x5a722d32 in memory
flh f16, 0(x2) # load 0x5a722d32 from memory into f16
fadd.h f22, f14, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x8102cc62 # load x3 with value 0x8102cc62
sw x3, 0(x2) # store 0x8102cc62 in memory
flh f31, 0(x2) # load 0x8102cc62 from memory into f31
la x2, scratch
li x3, 0xdbf5715a # load x3 with value 0xdbf5715a
sw x3, 0(x2) # store 0xdbf5715a in memory
flh f17, 0(x2) # load 0xdbf5715a from memory into f17
fadd.h f3, f31, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x2af984eb # load x3 with value 0x2af984eb
sw x3, 0(x2) # store 0x2af984eb in memory
flh f5, 0(x2) # load 0x2af984eb from memory into f5
la x2, scratch
li x3, 0x24b3ba42 # load x3 with value 0x24b3ba42
sw x3, 0(x2) # store 0x24b3ba42 in memory
flh f18, 0(x2) # load 0x24b3ba42 from memory into f18
fadd.h f28, f5, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xe70f14df # load x3 with value 0xe70f14df
sw x3, 0(x2) # store 0xe70f14df in memory
flh f30, 0(x2) # load 0xe70f14df from memory into f30
la x2, scratch
li x3, 0x15e6e15a # load x3 with value 0x15e6e15a
sw x3, 0(x2) # store 0x15e6e15a in memory
flh f19, 0(x2) # load 0x15e6e15a from memory into f19
fadd.h f2, f30, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x6d1551a3 # load x3 with value 0x6d1551a3
sw x3, 0(x2) # store 0x6d1551a3 in memory
flh f18, 0(x2) # load 0x6d1551a3 from memory into f18
la x2, scratch
li x3, 0x7027e166 # load x3 with value 0x7027e166
sw x3, 0(x2) # store 0x7027e166 in memory
flh f20, 0(x2) # load 0x7027e166 from memory into f20
fadd.h f3, f18, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x8c1ed566 # load x3 with value 0x8c1ed566
sw x3, 0(x2) # store 0x8c1ed566 in memory
flh f22, 0(x2) # load 0x8c1ed566 from memory into f22
la x2, scratch
li x3, 0xc9972f12 # load x3 with value 0xc9972f12
sw x3, 0(x2) # store 0xc9972f12 in memory
flh f21, 0(x2) # load 0xc9972f12 from memory into f21
fadd.h f11, f22, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x778038cd # load x3 with value 0x778038cd
sw x3, 0(x2) # store 0x778038cd in memory
flh f31, 0(x2) # load 0x778038cd from memory into f31
la x2, scratch
li x3, 0x76085e9d # load x3 with value 0x76085e9d
sw x3, 0(x2) # store 0x76085e9d in memory
flh f22, 0(x2) # load 0x76085e9d from memory into f22
fadd.h f29, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xaaec7407 # load x3 with value 0xaaec7407
sw x3, 0(x2) # store 0xaaec7407 in memory
flh f19, 0(x2) # load 0xaaec7407 from memory into f19
la x2, scratch
li x3, 0xa1fff48a # load x3 with value 0xa1fff48a
sw x3, 0(x2) # store 0xa1fff48a in memory
flh f23, 0(x2) # load 0xa1fff48a from memory into f23
fadd.h f29, f19, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xf426bc2d # load x3 with value 0xf426bc2d
sw x3, 0(x2) # store 0xf426bc2d in memory
flh f30, 0(x2) # load 0xf426bc2d from memory into f30
la x2, scratch
li x3, 0x6c6b703d # load x3 with value 0x6c6b703d
sw x3, 0(x2) # store 0x6c6b703d in memory
flh f24, 0(x2) # load 0x6c6b703d from memory into f24
fadd.h f24, f30, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x9717e5ee # load x3 with value 0x9717e5ee
sw x3, 0(x2) # store 0x9717e5ee in memory
flh f13, 0(x2) # load 0x9717e5ee from memory into f13
la x2, scratch
li x3, 0x8ed5b260 # load x3 with value 0x8ed5b260
sw x3, 0(x2) # store 0x8ed5b260 in memory
flh f25, 0(x2) # load 0x8ed5b260 from memory into f25
fadd.h f27, f13, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0xe6decadf # load x3 with value 0xe6decadf
sw x3, 0(x2) # store 0xe6decadf in memory
flh f13, 0(x2) # load 0xe6decadf from memory into f13
la x2, scratch
li x3, 0x364ec83c # load x3 with value 0x364ec83c
sw x3, 0(x2) # store 0x364ec83c in memory
flh f26, 0(x2) # load 0x364ec83c from memory into f26
fadd.h f18, f13, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xe7d0c7cb # load x3 with value 0xe7d0c7cb
sw x3, 0(x2) # store 0xe7d0c7cb in memory
flh f29, 0(x2) # load 0xe7d0c7cb from memory into f29
la x2, scratch
li x3, 0xf39f1045 # load x3 with value 0xf39f1045
sw x3, 0(x2) # store 0xf39f1045 in memory
flh f27, 0(x2) # load 0xf39f1045 from memory into f27
fadd.h f3, f29, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x11b33187 # load x3 with value 0x11b33187
sw x3, 0(x2) # store 0x11b33187 in memory
flh f27, 0(x2) # load 0x11b33187 from memory into f27
la x2, scratch
li x3, 0x8caba241 # load x3 with value 0x8caba241
sw x3, 0(x2) # store 0x8caba241 in memory
flh f28, 0(x2) # load 0x8caba241 from memory into f28
fadd.h f10, f27, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xa90090b0 # load x3 with value 0xa90090b0
sw x3, 0(x2) # store 0xa90090b0 in memory
flh f28, 0(x2) # load 0xa90090b0 from memory into f28
la x2, scratch
li x3, 0x847928bf # load x3 with value 0x847928bf
sw x3, 0(x2) # store 0x847928bf in memory
flh f29, 0(x2) # load 0x847928bf from memory into f29
fadd.h f14, f28, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x956c9340 # load x3 with value 0x956c9340
sw x3, 0(x2) # store 0x956c9340 in memory
flh f10, 0(x2) # load 0x956c9340 from memory into f10
la x2, scratch
li x3, 0x2944f265 # load x3 with value 0x2944f265
sw x3, 0(x2) # store 0x2944f265 in memory
flh f30, 0(x2) # load 0x2944f265 from memory into f30
fadd.h f9, f10, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x5c25312c # load x3 with value 0x5c25312c
sw x3, 0(x2) # store 0x5c25312c in memory
flh f20, 0(x2) # load 0x5c25312c from memory into f20
la x2, scratch
li x3, 0xb0b0f993 # load x3 with value 0xb0b0f993
sw x3, 0(x2) # store 0xb0b0f993 in memory
flh f31, 0(x2) # load 0xb0b0f993 from memory into f31
fadd.h f31, f20, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0xf64076f5 # load x3 with value 0xf64076f5
sw x3, 0(x2) # store 0xf64076f5 in memory
flh f24, 0(x2) # load 0xf64076f5 from memory into f24
la x2, scratch
li x3, 0x909a2dfd # load x3 with value 0x909a2dfd
sw x3, 0(x2) # store 0x909a2dfd in memory
flh f31, 0(x2) # load 0x909a2dfd from memory into f31
fadd.h f0, f24, f31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0xfda54334 # load x3 with value 0xfda54334
sw x3, 0(x2) # store 0xfda54334 in memory
flh f26, 0(x2) # load 0xfda54334 from memory into f26
la x2, scratch
li x3, 0x96336ce0 # load x3 with value 0x96336ce0
sw x3, 0(x2) # store 0x96336ce0 in memory
flh f2, 0(x2) # load 0x96336ce0 from memory into f2
fadd.h f1, f26, f2 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x9250de0a # load x3 with value 0x9250de0a
sw x3, 0(x2) # store 0x9250de0a in memory
flh f7, 0(x2) # load 0x9250de0a from memory into f7
la x2, scratch
li x3, 0x397ec9ad # load x3 with value 0x397ec9ad
sw x3, 0(x2) # store 0x397ec9ad in memory
flh f11, 0(x2) # load 0x397ec9ad from memory into f11
fadd.h f2, f7, f11 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0xaffcdb72 # load x3 with value 0xaffcdb72
sw x3, 0(x2) # store 0xaffcdb72 in memory
flh f27, 0(x2) # load 0xaffcdb72 from memory into f27
la x2, scratch
li x3, 0x15422b9d # load x3 with value 0x15422b9d
sw x3, 0(x2) # store 0x15422b9d in memory
flh f23, 0(x2) # load 0x15422b9d from memory into f23
fadd.h f3, f27, f23 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc87240e7 # load x3 with value 0xc87240e7
sw x3, 0(x2) # store 0xc87240e7 in memory
flh f9, 0(x2) # load 0xc87240e7 from memory into f9
la x2, scratch
li x3, 0x9e81f8db # load x3 with value 0x9e81f8db
sw x3, 0(x2) # store 0x9e81f8db in memory
flh f15, 0(x2) # load 0x9e81f8db from memory into f15
fadd.h f4, f9, f15 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4624b060 # load x3 with value 0x4624b060
sw x3, 0(x2) # store 0x4624b060 in memory
flh f24, 0(x2) # load 0x4624b060 from memory into f24
la x2, scratch
li x3, 0xdf30d4d1 # load x3 with value 0xdf30d4d1
sw x3, 0(x2) # store 0xdf30d4d1 in memory
flh f19, 0(x2) # load 0xdf30d4d1 from memory into f19
fadd.h f5, f24, f19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa6a0114f # load x3 with value 0xa6a0114f
sw x3, 0(x2) # store 0xa6a0114f in memory
flh f1, 0(x2) # load 0xa6a0114f from memory into f1
la x2, scratch
li x3, 0x4fade770 # load x3 with value 0x4fade770
sw x3, 0(x2) # store 0x4fade770 in memory
flh f17, 0(x2) # load 0x4fade770 from memory into f17
fadd.h f6, f1, f17 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x636a6813 # load x3 with value 0x636a6813
sw x3, 0(x2) # store 0x636a6813 in memory
flh f28, 0(x2) # load 0x636a6813 from memory into f28
la x2, scratch
li x3, 0x8a038b81 # load x3 with value 0x8a038b81
sw x3, 0(x2) # store 0x8a038b81 in memory
flh f10, 0(x2) # load 0x8a038b81 from memory into f10
fadd.h f7, f28, f10 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x02fe767c # load x3 with value 0x02fe767c
sw x3, 0(x2) # store 0x02fe767c in memory
flh f19, 0(x2) # load 0x02fe767c from memory into f19
la x2, scratch
li x3, 0x198a6cb6 # load x3 with value 0x198a6cb6
sw x3, 0(x2) # store 0x198a6cb6 in memory
flh f30, 0(x2) # load 0x198a6cb6 from memory into f30
fadd.h f8, f19, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x1eccc674 # load x3 with value 0x1eccc674
sw x3, 0(x2) # store 0x1eccc674 in memory
flh f13, 0(x2) # load 0x1eccc674 from memory into f13
la x2, scratch
li x3, 0xced78117 # load x3 with value 0xced78117
sw x3, 0(x2) # store 0xced78117 in memory
flh f19, 0(x2) # load 0xced78117 from memory into f19
fadd.h f9, f13, f19 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x0cf5ac35 # load x3 with value 0x0cf5ac35
sw x3, 0(x2) # store 0x0cf5ac35 in memory
flh f22, 0(x2) # load 0x0cf5ac35 from memory into f22
la x2, scratch
li x3, 0x51ab8340 # load x3 with value 0x51ab8340
sw x3, 0(x2) # store 0x51ab8340 in memory
flh f7, 0(x2) # load 0x51ab8340 from memory into f7
fadd.h f10, f22, f7 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xa78d234e # load x3 with value 0xa78d234e
sw x3, 0(x2) # store 0xa78d234e in memory
flh f2, 0(x2) # load 0xa78d234e from memory into f2
la x2, scratch
li x3, 0xbc4a0898 # load x3 with value 0xbc4a0898
sw x3, 0(x2) # store 0xbc4a0898 in memory
flh f29, 0(x2) # load 0xbc4a0898 from memory into f29
fadd.h f11, f2, f29 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xcf463c89 # load x3 with value 0xcf463c89
sw x3, 0(x2) # store 0xcf463c89 in memory
flh f30, 0(x2) # load 0xcf463c89 from memory into f30
la x2, scratch
li x3, 0x60aa616e # load x3 with value 0x60aa616e
sw x3, 0(x2) # store 0x60aa616e in memory
flh f26, 0(x2) # load 0x60aa616e from memory into f26
fadd.h f12, f30, f26 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0xe4b8048f # load x3 with value 0xe4b8048f
sw x3, 0(x2) # store 0xe4b8048f in memory
flh f21, 0(x2) # load 0xe4b8048f from memory into f21
la x2, scratch
li x3, 0xfc8c0c6b # load x3 with value 0xfc8c0c6b
sw x3, 0(x2) # store 0xfc8c0c6b in memory
flh f28, 0(x2) # load 0xfc8c0c6b from memory into f28
fadd.h f13, f21, f28 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x40de2bfd # load x3 with value 0x40de2bfd
sw x3, 0(x2) # store 0x40de2bfd in memory
flh f28, 0(x2) # load 0x40de2bfd from memory into f28
la x2, scratch
li x3, 0x7b677b4a # load x3 with value 0x7b677b4a
sw x3, 0(x2) # store 0x7b677b4a in memory
flh f27, 0(x2) # load 0x7b677b4a from memory into f27
fadd.h f14, f28, f27 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0x4f271291 # load x3 with value 0x4f271291
sw x3, 0(x2) # store 0x4f271291 in memory
flh f10, 0(x2) # load 0x4f271291 from memory into f10
la x2, scratch
li x3, 0xa806482b # load x3 with value 0xa806482b
sw x3, 0(x2) # store 0xa806482b in memory
flh f7, 0(x2) # load 0xa806482b from memory into f7
fadd.h f15, f10, f7 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0xf7fd7c0e # load x3 with value 0xf7fd7c0e
sw x3, 0(x2) # store 0xf7fd7c0e in memory
flh f21, 0(x2) # load 0xf7fd7c0e from memory into f21
la x2, scratch
li x3, 0x1317bcf6 # load x3 with value 0x1317bcf6
sw x3, 0(x2) # store 0x1317bcf6 in memory
flh f10, 0(x2) # load 0x1317bcf6 from memory into f10
fadd.h f16, f21, f10 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xb0863ddd # load x3 with value 0xb0863ddd
sw x3, 0(x2) # store 0xb0863ddd in memory
flh f7, 0(x2) # load 0xb0863ddd from memory into f7
la x2, scratch
li x3, 0xa1150d5c # load x3 with value 0xa1150d5c
sw x3, 0(x2) # store 0xa1150d5c in memory
flh f1, 0(x2) # load 0xa1150d5c from memory into f1
fadd.h f17, f7, f1 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x16f5826b # load x3 with value 0x16f5826b
sw x3, 0(x2) # store 0x16f5826b in memory
flh f29, 0(x2) # load 0x16f5826b from memory into f29
la x2, scratch
li x3, 0x8114dea8 # load x3 with value 0x8114dea8
sw x3, 0(x2) # store 0x8114dea8 in memory
flh f19, 0(x2) # load 0x8114dea8 from memory into f19
fadd.h f18, f29, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x4bf3f219 # load x3 with value 0x4bf3f219
sw x3, 0(x2) # store 0x4bf3f219 in memory
flh f28, 0(x2) # load 0x4bf3f219 from memory into f28
la x2, scratch
li x3, 0x471a76d3 # load x3 with value 0x471a76d3
sw x3, 0(x2) # store 0x471a76d3 in memory
flh f29, 0(x2) # load 0x471a76d3 from memory into f29
fadd.h f19, f28, f29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x2ff7a93c # load x3 with value 0x2ff7a93c
sw x3, 0(x2) # store 0x2ff7a93c in memory
flh f21, 0(x2) # load 0x2ff7a93c from memory into f21
la x2, scratch
li x3, 0x245d80b0 # load x3 with value 0x245d80b0
sw x3, 0(x2) # store 0x245d80b0 in memory
flh f22, 0(x2) # load 0x245d80b0 from memory into f22
fadd.h f20, f21, f22 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xbe46cba1 # load x3 with value 0xbe46cba1
sw x3, 0(x2) # store 0xbe46cba1 in memory
flh f11, 0(x2) # load 0xbe46cba1 from memory into f11
la x2, scratch
li x3, 0x0688e420 # load x3 with value 0x0688e420
sw x3, 0(x2) # store 0x0688e420 in memory
flh f16, 0(x2) # load 0x0688e420 from memory into f16
fadd.h f21, f11, f16 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xaa11bd05 # load x3 with value 0xaa11bd05
sw x3, 0(x2) # store 0xaa11bd05 in memory
flh f26, 0(x2) # load 0xaa11bd05 from memory into f26
la x2, scratch
li x3, 0x85c39a28 # load x3 with value 0x85c39a28
sw x3, 0(x2) # store 0x85c39a28 in memory
flh f8, 0(x2) # load 0x85c39a28 from memory into f8
fadd.h f22, f26, f8 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0xb1954088 # load x3 with value 0xb1954088
sw x3, 0(x2) # store 0xb1954088 in memory
flh f18, 0(x2) # load 0xb1954088 from memory into f18
la x2, scratch
li x3, 0x057f5fe3 # load x3 with value 0x057f5fe3
sw x3, 0(x2) # store 0x057f5fe3 in memory
flh f29, 0(x2) # load 0x057f5fe3 from memory into f29
fadd.h f23, f18, f29 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x361f3437 # load x3 with value 0x361f3437
sw x3, 0(x2) # store 0x361f3437 in memory
flh f17, 0(x2) # load 0x361f3437 from memory into f17
la x2, scratch
li x3, 0x7df61449 # load x3 with value 0x7df61449
sw x3, 0(x2) # store 0x7df61449 in memory
flh f5, 0(x2) # load 0x7df61449 from memory into f5
fadd.h f24, f17, f5 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x9aa23fa4 # load x3 with value 0x9aa23fa4
sw x3, 0(x2) # store 0x9aa23fa4 in memory
flh f20, 0(x2) # load 0x9aa23fa4 from memory into f20
la x2, scratch
li x3, 0xaaad54df # load x3 with value 0xaaad54df
sw x3, 0(x2) # store 0xaaad54df in memory
flh f5, 0(x2) # load 0xaaad54df from memory into f5
fadd.h f25, f20, f5 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x7a3cf06b # load x3 with value 0x7a3cf06b
sw x3, 0(x2) # store 0x7a3cf06b in memory
flh f16, 0(x2) # load 0x7a3cf06b from memory into f16
la x2, scratch
li x3, 0x09ebd2bc # load x3 with value 0x09ebd2bc
sw x3, 0(x2) # store 0x09ebd2bc in memory
flh f18, 0(x2) # load 0x09ebd2bc from memory into f18
fadd.h f26, f16, f18 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xc9a3647d # load x3 with value 0xc9a3647d
sw x3, 0(x2) # store 0xc9a3647d in memory
flh f31, 0(x2) # load 0xc9a3647d from memory into f31
la x2, scratch
li x3, 0x0d793786 # load x3 with value 0x0d793786
sw x3, 0(x2) # store 0x0d793786 in memory
flh f30, 0(x2) # load 0x0d793786 from memory into f30
fadd.h f27, f31, f30 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x8d2a7a85 # load x3 with value 0x8d2a7a85
sw x3, 0(x2) # store 0x8d2a7a85 in memory
flh f5, 0(x2) # load 0x8d2a7a85 from memory into f5
la x2, scratch
li x3, 0x741d82ca # load x3 with value 0x741d82ca
sw x3, 0(x2) # store 0x741d82ca in memory
flh f26, 0(x2) # load 0x741d82ca from memory into f26
fadd.h f28, f5, f26 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x2e8d5712 # load x3 with value 0x2e8d5712
sw x3, 0(x2) # store 0x2e8d5712 in memory
flh f21, 0(x2) # load 0x2e8d5712 from memory into f21
la x2, scratch
li x3, 0xfe240af1 # load x3 with value 0xfe240af1
sw x3, 0(x2) # store 0xfe240af1 in memory
flh f19, 0(x2) # load 0xfe240af1 from memory into f19
fadd.h f29, f21, f19 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x0e19b99b # load x3 with value 0x0e19b99b
sw x3, 0(x2) # store 0x0e19b99b in memory
flh f28, 0(x2) # load 0x0e19b99b from memory into f28
la x2, scratch
li x3, 0x910c9db6 # load x3 with value 0x910c9db6
sw x3, 0(x2) # store 0x910c9db6 in memory
flh f11, 0(x2) # load 0x910c9db6 from memory into f11
fadd.h f30, f28, f11 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x960380bf # load x3 with value 0x960380bf
sw x3, 0(x2) # store 0x960380bf in memory
flh f7, 0(x2) # load 0x960380bf from memory into f7
la x2, scratch
li x3, 0xf7516a15 # load x3 with value 0xf7516a15
sw x3, 0(x2) # store 0xf7516a15 in memory
flh f8, 0(x2) # load 0xf7516a15 from memory into f8
fadd.h f31, f7, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x20b12c11 # load x3 with value 0x20b12c11
sw x3, 0(x2) # store 0x20b12c11 in memory
flh f10, 0(x2) # load 0x20b12c11 from memory into f10
fadd.h f5, f2, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0xa25a4bf7 # load x3 with value 0xa25a4bf7
sw x3, 0(x2) # store 0xa25a4bf7 in memory
flh f31, 0(x2) # load 0xa25a4bf7 from memory into f31
fadd.h f7, f12, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0xf5cf891b # load x3 with value 0xf5cf891b
sw x3, 0(x2) # store 0xf5cf891b in memory
flh f14, 0(x2) # load 0xf5cf891b from memory into f14
fadd.h f26, f5, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
la x2, scratch
li x3, 0x177d671a # load x3 with value 0x177d671a
sw x3, 0(x2) # store 0x177d671a in memory
flh f12, 0(x2) # load 0x177d671a from memory into f12
fadd.h f1, f20, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
la x2, scratch
li x3, 0xd488330b # load x3 with value 0xd488330b
sw x3, 0(x2) # store 0xd488330b in memory
flh f2, 0(x2) # load 0xd488330b from memory into f2
fadd.h f22, f17, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
la x2, scratch
li x3, 0x406d784d # load x3 with value 0x406d784d
sw x3, 0(x2) # store 0x406d784d in memory
flh f22, 0(x2) # load 0x406d784d from memory into f22
fadd.h f3, f10, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x7f0833f5 # load x3 with value 0x7f0833f5
sw x3, 0(x2) # store 0x7f0833f5 in memory
flh f6, 0(x2) # load 0x7f0833f5 from memory into f6
fadd.h f25, f28, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0xd7c35a27 # load x3 with value 0xd7c35a27
sw x3, 0(x2) # store 0xd7c35a27 in memory
flh f6, 0(x2) # load 0xd7c35a27 from memory into f6
fadd.h f3, f15, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x0a08a068 # load x3 with value 0x0a08a068
sw x3, 0(x2) # store 0x0a08a068 in memory
flh f17, 0(x2) # load 0x0a08a068 from memory into f17
fadd.h f23, f29, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
la x2, scratch
li x3, 0x8345a897 # load x3 with value 0x8345a897
sw x3, 0(x2) # store 0x8345a897 in memory
flh f12, 0(x2) # load 0x8345a897 from memory into f12
fadd.h f2, f13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x325c9c79 # load x3 with value 0x325c9c79
sw x3, 0(x2) # store 0x325c9c79 in memory
flh f8, 0(x2) # load 0x325c9c79 from memory into f8
fadd.h f5, f6, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x87f2cca1 # load x3 with value 0x87f2cca1
sw x3, 0(x2) # store 0x87f2cca1 in memory
flh f28, 0(x2) # load 0x87f2cca1 from memory into f28
fadd.h f10, f6, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
la x2, scratch
li x3, 0xd8928580 # load x3 with value 0xd8928580
sw x3, 0(x2) # store 0xd8928580 in memory
flh f20, 0(x2) # load 0xd8928580 from memory into f20
fadd.h f9, f12, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x9d461d7c # load x3 with value 0x9d461d7c
sw x3, 0(x2) # store 0x9d461d7c in memory
flh f22, 0(x2) # load 0x9d461d7c from memory into f22
fadd.h f16, f20, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x81bf1ffd # load x3 with value 0x81bf1ffd
sw x3, 0(x2) # store 0x81bf1ffd in memory
flh f23, 0(x2) # load 0x81bf1ffd from memory into f23
fadd.h f31, f24, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0xf5ccf597 # load x3 with value 0xf5ccf597
sw x3, 0(x2) # store 0xf5ccf597 in memory
flh f3, 0(x2) # load 0xf5ccf597 from memory into f3
fadd.h f22, f29, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0xa0b642dd # load x3 with value 0xa0b642dd
sw x3, 0(x2) # store 0xa0b642dd in memory
flh f19, 0(x2) # load 0xa0b642dd from memory into f19
fadd.h f25, f30, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x1c096f4f # load x3 with value 0x1c096f4f
sw x3, 0(x2) # store 0x1c096f4f in memory
flh f19, 0(x2) # load 0x1c096f4f from memory into f19
fadd.h f22, f17, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x88d7a45e # load x3 with value 0x88d7a45e
sw x3, 0(x2) # store 0x88d7a45e in memory
flh f10, 0(x2) # load 0x88d7a45e from memory into f10
fadd.h f7, f21, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
la x2, scratch
li x3, 0x78d650cc # load x3 with value 0x78d650cc
sw x3, 0(x2) # store 0x78d650cc in memory
flh f30, 0(x2) # load 0x78d650cc from memory into f30
fadd.h f15, f12, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
la x2, scratch
li x3, 0xd48ace1b # load x3 with value 0xd48ace1b
sw x3, 0(x2) # store 0xd48ace1b in memory
flh f19, 0(x2) # load 0xd48ace1b from memory into f19
fadd.h f29, f12, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
la x2, scratch
li x3, 0xd7b09c14 # load x3 with value 0xd7b09c14
sw x3, 0(x2) # store 0xd7b09c14 in memory
flh f6, 0(x2) # load 0xd7b09c14 from memory into f6
fadd.h f25, f29, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0xcf6f7ab1 # load x3 with value 0xcf6f7ab1
sw x3, 0(x2) # store 0xcf6f7ab1 in memory
flh f2, 0(x2) # load 0xcf6f7ab1 from memory into f2
fadd.h f6, f13, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
la x2, scratch
li x3, 0xb2707b33 # load x3 with value 0xb2707b33
sw x3, 0(x2) # store 0xb2707b33 in memory
flh f30, 0(x2) # load 0xb2707b33 from memory into f30
fadd.h f10, f21, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0xd5af90c3 # load x3 with value 0xd5af90c3
sw x3, 0(x2) # store 0xd5af90c3 in memory
flh f5, 0(x2) # load 0xd5af90c3 from memory into f5
fadd.h f7, f24, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
la x2, scratch
li x3, 0x45e62c01 # load x3 with value 0x45e62c01
sw x3, 0(x2) # store 0x45e62c01 in memory
flh f23, 0(x2) # load 0x45e62c01 from memory into f23
fadd.h f11, f19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0xa32c031e # load x3 with value 0xa32c031e
sw x3, 0(x2) # store 0xa32c031e in memory
flh f20, 0(x2) # load 0xa32c031e from memory into f20
fadd.h f21, f26, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0xad68dafe # load x3 with value 0xad68dafe
sw x3, 0(x2) # store 0xad68dafe in memory
flh f17, 0(x2) # load 0xad68dafe from memory into f17
fadd.h f28, f12, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x0cf76be2 # load x3 with value 0x0cf76be2
sw x3, 0(x2) # store 0x0cf76be2 in memory
flh f19, 0(x2) # load 0x0cf76be2 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fadd.h f20, f19, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x8a8caf4a # load x3 with value 0x8a8caf4a
sw x3, 0(x2) # store 0x8a8caf4a in memory
flh f3, 0(x2) # load 0x8a8caf4a from memory into f3
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f27, f3, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x0e49de96 # load x3 with value 0x0e49de96
sw x3, 0(x2) # store 0x0e49de96 in memory
flh f25, 0(x2) # load 0x0e49de96 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fadd.h f14, f25, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x48583774 # load x3 with value 0x48583774
sw x3, 0(x2) # store 0x48583774 in memory
flh f19, 0(x2) # load 0x48583774 from memory into f19
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fadd.h f5, f19, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0xd6347499 # load x3 with value 0xd6347499
sw x3, 0(x2) # store 0xd6347499 in memory
flh f31, 0(x2) # load 0xd6347499 from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fadd.h f2, f31, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0xf10fd027 # load x3 with value 0xf10fd027
sw x3, 0(x2) # store 0xf10fd027 in memory
flh f30, 0(x2) # load 0xf10fd027 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fadd.h f3, f30, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x98dda816 # load x3 with value 0x98dda816
sw x3, 0(x2) # store 0x98dda816 in memory
flh f14, 0(x2) # load 0x98dda816 from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fadd.h f15, f14, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x79e1b941 # load x3 with value 0x79e1b941
sw x3, 0(x2) # store 0x79e1b941 in memory
flh f3, 0(x2) # load 0x79e1b941 from memory into f3
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fadd.h f28, f3, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0x79457b15 # load x3 with value 0x79457b15
sw x3, 0(x2) # store 0x79457b15 in memory
flh f16, 0(x2) # load 0x79457b15 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fadd.h f31, f16, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x0382b989 # load x3 with value 0x0382b989
sw x3, 0(x2) # store 0x0382b989 in memory
flh f24, 0(x2) # load 0x0382b989 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f15, f24, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x6879942f # load x3 with value 0x6879942f
sw x3, 0(x2) # store 0x6879942f in memory
flh f12, 0(x2) # load 0x6879942f from memory into f12
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fadd.h f15, f12, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x30bd8543 # load x3 with value 0x30bd8543
sw x3, 0(x2) # store 0x30bd8543 in memory
flh f21, 0(x2) # load 0x30bd8543 from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fadd.h f3, f21, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0xdfa07bc3 # load x3 with value 0xdfa07bc3
sw x3, 0(x2) # store 0xdfa07bc3 in memory
flh f3, 0(x2) # load 0xdfa07bc3 from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fadd.h f11, f3, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0xd6739f40 # load x3 with value 0xd6739f40
sw x3, 0(x2) # store 0xd6739f40 in memory
flh f18, 0(x2) # load 0xd6739f40 from memory into f18
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fadd.h f9, f18, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0xbea0c68c # load x3 with value 0xbea0c68c
sw x3, 0(x2) # store 0xbea0c68c in memory
flh f10, 0(x2) # load 0xbea0c68c from memory into f10
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fadd.h f25, f10, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x0900508d # load x3 with value 0x0900508d
sw x3, 0(x2) # store 0x0900508d in memory
flh f27, 0(x2) # load 0x0900508d from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fadd.h f8, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x21f1468d # load x3 with value 0x21f1468d
sw x3, 0(x2) # store 0x21f1468d in memory
flh f3, 0(x2) # load 0x21f1468d from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fadd.h f12, f3, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x70fef8ff # load x3 with value 0x70fef8ff
sw x3, 0(x2) # store 0x70fef8ff in memory
flh f7, 0(x2) # load 0x70fef8ff from memory into f7
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fadd.h f28, f7, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0xbc71afe2 # load x3 with value 0xbc71afe2
sw x3, 0(x2) # store 0xbc71afe2 in memory
flh f25, 0(x2) # load 0xbc71afe2 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fadd.h f1, f25, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0x23d16ca6 # load x3 with value 0x23d16ca6
sw x3, 0(x2) # store 0x23d16ca6 in memory
flh f23, 0(x2) # load 0x23d16ca6 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fadd.h f26, f23, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x572fb633 # load x3 with value 0x572fb633
sw x3, 0(x2) # store 0x572fb633 in memory
flh f15, 0(x2) # load 0x572fb633 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fadd.h f7, f15, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x8237efdd # load x3 with value 0x8237efdd
sw x3, 0(x2) # store 0x8237efdd in memory
flh f24, 0(x2) # load 0x8237efdd from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fadd.h f30, f24, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0xc06290bf # load x3 with value 0xc06290bf
sw x3, 0(x2) # store 0xc06290bf in memory
flh f12, 0(x2) # load 0xc06290bf from memory into f12
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fadd.h f28, f12, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0xdbb6691f # load x3 with value 0xdbb6691f
sw x3, 0(x2) # store 0xdbb6691f in memory
flh f29, 0(x2) # load 0xdbb6691f from memory into f29
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fadd.h f5, f29, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0xf9ab57c5 # load x3 with value 0xf9ab57c5
sw x3, 0(x2) # store 0xf9ab57c5 in memory
flh f20, 0(x2) # load 0xf9ab57c5 from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fadd.h f29, f20, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x8159a084 # load x3 with value 0x8159a084
sw x3, 0(x2) # store 0x8159a084 in memory
flh f18, 0(x2) # load 0x8159a084 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fadd.h f25, f18, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x48991c2f # load x3 with value 0x48991c2f
sw x3, 0(x2) # store 0x48991c2f in memory
flh f8, 0(x2) # load 0x48991c2f from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fadd.h f1, f8, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0xb3b64dca # load x3 with value 0xb3b64dca
sw x3, 0(x2) # store 0xb3b64dca in memory
flh f31, 0(x2) # load 0xb3b64dca from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fadd.h f14, f31, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xb605fbb0 # load x3 with value 0xb605fbb0
sw x3, 0(x2) # store 0xb605fbb0 in memory
flh f0, 0(x2) # load 0xb605fbb0 from memory into f0
la x2, scratch
li x3, 0x37449d6b # load x3 with value 0x37449d6b
sw x3, 0(x2) # store 0x37449d6b in memory
flh f16, 0(x2) # load 0x37449d6b from memory into f16
fadd.h f0, f0, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0xdf400d70 # load x3 with value 0xdf400d70
sw x3, 0(x2) # store 0xdf400d70 in memory
flh f1, 0(x2) # load 0xdf400d70 from memory into f1
la x2, scratch
li x3, 0x30031a53 # load x3 with value 0x30031a53
sw x3, 0(x2) # store 0x30031a53 in memory
flh f14, 0(x2) # load 0x30031a53 from memory into f14
fadd.h f1, f1, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x5a295d3c # load x3 with value 0x5a295d3c
sw x3, 0(x2) # store 0x5a295d3c in memory
flh f2, 0(x2) # load 0x5a295d3c from memory into f2
la x2, scratch
li x3, 0xa6e79954 # load x3 with value 0xa6e79954
sw x3, 0(x2) # store 0xa6e79954 in memory
flh f23, 0(x2) # load 0xa6e79954 from memory into f23
fadd.h f2, f2, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0xf87e842f # load x3 with value 0xf87e842f
sw x3, 0(x2) # store 0xf87e842f in memory
flh f3, 0(x2) # load 0xf87e842f from memory into f3
la x2, scratch
li x3, 0x3dba3ed2 # load x3 with value 0x3dba3ed2
sw x3, 0(x2) # store 0x3dba3ed2 in memory
flh f18, 0(x2) # load 0x3dba3ed2 from memory into f18
fadd.h f3, f3, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5015a778 # load x3 with value 0x5015a778
sw x3, 0(x2) # store 0x5015a778 in memory
flh f4, 0(x2) # load 0x5015a778 from memory into f4
la x2, scratch
li x3, 0x32e03396 # load x3 with value 0x32e03396
sw x3, 0(x2) # store 0x32e03396 in memory
flh f5, 0(x2) # load 0x32e03396 from memory into f5
fadd.h f4, f4, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
la x2, scratch
li x3, 0x9edee3f3 # load x3 with value 0x9edee3f3
sw x3, 0(x2) # store 0x9edee3f3 in memory
flh f5, 0(x2) # load 0x9edee3f3 from memory into f5
la x2, scratch
li x3, 0x8ae64c18 # load x3 with value 0x8ae64c18
sw x3, 0(x2) # store 0x8ae64c18 in memory
flh f7, 0(x2) # load 0x8ae64c18 from memory into f7
fadd.h f5, f5, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9aeb10f9 # load x3 with value 0x9aeb10f9
sw x3, 0(x2) # store 0x9aeb10f9 in memory
flh f6, 0(x2) # load 0x9aeb10f9 from memory into f6
la x2, scratch
li x3, 0x10778fff # load x3 with value 0x10778fff
sw x3, 0(x2) # store 0x10778fff in memory
flh f4, 0(x2) # load 0x10778fff from memory into f4
fadd.h f6, f6, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf5abeced # load x3 with value 0xf5abeced
sw x3, 0(x2) # store 0xf5abeced in memory
flh f7, 0(x2) # load 0xf5abeced from memory into f7
la x2, scratch
li x3, 0x8a13b3ce # load x3 with value 0x8a13b3ce
sw x3, 0(x2) # store 0x8a13b3ce in memory
flh f30, 0(x2) # load 0x8a13b3ce from memory into f30
fadd.h f7, f7, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x60dce6d6 # load x3 with value 0x60dce6d6
sw x3, 0(x2) # store 0x60dce6d6 in memory
flh f8, 0(x2) # load 0x60dce6d6 from memory into f8
la x2, scratch
li x3, 0x564f5649 # load x3 with value 0x564f5649
sw x3, 0(x2) # store 0x564f5649 in memory
flh f1, 0(x2) # load 0x564f5649 from memory into f1
fadd.h f8, f8, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x413c3b17 # load x3 with value 0x413c3b17
sw x3, 0(x2) # store 0x413c3b17 in memory
flh f9, 0(x2) # load 0x413c3b17 from memory into f9
la x2, scratch
li x3, 0x0e857bbb # load x3 with value 0x0e857bbb
sw x3, 0(x2) # store 0x0e857bbb in memory
flh f14, 0(x2) # load 0x0e857bbb from memory into f14
fadd.h f9, f9, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xc4ca6e6e # load x3 with value 0xc4ca6e6e
sw x3, 0(x2) # store 0xc4ca6e6e in memory
flh f10, 0(x2) # load 0xc4ca6e6e from memory into f10
la x2, scratch
li x3, 0x27bad9a3 # load x3 with value 0x27bad9a3
sw x3, 0(x2) # store 0x27bad9a3 in memory
flh f1, 0(x2) # load 0x27bad9a3 from memory into f1
fadd.h f10, f10, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0xff78b0b7 # load x3 with value 0xff78b0b7
sw x3, 0(x2) # store 0xff78b0b7 in memory
flh f11, 0(x2) # load 0xff78b0b7 from memory into f11
la x2, scratch
li x3, 0xec288bb0 # load x3 with value 0xec288bb0
sw x3, 0(x2) # store 0xec288bb0 in memory
flh f5, 0(x2) # load 0xec288bb0 from memory into f5
fadd.h f11, f11, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xd01743d0 # load x3 with value 0xd01743d0
sw x3, 0(x2) # store 0xd01743d0 in memory
flh f12, 0(x2) # load 0xd01743d0 from memory into f12
la x2, scratch
li x3, 0x050ea1d8 # load x3 with value 0x050ea1d8
sw x3, 0(x2) # store 0x050ea1d8 in memory
flh f7, 0(x2) # load 0x050ea1d8 from memory into f7
fadd.h f12, f12, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xff4ef1a6 # load x3 with value 0xff4ef1a6
sw x3, 0(x2) # store 0xff4ef1a6 in memory
flh f13, 0(x2) # load 0xff4ef1a6 from memory into f13
la x2, scratch
li x3, 0x0199cc19 # load x3 with value 0x0199cc19
sw x3, 0(x2) # store 0x0199cc19 in memory
flh f12, 0(x2) # load 0x0199cc19 from memory into f12
fadd.h f13, f13, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x1f5ea791 # load x3 with value 0x1f5ea791
sw x3, 0(x2) # store 0x1f5ea791 in memory
flh f14, 0(x2) # load 0x1f5ea791 from memory into f14
la x2, scratch
li x3, 0xb4db2f3e # load x3 with value 0xb4db2f3e
sw x3, 0(x2) # store 0xb4db2f3e in memory
flh f1, 0(x2) # load 0xb4db2f3e from memory into f1
fadd.h f14, f14, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0xf034dd0d # load x3 with value 0xf034dd0d
sw x3, 0(x2) # store 0xf034dd0d in memory
flh f15, 0(x2) # load 0xf034dd0d from memory into f15
la x2, scratch
li x3, 0xf68241d7 # load x3 with value 0xf68241d7
sw x3, 0(x2) # store 0xf68241d7 in memory
flh f27, 0(x2) # load 0xf68241d7 from memory into f27
fadd.h f15, f15, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xdebb5e17 # load x3 with value 0xdebb5e17
sw x3, 0(x2) # store 0xdebb5e17 in memory
flh f16, 0(x2) # load 0xdebb5e17 from memory into f16
la x2, scratch
li x3, 0x9f91aa2a # load x3 with value 0x9f91aa2a
sw x3, 0(x2) # store 0x9f91aa2a in memory
flh f30, 0(x2) # load 0x9f91aa2a from memory into f30
fadd.h f16, f16, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x3ee2f3f3 # load x3 with value 0x3ee2f3f3
sw x3, 0(x2) # store 0x3ee2f3f3 in memory
flh f17, 0(x2) # load 0x3ee2f3f3 from memory into f17
la x2, scratch
li x3, 0x3899026b # load x3 with value 0x3899026b
sw x3, 0(x2) # store 0x3899026b in memory
flh f25, 0(x2) # load 0x3899026b from memory into f25
fadd.h f17, f17, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0xe4f2f5b2 # load x3 with value 0xe4f2f5b2
sw x3, 0(x2) # store 0xe4f2f5b2 in memory
flh f18, 0(x2) # load 0xe4f2f5b2 from memory into f18
la x2, scratch
li x3, 0xb0bde551 # load x3 with value 0xb0bde551
sw x3, 0(x2) # store 0xb0bde551 in memory
flh f29, 0(x2) # load 0xb0bde551 from memory into f29
fadd.h f18, f18, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0xc99d5d7d # load x3 with value 0xc99d5d7d
sw x3, 0(x2) # store 0xc99d5d7d in memory
flh f19, 0(x2) # load 0xc99d5d7d from memory into f19
la x2, scratch
li x3, 0x6edd838d # load x3 with value 0x6edd838d
sw x3, 0(x2) # store 0x6edd838d in memory
flh f13, 0(x2) # load 0x6edd838d from memory into f13
fadd.h f19, f19, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x60a10638 # load x3 with value 0x60a10638
sw x3, 0(x2) # store 0x60a10638 in memory
flh f20, 0(x2) # load 0x60a10638 from memory into f20
la x2, scratch
li x3, 0x4373796a # load x3 with value 0x4373796a
sw x3, 0(x2) # store 0x4373796a in memory
flh f29, 0(x2) # load 0x4373796a from memory into f29
fadd.h f20, f20, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x4478a7fe # load x3 with value 0x4478a7fe
sw x3, 0(x2) # store 0x4478a7fe in memory
flh f21, 0(x2) # load 0x4478a7fe from memory into f21
la x2, scratch
li x3, 0x77df22da # load x3 with value 0x77df22da
sw x3, 0(x2) # store 0x77df22da in memory
flh f6, 0(x2) # load 0x77df22da from memory into f6
fadd.h f21, f21, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0xba3656c6 # load x3 with value 0xba3656c6
sw x3, 0(x2) # store 0xba3656c6 in memory
flh f22, 0(x2) # load 0xba3656c6 from memory into f22
la x2, scratch
li x3, 0x8a2fce82 # load x3 with value 0x8a2fce82
sw x3, 0(x2) # store 0x8a2fce82 in memory
flh f12, 0(x2) # load 0x8a2fce82 from memory into f12
fadd.h f22, f22, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x71605ba2 # load x3 with value 0x71605ba2
sw x3, 0(x2) # store 0x71605ba2 in memory
flh f23, 0(x2) # load 0x71605ba2 from memory into f23
la x2, scratch
li x3, 0xc51b5d46 # load x3 with value 0xc51b5d46
sw x3, 0(x2) # store 0xc51b5d46 in memory
flh f21, 0(x2) # load 0xc51b5d46 from memory into f21
fadd.h f23, f23, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x8ae49355 # load x3 with value 0x8ae49355
sw x3, 0(x2) # store 0x8ae49355 in memory
flh f24, 0(x2) # load 0x8ae49355 from memory into f24
la x2, scratch
li x3, 0x2a2d5b8e # load x3 with value 0x2a2d5b8e
sw x3, 0(x2) # store 0x2a2d5b8e in memory
flh f17, 0(x2) # load 0x2a2d5b8e from memory into f17
fadd.h f24, f24, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x6707f048 # load x3 with value 0x6707f048
sw x3, 0(x2) # store 0x6707f048 in memory
flh f25, 0(x2) # load 0x6707f048 from memory into f25
la x2, scratch
li x3, 0x4d042a25 # load x3 with value 0x4d042a25
sw x3, 0(x2) # store 0x4d042a25 in memory
flh f12, 0(x2) # load 0x4d042a25 from memory into f12
fadd.h f25, f25, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x8bd4b40b # load x3 with value 0x8bd4b40b
sw x3, 0(x2) # store 0x8bd4b40b in memory
flh f26, 0(x2) # load 0x8bd4b40b from memory into f26
la x2, scratch
li x3, 0xb75cec36 # load x3 with value 0xb75cec36
sw x3, 0(x2) # store 0xb75cec36 in memory
flh f24, 0(x2) # load 0xb75cec36 from memory into f24
fadd.h f26, f26, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x9ccd701d # load x3 with value 0x9ccd701d
sw x3, 0(x2) # store 0x9ccd701d in memory
flh f27, 0(x2) # load 0x9ccd701d from memory into f27
la x2, scratch
li x3, 0xe741827d # load x3 with value 0xe741827d
sw x3, 0(x2) # store 0xe741827d in memory
flh f20, 0(x2) # load 0xe741827d from memory into f20
fadd.h f27, f27, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x19d84dbc # load x3 with value 0x19d84dbc
sw x3, 0(x2) # store 0x19d84dbc in memory
flh f28, 0(x2) # load 0x19d84dbc from memory into f28
la x2, scratch
li x3, 0xd5724700 # load x3 with value 0xd5724700
sw x3, 0(x2) # store 0xd5724700 in memory
flh f23, 0(x2) # load 0xd5724700 from memory into f23
fadd.h f28, f28, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0x8897f256 # load x3 with value 0x8897f256
sw x3, 0(x2) # store 0x8897f256 in memory
flh f29, 0(x2) # load 0x8897f256 from memory into f29
la x2, scratch
li x3, 0xbc0ec7e3 # load x3 with value 0xbc0ec7e3
sw x3, 0(x2) # store 0xbc0ec7e3 in memory
flh f26, 0(x2) # load 0xbc0ec7e3 from memory into f26
fadd.h f29, f29, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xddd35d1d # load x3 with value 0xddd35d1d
sw x3, 0(x2) # store 0xddd35d1d in memory
flh f30, 0(x2) # load 0xddd35d1d from memory into f30
la x2, scratch
li x3, 0xd0350400 # load x3 with value 0xd0350400
sw x3, 0(x2) # store 0xd0350400 in memory
flh f27, 0(x2) # load 0xd0350400 from memory into f27
fadd.h f30, f30, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x463bd22b # load x3 with value 0x463bd22b
sw x3, 0(x2) # store 0x463bd22b in memory
flh f31, 0(x2) # load 0x463bd22b from memory into f31
la x2, scratch
li x3, 0xecdd3c2e # load x3 with value 0xecdd3c2e
sw x3, 0(x2) # store 0xecdd3c2e in memory
flh f21, 0(x2) # load 0xecdd3c2e from memory into f21
fadd.h f31, f31, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0xdaa6b24b # load x3 with value 0xdaa6b24b
sw x3, 0(x2) # store 0xdaa6b24b in memory
flh f5, 0(x2) # load 0xdaa6b24b from memory into f5
la x2, scratch
li x3, 0xafbeb4ce # load x3 with value 0xafbeb4ce
sw x3, 0(x2) # store 0xafbeb4ce in memory
flh f0, 0(x2) # load 0xafbeb4ce from memory into f0
fadd.h f0, f5, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xf752ea62 # load x3 with value 0xf752ea62
sw x3, 0(x2) # store 0xf752ea62 in memory
flh f11, 0(x2) # load 0xf752ea62 from memory into f11
la x2, scratch
li x3, 0xcb4b792b # load x3 with value 0xcb4b792b
sw x3, 0(x2) # store 0xcb4b792b in memory
flh f1, 0(x2) # load 0xcb4b792b from memory into f1
fadd.h f1, f11, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x4dce0325 # load x3 with value 0x4dce0325
sw x3, 0(x2) # store 0x4dce0325 in memory
flh f6, 0(x2) # load 0x4dce0325 from memory into f6
la x2, scratch
li x3, 0x8a88a9d3 # load x3 with value 0x8a88a9d3
sw x3, 0(x2) # store 0x8a88a9d3 in memory
flh f2, 0(x2) # load 0x8a88a9d3 from memory into f2
fadd.h f2, f6, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x49203256 # load x3 with value 0x49203256
sw x3, 0(x2) # store 0x49203256 in memory
flh f9, 0(x2) # load 0x49203256 from memory into f9
la x2, scratch
li x3, 0xa4a00cad # load x3 with value 0xa4a00cad
sw x3, 0(x2) # store 0xa4a00cad in memory
flh f3, 0(x2) # load 0xa4a00cad from memory into f3
fadd.h f3, f9, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4e6bc9db # load x3 with value 0x4e6bc9db
sw x3, 0(x2) # store 0x4e6bc9db in memory
flh f16, 0(x2) # load 0x4e6bc9db from memory into f16
la x2, scratch
li x3, 0xd8cfd417 # load x3 with value 0xd8cfd417
sw x3, 0(x2) # store 0xd8cfd417 in memory
flh f4, 0(x2) # load 0xd8cfd417 from memory into f4
fadd.h f4, f16, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x583d28dc # load x3 with value 0x583d28dc
sw x3, 0(x2) # store 0x583d28dc in memory
flh f20, 0(x2) # load 0x583d28dc from memory into f20
la x2, scratch
li x3, 0x795d8658 # load x3 with value 0x795d8658
sw x3, 0(x2) # store 0x795d8658 in memory
flh f5, 0(x2) # load 0x795d8658 from memory into f5
fadd.h f5, f20, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x74be3524 # load x3 with value 0x74be3524
sw x3, 0(x2) # store 0x74be3524 in memory
flh f17, 0(x2) # load 0x74be3524 from memory into f17
la x2, scratch
li x3, 0xd3a7c698 # load x3 with value 0xd3a7c698
sw x3, 0(x2) # store 0xd3a7c698 in memory
flh f6, 0(x2) # load 0xd3a7c698 from memory into f6
fadd.h f6, f17, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8266ae06 # load x3 with value 0x8266ae06
sw x3, 0(x2) # store 0x8266ae06 in memory
flh f12, 0(x2) # load 0x8266ae06 from memory into f12
la x2, scratch
li x3, 0xac861def # load x3 with value 0xac861def
sw x3, 0(x2) # store 0xac861def in memory
flh f7, 0(x2) # load 0xac861def from memory into f7
fadd.h f7, f12, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x1719a357 # load x3 with value 0x1719a357
sw x3, 0(x2) # store 0x1719a357 in memory
flh f2, 0(x2) # load 0x1719a357 from memory into f2
la x2, scratch
li x3, 0x7c0d5f3f # load x3 with value 0x7c0d5f3f
sw x3, 0(x2) # store 0x7c0d5f3f in memory
flh f8, 0(x2) # load 0x7c0d5f3f from memory into f8
fadd.h f8, f2, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xa2a52966 # load x3 with value 0xa2a52966
sw x3, 0(x2) # store 0xa2a52966 in memory
flh f28, 0(x2) # load 0xa2a52966 from memory into f28
la x2, scratch
li x3, 0xbb0ee3de # load x3 with value 0xbb0ee3de
sw x3, 0(x2) # store 0xbb0ee3de in memory
flh f9, 0(x2) # load 0xbb0ee3de from memory into f9
fadd.h f9, f28, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xea9d7881 # load x3 with value 0xea9d7881
sw x3, 0(x2) # store 0xea9d7881 in memory
flh f3, 0(x2) # load 0xea9d7881 from memory into f3
la x2, scratch
li x3, 0xc8425e70 # load x3 with value 0xc8425e70
sw x3, 0(x2) # store 0xc8425e70 in memory
flh f10, 0(x2) # load 0xc8425e70 from memory into f10
fadd.h f10, f3, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x5d54ee83 # load x3 with value 0x5d54ee83
sw x3, 0(x2) # store 0x5d54ee83 in memory
flh f6, 0(x2) # load 0x5d54ee83 from memory into f6
la x2, scratch
li x3, 0x7a64c157 # load x3 with value 0x7a64c157
sw x3, 0(x2) # store 0x7a64c157 in memory
flh f11, 0(x2) # load 0x7a64c157 from memory into f11
fadd.h f11, f6, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x541549ef # load x3 with value 0x541549ef
sw x3, 0(x2) # store 0x541549ef in memory
flh f30, 0(x2) # load 0x541549ef from memory into f30
la x2, scratch
li x3, 0x84cebc95 # load x3 with value 0x84cebc95
sw x3, 0(x2) # store 0x84cebc95 in memory
flh f12, 0(x2) # load 0x84cebc95 from memory into f12
fadd.h f12, f30, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0xe18761b5 # load x3 with value 0xe18761b5
sw x3, 0(x2) # store 0xe18761b5 in memory
flh f1, 0(x2) # load 0xe18761b5 from memory into f1
la x2, scratch
li x3, 0x2affd4da # load x3 with value 0x2affd4da
sw x3, 0(x2) # store 0x2affd4da in memory
flh f13, 0(x2) # load 0x2affd4da from memory into f13
fadd.h f13, f1, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xab07e0d8 # load x3 with value 0xab07e0d8
sw x3, 0(x2) # store 0xab07e0d8 in memory
flh f2, 0(x2) # load 0xab07e0d8 from memory into f2
la x2, scratch
li x3, 0x1828f645 # load x3 with value 0x1828f645
sw x3, 0(x2) # store 0x1828f645 in memory
flh f14, 0(x2) # load 0x1828f645 from memory into f14
fadd.h f14, f2, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x35594ab1 # load x3 with value 0x35594ab1
sw x3, 0(x2) # store 0x35594ab1 in memory
flh f23, 0(x2) # load 0x35594ab1 from memory into f23
la x2, scratch
li x3, 0x933e255a # load x3 with value 0x933e255a
sw x3, 0(x2) # store 0x933e255a in memory
flh f15, 0(x2) # load 0x933e255a from memory into f15
fadd.h f15, f23, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x2b50c110 # load x3 with value 0x2b50c110
sw x3, 0(x2) # store 0x2b50c110 in memory
flh f15, 0(x2) # load 0x2b50c110 from memory into f15
la x2, scratch
li x3, 0x621434ab # load x3 with value 0x621434ab
sw x3, 0(x2) # store 0x621434ab in memory
flh f16, 0(x2) # load 0x621434ab from memory into f16
fadd.h f16, f15, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0xf91bb335 # load x3 with value 0xf91bb335
sw x3, 0(x2) # store 0xf91bb335 in memory
flh f12, 0(x2) # load 0xf91bb335 from memory into f12
la x2, scratch
li x3, 0x8ca4f3bc # load x3 with value 0x8ca4f3bc
sw x3, 0(x2) # store 0x8ca4f3bc in memory
flh f17, 0(x2) # load 0x8ca4f3bc from memory into f17
fadd.h f17, f12, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0xc0a9fbb8 # load x3 with value 0xc0a9fbb8
sw x3, 0(x2) # store 0xc0a9fbb8 in memory
flh f6, 0(x2) # load 0xc0a9fbb8 from memory into f6
la x2, scratch
li x3, 0x618102e8 # load x3 with value 0x618102e8
sw x3, 0(x2) # store 0x618102e8 in memory
flh f18, 0(x2) # load 0x618102e8 from memory into f18
fadd.h f18, f6, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0xa43aac9e # load x3 with value 0xa43aac9e
sw x3, 0(x2) # store 0xa43aac9e in memory
flh f30, 0(x2) # load 0xa43aac9e from memory into f30
la x2, scratch
li x3, 0x25634c51 # load x3 with value 0x25634c51
sw x3, 0(x2) # store 0x25634c51 in memory
flh f19, 0(x2) # load 0x25634c51 from memory into f19
fadd.h f19, f30, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x10cfc192 # load x3 with value 0x10cfc192
sw x3, 0(x2) # store 0x10cfc192 in memory
flh f31, 0(x2) # load 0x10cfc192 from memory into f31
la x2, scratch
li x3, 0x00f373be # load x3 with value 0x00f373be
sw x3, 0(x2) # store 0x00f373be in memory
flh f20, 0(x2) # load 0x00f373be from memory into f20
fadd.h f20, f31, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0xe9f2d51d # load x3 with value 0xe9f2d51d
sw x3, 0(x2) # store 0xe9f2d51d in memory
flh f29, 0(x2) # load 0xe9f2d51d from memory into f29
la x2, scratch
li x3, 0x4419d838 # load x3 with value 0x4419d838
sw x3, 0(x2) # store 0x4419d838 in memory
flh f21, 0(x2) # load 0x4419d838 from memory into f21
fadd.h f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x1f24734d # load x3 with value 0x1f24734d
sw x3, 0(x2) # store 0x1f24734d in memory
flh f24, 0(x2) # load 0x1f24734d from memory into f24
la x2, scratch
li x3, 0x2e4ca2f1 # load x3 with value 0x2e4ca2f1
sw x3, 0(x2) # store 0x2e4ca2f1 in memory
flh f22, 0(x2) # load 0x2e4ca2f1 from memory into f22
fadd.h f22, f24, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x7a3893e1 # load x3 with value 0x7a3893e1
sw x3, 0(x2) # store 0x7a3893e1 in memory
flh f12, 0(x2) # load 0x7a3893e1 from memory into f12
la x2, scratch
li x3, 0x6f3e87b7 # load x3 with value 0x6f3e87b7
sw x3, 0(x2) # store 0x6f3e87b7 in memory
flh f23, 0(x2) # load 0x6f3e87b7 from memory into f23
fadd.h f23, f12, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x5749de7a # load x3 with value 0x5749de7a
sw x3, 0(x2) # store 0x5749de7a in memory
flh f16, 0(x2) # load 0x5749de7a from memory into f16
la x2, scratch
li x3, 0x13157fd5 # load x3 with value 0x13157fd5
sw x3, 0(x2) # store 0x13157fd5 in memory
flh f24, 0(x2) # load 0x13157fd5 from memory into f24
fadd.h f24, f16, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x2dc8be3e # load x3 with value 0x2dc8be3e
sw x3, 0(x2) # store 0x2dc8be3e in memory
flh f7, 0(x2) # load 0x2dc8be3e from memory into f7
la x2, scratch
li x3, 0xc56e1cde # load x3 with value 0xc56e1cde
sw x3, 0(x2) # store 0xc56e1cde in memory
flh f25, 0(x2) # load 0xc56e1cde from memory into f25
fadd.h f25, f7, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x58b064fb # load x3 with value 0x58b064fb
sw x3, 0(x2) # store 0x58b064fb in memory
flh f29, 0(x2) # load 0x58b064fb from memory into f29
la x2, scratch
li x3, 0x2b2b9b13 # load x3 with value 0x2b2b9b13
sw x3, 0(x2) # store 0x2b2b9b13 in memory
flh f26, 0(x2) # load 0x2b2b9b13 from memory into f26
fadd.h f26, f29, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0xd0653255 # load x3 with value 0xd0653255
sw x3, 0(x2) # store 0xd0653255 in memory
flh f28, 0(x2) # load 0xd0653255 from memory into f28
la x2, scratch
li x3, 0xb8e93a71 # load x3 with value 0xb8e93a71
sw x3, 0(x2) # store 0xb8e93a71 in memory
flh f27, 0(x2) # load 0xb8e93a71 from memory into f27
fadd.h f27, f28, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x85e3e325 # load x3 with value 0x85e3e325
sw x3, 0(x2) # store 0x85e3e325 in memory
flh f28, 0(x2) # load 0x85e3e325 from memory into f28
la x2, scratch
li x3, 0xad393580 # load x3 with value 0xad393580
sw x3, 0(x2) # store 0xad393580 in memory
flh f28, 0(x2) # load 0xad393580 from memory into f28
fadd.h f28, f28, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0xbfb1f3fd # load x3 with value 0xbfb1f3fd
sw x3, 0(x2) # store 0xbfb1f3fd in memory
flh f23, 0(x2) # load 0xbfb1f3fd from memory into f23
la x2, scratch
li x3, 0x3bb358f3 # load x3 with value 0x3bb358f3
sw x3, 0(x2) # store 0x3bb358f3 in memory
flh f29, 0(x2) # load 0x3bb358f3 from memory into f29
fadd.h f29, f23, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x9a07d2b6 # load x3 with value 0x9a07d2b6
sw x3, 0(x2) # store 0x9a07d2b6 in memory
flh f13, 0(x2) # load 0x9a07d2b6 from memory into f13
la x2, scratch
li x3, 0x6791796e # load x3 with value 0x6791796e
sw x3, 0(x2) # store 0x6791796e in memory
flh f30, 0(x2) # load 0x6791796e from memory into f30
fadd.h f30, f13, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x77d782c1 # load x3 with value 0x77d782c1
sw x3, 0(x2) # store 0x77d782c1 in memory
flh f1, 0(x2) # load 0x77d782c1 from memory into f1
la x2, scratch
li x3, 0x5973e924 # load x3 with value 0x5973e924
sw x3, 0(x2) # store 0x5973e924 in memory
flh f31, 0(x2) # load 0x5973e924 from memory into f31
fadd.h f31, f1, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x29e727ce # load x3 with value 0x29e727ce
sw x3, 0(x2) # store 0x29e727ce in memory
flh f26, 0(x2) # load 0x29e727ce from memory into f26
la x2, scratch
li x3, 0x3bf1fab7 # load x3 with value 0x3bf1fab7
sw x3, 0(x2) # store 0x3bf1fab7 in memory
flh f20, 0(x2) # load 0x3bf1fab7 from memory into f20
fadd.h f27, f26, f20, dyn # perform operation
fadd.h f27, f26, f20, rdn # perform operation
fadd.h f27, f26, f20, rmm # perform operation
fadd.h f27, f26, f20, rne # perform operation
fadd.h f27, f26, f20, rtz # perform operation
fadd.h f27, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fadd.h f17, f6, f3, dyn # perform operation
fadd.h f17, f6, f3, rdn # perform operation
fadd.h f17, f6, f3, rmm # perform operation
fadd.h f17, f6, f3, rne # perform operation
fadd.h f17, f6, f3, rtz # perform operation
fadd.h f17, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f5, f11, f29, dyn # perform operation
fadd.h f5, f11, f29, rdn # perform operation
fadd.h f5, f11, f29, rmm # perform operation
fadd.h f5, f11, f29, rne # perform operation
fadd.h f5, f11, f29, rtz # perform operation
fadd.h f5, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fadd.h f27, f11, f28, dyn # perform operation
fadd.h f27, f11, f28, rdn # perform operation
fadd.h f27, f11, f28, rmm # perform operation
fadd.h f27, f11, f28, rne # perform operation
fadd.h f27, f11, f28, rtz # perform operation
fadd.h f27, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fadd.h f14, f19, f24, dyn # perform operation
fadd.h f14, f19, f24, rdn # perform operation
fadd.h f14, f19, f24, rmm # perform operation
fadd.h f14, f19, f24, rne # perform operation
fadd.h f14, f19, f24, rtz # perform operation
fadd.h f14, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fadd.h f1, f27, f6, dyn # perform operation
fadd.h f1, f27, f6, rdn # perform operation
fadd.h f1, f27, f6, rmm # perform operation
fadd.h f1, f27, f6, rne # perform operation
fadd.h f1, f27, f6, rtz # perform operation
fadd.h f1, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f3, f30, f15, dyn # perform operation
fadd.h f3, f30, f15, rdn # perform operation
fadd.h f3, f30, f15, rmm # perform operation
fadd.h f3, f30, f15, rne # perform operation
fadd.h f3, f30, f15, rtz # perform operation
fadd.h f3, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fadd.h f21, f7, f18, dyn # perform operation
fadd.h f21, f7, f18, rdn # perform operation
fadd.h f21, f7, f18, rmm # perform operation
fadd.h f21, f7, f18, rne # perform operation
fadd.h f21, f7, f18, rtz # perform operation
fadd.h f21, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fadd.h f7, f25, f6, dyn # perform operation
fadd.h f7, f25, f6, rdn # perform operation
fadd.h f7, f25, f6, rmm # perform operation
fadd.h f7, f25, f6, rne # perform operation
fadd.h f7, f25, f6, rtz # perform operation
fadd.h f7, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fadd.h f14, f11, f25, dyn # perform operation
fadd.h f14, f11, f25, rdn # perform operation
fadd.h f14, f11, f25, rmm # perform operation
fadd.h f14, f11, f25, rne # perform operation
fadd.h f14, f11, f25, rtz # perform operation
fadd.h f14, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fadd.h f23, f26, f21, dyn # perform operation
fadd.h f23, f26, f21, rdn # perform operation
fadd.h f23, f26, f21, rmm # perform operation
fadd.h f23, f26, f21, rne # perform operation
fadd.h f23, f26, f21, rtz # perform operation
fadd.h f23, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fadd.h f27, f22, f16, dyn # perform operation
fadd.h f27, f22, f16, rdn # perform operation
fadd.h f27, f22, f16, rmm # perform operation
fadd.h f27, f22, f16, rne # perform operation
fadd.h f27, f22, f16, rtz # perform operation
fadd.h f27, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fadd.h f25, f24, f7, dyn # perform operation
fadd.h f25, f24, f7, rdn # perform operation
fadd.h f25, f24, f7, rmm # perform operation
fadd.h f25, f24, f7, rne # perform operation
fadd.h f25, f24, f7, rtz # perform operation
fadd.h f25, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fadd.h f23, f24, f7, dyn # perform operation
fadd.h f23, f24, f7, rdn # perform operation
fadd.h f23, f24, f7, rmm # perform operation
fadd.h f23, f24, f7, rne # perform operation
fadd.h f23, f24, f7, rtz # perform operation
fadd.h f23, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fadd.h f15, f12, f27, dyn # perform operation
fadd.h f15, f12, f27, rdn # perform operation
fadd.h f15, f12, f27, rmm # perform operation
fadd.h f15, f12, f27, rne # perform operation
fadd.h f15, f12, f27, rtz # perform operation
fadd.h f15, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fadd.h f31, f14, f9, dyn # perform operation
fadd.h f31, f14, f9, rdn # perform operation
fadd.h f31, f14, f9, rmm # perform operation
fadd.h f31, f14, f9, rne # perform operation
fadd.h f31, f14, f9, rtz # perform operation
fadd.h f31, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fadd.h f9, f7, f30, dyn # perform operation
fadd.h f9, f7, f30, rdn # perform operation
fadd.h f9, f7, f30, rmm # perform operation
fadd.h f9, f7, f30, rne # perform operation
fadd.h f9, f7, f30, rtz # perform operation
fadd.h f9, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fadd.h f13, f28, f5, dyn # perform operation
fadd.h f13, f28, f5, rdn # perform operation
fadd.h f13, f28, f5, rmm # perform operation
fadd.h f13, f28, f5, rne # perform operation
fadd.h f13, f28, f5, rtz # perform operation
fadd.h f13, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fadd.h f12, f19, f26, dyn # perform operation
fadd.h f12, f19, f26, rdn # perform operation
fadd.h f12, f19, f26, rmm # perform operation
fadd.h f12, f19, f26, rne # perform operation
fadd.h f12, f19, f26, rtz # perform operation
fadd.h f12, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fadd.h f12, f16, f20, dyn # perform operation
fadd.h f12, f16, f20, rdn # perform operation
fadd.h f12, f16, f20, rmm # perform operation
fadd.h f12, f16, f20, rne # perform operation
fadd.h f12, f16, f20, rtz # perform operation
fadd.h f12, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fadd.h f23, f7, f24, dyn # perform operation
fadd.h f23, f7, f24, rdn # perform operation
fadd.h f23, f7, f24, rmm # perform operation
fadd.h f23, f7, f24, rne # perform operation
fadd.h f23, f7, f24, rtz # perform operation
fadd.h f23, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fadd.h f11, f5, f15, dyn # perform operation
fadd.h f11, f5, f15, rdn # perform operation
fadd.h f11, f5, f15, rmm # perform operation
fadd.h f11, f5, f15, rne # perform operation
fadd.h f11, f5, f15, rtz # perform operation
fadd.h f11, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fadd.h f23, f2, f5, dyn # perform operation
fadd.h f23, f2, f5, rdn # perform operation
fadd.h f23, f2, f5, rmm # perform operation
fadd.h f23, f2, f5, rne # perform operation
fadd.h f23, f2, f5, rtz # perform operation
fadd.h f23, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fadd.h f2, f9, f26, dyn # perform operation
fadd.h f2, f9, f26, rdn # perform operation
fadd.h f2, f9, f26, rmm # perform operation
fadd.h f2, f9, f26, rne # perform operation
fadd.h f2, f9, f26, rtz # perform operation
fadd.h f2, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fadd.h f15, f10, f28, dyn # perform operation
fadd.h f15, f10, f28, rdn # perform operation
fadd.h f15, f10, f28, rmm # perform operation
fadd.h f15, f10, f28, rne # perform operation
fadd.h f15, f10, f28, rtz # perform operation
fadd.h f15, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fadd.h f9, f13, f22, dyn # perform operation
fadd.h f9, f13, f22, rdn # perform operation
fadd.h f9, f13, f22, rmm # perform operation
fadd.h f9, f13, f22, rne # perform operation
fadd.h f9, f13, f22, rtz # perform operation
fadd.h f9, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f13, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fadd.h f20, f12, f5, dyn # perform operation
fadd.h f20, f12, f5, rdn # perform operation
fadd.h f20, f12, f5, rmm # perform operation
fadd.h f20, f12, f5, rne # perform operation
fadd.h f20, f12, f5, rtz # perform operation
fadd.h f20, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fadd.h f29, f12, f22, dyn # perform operation
fadd.h f29, f12, f22, rdn # perform operation
fadd.h f29, f12, f22, rmm # perform operation
fadd.h f29, f12, f22, rne # perform operation
fadd.h f29, f12, f22, rtz # perform operation
fadd.h f29, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fadd.h f8, f24, f19, dyn # perform operation
fadd.h f8, f24, f19, rdn # perform operation
fadd.h f8, f24, f19, rmm # perform operation
fadd.h f8, f24, f19, rne # perform operation
fadd.h f8, f24, f19, rtz # perform operation
fadd.h f8, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fadd.h f6, f16, f14, dyn # perform operation
fadd.h f6, f16, f14, rdn # perform operation
fadd.h f6, f16, f14, rmm # perform operation
fadd.h f6, f16, f14, rne # perform operation
fadd.h f6, f16, f14, rtz # perform operation
fadd.h f6, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fadd.h f2, f30, f28, dyn # perform operation
fadd.h f2, f30, f28, rdn # perform operation
fadd.h f2, f30, f28, rmm # perform operation
fadd.h f2, f30, f28, rne # perform operation
fadd.h f2, f30, f28, rtz # perform operation
fadd.h f2, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fadd.h f8, f24, f28, dyn # perform operation
fadd.h f8, f24, f28, rdn # perform operation
fadd.h f8, f24, f28, rmm # perform operation
fadd.h f8, f24, f28, rne # perform operation
fadd.h f8, f24, f28, rtz # perform operation
fadd.h f8, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fadd.h f6, f15, f17, dyn # perform operation
fadd.h f6, f15, f17, rdn # perform operation
fadd.h f6, f15, f17, rmm # perform operation
fadd.h f6, f15, f17, rne # perform operation
fadd.h f6, f15, f17, rtz # perform operation
fadd.h f6, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fadd.h f8, f2, f21, dyn # perform operation
fadd.h f8, f2, f21, rdn # perform operation
fadd.h f8, f2, f21, rmm # perform operation
fadd.h f8, f2, f21, rne # perform operation
fadd.h f8, f2, f21, rtz # perform operation
fadd.h f8, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fadd.h f18, f15, f3, dyn # perform operation
fadd.h f18, f15, f3, rdn # perform operation
fadd.h f18, f15, f3, rmm # perform operation
fadd.h f18, f15, f3, rne # perform operation
fadd.h f18, f15, f3, rtz # perform operation
fadd.h f18, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fadd.h f8, f21, f16, dyn # perform operation
fadd.h f8, f21, f16, rdn # perform operation
fadd.h f8, f21, f16, rmm # perform operation
fadd.h f8, f21, f16, rne # perform operation
fadd.h f8, f21, f16, rtz # perform operation
fadd.h f8, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fadd.h f29, f24, f10, dyn # perform operation
fadd.h f29, f24, f10, rdn # perform operation
fadd.h f29, f24, f10, rmm # perform operation
fadd.h f29, f24, f10, rne # perform operation
fadd.h f29, f24, f10, rtz # perform operation
fadd.h f29, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fadd.h f16, f9, f27, dyn # perform operation
fadd.h f16, f9, f27, rdn # perform operation
fadd.h f16, f9, f27, rmm # perform operation
fadd.h f16, f9, f27, rne # perform operation
fadd.h f16, f9, f27, rtz # perform operation
fadd.h f16, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f6, f8, f25, dyn # perform operation
fadd.h f6, f8, f25, rdn # perform operation
fadd.h f6, f8, f25, rmm # perform operation
fadd.h f6, f8, f25, rne # perform operation
fadd.h f6, f8, f25, rtz # perform operation
fadd.h f6, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fadd.h f19, f25, f6, dyn # perform operation
fadd.h f19, f25, f6, rdn # perform operation
fadd.h f19, f25, f6, rmm # perform operation
fadd.h f19, f25, f6, rne # perform operation
fadd.h f19, f25, f6, rtz # perform operation
fadd.h f19, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fadd.h f25, f15, f29, dyn # perform operation
fadd.h f25, f15, f29, rdn # perform operation
fadd.h f25, f15, f29, rmm # perform operation
fadd.h f25, f15, f29, rne # perform operation
fadd.h f25, f15, f29, rtz # perform operation
fadd.h f25, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fadd.h f7, f14, f8, dyn # perform operation
fadd.h f7, f14, f8, rdn # perform operation
fadd.h f7, f14, f8, rmm # perform operation
fadd.h f7, f14, f8, rne # perform operation
fadd.h f7, f14, f8, rtz # perform operation
fadd.h f7, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fadd.h f3, f28, f16, dyn # perform operation
fadd.h f3, f28, f16, rdn # perform operation
fadd.h f3, f28, f16, rmm # perform operation
fadd.h f3, f28, f16, rne # perform operation
fadd.h f3, f28, f16, rtz # perform operation
fadd.h f3, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fadd.h f6, f9, f15, dyn # perform operation
fadd.h f6, f9, f15, rdn # perform operation
fadd.h f6, f9, f15, rmm # perform operation
fadd.h f6, f9, f15, rne # perform operation
fadd.h f6, f9, f15, rtz # perform operation
fadd.h f6, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fadd.h f11, f26, f9, dyn # perform operation
fadd.h f11, f26, f9, rdn # perform operation
fadd.h f11, f26, f9, rmm # perform operation
fadd.h f11, f26, f9, rne # perform operation
fadd.h f11, f26, f9, rtz # perform operation
fadd.h f11, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fadd.h f15, f16, f3, dyn # perform operation
fadd.h f15, f16, f3, rdn # perform operation
fadd.h f15, f16, f3, rmm # perform operation
fadd.h f15, f16, f3, rne # perform operation
fadd.h f15, f16, f3, rtz # perform operation
fadd.h f15, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fadd.h f27, f12, f20, dyn # perform operation
fadd.h f27, f12, f20, rdn # perform operation
fadd.h f27, f12, f20, rmm # perform operation
fadd.h f27, f12, f20, rne # perform operation
fadd.h f27, f12, f20, rtz # perform operation
fadd.h f27, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fadd.h f23, f11, f27, dyn # perform operation
fadd.h f23, f11, f27, rdn # perform operation
fadd.h f23, f11, f27, rmm # perform operation
fadd.h f23, f11, f27, rne # perform operation
fadd.h f23, f11, f27, rtz # perform operation
fadd.h f23, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fadd.h f12, f5, f1, dyn # perform operation
fadd.h f12, f5, f1, rdn # perform operation
fadd.h f12, f5, f1, rmm # perform operation
fadd.h f12, f5, f1, rne # perform operation
fadd.h f12, f5, f1, rtz # perform operation
fadd.h f12, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fadd.h f23, f9, f20, dyn # perform operation
fadd.h f23, f9, f20, rdn # perform operation
fadd.h f23, f9, f20, rmm # perform operation
fadd.h f23, f9, f20, rne # perform operation
fadd.h f23, f9, f20, rtz # perform operation
fadd.h f23, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fadd.h f7, f17, f24, dyn # perform operation
fadd.h f7, f17, f24, rdn # perform operation
fadd.h f7, f17, f24, rmm # perform operation
fadd.h f7, f17, f24, rne # perform operation
fadd.h f7, f17, f24, rtz # perform operation
fadd.h f7, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fadd.h f14, f23, f30, dyn # perform operation
fadd.h f14, f23, f30, rdn # perform operation
fadd.h f14, f23, f30, rmm # perform operation
fadd.h f14, f23, f30, rne # perform operation
fadd.h f14, f23, f30, rtz # perform operation
fadd.h f14, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fadd.h f16, f18, f7, dyn # perform operation
fadd.h f16, f18, f7, rdn # perform operation
fadd.h f16, f18, f7, rmm # perform operation
fadd.h f16, f18, f7, rne # perform operation
fadd.h f16, f18, f7, rtz # perform operation
fadd.h f16, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fadd.h f21, f26, f27, dyn # perform operation
fadd.h f21, f26, f27, rdn # perform operation
fadd.h f21, f26, f27, rmm # perform operation
fadd.h f21, f26, f27, rne # perform operation
fadd.h f21, f26, f27, rtz # perform operation
fadd.h f21, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
fadd.h f19, f14, f22, dyn # perform operation
fadd.h f19, f14, f22, rdn # perform operation
fadd.h f19, f14, f22, rmm # perform operation
fadd.h f19, f14, f22, rne # perform operation
fadd.h f19, f14, f22, rtz # perform operation
fadd.h f19, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fadd.h f21, f2, f23, dyn # perform operation
fadd.h f21, f2, f23, rdn # perform operation
fadd.h f21, f2, f23, rmm # perform operation
fadd.h f21, f2, f23, rne # perform operation
fadd.h f21, f2, f23, rtz # perform operation
fadd.h f21, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fadd.h f19, f1, f5, dyn # perform operation
fadd.h f19, f1, f5, rdn # perform operation
fadd.h f19, f1, f5, rmm # perform operation
fadd.h f19, f1, f5, rne # perform operation
fadd.h f19, f1, f5, rtz # perform operation
fadd.h f19, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f1, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fadd.h f17, f3, f7, dyn # perform operation
fadd.h f17, f3, f7, rdn # perform operation
fadd.h f17, f3, f7, rmm # perform operation
fadd.h f17, f3, f7, rne # perform operation
fadd.h f17, f3, f7, rtz # perform operation
fadd.h f17, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fadd.h f28, f14, f15, dyn # perform operation
fadd.h f28, f14, f15, rdn # perform operation
fadd.h f28, f14, f15, rmm # perform operation
fadd.h f28, f14, f15, rne # perform operation
fadd.h f28, f14, f15, rtz # perform operation
fadd.h f28, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fadd.h f7, f17, f5, dyn # perform operation
fadd.h f7, f17, f5, rdn # perform operation
fadd.h f7, f17, f5, rmm # perform operation
fadd.h f7, f17, f5, rne # perform operation
fadd.h f7, f17, f5, rtz # perform operation
fadd.h f7, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fadd.h f10, f20, f29, dyn # perform operation
fadd.h f10, f20, f29, rdn # perform operation
fadd.h f10, f20, f29, rmm # perform operation
fadd.h f10, f20, f29, rne # perform operation
fadd.h f10, f20, f29, rtz # perform operation
fadd.h f10, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fadd.h f9, f22, f1, dyn # perform operation
fadd.h f9, f22, f1, rdn # perform operation
fadd.h f9, f22, f1, rmm # perform operation
fadd.h f9, f22, f1, rne # perform operation
fadd.h f9, f22, f1, rtz # perform operation
fadd.h f9, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fadd.h f24, f27, f28, dyn # perform operation
fadd.h f24, f27, f28, rdn # perform operation
fadd.h f24, f27, f28, rmm # perform operation
fadd.h f24, f27, f28, rne # perform operation
fadd.h f24, f27, f28, rtz # perform operation
fadd.h f24, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fadd.h f22, f9, f17, dyn # perform operation
fadd.h f22, f9, f17, rdn # perform operation
fadd.h f22, f9, f17, rmm # perform operation
fadd.h f22, f9, f17, rne # perform operation
fadd.h f22, f9, f17, rtz # perform operation
fadd.h f22, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fadd.h f28, f7, f2, dyn # perform operation
fadd.h f28, f7, f2, rdn # perform operation
fadd.h f28, f7, f2, rmm # perform operation
fadd.h f28, f7, f2, rne # perform operation
fadd.h f28, f7, f2, rtz # perform operation
fadd.h f28, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fadd.h f2, f23, f19, dyn # perform operation
fadd.h f2, f23, f19, rdn # perform operation
fadd.h f2, f23, f19, rmm # perform operation
fadd.h f2, f23, f19, rne # perform operation
fadd.h f2, f23, f19, rtz # perform operation
fadd.h f2, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fadd.h f11, f21, f31, dyn # perform operation
fadd.h f11, f21, f31, rdn # perform operation
fadd.h f11, f21, f31, rmm # perform operation
fadd.h f11, f21, f31, rne # perform operation
fadd.h f11, f21, f31, rtz # perform operation
fadd.h f11, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fadd.h f9, f5, f7, dyn # perform operation
fadd.h f9, f5, f7, rdn # perform operation
fadd.h f9, f5, f7, rmm # perform operation
fadd.h f9, f5, f7, rne # perform operation
fadd.h f9, f5, f7, rtz # perform operation
fadd.h f9, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fadd.h f12, f29, f21, dyn # perform operation
fadd.h f12, f29, f21, rdn # perform operation
fadd.h f12, f29, f21, rmm # perform operation
fadd.h f12, f29, f21, rne # perform operation
fadd.h f12, f29, f21, rtz # perform operation
fadd.h f12, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f29, f10, f17, dyn # perform operation
fadd.h f29, f10, f17, rdn # perform operation
fadd.h f29, f10, f17, rmm # perform operation
fadd.h f29, f10, f17, rne # perform operation
fadd.h f29, f10, f17, rtz # perform operation
fadd.h f29, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fadd.h f23, f10, f28, dyn # perform operation
fadd.h f23, f10, f28, rdn # perform operation
fadd.h f23, f10, f28, rmm # perform operation
fadd.h f23, f10, f28, rne # perform operation
fadd.h f23, f10, f28, rtz # perform operation
fadd.h f23, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fadd.h f12, f9, f29, dyn # perform operation
fadd.h f12, f9, f29, rdn # perform operation
fadd.h f12, f9, f29, rmm # perform operation
fadd.h f12, f9, f29, rne # perform operation
fadd.h f12, f9, f29, rtz # perform operation
fadd.h f12, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fadd.h f21, f26, f31, dyn # perform operation
fadd.h f21, f26, f31, rdn # perform operation
fadd.h f21, f26, f31, rmm # perform operation
fadd.h f21, f26, f31, rne # perform operation
fadd.h f21, f26, f31, rtz # perform operation
fadd.h f21, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fadd.h f31, f9, f6, dyn # perform operation
fadd.h f31, f9, f6, rdn # perform operation
fadd.h f31, f9, f6, rmm # perform operation
fadd.h f31, f9, f6, rne # perform operation
fadd.h f31, f9, f6, rtz # perform operation
fadd.h f31, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fadd.h f17, f29, f15, dyn # perform operation
fadd.h f17, f29, f15, rdn # perform operation
fadd.h f17, f29, f15, rmm # perform operation
fadd.h f17, f29, f15, rne # perform operation
fadd.h f17, f29, f15, rtz # perform operation
fadd.h f17, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fadd.h f14, f2, f26, dyn # perform operation
fadd.h f14, f2, f26, rdn # perform operation
fadd.h f14, f2, f26, rmm # perform operation
fadd.h f14, f2, f26, rne # perform operation
fadd.h f14, f2, f26, rtz # perform operation
fadd.h f14, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fadd.h f30, f24, f16, dyn # perform operation
fadd.h f30, f24, f16, rdn # perform operation
fadd.h f30, f24, f16, rmm # perform operation
fadd.h f30, f24, f16, rne # perform operation
fadd.h f30, f24, f16, rtz # perform operation
fadd.h f30, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fadd.h f15, f20, f8, dyn # perform operation
fadd.h f15, f20, f8, rdn # perform operation
fadd.h f15, f20, f8, rmm # perform operation
fadd.h f15, f20, f8, rne # perform operation
fadd.h f15, f20, f8, rtz # perform operation
fadd.h f15, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fadd.h f2, f21, f24, dyn # perform operation
fadd.h f2, f21, f24, rdn # perform operation
fadd.h f2, f21, f24, rmm # perform operation
fadd.h f2, f21, f24, rne # perform operation
fadd.h f2, f21, f24, rtz # perform operation
fadd.h f2, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fadd.h f21, f18, f5, dyn # perform operation
fadd.h f21, f18, f5, rdn # perform operation
fadd.h f21, f18, f5, rmm # perform operation
fadd.h f21, f18, f5, rne # perform operation
fadd.h f21, f18, f5, rtz # perform operation
fadd.h f21, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fadd.h f20, f22, f13, dyn # perform operation
fadd.h f20, f22, f13, rdn # perform operation
fadd.h f20, f22, f13, rmm # perform operation
fadd.h f20, f22, f13, rne # perform operation
fadd.h f20, f22, f13, rtz # perform operation
fadd.h f20, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fadd.h f17, f19, f28, dyn # perform operation
fadd.h f17, f19, f28, rdn # perform operation
fadd.h f17, f19, f28, rmm # perform operation
fadd.h f17, f19, f28, rne # perform operation
fadd.h f17, f19, f28, rtz # perform operation
fadd.h f17, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fadd.h f24, f5, f16, dyn # perform operation
fadd.h f24, f5, f16, rdn # perform operation
fadd.h f24, f5, f16, rmm # perform operation
fadd.h f24, f5, f16, rne # perform operation
fadd.h f24, f5, f16, rtz # perform operation
fadd.h f24, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fadd.h f21, f12, f18, dyn # perform operation
fadd.h f21, f12, f18, rdn # perform operation
fadd.h f21, f12, f18, rmm # perform operation
fadd.h f21, f12, f18, rne # perform operation
fadd.h f21, f12, f18, rtz # perform operation
fadd.h f21, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fadd.h f25, f16, f5, dyn # perform operation
fadd.h f25, f16, f5, rdn # perform operation
fadd.h f25, f16, f5, rmm # perform operation
fadd.h f25, f16, f5, rne # perform operation
fadd.h f25, f16, f5, rtz # perform operation
fadd.h f25, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fadd.h f29, f16, f14, dyn # perform operation
fadd.h f29, f16, f14, rdn # perform operation
fadd.h f29, f16, f14, rmm # perform operation
fadd.h f29, f16, f14, rne # perform operation
fadd.h f29, f16, f14, rtz # perform operation
fadd.h f29, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fadd.h f12, f27, f1, dyn # perform operation
fadd.h f12, f27, f1, rdn # perform operation
fadd.h f12, f27, f1, rmm # perform operation
fadd.h f12, f27, f1, rne # perform operation
fadd.h f12, f27, f1, rtz # perform operation
fadd.h f12, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f27, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fadd.h f27, f11, f24, dyn # perform operation
fadd.h f27, f11, f24, rdn # perform operation
fadd.h f27, f11, f24, rmm # perform operation
fadd.h f27, f11, f24, rne # perform operation
fadd.h f27, f11, f24, rtz # perform operation
fadd.h f27, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fadd.h f28, f17, f31, dyn # perform operation
fadd.h f28, f17, f31, rdn # perform operation
fadd.h f28, f17, f31, rmm # perform operation
fadd.h f28, f17, f31, rne # perform operation
fadd.h f28, f17, f31, rtz # perform operation
fadd.h f28, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fadd.h f10, f12, f7, dyn # perform operation
fadd.h f10, f12, f7, rdn # perform operation
fadd.h f10, f12, f7, rmm # perform operation
fadd.h f10, f12, f7, rne # perform operation
fadd.h f10, f12, f7, rtz # perform operation
fadd.h f10, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fadd.h f14, f19, f29, dyn # perform operation
fadd.h f14, f19, f29, rdn # perform operation
fadd.h f14, f19, f29, rmm # perform operation
fadd.h f14, f19, f29, rne # perform operation
fadd.h f14, f19, f29, rtz # perform operation
fadd.h f14, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f2, f25, f13, dyn # perform operation
fadd.h f2, f25, f13, rdn # perform operation
fadd.h f2, f25, f13, rmm # perform operation
fadd.h f2, f25, f13, rne # perform operation
fadd.h f2, f25, f13, rtz # perform operation
fadd.h f2, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fadd.h f23, f15, f27, dyn # perform operation
fadd.h f23, f15, f27, rdn # perform operation
fadd.h f23, f15, f27, rmm # perform operation
fadd.h f23, f15, f27, rne # perform operation
fadd.h f23, f15, f27, rtz # perform operation
fadd.h f23, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fadd.h f7, f5, f9, dyn # perform operation
fadd.h f7, f5, f9, rdn # perform operation
fadd.h f7, f5, f9, rmm # perform operation
fadd.h f7, f5, f9, rne # perform operation
fadd.h f7, f5, f9, rtz # perform operation
fadd.h f7, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fadd.h f11, f21, f14, dyn # perform operation
fadd.h f11, f21, f14, rdn # perform operation
fadd.h f11, f21, f14, rmm # perform operation
fadd.h f11, f21, f14, rne # perform operation
fadd.h f11, f21, f14, rtz # perform operation
fadd.h f11, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fadd.h f14, f6, f3, dyn # perform operation
fadd.h f14, f6, f3, rdn # perform operation
fadd.h f14, f6, f3, rmm # perform operation
fadd.h f14, f6, f3, rne # perform operation
fadd.h f14, f6, f3, rtz # perform operation
fadd.h f14, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fadd.h f5, f19, f22, dyn # perform operation
fadd.h f5, f19, f22, rdn # perform operation
fadd.h f5, f19, f22, rmm # perform operation
fadd.h f5, f19, f22, rne # perform operation
fadd.h f5, f19, f22, rtz # perform operation
fadd.h f5, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fadd.h f20, f16, f6, dyn # perform operation
fadd.h f20, f16, f6, rdn # perform operation
fadd.h f20, f16, f6, rmm # perform operation
fadd.h f20, f16, f6, rne # perform operation
fadd.h f20, f16, f6, rtz # perform operation
fadd.h f20, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fadd.h f7, f9, f28, dyn # perform operation
fadd.h f7, f9, f28, rdn # perform operation
fadd.h f7, f9, f28, rmm # perform operation
fadd.h f7, f9, f28, rne # perform operation
fadd.h f7, f9, f28, rtz # perform operation
fadd.h f7, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fadd.h f5, f21, f29, dyn # perform operation
fadd.h f5, f21, f29, rdn # perform operation
fadd.h f5, f21, f29, rmm # perform operation
fadd.h f5, f21, f29, rne # perform operation
fadd.h f5, f21, f29, rtz # perform operation
fadd.h f5, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fadd.h f19, f15, f25, dyn # perform operation
fadd.h f19, f15, f25, rdn # perform operation
fadd.h f19, f15, f25, rmm # perform operation
fadd.h f19, f15, f25, rne # perform operation
fadd.h f19, f15, f25, rtz # perform operation
fadd.h f19, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fadd.h f3, f15, f2, dyn # perform operation
fadd.h f3, f15, f2, rdn # perform operation
fadd.h f3, f15, f2, rmm # perform operation
fadd.h f3, f15, f2, rne # perform operation
fadd.h f3, f15, f2, rtz # perform operation
fadd.h f3, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fadd.h f15, f28, f20, dyn # perform operation
fadd.h f15, f28, f20, rdn # perform operation
fadd.h f15, f28, f20, rmm # perform operation
fadd.h f15, f28, f20, rne # perform operation
fadd.h f15, f28, f20, rtz # perform operation
fadd.h f15, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fadd.h f1, f28, f27, dyn # perform operation
fadd.h f1, f28, f27, rdn # perform operation
fadd.h f1, f28, f27, rmm # perform operation
fadd.h f1, f28, f27, rne # perform operation
fadd.h f1, f28, f27, rtz # perform operation
fadd.h f1, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fadd.h f17, f13, f31, dyn # perform operation
fadd.h f17, f13, f31, rdn # perform operation
fadd.h f17, f13, f31, rmm # perform operation
fadd.h f17, f13, f31, rne # perform operation
fadd.h f17, f13, f31, rtz # perform operation
fadd.h f17, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fadd.h f12, f25, f28, dyn # perform operation
fadd.h f12, f25, f28, rdn # perform operation
fadd.h f12, f25, f28, rmm # perform operation
fadd.h f12, f25, f28, rne # perform operation
fadd.h f12, f25, f28, rtz # perform operation
fadd.h f12, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fadd.h f12, f16, f26, dyn # perform operation
fadd.h f12, f16, f26, rdn # perform operation
fadd.h f12, f16, f26, rmm # perform operation
fadd.h f12, f16, f26, rne # perform operation
fadd.h f12, f16, f26, rtz # perform operation
fadd.h f12, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
fadd.h f10, f14, f8, dyn # perform operation
fadd.h f10, f14, f8, rdn # perform operation
fadd.h f10, f14, f8, rmm # perform operation
fadd.h f10, f14, f8, rne # perform operation
fadd.h f10, f14, f8, rtz # perform operation
fadd.h f10, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fadd.h f6, f7, f13, dyn # perform operation
fadd.h f6, f7, f13, rdn # perform operation
fadd.h f6, f7, f13, rmm # perform operation
fadd.h f6, f7, f13, rne # perform operation
fadd.h f6, f7, f13, rtz # perform operation
fadd.h f6, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fadd.h f27, f7, f26, dyn # perform operation
fadd.h f27, f7, f26, rdn # perform operation
fadd.h f27, f7, f26, rmm # perform operation
fadd.h f27, f7, f26, rne # perform operation
fadd.h f27, f7, f26, rtz # perform operation
fadd.h f27, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
fadd.h f14, f12, f11, dyn # perform operation
fadd.h f14, f12, f11, rdn # perform operation
fadd.h f14, f12, f11, rmm # perform operation
fadd.h f14, f12, f11, rne # perform operation
fadd.h f14, f12, f11, rtz # perform operation
fadd.h f14, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fadd.h f13, f29, f15, dyn # perform operation
fadd.h f13, f29, f15, rdn # perform operation
fadd.h f13, f29, f15, rmm # perform operation
fadd.h f13, f29, f15, rne # perform operation
fadd.h f13, f29, f15, rtz # perform operation
fadd.h f13, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fadd.h f23, f16, f30, dyn # perform operation
fadd.h f23, f16, f30, rdn # perform operation
fadd.h f23, f16, f30, rmm # perform operation
fadd.h f23, f16, f30, rne # perform operation
fadd.h f23, f16, f30, rtz # perform operation
fadd.h f23, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fadd.h f6, f19, f10, dyn # perform operation
fadd.h f6, f19, f10, rdn # perform operation
fadd.h f6, f19, f10, rmm # perform operation
fadd.h f6, f19, f10, rne # perform operation
fadd.h f6, f19, f10, rtz # perform operation
fadd.h f6, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fadd.h f1, f6, f30, dyn # perform operation
fadd.h f1, f6, f30, rdn # perform operation
fadd.h f1, f6, f30, rmm # perform operation
fadd.h f1, f6, f30, rne # perform operation
fadd.h f1, f6, f30, rtz # perform operation
fadd.h f1, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f2, f6, f15, dyn # perform operation
fadd.h f2, f6, f15, rdn # perform operation
fadd.h f2, f6, f15, rmm # perform operation
fadd.h f2, f6, f15, rne # perform operation
fadd.h f2, f6, f15, rtz # perform operation
fadd.h f2, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fadd.h f27, f28, f12, dyn # perform operation
fadd.h f27, f28, f12, rdn # perform operation
fadd.h f27, f28, f12, rmm # perform operation
fadd.h f27, f28, f12, rne # perform operation
fadd.h f27, f28, f12, rtz # perform operation
fadd.h f27, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fadd.h f8, f1, f10, dyn # perform operation
fadd.h f8, f1, f10, rdn # perform operation
fadd.h f8, f1, f10, rmm # perform operation
fadd.h f8, f1, f10, rne # perform operation
fadd.h f8, f1, f10, rtz # perform operation
fadd.h f8, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fadd.h f9, f22, f29, dyn # perform operation
fadd.h f9, f22, f29, rdn # perform operation
fadd.h f9, f22, f29, rmm # perform operation
fadd.h f9, f22, f29, rne # perform operation
fadd.h f9, f22, f29, rtz # perform operation
fadd.h f9, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fadd.h f28, f18, f29, dyn # perform operation
fadd.h f28, f18, f29, rdn # perform operation
fadd.h f28, f18, f29, rmm # perform operation
fadd.h f28, f18, f29, rne # perform operation
fadd.h f28, f18, f29, rtz # perform operation
fadd.h f28, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fadd.h f26, f29, f14, dyn # perform operation
fadd.h f26, f29, f14, rdn # perform operation
fadd.h f26, f29, f14, rmm # perform operation
fadd.h f26, f29, f14, rne # perform operation
fadd.h f26, f29, f14, rtz # perform operation
fadd.h f26, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fadd.h f31, f28, f26, dyn # perform operation
fadd.h f31, f28, f26, rdn # perform operation
fadd.h f31, f28, f26, rmm # perform operation
fadd.h f31, f28, f26, rne # perform operation
fadd.h f31, f28, f26, rtz # perform operation
fadd.h f31, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fadd.h f22, f29, f24, dyn # perform operation
fadd.h f22, f29, f24, rdn # perform operation
fadd.h f22, f29, f24, rmm # perform operation
fadd.h f22, f29, f24, rne # perform operation
fadd.h f22, f29, f24, rtz # perform operation
fadd.h f22, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fadd.h f15, f5, f26, dyn # perform operation
fadd.h f15, f5, f26, rdn # perform operation
fadd.h f15, f5, f26, rmm # perform operation
fadd.h f15, f5, f26, rne # perform operation
fadd.h f15, f5, f26, rtz # perform operation
fadd.h f15, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f5, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fadd.h f29, f2, f19, dyn # perform operation
fadd.h f29, f2, f19, rdn # perform operation
fadd.h f29, f2, f19, rmm # perform operation
fadd.h f29, f2, f19, rne # perform operation
fadd.h f29, f2, f19, rtz # perform operation
fadd.h f29, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f28, f20, f17, dyn # perform operation
fadd.h f28, f20, f17, rdn # perform operation
fadd.h f28, f20, f17, rmm # perform operation
fadd.h f28, f20, f17, rne # perform operation
fadd.h f28, f20, f17, rtz # perform operation
fadd.h f28, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fadd.h f28, f5, f8, dyn # perform operation
fadd.h f28, f5, f8, rdn # perform operation
fadd.h f28, f5, f8, rmm # perform operation
fadd.h f28, f5, f8, rne # perform operation
fadd.h f28, f5, f8, rtz # perform operation
fadd.h f28, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fadd.h f2, f22, f21, dyn # perform operation
fadd.h f2, f22, f21, rdn # perform operation
fadd.h f2, f22, f21, rmm # perform operation
fadd.h f2, f22, f21, rne # perform operation
fadd.h f2, f22, f21, rtz # perform operation
fadd.h f2, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fadd.h f10, f23, f27, dyn # perform operation
fadd.h f10, f23, f27, rdn # perform operation
fadd.h f10, f23, f27, rmm # perform operation
fadd.h f10, f23, f27, rne # perform operation
fadd.h f10, f23, f27, rtz # perform operation
fadd.h f10, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fadd.h f5, f29, f26, dyn # perform operation
fadd.h f5, f29, f26, rdn # perform operation
fadd.h f5, f29, f26, rmm # perform operation
fadd.h f5, f29, f26, rne # perform operation
fadd.h f5, f29, f26, rtz # perform operation
fadd.h f5, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fadd.h f29, f14, f21, dyn # perform operation
fadd.h f29, f14, f21, rdn # perform operation
fadd.h f29, f14, f21, rmm # perform operation
fadd.h f29, f14, f21, rne # perform operation
fadd.h f29, f14, f21, rtz # perform operation
fadd.h f29, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fadd.h f30, f7, f8, dyn # perform operation
fadd.h f30, f7, f8, rdn # perform operation
fadd.h f30, f7, f8, rmm # perform operation
fadd.h f30, f7, f8, rne # perform operation
fadd.h f30, f7, f8, rtz # perform operation
fadd.h f30, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fadd.h f5, f10, f17, dyn # perform operation
fadd.h f5, f10, f17, rdn # perform operation
fadd.h f5, f10, f17, rmm # perform operation
fadd.h f5, f10, f17, rne # perform operation
fadd.h f5, f10, f17, rtz # perform operation
fadd.h f5, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fadd.h f24, f3, f12, dyn # perform operation
fadd.h f24, f3, f12, rdn # perform operation
fadd.h f24, f3, f12, rmm # perform operation
fadd.h f24, f3, f12, rne # perform operation
fadd.h f24, f3, f12, rtz # perform operation
fadd.h f24, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fadd.h f5, f26, f30, dyn # perform operation
fadd.h f5, f26, f30, rdn # perform operation
fadd.h f5, f26, f30, rmm # perform operation
fadd.h f5, f26, f30, rne # perform operation
fadd.h f5, f26, f30, rtz # perform operation
fadd.h f5, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fadd.h f7, f15, f1, dyn # perform operation
fadd.h f7, f15, f1, rdn # perform operation
fadd.h f7, f15, f1, rmm # perform operation
fadd.h f7, f15, f1, rne # perform operation
fadd.h f7, f15, f1, rtz # perform operation
fadd.h f7, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fadd.h f21, f23, f1, dyn # perform operation
fadd.h f21, f23, f1, rdn # perform operation
fadd.h f21, f23, f1, rmm # perform operation
fadd.h f21, f23, f1, rne # perform operation
fadd.h f21, f23, f1, rtz # perform operation
fadd.h f21, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fadd.h f29, f26, f8, dyn # perform operation
fadd.h f29, f26, f8, rdn # perform operation
fadd.h f29, f26, f8, rmm # perform operation
fadd.h f29, f26, f8, rne # perform operation
fadd.h f29, f26, f8, rtz # perform operation
fadd.h f29, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
fadd.h f12, f20, f28, dyn # perform operation
fadd.h f12, f20, f28, rdn # perform operation
fadd.h f12, f20, f28, rmm # perform operation
fadd.h f12, f20, f28, rne # perform operation
fadd.h f12, f20, f28, rtz # perform operation
fadd.h f12, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fadd.h f31, f23, f3, dyn # perform operation
fadd.h f31, f23, f3, rdn # perform operation
fadd.h f31, f23, f3, rmm # perform operation
fadd.h f31, f23, f3, rne # perform operation
fadd.h f31, f23, f3, rtz # perform operation
fadd.h f31, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fadd.h f26, f31, f14, dyn # perform operation
fadd.h f26, f31, f14, rdn # perform operation
fadd.h f26, f31, f14, rmm # perform operation
fadd.h f26, f31, f14, rne # perform operation
fadd.h f26, f31, f14, rtz # perform operation
fadd.h f26, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fadd.h f17, f2, f18, dyn # perform operation
fadd.h f17, f2, f18, rdn # perform operation
fadd.h f17, f2, f18, rmm # perform operation
fadd.h f17, f2, f18, rne # perform operation
fadd.h f17, f2, f18, rtz # perform operation
fadd.h f17, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fadd.h f19, f30, f24, dyn # perform operation
fadd.h f19, f30, f24, rdn # perform operation
fadd.h f19, f30, f24, rmm # perform operation
fadd.h f19, f30, f24, rne # perform operation
fadd.h f19, f30, f24, rtz # perform operation
fadd.h f19, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fadd.h f23, f8, f16, dyn # perform operation
fadd.h f23, f8, f16, rdn # perform operation
fadd.h f23, f8, f16, rmm # perform operation
fadd.h f23, f8, f16, rne # perform operation
fadd.h f23, f8, f16, rtz # perform operation
fadd.h f23, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f8, f31, f18, dyn # perform operation
fadd.h f8, f31, f18, rdn # perform operation
fadd.h f8, f31, f18, rmm # perform operation
fadd.h f8, f31, f18, rne # perform operation
fadd.h f8, f31, f18, rtz # perform operation
fadd.h f8, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fadd.h f15, f18, f1, dyn # perform operation
fadd.h f15, f18, f1, rdn # perform operation
fadd.h f15, f18, f1, rmm # perform operation
fadd.h f15, f18, f1, rne # perform operation
fadd.h f15, f18, f1, rtz # perform operation
fadd.h f15, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fadd.h f19, f17, f20, dyn # perform operation
fadd.h f19, f17, f20, rdn # perform operation
fadd.h f19, f17, f20, rmm # perform operation
fadd.h f19, f17, f20, rne # perform operation
fadd.h f19, f17, f20, rtz # perform operation
fadd.h f19, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fadd.h f13, f3, f27, dyn # perform operation
fadd.h f13, f3, f27, rdn # perform operation
fadd.h f13, f3, f27, rmm # perform operation
fadd.h f13, f3, f27, rne # perform operation
fadd.h f13, f3, f27, rtz # perform operation
fadd.h f13, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fadd.h f9, f24, f20, dyn # perform operation
fadd.h f9, f24, f20, rdn # perform operation
fadd.h f9, f24, f20, rmm # perform operation
fadd.h f9, f24, f20, rne # perform operation
fadd.h f9, f24, f20, rtz # perform operation
fadd.h f9, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fadd.h f14, f2, f7, dyn # perform operation
fadd.h f14, f2, f7, rdn # perform operation
fadd.h f14, f2, f7, rmm # perform operation
fadd.h f14, f2, f7, rne # perform operation
fadd.h f14, f2, f7, rtz # perform operation
fadd.h f14, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f12, f15, f1, dyn # perform operation
fadd.h f12, f15, f1, rdn # perform operation
fadd.h f12, f15, f1, rmm # perform operation
fadd.h f12, f15, f1, rne # perform operation
fadd.h f12, f15, f1, rtz # perform operation
fadd.h f12, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fadd.h f8, f19, f25, dyn # perform operation
fadd.h f8, f19, f25, rdn # perform operation
fadd.h f8, f19, f25, rmm # perform operation
fadd.h f8, f19, f25, rne # perform operation
fadd.h f8, f19, f25, rtz # perform operation
fadd.h f8, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fadd.h f29, f31, f14, dyn # perform operation
fadd.h f29, f31, f14, rdn # perform operation
fadd.h f29, f31, f14, rmm # perform operation
fadd.h f29, f31, f14, rne # perform operation
fadd.h f29, f31, f14, rtz # perform operation
fadd.h f29, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fadd.h f17, f11, f24, dyn # perform operation
fadd.h f17, f11, f24, rdn # perform operation
fadd.h f17, f11, f24, rmm # perform operation
fadd.h f17, f11, f24, rne # perform operation
fadd.h f17, f11, f24, rtz # perform operation
fadd.h f17, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fadd.h f28, f30, f17, dyn # perform operation
fadd.h f28, f30, f17, rdn # perform operation
fadd.h f28, f30, f17, rmm # perform operation
fadd.h f28, f30, f17, rne # perform operation
fadd.h f28, f30, f17, rtz # perform operation
fadd.h f28, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fadd.h f29, f27, f13, dyn # perform operation
fadd.h f29, f27, f13, rdn # perform operation
fadd.h f29, f27, f13, rmm # perform operation
fadd.h f29, f27, f13, rne # perform operation
fadd.h f29, f27, f13, rtz # perform operation
fadd.h f29, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f16, f19, f7, dyn # perform operation
fadd.h f16, f19, f7, rdn # perform operation
fadd.h f16, f19, f7, rmm # perform operation
fadd.h f16, f19, f7, rne # perform operation
fadd.h f16, f19, f7, rtz # perform operation
fadd.h f16, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fadd.h f19, f25, f26, dyn # perform operation
fadd.h f19, f25, f26, rdn # perform operation
fadd.h f19, f25, f26, rmm # perform operation
fadd.h f19, f25, f26, rne # perform operation
fadd.h f19, f25, f26, rtz # perform operation
fadd.h f19, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fadd.h f8, f30, f5, dyn # perform operation
fadd.h f8, f30, f5, rdn # perform operation
fadd.h f8, f30, f5, rmm # perform operation
fadd.h f8, f30, f5, rne # perform operation
fadd.h f8, f30, f5, rtz # perform operation
fadd.h f8, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fadd.h f24, f6, f17, dyn # perform operation
fadd.h f24, f6, f17, rdn # perform operation
fadd.h f24, f6, f17, rmm # perform operation
fadd.h f24, f6, f17, rne # perform operation
fadd.h f24, f6, f17, rtz # perform operation
fadd.h f24, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fadd.h f6, f27, f31, dyn # perform operation
fadd.h f6, f27, f31, rdn # perform operation
fadd.h f6, f27, f31, rmm # perform operation
fadd.h f6, f27, f31, rne # perform operation
fadd.h f6, f27, f31, rtz # perform operation
fadd.h f6, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fadd.h f28, f6, f9, dyn # perform operation
fadd.h f28, f6, f9, rdn # perform operation
fadd.h f28, f6, f9, rmm # perform operation
fadd.h f28, f6, f9, rne # perform operation
fadd.h f28, f6, f9, rtz # perform operation
fadd.h f28, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fadd.h f6, f7, f21, dyn # perform operation
fadd.h f6, f7, f21, rdn # perform operation
fadd.h f6, f7, f21, rmm # perform operation
fadd.h f6, f7, f21, rne # perform operation
fadd.h f6, f7, f21, rtz # perform operation
fadd.h f6, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
fadd.h f5, f17, f24, dyn # perform operation
fadd.h f5, f17, f24, rdn # perform operation
fadd.h f5, f17, f24, rmm # perform operation
fadd.h f5, f17, f24, rne # perform operation
fadd.h f5, f17, f24, rtz # perform operation
fadd.h f5, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fadd.h f25, f2, f8, dyn # perform operation
fadd.h f25, f2, f8, rdn # perform operation
fadd.h f25, f2, f8, rmm # perform operation
fadd.h f25, f2, f8, rne # perform operation
fadd.h f25, f2, f8, rtz # perform operation
fadd.h f25, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fadd.h f3, f20, f31, dyn # perform operation
fadd.h f3, f20, f31, rdn # perform operation
fadd.h f3, f20, f31, rmm # perform operation
fadd.h f3, f20, f31, rne # perform operation
fadd.h f3, f20, f31, rtz # perform operation
fadd.h f3, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
fadd.h f18, f11, f2, dyn # perform operation
fadd.h f18, f11, f2, rdn # perform operation
fadd.h f18, f11, f2, rmm # perform operation
fadd.h f18, f11, f2, rne # perform operation
fadd.h f18, f11, f2, rtz # perform operation
fadd.h f18, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f16, f27, f30, dyn # perform operation
fadd.h f16, f27, f30, rdn # perform operation
fadd.h f16, f27, f30, rmm # perform operation
fadd.h f16, f27, f30, rne # perform operation
fadd.h f16, f27, f30, rtz # perform operation
fadd.h f16, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fadd.h f26, f7, f30, dyn # perform operation
fadd.h f26, f7, f30, rdn # perform operation
fadd.h f26, f7, f30, rmm # perform operation
fadd.h f26, f7, f30, rne # perform operation
fadd.h f26, f7, f30, rtz # perform operation
fadd.h f26, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fadd.h f13, f17, f5, dyn # perform operation
fadd.h f13, f17, f5, rdn # perform operation
fadd.h f13, f17, f5, rmm # perform operation
fadd.h f13, f17, f5, rne # perform operation
fadd.h f13, f17, f5, rtz # perform operation
fadd.h f13, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fadd.h f5, f16, f28, dyn # perform operation
fadd.h f5, f16, f28, rdn # perform operation
fadd.h f5, f16, f28, rmm # perform operation
fadd.h f5, f16, f28, rne # perform operation
fadd.h f5, f16, f28, rtz # perform operation
fadd.h f5, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fadd.h f7, f14, f23, dyn # perform operation
fadd.h f7, f14, f23, rdn # perform operation
fadd.h f7, f14, f23, rmm # perform operation
fadd.h f7, f14, f23, rne # perform operation
fadd.h f7, f14, f23, rtz # perform operation
fadd.h f7, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fadd.h f1, f14, f19, dyn # perform operation
fadd.h f1, f14, f19, rdn # perform operation
fadd.h f1, f14, f19, rmm # perform operation
fadd.h f1, f14, f19, rne # perform operation
fadd.h f1, f14, f19, rtz # perform operation
fadd.h f1, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fadd.h f25, f5, f23, dyn # perform operation
fadd.h f25, f5, f23, rdn # perform operation
fadd.h f25, f5, f23, rmm # perform operation
fadd.h f25, f5, f23, rne # perform operation
fadd.h f25, f5, f23, rtz # perform operation
fadd.h f25, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fadd.h f2, f12, f6, dyn # perform operation
fadd.h f2, f12, f6, rdn # perform operation
fadd.h f2, f12, f6, rmm # perform operation
fadd.h f2, f12, f6, rne # perform operation
fadd.h f2, f12, f6, rtz # perform operation
fadd.h f2, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f12, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fadd.h f10, f25, f11, dyn # perform operation
fadd.h f10, f25, f11, rdn # perform operation
fadd.h f10, f25, f11, rmm # perform operation
fadd.h f10, f25, f11, rne # perform operation
fadd.h f10, f25, f11, rtz # perform operation
fadd.h f10, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fadd.h f24, f31, f11, dyn # perform operation
fadd.h f24, f31, f11, rdn # perform operation
fadd.h f24, f31, f11, rmm # perform operation
fadd.h f24, f31, f11, rne # perform operation
fadd.h f24, f31, f11, rtz # perform operation
fadd.h f24, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fadd.h f3, f16, f19, dyn # perform operation
fadd.h f3, f16, f19, rdn # perform operation
fadd.h f3, f16, f19, rmm # perform operation
fadd.h f3, f16, f19, rne # perform operation
fadd.h f3, f16, f19, rtz # perform operation
fadd.h f3, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fadd.h f1, f2, f5, dyn # perform operation
fadd.h f1, f2, f5, rdn # perform operation
fadd.h f1, f2, f5, rmm # perform operation
fadd.h f1, f2, f5, rne # perform operation
fadd.h f1, f2, f5, rtz # perform operation
fadd.h f1, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fadd.h f1, f8, f5, dyn # perform operation
fadd.h f1, f8, f5, rdn # perform operation
fadd.h f1, f8, f5, rmm # perform operation
fadd.h f1, f8, f5, rne # perform operation
fadd.h f1, f8, f5, rtz # perform operation
fadd.h f1, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fadd.h f21, f22, f18, dyn # perform operation
fadd.h f21, f22, f18, rdn # perform operation
fadd.h f21, f22, f18, rmm # perform operation
fadd.h f21, f22, f18, rne # perform operation
fadd.h f21, f22, f18, rtz # perform operation
fadd.h f21, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fadd.h f26, f30, f15, dyn # perform operation
fadd.h f26, f30, f15, rdn # perform operation
fadd.h f26, f30, f15, rmm # perform operation
fadd.h f26, f30, f15, rne # perform operation
fadd.h f26, f30, f15, rtz # perform operation
fadd.h f26, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fadd.h f31, f17, f7, dyn # perform operation
fadd.h f31, f17, f7, rdn # perform operation
fadd.h f31, f17, f7, rmm # perform operation
fadd.h f31, f17, f7, rne # perform operation
fadd.h f31, f17, f7, rtz # perform operation
fadd.h f31, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fadd.h f12, f30, f19, dyn # perform operation
fadd.h f12, f30, f19, rdn # perform operation
fadd.h f12, f30, f19, rmm # perform operation
fadd.h f12, f30, f19, rne # perform operation
fadd.h f12, f30, f19, rtz # perform operation
fadd.h f12, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fadd.h f28, f1, f22, dyn # perform operation
fadd.h f28, f1, f22, rdn # perform operation
fadd.h f28, f1, f22, rmm # perform operation
fadd.h f28, f1, f22, rne # perform operation
fadd.h f28, f1, f22, rtz # perform operation
fadd.h f28, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f8, f9, f19, dyn # perform operation
fadd.h f8, f9, f19, rdn # perform operation
fadd.h f8, f9, f19, rmm # perform operation
fadd.h f8, f9, f19, rne # perform operation
fadd.h f8, f9, f19, rtz # perform operation
fadd.h f8, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fadd.h f3, f11, f23, dyn # perform operation
fadd.h f3, f11, f23, rdn # perform operation
fadd.h f3, f11, f23, rmm # perform operation
fadd.h f3, f11, f23, rne # perform operation
fadd.h f3, f11, f23, rtz # perform operation
fadd.h f3, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fadd.h f14, f19, f13, dyn # perform operation
fadd.h f14, f19, f13, rdn # perform operation
fadd.h f14, f19, f13, rmm # perform operation
fadd.h f14, f19, f13, rne # perform operation
fadd.h f14, f19, f13, rtz # perform operation
fadd.h f14, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fadd.h f16, f14, f28, dyn # perform operation
fadd.h f16, f14, f28, rdn # perform operation
fadd.h f16, f14, f28, rmm # perform operation
fadd.h f16, f14, f28, rne # perform operation
fadd.h f16, f14, f28, rtz # perform operation
fadd.h f16, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fadd.h f15, f20, f30, dyn # perform operation
fadd.h f15, f20, f30, rdn # perform operation
fadd.h f15, f20, f30, rmm # perform operation
fadd.h f15, f20, f30, rne # perform operation
fadd.h f15, f20, f30, rtz # perform operation
fadd.h f15, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fadd.h f11, f29, f24, dyn # perform operation
fadd.h f11, f29, f24, rdn # perform operation
fadd.h f11, f29, f24, rmm # perform operation
fadd.h f11, f29, f24, rne # perform operation
fadd.h f11, f29, f24, rtz # perform operation
fadd.h f11, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fadd.h f17, f20, f18, dyn # perform operation
fadd.h f17, f20, f18, rdn # perform operation
fadd.h f17, f20, f18, rmm # perform operation
fadd.h f17, f20, f18, rne # perform operation
fadd.h f17, f20, f18, rtz # perform operation
fadd.h f17, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fadd.h f10, f28, f9, dyn # perform operation
fadd.h f10, f28, f9, rdn # perform operation
fadd.h f10, f28, f9, rmm # perform operation
fadd.h f10, f28, f9, rne # perform operation
fadd.h f10, f28, f9, rtz # perform operation
fadd.h f10, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fadd.h f20, f26, f23, dyn # perform operation
fadd.h f20, f26, f23, rdn # perform operation
fadd.h f20, f26, f23, rmm # perform operation
fadd.h f20, f26, f23, rne # perform operation
fadd.h f20, f26, f23, rtz # perform operation
fadd.h f20, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
fadd.h f26, f28, f15, dyn # perform operation
fadd.h f26, f28, f15, rdn # perform operation
fadd.h f26, f28, f15, rmm # perform operation
fadd.h f26, f28, f15, rne # perform operation
fadd.h f26, f28, f15, rtz # perform operation
fadd.h f26, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fadd.h f23, f20, f24, dyn # perform operation
fadd.h f23, f20, f24, rdn # perform operation
fadd.h f23, f20, f24, rmm # perform operation
fadd.h f23, f20, f24, rne # perform operation
fadd.h f23, f20, f24, rtz # perform operation
fadd.h f23, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fadd.h f5, f2, f9, dyn # perform operation
fadd.h f5, f2, f9, rdn # perform operation
fadd.h f5, f2, f9, rmm # perform operation
fadd.h f5, f2, f9, rne # perform operation
fadd.h f5, f2, f9, rtz # perform operation
fadd.h f5, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fadd.h f3, f29, f13, dyn # perform operation
fadd.h f3, f29, f13, rdn # perform operation
fadd.h f3, f29, f13, rmm # perform operation
fadd.h f3, f29, f13, rne # perform operation
fadd.h f3, f29, f13, rtz # perform operation
fadd.h f3, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fadd.h f16, f22, f5, dyn # perform operation
fadd.h f16, f22, f5, rdn # perform operation
fadd.h f16, f22, f5, rmm # perform operation
fadd.h f16, f22, f5, rne # perform operation
fadd.h f16, f22, f5, rtz # perform operation
fadd.h f16, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fadd.h f24, f8, f7, dyn # perform operation
fadd.h f24, f8, f7, rdn # perform operation
fadd.h f24, f8, f7, rmm # perform operation
fadd.h f24, f8, f7, rne # perform operation
fadd.h f24, f8, f7, rtz # perform operation
fadd.h f24, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f20, f17, f18, dyn # perform operation
fadd.h f20, f17, f18, rdn # perform operation
fadd.h f20, f17, f18, rmm # perform operation
fadd.h f20, f17, f18, rne # perform operation
fadd.h f20, f17, f18, rtz # perform operation
fadd.h f20, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fadd.h f14, f21, f6, dyn # perform operation
fadd.h f14, f21, f6, rdn # perform operation
fadd.h f14, f21, f6, rmm # perform operation
fadd.h f14, f21, f6, rne # perform operation
fadd.h f14, f21, f6, rtz # perform operation
fadd.h f14, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fadd.h f5, f31, f3, dyn # perform operation
fadd.h f5, f31, f3, rdn # perform operation
fadd.h f5, f31, f3, rmm # perform operation
fadd.h f5, f31, f3, rne # perform operation
fadd.h f5, f31, f3, rtz # perform operation
fadd.h f5, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fadd.h f25, f26, f8, dyn # perform operation
fadd.h f25, f26, f8, rdn # perform operation
fadd.h f25, f26, f8, rmm # perform operation
fadd.h f25, f26, f8, rne # perform operation
fadd.h f25, f26, f8, rtz # perform operation
fadd.h f25, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f23, f19, f25, dyn # perform operation
fadd.h f23, f19, f25, rdn # perform operation
fadd.h f23, f19, f25, rmm # perform operation
fadd.h f23, f19, f25, rne # perform operation
fadd.h f23, f19, f25, rtz # perform operation
fadd.h f23, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fadd.h f26, f1, f30, dyn # perform operation
fadd.h f26, f1, f30, rdn # perform operation
fadd.h f26, f1, f30, rmm # perform operation
fadd.h f26, f1, f30, rne # perform operation
fadd.h f26, f1, f30, rtz # perform operation
fadd.h f26, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fadd.h f27, f21, f13, dyn # perform operation
fadd.h f27, f21, f13, rdn # perform operation
fadd.h f27, f21, f13, rmm # perform operation
fadd.h f27, f21, f13, rne # perform operation
fadd.h f27, f21, f13, rtz # perform operation
fadd.h f27, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fadd.h f2, f19, f27, dyn # perform operation
fadd.h f2, f19, f27, rdn # perform operation
fadd.h f2, f19, f27, rmm # perform operation
fadd.h f2, f19, f27, rne # perform operation
fadd.h f2, f19, f27, rtz # perform operation
fadd.h f2, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fadd.h f29, f26, f16, dyn # perform operation
fadd.h f29, f26, f16, rdn # perform operation
fadd.h f29, f26, f16, rmm # perform operation
fadd.h f29, f26, f16, rne # perform operation
fadd.h f29, f26, f16, rtz # perform operation
fadd.h f29, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fadd.h f13, f5, f6, dyn # perform operation
fadd.h f13, f5, f6, rdn # perform operation
fadd.h f13, f5, f6, rmm # perform operation
fadd.h f13, f5, f6, rne # perform operation
fadd.h f13, f5, f6, rtz # perform operation
fadd.h f13, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fadd.h f15, f19, f14, dyn # perform operation
fadd.h f15, f19, f14, rdn # perform operation
fadd.h f15, f19, f14, rmm # perform operation
fadd.h f15, f19, f14, rne # perform operation
fadd.h f15, f19, f14, rtz # perform operation
fadd.h f15, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fadd.h f19, f15, f27, dyn # perform operation
fadd.h f19, f15, f27, rdn # perform operation
fadd.h f19, f15, f27, rmm # perform operation
fadd.h f19, f15, f27, rne # perform operation
fadd.h f19, f15, f27, rtz # perform operation
fadd.h f19, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fadd.h f28, f15, f14, dyn # perform operation
fadd.h f28, f15, f14, rdn # perform operation
fadd.h f28, f15, f14, rmm # perform operation
fadd.h f28, f15, f14, rne # perform operation
fadd.h f28, f15, f14, rtz # perform operation
fadd.h f28, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fadd.h f22, f17, f7, dyn # perform operation
fadd.h f22, f17, f7, rdn # perform operation
fadd.h f22, f17, f7, rmm # perform operation
fadd.h f22, f17, f7, rne # perform operation
fadd.h f22, f17, f7, rtz # perform operation
fadd.h f22, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fadd.h f9, f1, f15, dyn # perform operation
fadd.h f9, f1, f15, rdn # perform operation
fadd.h f9, f1, f15, rmm # perform operation
fadd.h f9, f1, f15, rne # perform operation
fadd.h f9, f1, f15, rtz # perform operation
fadd.h f9, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fadd.h f26, f6, f16, dyn # perform operation
fadd.h f26, f6, f16, rdn # perform operation
fadd.h f26, f6, f16, rmm # perform operation
fadd.h f26, f6, f16, rne # perform operation
fadd.h f26, f6, f16, rtz # perform operation
fadd.h f26, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fadd.h f1, f29, f30, dyn # perform operation
fadd.h f1, f29, f30, rdn # perform operation
fadd.h f1, f29, f30, rmm # perform operation
fadd.h f1, f29, f30, rne # perform operation
fadd.h f1, f29, f30, rtz # perform operation
fadd.h f1, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fadd.h f11, f5, f8, dyn # perform operation
fadd.h f11, f5, f8, rdn # perform operation
fadd.h f11, f5, f8, rmm # perform operation
fadd.h f11, f5, f8, rne # perform operation
fadd.h f11, f5, f8, rtz # perform operation
fadd.h f11, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fadd.h f9, f16, f24, dyn # perform operation
fadd.h f9, f16, f24, rdn # perform operation
fadd.h f9, f16, f24, rmm # perform operation
fadd.h f9, f16, f24, rne # perform operation
fadd.h f9, f16, f24, rtz # perform operation
fadd.h f9, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fadd.h f3, f2, f22, dyn # perform operation
fadd.h f3, f2, f22, rdn # perform operation
fadd.h f3, f2, f22, rmm # perform operation
fadd.h f3, f2, f22, rne # perform operation
fadd.h f3, f2, f22, rtz # perform operation
fadd.h f3, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fadd.h f15, f23, f11, dyn # perform operation
fadd.h f15, f23, f11, rdn # perform operation
fadd.h f15, f23, f11, rmm # perform operation
fadd.h f15, f23, f11, rne # perform operation
fadd.h f15, f23, f11, rtz # perform operation
fadd.h f15, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fadd.h f18, f28, f2, dyn # perform operation
fadd.h f18, f28, f2, rdn # perform operation
fadd.h f18, f28, f2, rmm # perform operation
fadd.h f18, f28, f2, rne # perform operation
fadd.h f18, f28, f2, rtz # perform operation
fadd.h f18, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fadd.h f31, f11, f27, dyn # perform operation
fadd.h f31, f11, f27, rdn # perform operation
fadd.h f31, f11, f27, rmm # perform operation
fadd.h f31, f11, f27, rne # perform operation
fadd.h f31, f11, f27, rtz # perform operation
fadd.h f31, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fadd.h f7, f5, f16, dyn # perform operation
fadd.h f7, f5, f16, rdn # perform operation
fadd.h f7, f5, f16, rmm # perform operation
fadd.h f7, f5, f16, rne # perform operation
fadd.h f7, f5, f16, rtz # perform operation
fadd.h f7, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fadd.h f15, f3, f8, dyn # perform operation
fadd.h f15, f3, f8, rdn # perform operation
fadd.h f15, f3, f8, rmm # perform operation
fadd.h f15, f3, f8, rne # perform operation
fadd.h f15, f3, f8, rtz # perform operation
fadd.h f15, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fadd.h f14, f27, f12, dyn # perform operation
fadd.h f14, f27, f12, rdn # perform operation
fadd.h f14, f27, f12, rmm # perform operation
fadd.h f14, f27, f12, rne # perform operation
fadd.h f14, f27, f12, rtz # perform operation
fadd.h f14, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fadd.h f11, f3, f1, dyn # perform operation
fadd.h f11, f3, f1, rdn # perform operation
fadd.h f11, f3, f1, rmm # perform operation
fadd.h f11, f3, f1, rne # perform operation
fadd.h f11, f3, f1, rtz # perform operation
fadd.h f11, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fadd.h f2, f12, f20, dyn # perform operation
fadd.h f2, f12, f20, rdn # perform operation
fadd.h f2, f12, f20, rmm # perform operation
fadd.h f2, f12, f20, rne # perform operation
fadd.h f2, f12, f20, rtz # perform operation
fadd.h f2, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fadd.h f10, f7, f26, dyn # perform operation
fadd.h f10, f7, f26, rdn # perform operation
fadd.h f10, f7, f26, rmm # perform operation
fadd.h f10, f7, f26, rne # perform operation
fadd.h f10, f7, f26, rtz # perform operation
fadd.h f10, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fadd.h f9, f11, f26, dyn # perform operation
fadd.h f9, f11, f26, rdn # perform operation
fadd.h f9, f11, f26, rmm # perform operation
fadd.h f9, f11, f26, rne # perform operation
fadd.h f9, f11, f26, rtz # perform operation
fadd.h f9, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fadd.h f11, f24, f5, dyn # perform operation
fadd.h f11, f24, f5, rdn # perform operation
fadd.h f11, f24, f5, rmm # perform operation
fadd.h f11, f24, f5, rne # perform operation
fadd.h f11, f24, f5, rtz # perform operation
fadd.h f11, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f11, f14, f13, dyn # perform operation
fadd.h f11, f14, f13, rdn # perform operation
fadd.h f11, f14, f13, rmm # perform operation
fadd.h f11, f14, f13, rne # perform operation
fadd.h f11, f14, f13, rtz # perform operation
fadd.h f11, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fadd.h f15, f16, f23, dyn # perform operation
fadd.h f15, f16, f23, rdn # perform operation
fadd.h f15, f16, f23, rmm # perform operation
fadd.h f15, f16, f23, rne # perform operation
fadd.h f15, f16, f23, rtz # perform operation
fadd.h f15, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fadd.h f26, f7, f21, dyn # perform operation
fadd.h f26, f7, f21, rdn # perform operation
fadd.h f26, f7, f21, rmm # perform operation
fadd.h f26, f7, f21, rne # perform operation
fadd.h f26, f7, f21, rtz # perform operation
fadd.h f26, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fadd.h f21, f23, f30, dyn # perform operation
fadd.h f21, f23, f30, rdn # perform operation
fadd.h f21, f23, f30, rmm # perform operation
fadd.h f21, f23, f30, rne # perform operation
fadd.h f21, f23, f30, rtz # perform operation
fadd.h f21, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fadd.h f24, f12, f19, dyn # perform operation
fadd.h f24, f12, f19, rdn # perform operation
fadd.h f24, f12, f19, rmm # perform operation
fadd.h f24, f12, f19, rne # perform operation
fadd.h f24, f12, f19, rtz # perform operation
fadd.h f24, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fadd.h f12, f2, f11, dyn # perform operation
fadd.h f12, f2, f11, rdn # perform operation
fadd.h f12, f2, f11, rmm # perform operation
fadd.h f12, f2, f11, rne # perform operation
fadd.h f12, f2, f11, rtz # perform operation
fadd.h f12, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fadd.h f25, f19, f16, dyn # perform operation
fadd.h f25, f19, f16, rdn # perform operation
fadd.h f25, f19, f16, rmm # perform operation
fadd.h f25, f19, f16, rne # perform operation
fadd.h f25, f19, f16, rtz # perform operation
fadd.h f25, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f2, f22, f18, dyn # perform operation
fadd.h f2, f22, f18, rdn # perform operation
fadd.h f2, f22, f18, rmm # perform operation
fadd.h f2, f22, f18, rne # perform operation
fadd.h f2, f22, f18, rtz # perform operation
fadd.h f2, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fadd.h f1, f7, f8, dyn # perform operation
fadd.h f1, f7, f8, rdn # perform operation
fadd.h f1, f7, f8, rmm # perform operation
fadd.h f1, f7, f8, rne # perform operation
fadd.h f1, f7, f8, rtz # perform operation
fadd.h f1, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fadd.h f19, f23, f25, dyn # perform operation
fadd.h f19, f23, f25, rdn # perform operation
fadd.h f19, f23, f25, rmm # perform operation
fadd.h f19, f23, f25, rne # perform operation
fadd.h f19, f23, f25, rtz # perform operation
fadd.h f19, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fadd.h f5, f17, f12, dyn # perform operation
fadd.h f5, f17, f12, rdn # perform operation
fadd.h f5, f17, f12, rmm # perform operation
fadd.h f5, f17, f12, rne # perform operation
fadd.h f5, f17, f12, rtz # perform operation
fadd.h f5, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fadd.h f8, f12, f14, dyn # perform operation
fadd.h f8, f12, f14, rdn # perform operation
fadd.h f8, f12, f14, rmm # perform operation
fadd.h f8, f12, f14, rne # perform operation
fadd.h f8, f12, f14, rtz # perform operation
fadd.h f8, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fadd.h f24, f20, f9, dyn # perform operation
fadd.h f24, f20, f9, rdn # perform operation
fadd.h f24, f20, f9, rmm # perform operation
fadd.h f24, f20, f9, rne # perform operation
fadd.h f24, f20, f9, rtz # perform operation
fadd.h f24, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fadd.h f8, f26, f31, dyn # perform operation
fadd.h f8, f26, f31, rdn # perform operation
fadd.h f8, f26, f31, rmm # perform operation
fadd.h f8, f26, f31, rne # perform operation
fadd.h f8, f26, f31, rtz # perform operation
fadd.h f8, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fadd.h f29, f28, f23, dyn # perform operation
fadd.h f29, f28, f23, rdn # perform operation
fadd.h f29, f28, f23, rmm # perform operation
fadd.h f29, f28, f23, rne # perform operation
fadd.h f29, f28, f23, rtz # perform operation
fadd.h f29, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fadd.h f18, f30, f8, dyn # perform operation
fadd.h f18, f30, f8, rdn # perform operation
fadd.h f18, f30, f8, rmm # perform operation
fadd.h f18, f30, f8, rne # perform operation
fadd.h f18, f30, f8, rtz # perform operation
fadd.h f18, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
fadd.h f21, f23, f7, dyn # perform operation
fadd.h f21, f23, f7, rdn # perform operation
fadd.h f21, f23, f7, rmm # perform operation
fadd.h f21, f23, f7, rne # perform operation
fadd.h f21, f23, f7, rtz # perform operation
fadd.h f21, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fadd.h f13, f9, f11, dyn # perform operation
fadd.h f13, f9, f11, rdn # perform operation
fadd.h f13, f9, f11, rmm # perform operation
fadd.h f13, f9, f11, rne # perform operation
fadd.h f13, f9, f11, rtz # perform operation
fadd.h f13, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fadd.h f3, f20, f1, dyn # perform operation
fadd.h f3, f20, f1, rdn # perform operation
fadd.h f3, f20, f1, rmm # perform operation
fadd.h f3, f20, f1, rne # perform operation
fadd.h f3, f20, f1, rtz # perform operation
fadd.h f3, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
fadd.h f5, f17, f9, dyn # perform operation
fadd.h f5, f17, f9, rdn # perform operation
fadd.h f5, f17, f9, rmm # perform operation
fadd.h f5, f17, f9, rne # perform operation
fadd.h f5, f17, f9, rtz # perform operation
fadd.h f5, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f12, f23, f30, dyn # perform operation
fadd.h f12, f23, f30, rdn # perform operation
fadd.h f12, f23, f30, rmm # perform operation
fadd.h f12, f23, f30, rne # perform operation
fadd.h f12, f23, f30, rtz # perform operation
fadd.h f12, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fadd.h f23, f18, f3, dyn # perform operation
fadd.h f23, f18, f3, rdn # perform operation
fadd.h f23, f18, f3, rmm # perform operation
fadd.h f23, f18, f3, rne # perform operation
fadd.h f23, f18, f3, rtz # perform operation
fadd.h f23, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fadd.h f22, f30, f21, dyn # perform operation
fadd.h f22, f30, f21, rdn # perform operation
fadd.h f22, f30, f21, rmm # perform operation
fadd.h f22, f30, f21, rne # perform operation
fadd.h f22, f30, f21, rtz # perform operation
fadd.h f22, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f18, f7, f29, dyn # perform operation
fadd.h f18, f7, f29, rdn # perform operation
fadd.h f18, f7, f29, rmm # perform operation
fadd.h f18, f7, f29, rne # perform operation
fadd.h f18, f7, f29, rtz # perform operation
fadd.h f18, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fadd.h f19, f30, f21, dyn # perform operation
fadd.h f19, f30, f21, rdn # perform operation
fadd.h f19, f30, f21, rmm # perform operation
fadd.h f19, f30, f21, rne # perform operation
fadd.h f19, f30, f21, rtz # perform operation
fadd.h f19, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fadd.h f11, f20, f16, dyn # perform operation
fadd.h f11, f20, f16, rdn # perform operation
fadd.h f11, f20, f16, rmm # perform operation
fadd.h f11, f20, f16, rne # perform operation
fadd.h f11, f20, f16, rtz # perform operation
fadd.h f11, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fadd.h f23, f29, f7, dyn # perform operation
fadd.h f23, f29, f7, rdn # perform operation
fadd.h f23, f29, f7, rmm # perform operation
fadd.h f23, f29, f7, rne # perform operation
fadd.h f23, f29, f7, rtz # perform operation
fadd.h f23, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fadd.h f2, f19, f17, dyn # perform operation
fadd.h f2, f19, f17, rdn # perform operation
fadd.h f2, f19, f17, rmm # perform operation
fadd.h f2, f19, f17, rne # perform operation
fadd.h f2, f19, f17, rtz # perform operation
fadd.h f2, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fadd.h f31, f8, f15, dyn # perform operation
fadd.h f31, f8, f15, rdn # perform operation
fadd.h f31, f8, f15, rmm # perform operation
fadd.h f31, f8, f15, rne # perform operation
fadd.h f31, f8, f15, rtz # perform operation
fadd.h f31, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fadd.h f1, f24, f19, dyn # perform operation
fadd.h f1, f24, f19, rdn # perform operation
fadd.h f1, f24, f19, rmm # perform operation
fadd.h f1, f24, f19, rne # perform operation
fadd.h f1, f24, f19, rtz # perform operation
fadd.h f1, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fadd.h f2, f20, f23, dyn # perform operation
fadd.h f2, f20, f23, rdn # perform operation
fadd.h f2, f20, f23, rmm # perform operation
fadd.h f2, f20, f23, rne # perform operation
fadd.h f2, f20, f23, rtz # perform operation
fadd.h f2, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fadd.h f5, f17, f23, dyn # perform operation
fadd.h f5, f17, f23, rdn # perform operation
fadd.h f5, f17, f23, rmm # perform operation
fadd.h f5, f17, f23, rne # perform operation
fadd.h f5, f17, f23, rtz # perform operation
fadd.h f5, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fadd.h f1, f26, f14, dyn # perform operation
fadd.h f1, f26, f14, rdn # perform operation
fadd.h f1, f26, f14, rmm # perform operation
fadd.h f1, f26, f14, rne # perform operation
fadd.h f1, f26, f14, rtz # perform operation
fadd.h f1, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fadd.h f3, f7, f20, dyn # perform operation
fadd.h f3, f7, f20, rdn # perform operation
fadd.h f3, f7, f20, rmm # perform operation
fadd.h f3, f7, f20, rne # perform operation
fadd.h f3, f7, f20, rtz # perform operation
fadd.h f3, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fadd.h f28, f8, f11, dyn # perform operation
fadd.h f28, f8, f11, rdn # perform operation
fadd.h f28, f8, f11, rmm # perform operation
fadd.h f28, f8, f11, rne # perform operation
fadd.h f28, f8, f11, rtz # perform operation
fadd.h f28, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fadd.h f21, f16, f22, dyn # perform operation
fadd.h f21, f16, f22, rdn # perform operation
fadd.h f21, f16, f22, rmm # perform operation
fadd.h f21, f16, f22, rne # perform operation
fadd.h f21, f16, f22, rtz # perform operation
fadd.h f21, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fadd.h f13, f17, f16, dyn # perform operation
fadd.h f13, f17, f16, rdn # perform operation
fadd.h f13, f17, f16, rmm # perform operation
fadd.h f13, f17, f16, rne # perform operation
fadd.h f13, f17, f16, rtz # perform operation
fadd.h f13, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fadd.h f13, f26, f27, dyn # perform operation
fadd.h f13, f26, f27, rdn # perform operation
fadd.h f13, f26, f27, rmm # perform operation
fadd.h f13, f26, f27, rne # perform operation
fadd.h f13, f26, f27, rtz # perform operation
fadd.h f13, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fadd.h f31, f10, f24, dyn # perform operation
fadd.h f31, f10, f24, rdn # perform operation
fadd.h f31, f10, f24, rmm # perform operation
fadd.h f31, f10, f24, rne # perform operation
fadd.h f31, f10, f24, rtz # perform operation
fadd.h f31, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fadd.h f19, f23, f27, dyn # perform operation
fadd.h f19, f23, f27, rdn # perform operation
fadd.h f19, f23, f27, rmm # perform operation
fadd.h f19, f23, f27, rne # perform operation
fadd.h f19, f23, f27, rtz # perform operation
fadd.h f19, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fadd.h f5, f13, f28, dyn # perform operation
fadd.h f5, f13, f28, rdn # perform operation
fadd.h f5, f13, f28, rmm # perform operation
fadd.h f5, f13, f28, rne # perform operation
fadd.h f5, f13, f28, rtz # perform operation
fadd.h f5, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fadd.h f6, f26, f7, dyn # perform operation
fadd.h f6, f26, f7, rdn # perform operation
fadd.h f6, f26, f7, rmm # perform operation
fadd.h f6, f26, f7, rne # perform operation
fadd.h f6, f26, f7, rtz # perform operation
fadd.h f6, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fadd.h f12, f3, f9, dyn # perform operation
fadd.h f12, f3, f9, rdn # perform operation
fadd.h f12, f3, f9, rmm # perform operation
fadd.h f12, f3, f9, rne # perform operation
fadd.h f12, f3, f9, rtz # perform operation
fadd.h f12, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fadd.h f14, f24, f25, dyn # perform operation
fadd.h f14, f24, f25, rdn # perform operation
fadd.h f14, f24, f25, rmm # perform operation
fadd.h f14, f24, f25, rne # perform operation
fadd.h f14, f24, f25, rtz # perform operation
fadd.h f14, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
fadd.h f24, f26, f19, dyn # perform operation
fadd.h f24, f26, f19, rdn # perform operation
fadd.h f24, f26, f19, rmm # perform operation
fadd.h f24, f26, f19, rne # perform operation
fadd.h f24, f26, f19, rtz # perform operation
fadd.h f24, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fadd.h f1, f9, f27, dyn # perform operation
fadd.h f1, f9, f27, rdn # perform operation
fadd.h f1, f9, f27, rmm # perform operation
fadd.h f1, f9, f27, rne # perform operation
fadd.h f1, f9, f27, rtz # perform operation
fadd.h f1, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fadd.h f14, f12, f15, dyn # perform operation
fadd.h f14, f12, f15, rdn # perform operation
fadd.h f14, f12, f15, rmm # perform operation
fadd.h f14, f12, f15, rne # perform operation
fadd.h f14, f12, f15, rtz # perform operation
fadd.h f14, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fadd.h f16, f7, f1, dyn # perform operation
fadd.h f16, f7, f1, rdn # perform operation
fadd.h f16, f7, f1, rmm # perform operation
fadd.h f16, f7, f1, rne # perform operation
fadd.h f16, f7, f1, rtz # perform operation
fadd.h f16, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fadd.h f24, f25, f16, dyn # perform operation
fadd.h f24, f25, f16, rdn # perform operation
fadd.h f24, f25, f16, rmm # perform operation
fadd.h f24, f25, f16, rne # perform operation
fadd.h f24, f25, f16, rtz # perform operation
fadd.h f24, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fadd.h f9, f3, f10, dyn # perform operation
fadd.h f9, f3, f10, rdn # perform operation
fadd.h f9, f3, f10, rmm # perform operation
fadd.h f9, f3, f10, rne # perform operation
fadd.h f9, f3, f10, rtz # perform operation
fadd.h f9, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fadd.h f19, f3, f1, dyn # perform operation
fadd.h f19, f3, f1, rdn # perform operation
fadd.h f19, f3, f1, rmm # perform operation
fadd.h f19, f3, f1, rne # perform operation
fadd.h f19, f3, f1, rtz # perform operation
fadd.h f19, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fadd.h f23, f8, f12, dyn # perform operation
fadd.h f23, f8, f12, rdn # perform operation
fadd.h f23, f8, f12, rmm # perform operation
fadd.h f23, f8, f12, rne # perform operation
fadd.h f23, f8, f12, rtz # perform operation
fadd.h f23, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fadd.h f2, f31, f3, dyn # perform operation
fadd.h f2, f31, f3, rdn # perform operation
fadd.h f2, f31, f3, rmm # perform operation
fadd.h f2, f31, f3, rne # perform operation
fadd.h f2, f31, f3, rtz # perform operation
fadd.h f2, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fadd.h f20, f27, f16, dyn # perform operation
fadd.h f20, f27, f16, rdn # perform operation
fadd.h f20, f27, f16, rmm # perform operation
fadd.h f20, f27, f16, rne # perform operation
fadd.h f20, f27, f16, rtz # perform operation
fadd.h f20, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fadd.h f11, f16, f1, dyn # perform operation
fadd.h f11, f16, f1, rdn # perform operation
fadd.h f11, f16, f1, rmm # perform operation
fadd.h f11, f16, f1, rne # perform operation
fadd.h f11, f16, f1, rtz # perform operation
fadd.h f11, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fadd.h f3, f20, f19, dyn # perform operation
fadd.h f3, f20, f19, rdn # perform operation
fadd.h f3, f20, f19, rmm # perform operation
fadd.h f3, f20, f19, rne # perform operation
fadd.h f3, f20, f19, rtz # perform operation
fadd.h f3, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fadd.h f12, f27, f1, dyn # perform operation
fadd.h f12, f27, f1, rdn # perform operation
fadd.h f12, f27, f1, rmm # perform operation
fadd.h f12, f27, f1, rne # perform operation
fadd.h f12, f27, f1, rtz # perform operation
fadd.h f12, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f27, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fadd.h f26, f23, f10, dyn # perform operation
fadd.h f26, f23, f10, rdn # perform operation
fadd.h f26, f23, f10, rmm # perform operation
fadd.h f26, f23, f10, rne # perform operation
fadd.h f26, f23, f10, rtz # perform operation
fadd.h f26, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fadd.h f21, f14, f15, dyn # perform operation
fadd.h f21, f14, f15, rdn # perform operation
fadd.h f21, f14, f15, rmm # perform operation
fadd.h f21, f14, f15, rne # perform operation
fadd.h f21, f14, f15, rtz # perform operation
fadd.h f21, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fadd.h f24, f9, f3, dyn # perform operation
fadd.h f24, f9, f3, rdn # perform operation
fadd.h f24, f9, f3, rmm # perform operation
fadd.h f24, f9, f3, rne # perform operation
fadd.h f24, f9, f3, rtz # perform operation
fadd.h f24, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fadd.h f31, f5, f25, dyn # perform operation
fadd.h f31, f5, f25, rdn # perform operation
fadd.h f31, f5, f25, rmm # perform operation
fadd.h f31, f5, f25, rne # perform operation
fadd.h f31, f5, f25, rtz # perform operation
fadd.h f31, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fadd.h f7, f21, f31, dyn # perform operation
fadd.h f7, f21, f31, rdn # perform operation
fadd.h f7, f21, f31, rmm # perform operation
fadd.h f7, f21, f31, rne # perform operation
fadd.h f7, f21, f31, rtz # perform operation
fadd.h f7, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fadd.h f21, f13, f28, dyn # perform operation
fadd.h f21, f13, f28, rdn # perform operation
fadd.h f21, f13, f28, rmm # perform operation
fadd.h f21, f13, f28, rne # perform operation
fadd.h f21, f13, f28, rtz # perform operation
fadd.h f21, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f16, f19, f18, dyn # perform operation
fadd.h f16, f19, f18, rdn # perform operation
fadd.h f16, f19, f18, rmm # perform operation
fadd.h f16, f19, f18, rne # perform operation
fadd.h f16, f19, f18, rtz # perform operation
fadd.h f16, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fadd.h f10, f21, f22, dyn # perform operation
fadd.h f10, f21, f22, rdn # perform operation
fadd.h f10, f21, f22, rmm # perform operation
fadd.h f10, f21, f22, rne # perform operation
fadd.h f10, f21, f22, rtz # perform operation
fadd.h f10, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fadd.h f26, f14, f22, dyn # perform operation
fadd.h f26, f14, f22, rdn # perform operation
fadd.h f26, f14, f22, rmm # perform operation
fadd.h f26, f14, f22, rne # perform operation
fadd.h f26, f14, f22, rtz # perform operation
fadd.h f26, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fadd.h f6, f16, f23, dyn # perform operation
fadd.h f6, f16, f23, rdn # perform operation
fadd.h f6, f16, f23, rmm # perform operation
fadd.h f6, f16, f23, rne # perform operation
fadd.h f6, f16, f23, rtz # perform operation
fadd.h f6, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fadd.h f9, f17, f29, dyn # perform operation
fadd.h f9, f17, f29, rdn # perform operation
fadd.h f9, f17, f29, rmm # perform operation
fadd.h f9, f17, f29, rne # perform operation
fadd.h f9, f17, f29, rtz # perform operation
fadd.h f9, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fadd.h f6, f16, f20, dyn # perform operation
fadd.h f6, f16, f20, rdn # perform operation
fadd.h f6, f16, f20, rmm # perform operation
fadd.h f6, f16, f20, rne # perform operation
fadd.h f6, f16, f20, rtz # perform operation
fadd.h f6, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fadd.h f13, f26, f20, dyn # perform operation
fadd.h f13, f26, f20, rdn # perform operation
fadd.h f13, f26, f20, rmm # perform operation
fadd.h f13, f26, f20, rne # perform operation
fadd.h f13, f26, f20, rtz # perform operation
fadd.h f13, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fadd.h f2, f3, f5, dyn # perform operation
fadd.h f2, f3, f5, rdn # perform operation
fadd.h f2, f3, f5, rmm # perform operation
fadd.h f2, f3, f5, rne # perform operation
fadd.h f2, f3, f5, rtz # perform operation
fadd.h f2, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fadd.h f31, f29, f11, dyn # perform operation
fadd.h f31, f29, f11, rdn # perform operation
fadd.h f31, f29, f11, rmm # perform operation
fadd.h f31, f29, f11, rne # perform operation
fadd.h f31, f29, f11, rtz # perform operation
fadd.h f31, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fadd.h f26, f21, f1, dyn # perform operation
fadd.h f26, f21, f1, rdn # perform operation
fadd.h f26, f21, f1, rmm # perform operation
fadd.h f26, f21, f1, rne # perform operation
fadd.h f26, f21, f1, rtz # perform operation
fadd.h f26, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fadd.h f30, f2, f17, dyn # perform operation
fadd.h f30, f2, f17, rdn # perform operation
fadd.h f30, f2, f17, rmm # perform operation
fadd.h f30, f2, f17, rne # perform operation
fadd.h f30, f2, f17, rtz # perform operation
fadd.h f30, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fadd.h f6, f30, f15, dyn # perform operation
fadd.h f6, f30, f15, rdn # perform operation
fadd.h f6, f30, f15, rmm # perform operation
fadd.h f6, f30, f15, rne # perform operation
fadd.h f6, f30, f15, rtz # perform operation
fadd.h f6, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fadd.h f3, f1, f21, dyn # perform operation
fadd.h f3, f1, f21, rdn # perform operation
fadd.h f3, f1, f21, rmm # perform operation
fadd.h f3, f1, f21, rne # perform operation
fadd.h f3, f1, f21, rtz # perform operation
fadd.h f3, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f12, f2, f8, dyn # perform operation
fadd.h f12, f2, f8, rdn # perform operation
fadd.h f12, f2, f8, rmm # perform operation
fadd.h f12, f2, f8, rne # perform operation
fadd.h f12, f2, f8, rtz # perform operation
fadd.h f12, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fadd.h f24, f17, f12, dyn # perform operation
fadd.h f24, f17, f12, rdn # perform operation
fadd.h f24, f17, f12, rmm # perform operation
fadd.h f24, f17, f12, rne # perform operation
fadd.h f24, f17, f12, rtz # perform operation
fadd.h f24, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fadd.h f30, f16, f24, dyn # perform operation
fadd.h f30, f16, f24, rdn # perform operation
fadd.h f30, f16, f24, rmm # perform operation
fadd.h f30, f16, f24, rne # perform operation
fadd.h f30, f16, f24, rtz # perform operation
fadd.h f30, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fadd.h f20, f31, f15, dyn # perform operation
fadd.h f20, f31, f15, rdn # perform operation
fadd.h f20, f31, f15, rmm # perform operation
fadd.h f20, f31, f15, rne # perform operation
fadd.h f20, f31, f15, rtz # perform operation
fadd.h f20, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fadd.h f12, f9, f16, dyn # perform operation
fadd.h f12, f9, f16, rdn # perform operation
fadd.h f12, f9, f16, rmm # perform operation
fadd.h f12, f9, f16, rne # perform operation
fadd.h f12, f9, f16, rtz # perform operation
fadd.h f12, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fadd.h f15, f10, f22, dyn # perform operation
fadd.h f15, f10, f22, rdn # perform operation
fadd.h f15, f10, f22, rmm # perform operation
fadd.h f15, f10, f22, rne # perform operation
fadd.h f15, f10, f22, rtz # perform operation
fadd.h f15, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fadd.h f11, f27, f5, dyn # perform operation
fadd.h f11, f27, f5, rdn # perform operation
fadd.h f11, f27, f5, rmm # perform operation
fadd.h f11, f27, f5, rne # perform operation
fadd.h f11, f27, f5, rtz # perform operation
fadd.h f11, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fadd.h f19, f30, f9, dyn # perform operation
fadd.h f19, f30, f9, rdn # perform operation
fadd.h f19, f30, f9, rmm # perform operation
fadd.h f19, f30, f9, rne # perform operation
fadd.h f19, f30, f9, rtz # perform operation
fadd.h f19, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fadd.h f25, f1, f15, dyn # perform operation
fadd.h f25, f1, f15, rdn # perform operation
fadd.h f25, f1, f15, rmm # perform operation
fadd.h f25, f1, f15, rne # perform operation
fadd.h f25, f1, f15, rtz # perform operation
fadd.h f25, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fadd.h f18, f2, f8, dyn # perform operation
fadd.h f18, f2, f8, rdn # perform operation
fadd.h f18, f2, f8, rmm # perform operation
fadd.h f18, f2, f8, rne # perform operation
fadd.h f18, f2, f8, rtz # perform operation
fadd.h f18, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fadd.h f31, f3, f11, dyn # perform operation
fadd.h f31, f3, f11, rdn # perform operation
fadd.h f31, f3, f11, rmm # perform operation
fadd.h f31, f3, f11, rne # perform operation
fadd.h f31, f3, f11, rtz # perform operation
fadd.h f31, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fadd.h f6, f31, f7, dyn # perform operation
fadd.h f6, f31, f7, rdn # perform operation
fadd.h f6, f31, f7, rmm # perform operation
fadd.h f6, f31, f7, rne # perform operation
fadd.h f6, f31, f7, rtz # perform operation
fadd.h f6, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fadd.h f14, f2, f13, dyn # perform operation
fadd.h f14, f2, f13, rdn # perform operation
fadd.h f14, f2, f13, rmm # perform operation
fadd.h f14, f2, f13, rne # perform operation
fadd.h f14, f2, f13, rtz # perform operation
fadd.h f14, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fadd.h f15, f5, f30, dyn # perform operation
fadd.h f15, f5, f30, rdn # perform operation
fadd.h f15, f5, f30, rmm # perform operation
fadd.h f15, f5, f30, rne # perform operation
fadd.h f15, f5, f30, rtz # perform operation
fadd.h f15, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fadd.h f2, f23, f6, dyn # perform operation
fadd.h f2, f23, f6, rdn # perform operation
fadd.h f2, f23, f6, rmm # perform operation
fadd.h f2, f23, f6, rne # perform operation
fadd.h f2, f23, f6, rtz # perform operation
fadd.h f2, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fadd.h f27, f14, f21, dyn # perform operation
fadd.h f27, f14, f21, rdn # perform operation
fadd.h f27, f14, f21, rmm # perform operation
fadd.h f27, f14, f21, rne # perform operation
fadd.h f27, f14, f21, rtz # perform operation
fadd.h f27, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fadd.h f8, f9, f29, dyn # perform operation
fadd.h f8, f9, f29, rdn # perform operation
fadd.h f8, f9, f29, rmm # perform operation
fadd.h f8, f9, f29, rne # perform operation
fadd.h f8, f9, f29, rtz # perform operation
fadd.h f8, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fadd.h f17, f14, f11, dyn # perform operation
fadd.h f17, f14, f11, rdn # perform operation
fadd.h f17, f14, f11, rmm # perform operation
fadd.h f17, f14, f11, rne # perform operation
fadd.h f17, f14, f11, rtz # perform operation
fadd.h f17, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fadd.h f27, f20, f11, dyn # perform operation
fadd.h f27, f20, f11, rdn # perform operation
fadd.h f27, f20, f11, rmm # perform operation
fadd.h f27, f20, f11, rne # perform operation
fadd.h f27, f20, f11, rtz # perform operation
fadd.h f27, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fadd.h f19, f21, f7, dyn # perform operation
fadd.h f19, f21, f7, rdn # perform operation
fadd.h f19, f21, f7, rmm # perform operation
fadd.h f19, f21, f7, rne # perform operation
fadd.h f19, f21, f7, rtz # perform operation
fadd.h f19, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fadd.h f7, f21, f12, dyn # perform operation
fadd.h f7, f21, f12, rdn # perform operation
fadd.h f7, f21, f12, rmm # perform operation
fadd.h f7, f21, f12, rne # perform operation
fadd.h f7, f21, f12, rtz # perform operation
fadd.h f7, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fadd.h f12, f11, f26, dyn # perform operation
fadd.h f12, f11, f26, rdn # perform operation
fadd.h f12, f11, f26, rmm # perform operation
fadd.h f12, f11, f26, rne # perform operation
fadd.h f12, f11, f26, rtz # perform operation
fadd.h f12, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fadd.h f18, f15, f31, dyn # perform operation
fadd.h f18, f15, f31, rdn # perform operation
fadd.h f18, f15, f31, rmm # perform operation
fadd.h f18, f15, f31, rne # perform operation
fadd.h f18, f15, f31, rtz # perform operation
fadd.h f18, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fadd.h f20, f23, f16, dyn # perform operation
fadd.h f20, f23, f16, rdn # perform operation
fadd.h f20, f23, f16, rmm # perform operation
fadd.h f20, f23, f16, rne # perform operation
fadd.h f20, f23, f16, rtz # perform operation
fadd.h f20, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fadd.h f31, f21, f28, dyn # perform operation
fadd.h f31, f21, f28, rdn # perform operation
fadd.h f31, f21, f28, rmm # perform operation
fadd.h f31, f21, f28, rne # perform operation
fadd.h f31, f21, f28, rtz # perform operation
fadd.h f31, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fadd.h f28, f30, f5, dyn # perform operation
fadd.h f28, f30, f5, rdn # perform operation
fadd.h f28, f30, f5, rmm # perform operation
fadd.h f28, f30, f5, rne # perform operation
fadd.h f28, f30, f5, rtz # perform operation
fadd.h f28, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fadd.h f20, f5, f1, dyn # perform operation
fadd.h f20, f5, f1, rdn # perform operation
fadd.h f20, f5, f1, rmm # perform operation
fadd.h f20, f5, f1, rne # perform operation
fadd.h f20, f5, f1, rtz # perform operation
fadd.h f20, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
fadd.h f7, f11, f17, dyn # perform operation
fadd.h f7, f11, f17, rdn # perform operation
fadd.h f7, f11, f17, rmm # perform operation
fadd.h f7, f11, f17, rne # perform operation
fadd.h f7, f11, f17, rtz # perform operation
fadd.h f7, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fadd.h f19, f15, f29, dyn # perform operation
fadd.h f19, f15, f29, rdn # perform operation
fadd.h f19, f15, f29, rmm # perform operation
fadd.h f19, f15, f29, rne # perform operation
fadd.h f19, f15, f29, rtz # perform operation
fadd.h f19, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fadd.h f14, f30, f16, dyn # perform operation
fadd.h f14, f30, f16, rdn # perform operation
fadd.h f14, f30, f16, rmm # perform operation
fadd.h f14, f30, f16, rne # perform operation
fadd.h f14, f30, f16, rtz # perform operation
fadd.h f14, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fadd.h f8, f21, f5, dyn # perform operation
fadd.h f8, f21, f5, rdn # perform operation
fadd.h f8, f21, f5, rmm # perform operation
fadd.h f8, f21, f5, rne # perform operation
fadd.h f8, f21, f5, rtz # perform operation
fadd.h f8, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fadd.h f26, f13, f7, dyn # perform operation
fadd.h f26, f13, f7, rdn # perform operation
fadd.h f26, f13, f7, rmm # perform operation
fadd.h f26, f13, f7, rne # perform operation
fadd.h f26, f13, f7, rtz # perform operation
fadd.h f26, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fadd.h f12, f19, f5, dyn # perform operation
fadd.h f12, f19, f5, rdn # perform operation
fadd.h f12, f19, f5, rmm # perform operation
fadd.h f12, f19, f5, rne # perform operation
fadd.h f12, f19, f5, rtz # perform operation
fadd.h f12, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fadd.h f12, f13, f2, dyn # perform operation
fadd.h f12, f13, f2, rdn # perform operation
fadd.h f12, f13, f2, rmm # perform operation
fadd.h f12, f13, f2, rne # perform operation
fadd.h f12, f13, f2, rtz # perform operation
fadd.h f12, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fadd.h f12, f8, f28, dyn # perform operation
fadd.h f12, f8, f28, rdn # perform operation
fadd.h f12, f8, f28, rmm # perform operation
fadd.h f12, f8, f28, rne # perform operation
fadd.h f12, f8, f28, rtz # perform operation
fadd.h f12, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fadd.h f3, f2, f12, dyn # perform operation
fadd.h f3, f2, f12, rdn # perform operation
fadd.h f3, f2, f12, rmm # perform operation
fadd.h f3, f2, f12, rne # perform operation
fadd.h f3, f2, f12, rtz # perform operation
fadd.h f3, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fadd.h f22, f15, f21, dyn # perform operation
fadd.h f22, f15, f21, rdn # perform operation
fadd.h f22, f15, f21, rmm # perform operation
fadd.h f22, f15, f21, rne # perform operation
fadd.h f22, f15, f21, rtz # perform operation
fadd.h f22, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f23, f6, f3, dyn # perform operation
fadd.h f23, f6, f3, rdn # perform operation
fadd.h f23, f6, f3, rmm # perform operation
fadd.h f23, f6, f3, rne # perform operation
fadd.h f23, f6, f3, rtz # perform operation
fadd.h f23, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fadd.h f6, f24, f27, dyn # perform operation
fadd.h f6, f24, f27, rdn # perform operation
fadd.h f6, f24, f27, rmm # perform operation
fadd.h f6, f24, f27, rne # perform operation
fadd.h f6, f24, f27, rtz # perform operation
fadd.h f6, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fadd.h f18, f1, f3, dyn # perform operation
fadd.h f18, f1, f3, rdn # perform operation
fadd.h f18, f1, f3, rmm # perform operation
fadd.h f18, f1, f3, rne # perform operation
fadd.h f18, f1, f3, rtz # perform operation
fadd.h f18, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fadd.h f20, f23, f28, dyn # perform operation
fadd.h f20, f23, f28, rdn # perform operation
fadd.h f20, f23, f28, rmm # perform operation
fadd.h f20, f23, f28, rne # perform operation
fadd.h f20, f23, f28, rtz # perform operation
fadd.h f20, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fadd.h f2, f22, f27, dyn # perform operation
fadd.h f2, f22, f27, rdn # perform operation
fadd.h f2, f22, f27, rmm # perform operation
fadd.h f2, f22, f27, rne # perform operation
fadd.h f2, f22, f27, rtz # perform operation
fadd.h f2, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f18, f15, f17, dyn # perform operation
fadd.h f18, f15, f17, rdn # perform operation
fadd.h f18, f15, f17, rmm # perform operation
fadd.h f18, f15, f17, rne # perform operation
fadd.h f18, f15, f17, rtz # perform operation
fadd.h f18, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fadd.h f17, f24, f6, dyn # perform operation
fadd.h f17, f24, f6, rdn # perform operation
fadd.h f17, f24, f6, rmm # perform operation
fadd.h f17, f24, f6, rne # perform operation
fadd.h f17, f24, f6, rtz # perform operation
fadd.h f17, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fadd.h f13, f30, f1, dyn # perform operation
fadd.h f13, f30, f1, rdn # perform operation
fadd.h f13, f30, f1, rmm # perform operation
fadd.h f13, f30, f1, rne # perform operation
fadd.h f13, f30, f1, rtz # perform operation
fadd.h f13, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fadd.h f14, f7, f6, dyn # perform operation
fadd.h f14, f7, f6, rdn # perform operation
fadd.h f14, f7, f6, rmm # perform operation
fadd.h f14, f7, f6, rne # perform operation
fadd.h f14, f7, f6, rtz # perform operation
fadd.h f14, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fadd.h f17, f5, f14, dyn # perform operation
fadd.h f17, f5, f14, rdn # perform operation
fadd.h f17, f5, f14, rmm # perform operation
fadd.h f17, f5, f14, rne # perform operation
fadd.h f17, f5, f14, rtz # perform operation
fadd.h f17, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fadd.h f17, f26, f31, dyn # perform operation
fadd.h f17, f26, f31, rdn # perform operation
fadd.h f17, f26, f31, rmm # perform operation
fadd.h f17, f26, f31, rne # perform operation
fadd.h f17, f26, f31, rtz # perform operation
fadd.h f17, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fadd.h f23, f30, f8, dyn # perform operation
fadd.h f23, f30, f8, rdn # perform operation
fadd.h f23, f30, f8, rmm # perform operation
fadd.h f23, f30, f8, rne # perform operation
fadd.h f23, f30, f8, rtz # perform operation
fadd.h f23, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fadd.h f23, f19, f26, dyn # perform operation
fadd.h f23, f19, f26, rdn # perform operation
fadd.h f23, f19, f26, rmm # perform operation
fadd.h f23, f19, f26, rne # perform operation
fadd.h f23, f19, f26, rtz # perform operation
fadd.h f23, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fadd.h f21, f7, f17, dyn # perform operation
fadd.h f21, f7, f17, rdn # perform operation
fadd.h f21, f7, f17, rmm # perform operation
fadd.h f21, f7, f17, rne # perform operation
fadd.h f21, f7, f17, rtz # perform operation
fadd.h f21, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fadd.h f20, f31, f13, dyn # perform operation
fadd.h f20, f31, f13, rdn # perform operation
fadd.h f20, f31, f13, rmm # perform operation
fadd.h f20, f31, f13, rne # perform operation
fadd.h f20, f31, f13, rtz # perform operation
fadd.h f20, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fadd.h f15, f23, f21, dyn # perform operation
fadd.h f15, f23, f21, rdn # perform operation
fadd.h f15, f23, f21, rmm # perform operation
fadd.h f15, f23, f21, rne # perform operation
fadd.h f15, f23, f21, rtz # perform operation
fadd.h f15, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fadd.h f17, f31, f22, dyn # perform operation
fadd.h f17, f31, f22, rdn # perform operation
fadd.h f17, f31, f22, rmm # perform operation
fadd.h f17, f31, f22, rne # perform operation
fadd.h f17, f31, f22, rtz # perform operation
fadd.h f17, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fadd.h f5, f20, f22, dyn # perform operation
fadd.h f5, f20, f22, rdn # perform operation
fadd.h f5, f20, f22, rmm # perform operation
fadd.h f5, f20, f22, rne # perform operation
fadd.h f5, f20, f22, rtz # perform operation
fadd.h f5, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fadd.h f12, f24, f8, dyn # perform operation
fadd.h f12, f24, f8, rdn # perform operation
fadd.h f12, f24, f8, rmm # perform operation
fadd.h f12, f24, f8, rne # perform operation
fadd.h f12, f24, f8, rtz # perform operation
fadd.h f12, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fadd.h f16, f15, f17, dyn # perform operation
fadd.h f16, f15, f17, rdn # perform operation
fadd.h f16, f15, f17, rmm # perform operation
fadd.h f16, f15, f17, rne # perform operation
fadd.h f16, f15, f17, rtz # perform operation
fadd.h f16, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fadd.h f12, f17, f21, dyn # perform operation
fadd.h f12, f17, f21, rdn # perform operation
fadd.h f12, f17, f21, rmm # perform operation
fadd.h f12, f17, f21, rne # perform operation
fadd.h f12, f17, f21, rtz # perform operation
fadd.h f12, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fadd.h f14, f10, f19, dyn # perform operation
fadd.h f14, f10, f19, rdn # perform operation
fadd.h f14, f10, f19, rmm # perform operation
fadd.h f14, f10, f19, rne # perform operation
fadd.h f14, f10, f19, rtz # perform operation
fadd.h f14, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fadd.h f8, f14, f13, dyn # perform operation
fadd.h f8, f14, f13, rdn # perform operation
fadd.h f8, f14, f13, rmm # perform operation
fadd.h f8, f14, f13, rne # perform operation
fadd.h f8, f14, f13, rtz # perform operation
fadd.h f8, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fadd.h f24, f22, f16, dyn # perform operation
fadd.h f24, f22, f16, rdn # perform operation
fadd.h f24, f22, f16, rmm # perform operation
fadd.h f24, f22, f16, rne # perform operation
fadd.h f24, f22, f16, rtz # perform operation
fadd.h f24, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fadd.h f2, f23, f22, dyn # perform operation
fadd.h f2, f23, f22, rdn # perform operation
fadd.h f2, f23, f22, rmm # perform operation
fadd.h f2, f23, f22, rne # perform operation
fadd.h f2, f23, f22, rtz # perform operation
fadd.h f2, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fadd.h f5, f18, f8, dyn # perform operation
fadd.h f5, f18, f8, rdn # perform operation
fadd.h f5, f18, f8, rmm # perform operation
fadd.h f5, f18, f8, rne # perform operation
fadd.h f5, f18, f8, rtz # perform operation
fadd.h f5, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fadd.h f17, f28, f8, dyn # perform operation
fadd.h f17, f28, f8, rdn # perform operation
fadd.h f17, f28, f8, rmm # perform operation
fadd.h f17, f28, f8, rne # perform operation
fadd.h f17, f28, f8, rtz # perform operation
fadd.h f17, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fadd.h f31, f12, f1, dyn # perform operation
fadd.h f31, f12, f1, rdn # perform operation
fadd.h f31, f12, f1, rmm # perform operation
fadd.h f31, f12, f1, rne # perform operation
fadd.h f31, f12, f1, rtz # perform operation
fadd.h f31, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fadd.h f24, f18, f12, dyn # perform operation
fadd.h f24, f18, f12, rdn # perform operation
fadd.h f24, f18, f12, rmm # perform operation
fadd.h f24, f18, f12, rne # perform operation
fadd.h f24, f18, f12, rtz # perform operation
fadd.h f24, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fadd.h f6, f5, f23, dyn # perform operation
fadd.h f6, f5, f23, rdn # perform operation
fadd.h f6, f5, f23, rmm # perform operation
fadd.h f6, f5, f23, rne # perform operation
fadd.h f6, f5, f23, rtz # perform operation
fadd.h f6, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fadd.h f8, f30, f27, dyn # perform operation
fadd.h f8, f30, f27, rdn # perform operation
fadd.h f8, f30, f27, rmm # perform operation
fadd.h f8, f30, f27, rne # perform operation
fadd.h f8, f30, f27, rtz # perform operation
fadd.h f8, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fadd.h f25, f20, f14, dyn # perform operation
fadd.h f25, f20, f14, rdn # perform operation
fadd.h f25, f20, f14, rmm # perform operation
fadd.h f25, f20, f14, rne # perform operation
fadd.h f25, f20, f14, rtz # perform operation
fadd.h f25, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fadd.h f27, f6, f15, dyn # perform operation
fadd.h f27, f6, f15, rdn # perform operation
fadd.h f27, f6, f15, rmm # perform operation
fadd.h f27, f6, f15, rne # perform operation
fadd.h f27, f6, f15, rtz # perform operation
fadd.h f27, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fadd.h f21, f7, f8, dyn # perform operation
fadd.h f21, f7, f8, rdn # perform operation
fadd.h f21, f7, f8, rmm # perform operation
fadd.h f21, f7, f8, rne # perform operation
fadd.h f21, f7, f8, rtz # perform operation
fadd.h f21, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fadd.h f8, f27, f9, dyn # perform operation
fadd.h f8, f27, f9, rdn # perform operation
fadd.h f8, f27, f9, rmm # perform operation
fadd.h f8, f27, f9, rne # perform operation
fadd.h f8, f27, f9, rtz # perform operation
fadd.h f8, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fadd.h f11, f18, f14, dyn # perform operation
fadd.h f11, f18, f14, rdn # perform operation
fadd.h f11, f18, f14, rmm # perform operation
fadd.h f11, f18, f14, rne # perform operation
fadd.h f11, f18, f14, rtz # perform operation
fadd.h f11, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fadd.h f27, f6, f3, dyn # perform operation
fadd.h f27, f6, f3, rdn # perform operation
fadd.h f27, f6, f3, rmm # perform operation
fadd.h f27, f6, f3, rne # perform operation
fadd.h f27, f6, f3, rtz # perform operation
fadd.h f27, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fadd.h f26, f22, f11, dyn # perform operation
fadd.h f26, f22, f11, rdn # perform operation
fadd.h f26, f22, f11, rmm # perform operation
fadd.h f26, f22, f11, rne # perform operation
fadd.h f26, f22, f11, rtz # perform operation
fadd.h f26, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fadd.h f2, f14, f5, dyn # perform operation
fadd.h f2, f14, f5, rdn # perform operation
fadd.h f2, f14, f5, rmm # perform operation
fadd.h f2, f14, f5, rne # perform operation
fadd.h f2, f14, f5, rtz # perform operation
fadd.h f2, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fadd.h f21, f26, f13, dyn # perform operation
fadd.h f21, f26, f13, rdn # perform operation
fadd.h f21, f26, f13, rmm # perform operation
fadd.h f21, f26, f13, rne # perform operation
fadd.h f21, f26, f13, rtz # perform operation
fadd.h f21, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fadd.h f11, f23, f16, dyn # perform operation
fadd.h f11, f23, f16, rdn # perform operation
fadd.h f11, f23, f16, rmm # perform operation
fadd.h f11, f23, f16, rne # perform operation
fadd.h f11, f23, f16, rtz # perform operation
fadd.h f11, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fadd.h f28, f21, f9, dyn # perform operation
fadd.h f28, f21, f9, rdn # perform operation
fadd.h f28, f21, f9, rmm # perform operation
fadd.h f28, f21, f9, rne # perform operation
fadd.h f28, f21, f9, rtz # perform operation
fadd.h f28, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fadd.h f3, f9, f24, dyn # perform operation
fadd.h f3, f9, f24, rdn # perform operation
fadd.h f3, f9, f24, rmm # perform operation
fadd.h f3, f9, f24, rne # perform operation
fadd.h f3, f9, f24, rtz # perform operation
fadd.h f3, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fadd.h f18, f23, f21, dyn # perform operation
fadd.h f18, f23, f21, rdn # perform operation
fadd.h f18, f23, f21, rmm # perform operation
fadd.h f18, f23, f21, rne # perform operation
fadd.h f18, f23, f21, rtz # perform operation
fadd.h f18, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fadd.h f15, f18, f16, dyn # perform operation
fadd.h f15, f18, f16, rdn # perform operation
fadd.h f15, f18, f16, rmm # perform operation
fadd.h f15, f18, f16, rne # perform operation
fadd.h f15, f18, f16, rtz # perform operation
fadd.h f15, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fadd.h f31, f14, f16, dyn # perform operation
fadd.h f31, f14, f16, rdn # perform operation
fadd.h f31, f14, f16, rmm # perform operation
fadd.h f31, f14, f16, rne # perform operation
fadd.h f31, f14, f16, rtz # perform operation
fadd.h f31, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fadd.h f20, f17, f5, dyn # perform operation
fadd.h f20, f17, f5, rdn # perform operation
fadd.h f20, f17, f5, rmm # perform operation
fadd.h f20, f17, f5, rne # perform operation
fadd.h f20, f17, f5, rtz # perform operation
fadd.h f20, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fadd.h f14, f3, f15, dyn # perform operation
fadd.h f14, f3, f15, rdn # perform operation
fadd.h f14, f3, f15, rmm # perform operation
fadd.h f14, f3, f15, rne # perform operation
fadd.h f14, f3, f15, rtz # perform operation
fadd.h f14, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fadd.h f7, f1, f26, dyn # perform operation
fadd.h f7, f1, f26, rdn # perform operation
fadd.h f7, f1, f26, rmm # perform operation
fadd.h f7, f1, f26, rne # perform operation
fadd.h f7, f1, f26, rtz # perform operation
fadd.h f7, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fadd.h f16, f18, f2, dyn # perform operation
fadd.h f16, f18, f2, rdn # perform operation
fadd.h f16, f18, f2, rmm # perform operation
fadd.h f16, f18, f2, rne # perform operation
fadd.h f16, f18, f2, rtz # perform operation
fadd.h f16, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fadd.h f16, f6, f11, dyn # perform operation
fadd.h f16, f6, f11, rdn # perform operation
fadd.h f16, f6, f11, rmm # perform operation
fadd.h f16, f6, f11, rne # perform operation
fadd.h f16, f6, f11, rtz # perform operation
fadd.h f16, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f6, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fadd.h f12, f27, f6, dyn # perform operation
fadd.h f12, f27, f6, rdn # perform operation
fadd.h f12, f27, f6, rmm # perform operation
fadd.h f12, f27, f6, rne # perform operation
fadd.h f12, f27, f6, rtz # perform operation
fadd.h f12, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fadd.h f18, f15, f25, dyn # perform operation
fadd.h f18, f15, f25, rdn # perform operation
fadd.h f18, f15, f25, rmm # perform operation
fadd.h f18, f15, f25, rne # perform operation
fadd.h f18, f15, f25, rtz # perform operation
fadd.h f18, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fadd.h f27, f18, f30, dyn # perform operation
fadd.h f27, f18, f30, rdn # perform operation
fadd.h f27, f18, f30, rmm # perform operation
fadd.h f27, f18, f30, rne # perform operation
fadd.h f27, f18, f30, rtz # perform operation
fadd.h f27, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fadd.h f15, f30, f2, dyn # perform operation
fadd.h f15, f30, f2, rdn # perform operation
fadd.h f15, f30, f2, rmm # perform operation
fadd.h f15, f30, f2, rne # perform operation
fadd.h f15, f30, f2, rtz # perform operation
fadd.h f15, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fadd.h f2, f3, f27, dyn # perform operation
fadd.h f2, f3, f27, rdn # perform operation
fadd.h f2, f3, f27, rmm # perform operation
fadd.h f2, f3, f27, rne # perform operation
fadd.h f2, f3, f27, rtz # perform operation
fadd.h f2, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fadd.h f27, f30, f17, dyn # perform operation
fadd.h f27, f30, f17, rdn # perform operation
fadd.h f27, f30, f17, rmm # perform operation
fadd.h f27, f30, f17, rne # perform operation
fadd.h f27, f30, f17, rtz # perform operation
fadd.h f27, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fadd.h f14, f2, f13, dyn # perform operation
fadd.h f14, f2, f13, rdn # perform operation
fadd.h f14, f2, f13, rmm # perform operation
fadd.h f14, f2, f13, rne # perform operation
fadd.h f14, f2, f13, rtz # perform operation
fadd.h f14, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fadd.h f13, f5, f28, dyn # perform operation
fadd.h f13, f5, f28, rdn # perform operation
fadd.h f13, f5, f28, rmm # perform operation
fadd.h f13, f5, f28, rne # perform operation
fadd.h f13, f5, f28, rtz # perform operation
fadd.h f13, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fadd.h f16, f26, f24, dyn # perform operation
fadd.h f16, f26, f24, rdn # perform operation
fadd.h f16, f26, f24, rmm # perform operation
fadd.h f16, f26, f24, rne # perform operation
fadd.h f16, f26, f24, rtz # perform operation
fadd.h f16, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fadd.h f31, f26, f17, dyn # perform operation
fadd.h f31, f26, f17, rdn # perform operation
fadd.h f31, f26, f17, rmm # perform operation
fadd.h f31, f26, f17, rne # perform operation
fadd.h f31, f26, f17, rtz # perform operation
fadd.h f31, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fadd.h f25, f5, f21, dyn # perform operation
fadd.h f25, f5, f21, rdn # perform operation
fadd.h f25, f5, f21, rmm # perform operation
fadd.h f25, f5, f21, rne # perform operation
fadd.h f25, f5, f21, rtz # perform operation
fadd.h f25, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fadd.h f17, f30, f15, dyn # perform operation
fadd.h f17, f30, f15, rdn # perform operation
fadd.h f17, f30, f15, rmm # perform operation
fadd.h f17, f30, f15, rne # perform operation
fadd.h f17, f30, f15, rtz # perform operation
fadd.h f17, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fadd.h f24, f25, f11, dyn # perform operation
fadd.h f24, f25, f11, rdn # perform operation
fadd.h f24, f25, f11, rmm # perform operation
fadd.h f24, f25, f11, rne # perform operation
fadd.h f24, f25, f11, rtz # perform operation
fadd.h f24, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f27, f17, f7, dyn # perform operation
fadd.h f27, f17, f7, rdn # perform operation
fadd.h f27, f17, f7, rmm # perform operation
fadd.h f27, f17, f7, rne # perform operation
fadd.h f27, f17, f7, rtz # perform operation
fadd.h f27, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fadd.h f7, f15, f9, dyn # perform operation
fadd.h f7, f15, f9, rdn # perform operation
fadd.h f7, f15, f9, rmm # perform operation
fadd.h f7, f15, f9, rne # perform operation
fadd.h f7, f15, f9, rtz # perform operation
fadd.h f7, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fadd.h f19, f30, f28, dyn # perform operation
fadd.h f19, f30, f28, rdn # perform operation
fadd.h f19, f30, f28, rmm # perform operation
fadd.h f19, f30, f28, rne # perform operation
fadd.h f19, f30, f28, rtz # perform operation
fadd.h f19, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fadd.h f20, f28, f7, dyn # perform operation
fadd.h f20, f28, f7, rdn # perform operation
fadd.h f20, f28, f7, rmm # perform operation
fadd.h f20, f28, f7, rne # perform operation
fadd.h f20, f28, f7, rtz # perform operation
fadd.h f20, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fadd.h f29, f14, f8, dyn # perform operation
fadd.h f29, f14, f8, rdn # perform operation
fadd.h f29, f14, f8, rmm # perform operation
fadd.h f29, f14, f8, rne # perform operation
fadd.h f29, f14, f8, rtz # perform operation
fadd.h f29, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fadd.h f11, f1, f25, dyn # perform operation
fadd.h f11, f1, f25, rdn # perform operation
fadd.h f11, f1, f25, rmm # perform operation
fadd.h f11, f1, f25, rne # perform operation
fadd.h f11, f1, f25, rtz # perform operation
fadd.h f11, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fadd.h f24, f6, f27, dyn # perform operation
fadd.h f24, f6, f27, rdn # perform operation
fadd.h f24, f6, f27, rmm # perform operation
fadd.h f24, f6, f27, rne # perform operation
fadd.h f24, f6, f27, rtz # perform operation
fadd.h f24, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fadd.h f12, f21, f1, dyn # perform operation
fadd.h f12, f21, f1, rdn # perform operation
fadd.h f12, f21, f1, rmm # perform operation
fadd.h f12, f21, f1, rne # perform operation
fadd.h f12, f21, f1, rtz # perform operation
fadd.h f12, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fadd.h f1, f19, f9, dyn # perform operation
fadd.h f1, f19, f9, rdn # perform operation
fadd.h f1, f19, f9, rmm # perform operation
fadd.h f1, f19, f9, rne # perform operation
fadd.h f1, f19, f9, rtz # perform operation
fadd.h f1, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fadd.h f16, f7, f23, dyn # perform operation
fadd.h f16, f7, f23, rdn # perform operation
fadd.h f16, f7, f23, rmm # perform operation
fadd.h f16, f7, f23, rne # perform operation
fadd.h f16, f7, f23, rtz # perform operation
fadd.h f16, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
fadd.h f14, f25, f28, dyn # perform operation
fadd.h f14, f25, f28, rdn # perform operation
fadd.h f14, f25, f28, rmm # perform operation
fadd.h f14, f25, f28, rne # perform operation
fadd.h f14, f25, f28, rtz # perform operation
fadd.h f14, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fadd.h f22, f6, f3, dyn # perform operation
fadd.h f22, f6, f3, rdn # perform operation
fadd.h f22, f6, f3, rmm # perform operation
fadd.h f22, f6, f3, rne # perform operation
fadd.h f22, f6, f3, rtz # perform operation
fadd.h f22, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fadd.h f3, f31, f2, dyn # perform operation
fadd.h f3, f31, f2, rdn # perform operation
fadd.h f3, f31, f2, rmm # perform operation
fadd.h f3, f31, f2, rne # perform operation
fadd.h f3, f31, f2, rtz # perform operation
fadd.h f3, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fadd.h f24, f13, f12, dyn # perform operation
fadd.h f24, f13, f12, rdn # perform operation
fadd.h f24, f13, f12, rmm # perform operation
fadd.h f24, f13, f12, rne # perform operation
fadd.h f24, f13, f12, rtz # perform operation
fadd.h f24, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fadd.h f13, f5, f25, dyn # perform operation
fadd.h f13, f5, f25, rdn # perform operation
fadd.h f13, f5, f25, rmm # perform operation
fadd.h f13, f5, f25, rne # perform operation
fadd.h f13, f5, f25, rtz # perform operation
fadd.h f13, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fadd.h f26, f8, f14, dyn # perform operation
fadd.h f26, f8, f14, rdn # perform operation
fadd.h f26, f8, f14, rmm # perform operation
fadd.h f26, f8, f14, rne # perform operation
fadd.h f26, f8, f14, rtz # perform operation
fadd.h f26, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f26, f10, f18, dyn # perform operation
fadd.h f26, f10, f18, rdn # perform operation
fadd.h f26, f10, f18, rmm # perform operation
fadd.h f26, f10, f18, rne # perform operation
fadd.h f26, f10, f18, rtz # perform operation
fadd.h f26, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fadd.h f25, f15, f17, dyn # perform operation
fadd.h f25, f15, f17, rdn # perform operation
fadd.h f25, f15, f17, rmm # perform operation
fadd.h f25, f15, f17, rne # perform operation
fadd.h f25, f15, f17, rtz # perform operation
fadd.h f25, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fadd.h f17, f15, f22, dyn # perform operation
fadd.h f17, f15, f22, rdn # perform operation
fadd.h f17, f15, f22, rmm # perform operation
fadd.h f17, f15, f22, rne # perform operation
fadd.h f17, f15, f22, rtz # perform operation
fadd.h f17, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fadd.h f12, f3, f10, dyn # perform operation
fadd.h f12, f3, f10, rdn # perform operation
fadd.h f12, f3, f10, rmm # perform operation
fadd.h f12, f3, f10, rne # perform operation
fadd.h f12, f3, f10, rtz # perform operation
fadd.h f12, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fadd.h f5, f6, f11, dyn # perform operation
fadd.h f5, f6, f11, rdn # perform operation
fadd.h f5, f6, f11, rmm # perform operation
fadd.h f5, f6, f11, rne # perform operation
fadd.h f5, f6, f11, rtz # perform operation
fadd.h f5, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f6, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fadd.h f25, f11, f5, dyn # perform operation
fadd.h f25, f11, f5, rdn # perform operation
fadd.h f25, f11, f5, rmm # perform operation
fadd.h f25, f11, f5, rne # perform operation
fadd.h f25, f11, f5, rtz # perform operation
fadd.h f25, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fadd.h f16, f7, f9, dyn # perform operation
fadd.h f16, f7, f9, rdn # perform operation
fadd.h f16, f7, f9, rmm # perform operation
fadd.h f16, f7, f9, rne # perform operation
fadd.h f16, f7, f9, rtz # perform operation
fadd.h f16, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fadd.h f1, f9, f3, dyn # perform operation
fadd.h f1, f9, f3, rdn # perform operation
fadd.h f1, f9, f3, rmm # perform operation
fadd.h f1, f9, f3, rne # perform operation
fadd.h f1, f9, f3, rtz # perform operation
fadd.h f1, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fadd.h f2, f1, f18, dyn # perform operation
fadd.h f2, f1, f18, rdn # perform operation
fadd.h f2, f1, f18, rmm # perform operation
fadd.h f2, f1, f18, rne # perform operation
fadd.h f2, f1, f18, rtz # perform operation
fadd.h f2, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fadd.h f29, f8, f18, dyn # perform operation
fadd.h f29, f8, f18, rdn # perform operation
fadd.h f29, f8, f18, rmm # perform operation
fadd.h f29, f8, f18, rne # perform operation
fadd.h f29, f8, f18, rtz # perform operation
fadd.h f29, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fadd.h f24, f6, f8, dyn # perform operation
fadd.h f24, f6, f8, rdn # perform operation
fadd.h f24, f6, f8, rmm # perform operation
fadd.h f24, f6, f8, rne # perform operation
fadd.h f24, f6, f8, rtz # perform operation
fadd.h f24, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fadd.h f3, f19, f5, dyn # perform operation
fadd.h f3, f19, f5, rdn # perform operation
fadd.h f3, f19, f5, rmm # perform operation
fadd.h f3, f19, f5, rne # perform operation
fadd.h f3, f19, f5, rtz # perform operation
fadd.h f3, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fadd.h f25, f15, f22, dyn # perform operation
fadd.h f25, f15, f22, rdn # perform operation
fadd.h f25, f15, f22, rmm # perform operation
fadd.h f25, f15, f22, rne # perform operation
fadd.h f25, f15, f22, rtz # perform operation
fadd.h f25, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fadd.h f8, f15, f7, dyn # perform operation
fadd.h f8, f15, f7, rdn # perform operation
fadd.h f8, f15, f7, rmm # perform operation
fadd.h f8, f15, f7, rne # perform operation
fadd.h f8, f15, f7, rtz # perform operation
fadd.h f8, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fadd.h f7, f20, f14, dyn # perform operation
fadd.h f7, f20, f14, rdn # perform operation
fadd.h f7, f20, f14, rmm # perform operation
fadd.h f7, f20, f14, rne # perform operation
fadd.h f7, f20, f14, rtz # perform operation
fadd.h f7, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fadd.h f22, f20, f18, dyn # perform operation
fadd.h f22, f20, f18, rdn # perform operation
fadd.h f22, f20, f18, rmm # perform operation
fadd.h f22, f20, f18, rne # perform operation
fadd.h f22, f20, f18, rtz # perform operation
fadd.h f22, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fadd.h f8, f16, f23, dyn # perform operation
fadd.h f8, f16, f23, rdn # perform operation
fadd.h f8, f16, f23, rmm # perform operation
fadd.h f8, f16, f23, rne # perform operation
fadd.h f8, f16, f23, rtz # perform operation
fadd.h f8, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fadd.h f30, f13, f17, dyn # perform operation
fadd.h f30, f13, f17, rdn # perform operation
fadd.h f30, f13, f17, rmm # perform operation
fadd.h f30, f13, f17, rne # perform operation
fadd.h f30, f13, f17, rtz # perform operation
fadd.h f30, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fadd.h f29, f9, f3, dyn # perform operation
fadd.h f29, f9, f3, rdn # perform operation
fadd.h f29, f9, f3, rmm # perform operation
fadd.h f29, f9, f3, rne # perform operation
fadd.h f29, f9, f3, rtz # perform operation
fadd.h f29, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fadd.h f30, f13, f21, dyn # perform operation
fadd.h f30, f13, f21, rdn # perform operation
fadd.h f30, f13, f21, rmm # perform operation
fadd.h f30, f13, f21, rne # perform operation
fadd.h f30, f13, f21, rtz # perform operation
fadd.h f30, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fadd.h f11, f14, f19, dyn # perform operation
fadd.h f11, f14, f19, rdn # perform operation
fadd.h f11, f14, f19, rmm # perform operation
fadd.h f11, f14, f19, rne # perform operation
fadd.h f11, f14, f19, rtz # perform operation
fadd.h f11, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fadd.h f5, f7, f22, dyn # perform operation
fadd.h f5, f7, f22, rdn # perform operation
fadd.h f5, f7, f22, rmm # perform operation
fadd.h f5, f7, f22, rne # perform operation
fadd.h f5, f7, f22, rtz # perform operation
fadd.h f5, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
fadd.h f31, f16, f26, dyn # perform operation
fadd.h f31, f16, f26, rdn # perform operation
fadd.h f31, f16, f26, rmm # perform operation
fadd.h f31, f16, f26, rne # perform operation
fadd.h f31, f16, f26, rtz # perform operation
fadd.h f31, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fadd.h f14, f2, f24, dyn # perform operation
fadd.h f14, f2, f24, rdn # perform operation
fadd.h f14, f2, f24, rmm # perform operation
fadd.h f14, f2, f24, rne # perform operation
fadd.h f14, f2, f24, rtz # perform operation
fadd.h f14, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fadd.h f8, f31, f9, dyn # perform operation
fadd.h f8, f31, f9, rdn # perform operation
fadd.h f8, f31, f9, rmm # perform operation
fadd.h f8, f31, f9, rne # perform operation
fadd.h f8, f31, f9, rtz # perform operation
fadd.h f8, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fadd.h f28, f24, f6, dyn # perform operation
fadd.h f28, f24, f6, rdn # perform operation
fadd.h f28, f24, f6, rmm # perform operation
fadd.h f28, f24, f6, rne # perform operation
fadd.h f28, f24, f6, rtz # perform operation
fadd.h f28, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fadd.h f16, f7, f28, dyn # perform operation
fadd.h f16, f7, f28, rdn # perform operation
fadd.h f16, f7, f28, rmm # perform operation
fadd.h f16, f7, f28, rne # perform operation
fadd.h f16, f7, f28, rtz # perform operation
fadd.h f16, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fadd.h f3, f24, f27, dyn # perform operation
fadd.h f3, f24, f27, rdn # perform operation
fadd.h f3, f24, f27, rmm # perform operation
fadd.h f3, f24, f27, rne # perform operation
fadd.h f3, f24, f27, rtz # perform operation
fadd.h f3, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fadd.h f1, f15, f22, dyn # perform operation
fadd.h f1, f15, f22, rdn # perform operation
fadd.h f1, f15, f22, rmm # perform operation
fadd.h f1, f15, f22, rne # perform operation
fadd.h f1, f15, f22, rtz # perform operation
fadd.h f1, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fadd.h f27, f20, f11, dyn # perform operation
fadd.h f27, f20, f11, rdn # perform operation
fadd.h f27, f20, f11, rmm # perform operation
fadd.h f27, f20, f11, rne # perform operation
fadd.h f27, f20, f11, rtz # perform operation
fadd.h f27, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fadd.h f26, f28, f22, dyn # perform operation
fadd.h f26, f28, f22, rdn # perform operation
fadd.h f26, f28, f22, rmm # perform operation
fadd.h f26, f28, f22, rne # perform operation
fadd.h f26, f28, f22, rtz # perform operation
fadd.h f26, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f25, f22, f13, dyn # perform operation
fadd.h f25, f22, f13, rdn # perform operation
fadd.h f25, f22, f13, rmm # perform operation
fadd.h f25, f22, f13, rne # perform operation
fadd.h f25, f22, f13, rtz # perform operation
fadd.h f25, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f31, f11, f25, dyn # perform operation
fadd.h f31, f11, f25, rdn # perform operation
fadd.h f31, f11, f25, rmm # perform operation
fadd.h f31, f11, f25, rne # perform operation
fadd.h f31, f11, f25, rtz # perform operation
fadd.h f31, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fadd.h f6, f8, f20, dyn # perform operation
fadd.h f6, f8, f20, rdn # perform operation
fadd.h f6, f8, f20, rmm # perform operation
fadd.h f6, f8, f20, rne # perform operation
fadd.h f6, f8, f20, rtz # perform operation
fadd.h f6, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fadd.h f7, f27, f11, dyn # perform operation
fadd.h f7, f27, f11, rdn # perform operation
fadd.h f7, f27, f11, rmm # perform operation
fadd.h f7, f27, f11, rne # perform operation
fadd.h f7, f27, f11, rtz # perform operation
fadd.h f7, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fadd.h f18, f11, f15, dyn # perform operation
fadd.h f18, f11, f15, rdn # perform operation
fadd.h f18, f11, f15, rmm # perform operation
fadd.h f18, f11, f15, rne # perform operation
fadd.h f18, f11, f15, rtz # perform operation
fadd.h f18, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fadd.h f31, f27, f12, dyn # perform operation
fadd.h f31, f27, f12, rdn # perform operation
fadd.h f31, f27, f12, rmm # perform operation
fadd.h f31, f27, f12, rne # perform operation
fadd.h f31, f27, f12, rtz # perform operation
fadd.h f31, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f26, f3, f17, dyn # perform operation
fadd.h f26, f3, f17, rdn # perform operation
fadd.h f26, f3, f17, rmm # perform operation
fadd.h f26, f3, f17, rne # perform operation
fadd.h f26, f3, f17, rtz # perform operation
fadd.h f26, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fadd.h f13, f31, f28, dyn # perform operation
fadd.h f13, f31, f28, rdn # perform operation
fadd.h f13, f31, f28, rmm # perform operation
fadd.h f13, f31, f28, rne # perform operation
fadd.h f13, f31, f28, rtz # perform operation
fadd.h f13, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fadd.h f3, f16, f11, dyn # perform operation
fadd.h f3, f16, f11, rdn # perform operation
fadd.h f3, f16, f11, rmm # perform operation
fadd.h f3, f16, f11, rne # perform operation
fadd.h f3, f16, f11, rtz # perform operation
fadd.h f3, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fadd.h f26, f18, f24, dyn # perform operation
fadd.h f26, f18, f24, rdn # perform operation
fadd.h f26, f18, f24, rmm # perform operation
fadd.h f26, f18, f24, rne # perform operation
fadd.h f26, f18, f24, rtz # perform operation
fadd.h f26, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fadd.h f18, f8, f16, dyn # perform operation
fadd.h f18, f8, f16, rdn # perform operation
fadd.h f18, f8, f16, rmm # perform operation
fadd.h f18, f8, f16, rne # perform operation
fadd.h f18, f8, f16, rtz # perform operation
fadd.h f18, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fadd.h f8, f2, f27, dyn # perform operation
fadd.h f8, f2, f27, rdn # perform operation
fadd.h f8, f2, f27, rmm # perform operation
fadd.h f8, f2, f27, rne # perform operation
fadd.h f8, f2, f27, rtz # perform operation
fadd.h f8, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fadd.h f22, f28, f12, dyn # perform operation
fadd.h f22, f28, f12, rdn # perform operation
fadd.h f22, f28, f12, rmm # perform operation
fadd.h f22, f28, f12, rne # perform operation
fadd.h f22, f28, f12, rtz # perform operation
fadd.h f22, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fadd.h f2, f16, f8, dyn # perform operation
fadd.h f2, f16, f8, rdn # perform operation
fadd.h f2, f16, f8, rmm # perform operation
fadd.h f2, f16, f8, rne # perform operation
fadd.h f2, f16, f8, rtz # perform operation
fadd.h f2, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fadd.h f11, f9, f20, dyn # perform operation
fadd.h f11, f9, f20, rdn # perform operation
fadd.h f11, f9, f20, rmm # perform operation
fadd.h f11, f9, f20, rne # perform operation
fadd.h f11, f9, f20, rtz # perform operation
fadd.h f11, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fadd.h f23, f21, f22, dyn # perform operation
fadd.h f23, f21, f22, rdn # perform operation
fadd.h f23, f21, f22, rmm # perform operation
fadd.h f23, f21, f22, rne # perform operation
fadd.h f23, f21, f22, rtz # perform operation
fadd.h f23, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fadd.h f5, f8, f10, dyn # perform operation
fadd.h f5, f8, f10, rdn # perform operation
fadd.h f5, f8, f10, rmm # perform operation
fadd.h f5, f8, f10, rne # perform operation
fadd.h f5, f8, f10, rtz # perform operation
fadd.h f5, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fadd.h f19, f11, f23, dyn # perform operation
fadd.h f19, f11, f23, rdn # perform operation
fadd.h f19, f11, f23, rmm # perform operation
fadd.h f19, f11, f23, rne # perform operation
fadd.h f19, f11, f23, rtz # perform operation
fadd.h f19, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fadd.h f13, f12, f2, dyn # perform operation
fadd.h f13, f12, f2, rdn # perform operation
fadd.h f13, f12, f2, rmm # perform operation
fadd.h f13, f12, f2, rne # perform operation
fadd.h f13, f12, f2, rtz # perform operation
fadd.h f13, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fadd.h f31, f19, f7, dyn # perform operation
fadd.h f31, f19, f7, rdn # perform operation
fadd.h f31, f19, f7, rmm # perform operation
fadd.h f31, f19, f7, rne # perform operation
fadd.h f31, f19, f7, rtz # perform operation
fadd.h f31, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fadd.h f28, f31, f17, dyn # perform operation
fadd.h f28, f31, f17, rdn # perform operation
fadd.h f28, f31, f17, rmm # perform operation
fadd.h f28, f31, f17, rne # perform operation
fadd.h f28, f31, f17, rtz # perform operation
fadd.h f28, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fadd.h f1, f25, f10, dyn # perform operation
fadd.h f1, f25, f10, rdn # perform operation
fadd.h f1, f25, f10, rmm # perform operation
fadd.h f1, f25, f10, rne # perform operation
fadd.h f1, f25, f10, rtz # perform operation
fadd.h f1, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fadd.h f2, f16, f15, dyn # perform operation
fadd.h f2, f16, f15, rdn # perform operation
fadd.h f2, f16, f15, rmm # perform operation
fadd.h f2, f16, f15, rne # perform operation
fadd.h f2, f16, f15, rtz # perform operation
fadd.h f2, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f16, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fadd.h f9, f16, f7, dyn # perform operation
fadd.h f9, f16, f7, rdn # perform operation
fadd.h f9, f16, f7, rmm # perform operation
fadd.h f9, f16, f7, rne # perform operation
fadd.h f9, f16, f7, rtz # perform operation
fadd.h f9, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fadd.h f1, f23, f9, dyn # perform operation
fadd.h f1, f23, f9, rdn # perform operation
fadd.h f1, f23, f9, rmm # perform operation
fadd.h f1, f23, f9, rne # perform operation
fadd.h f1, f23, f9, rtz # perform operation
fadd.h f1, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fadd.h f8, f3, f6, dyn # perform operation
fadd.h f8, f3, f6, rdn # perform operation
fadd.h f8, f3, f6, rmm # perform operation
fadd.h f8, f3, f6, rne # perform operation
fadd.h f8, f3, f6, rtz # perform operation
fadd.h f8, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fadd.h f9, f5, f12, dyn # perform operation
fadd.h f9, f5, f12, rdn # perform operation
fadd.h f9, f5, f12, rmm # perform operation
fadd.h f9, f5, f12, rne # perform operation
fadd.h f9, f5, f12, rtz # perform operation
fadd.h f9, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fadd.h f14, f10, f22, dyn # perform operation
fadd.h f14, f10, f22, rdn # perform operation
fadd.h f14, f10, f22, rmm # perform operation
fadd.h f14, f10, f22, rne # perform operation
fadd.h f14, f10, f22, rtz # perform operation
fadd.h f14, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fadd.h f30, f25, f7, dyn # perform operation
fadd.h f30, f25, f7, rdn # perform operation
fadd.h f30, f25, f7, rmm # perform operation
fadd.h f30, f25, f7, rne # perform operation
fadd.h f30, f25, f7, rtz # perform operation
fadd.h f30, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fadd.h f23, f26, f6, dyn # perform operation
fadd.h f23, f26, f6, rdn # perform operation
fadd.h f23, f26, f6, rmm # perform operation
fadd.h f23, f26, f6, rne # perform operation
fadd.h f23, f26, f6, rtz # perform operation
fadd.h f23, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fadd.h f27, f14, f29, dyn # perform operation
fadd.h f27, f14, f29, rdn # perform operation
fadd.h f27, f14, f29, rmm # perform operation
fadd.h f27, f14, f29, rne # perform operation
fadd.h f27, f14, f29, rtz # perform operation
fadd.h f27, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fadd.h f12, f24, f13, dyn # perform operation
fadd.h f12, f24, f13, rdn # perform operation
fadd.h f12, f24, f13, rmm # perform operation
fadd.h f12, f24, f13, rne # perform operation
fadd.h f12, f24, f13, rtz # perform operation
fadd.h f12, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f22, f13, f20, dyn # perform operation
fadd.h f22, f13, f20, rdn # perform operation
fadd.h f22, f13, f20, rmm # perform operation
fadd.h f22, f13, f20, rne # perform operation
fadd.h f22, f13, f20, rtz # perform operation
fadd.h f22, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fadd.h f11, f12, f5, dyn # perform operation
fadd.h f11, f12, f5, rdn # perform operation
fadd.h f11, f12, f5, rmm # perform operation
fadd.h f11, f12, f5, rne # perform operation
fadd.h f11, f12, f5, rtz # perform operation
fadd.h f11, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fadd.h f18, f30, f5, dyn # perform operation
fadd.h f18, f30, f5, rdn # perform operation
fadd.h f18, f30, f5, rmm # perform operation
fadd.h f18, f30, f5, rne # perform operation
fadd.h f18, f30, f5, rtz # perform operation
fadd.h f18, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f9, f20, f18, dyn # perform operation
fadd.h f9, f20, f18, rdn # perform operation
fadd.h f9, f20, f18, rmm # perform operation
fadd.h f9, f20, f18, rne # perform operation
fadd.h f9, f20, f18, rtz # perform operation
fadd.h f9, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fadd.h f19, f31, f5, dyn # perform operation
fadd.h f19, f31, f5, rdn # perform operation
fadd.h f19, f31, f5, rmm # perform operation
fadd.h f19, f31, f5, rne # perform operation
fadd.h f19, f31, f5, rtz # perform operation
fadd.h f19, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fadd.h f8, f13, f24, dyn # perform operation
fadd.h f8, f13, f24, rdn # perform operation
fadd.h f8, f13, f24, rmm # perform operation
fadd.h f8, f13, f24, rne # perform operation
fadd.h f8, f13, f24, rtz # perform operation
fadd.h f8, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fadd.h f25, f8, f14, dyn # perform operation
fadd.h f25, f8, f14, rdn # perform operation
fadd.h f25, f8, f14, rmm # perform operation
fadd.h f25, f8, f14, rne # perform operation
fadd.h f25, f8, f14, rtz # perform operation
fadd.h f25, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fadd.h f14, f22, f1, dyn # perform operation
fadd.h f14, f22, f1, rdn # perform operation
fadd.h f14, f22, f1, rmm # perform operation
fadd.h f14, f22, f1, rne # perform operation
fadd.h f14, f22, f1, rtz # perform operation
fadd.h f14, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fadd.h f25, f8, f28, dyn # perform operation
fadd.h f25, f8, f28, rdn # perform operation
fadd.h f25, f8, f28, rmm # perform operation
fadd.h f25, f8, f28, rne # perform operation
fadd.h f25, f8, f28, rtz # perform operation
fadd.h f25, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fadd.h f20, f11, f7, dyn # perform operation
fadd.h f20, f11, f7, rdn # perform operation
fadd.h f20, f11, f7, rmm # perform operation
fadd.h f20, f11, f7, rne # perform operation
fadd.h f20, f11, f7, rtz # perform operation
fadd.h f20, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fadd.h f26, f15, f11, dyn # perform operation
fadd.h f26, f15, f11, rdn # perform operation
fadd.h f26, f15, f11, rmm # perform operation
fadd.h f26, f15, f11, rne # perform operation
fadd.h f26, f15, f11, rtz # perform operation
fadd.h f26, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f24, f8, f2, dyn # perform operation
fadd.h f24, f8, f2, rdn # perform operation
fadd.h f24, f8, f2, rmm # perform operation
fadd.h f24, f8, f2, rne # perform operation
fadd.h f24, f8, f2, rtz # perform operation
fadd.h f24, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
fadd.h f31, f29, f2, dyn # perform operation
fadd.h f31, f29, f2, rdn # perform operation
fadd.h f31, f29, f2, rmm # perform operation
fadd.h f31, f29, f2, rne # perform operation
fadd.h f31, f29, f2, rtz # perform operation
fadd.h f31, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fadd.h f11, f17, f8, dyn # perform operation
fadd.h f11, f17, f8, rdn # perform operation
fadd.h f11, f17, f8, rmm # perform operation
fadd.h f11, f17, f8, rne # perform operation
fadd.h f11, f17, f8, rtz # perform operation
fadd.h f11, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fadd.h f1, f8, f20, dyn # perform operation
fadd.h f1, f8, f20, rdn # perform operation
fadd.h f1, f8, f20, rmm # perform operation
fadd.h f1, f8, f20, rne # perform operation
fadd.h f1, f8, f20, rtz # perform operation
fadd.h f1, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fadd.h f3, f30, f27, dyn # perform operation
fadd.h f3, f30, f27, rdn # perform operation
fadd.h f3, f30, f27, rmm # perform operation
fadd.h f3, f30, f27, rne # perform operation
fadd.h f3, f30, f27, rtz # perform operation
fadd.h f3, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fadd.h f27, f25, f3, dyn # perform operation
fadd.h f27, f25, f3, rdn # perform operation
fadd.h f27, f25, f3, rmm # perform operation
fadd.h f27, f25, f3, rne # perform operation
fadd.h f27, f25, f3, rtz # perform operation
fadd.h f27, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fadd.h f24, f17, f10, dyn # perform operation
fadd.h f24, f17, f10, rdn # perform operation
fadd.h f24, f17, f10, rmm # perform operation
fadd.h f24, f17, f10, rne # perform operation
fadd.h f24, f17, f10, rtz # perform operation
fadd.h f24, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fadd.h f21, f3, f20, dyn # perform operation
fadd.h f21, f3, f20, rdn # perform operation
fadd.h f21, f3, f20, rmm # perform operation
fadd.h f21, f3, f20, rne # perform operation
fadd.h f21, f3, f20, rtz # perform operation
fadd.h f21, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fadd.h f19, f16, f26, dyn # perform operation
fadd.h f19, f16, f26, rdn # perform operation
fadd.h f19, f16, f26, rmm # perform operation
fadd.h f19, f16, f26, rne # perform operation
fadd.h f19, f16, f26, rtz # perform operation
fadd.h f19, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fadd.h f9, f26, f30, dyn # perform operation
fadd.h f9, f26, f30, rdn # perform operation
fadd.h f9, f26, f30, rmm # perform operation
fadd.h f9, f26, f30, rne # perform operation
fadd.h f9, f26, f30, rtz # perform operation
fadd.h f9, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fadd.h f21, f18, f3, dyn # perform operation
fadd.h f21, f18, f3, rdn # perform operation
fadd.h f21, f18, f3, rmm # perform operation
fadd.h f21, f18, f3, rne # perform operation
fadd.h f21, f18, f3, rtz # perform operation
fadd.h f21, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fadd.h f13, f9, f29, dyn # perform operation
fadd.h f13, f9, f29, rdn # perform operation
fadd.h f13, f9, f29, rmm # perform operation
fadd.h f13, f9, f29, rne # perform operation
fadd.h f13, f9, f29, rtz # perform operation
fadd.h f13, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f19, f25, f15, dyn # perform operation
fadd.h f19, f25, f15, rdn # perform operation
fadd.h f19, f25, f15, rmm # perform operation
fadd.h f19, f25, f15, rne # perform operation
fadd.h f19, f25, f15, rtz # perform operation
fadd.h f19, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fadd.h f20, f19, f7, dyn # perform operation
fadd.h f20, f19, f7, rdn # perform operation
fadd.h f20, f19, f7, rmm # perform operation
fadd.h f20, f19, f7, rne # perform operation
fadd.h f20, f19, f7, rtz # perform operation
fadd.h f20, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fadd.h f26, f24, f9, dyn # perform operation
fadd.h f26, f24, f9, rdn # perform operation
fadd.h f26, f24, f9, rmm # perform operation
fadd.h f26, f24, f9, rne # perform operation
fadd.h f26, f24, f9, rtz # perform operation
fadd.h f26, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fadd.h f26, f21, f19, dyn # perform operation
fadd.h f26, f21, f19, rdn # perform operation
fadd.h f26, f21, f19, rmm # perform operation
fadd.h f26, f21, f19, rne # perform operation
fadd.h f26, f21, f19, rtz # perform operation
fadd.h f26, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fadd.h f8, f28, f20, dyn # perform operation
fadd.h f8, f28, f20, rdn # perform operation
fadd.h f8, f28, f20, rmm # perform operation
fadd.h f8, f28, f20, rne # perform operation
fadd.h f8, f28, f20, rtz # perform operation
fadd.h f8, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fadd.h f13, f31, f19, dyn # perform operation
fadd.h f13, f31, f19, rdn # perform operation
fadd.h f13, f31, f19, rmm # perform operation
fadd.h f13, f31, f19, rne # perform operation
fadd.h f13, f31, f19, rtz # perform operation
fadd.h f13, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fadd.h f11, f21, f28, dyn # perform operation
fadd.h f11, f21, f28, rdn # perform operation
fadd.h f11, f21, f28, rmm # perform operation
fadd.h f11, f21, f28, rne # perform operation
fadd.h f11, f21, f28, rtz # perform operation
fadd.h f11, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fadd.h f21, f26, f16, dyn # perform operation
fadd.h f21, f26, f16, rdn # perform operation
fadd.h f21, f26, f16, rmm # perform operation
fadd.h f21, f26, f16, rne # perform operation
fadd.h f21, f26, f16, rtz # perform operation
fadd.h f21, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fadd.h f19, f6, f10, dyn # perform operation
fadd.h f19, f6, f10, rdn # perform operation
fadd.h f19, f6, f10, rmm # perform operation
fadd.h f19, f6, f10, rne # perform operation
fadd.h f19, f6, f10, rtz # perform operation
fadd.h f19, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fadd.h f18, f6, f5, dyn # perform operation
fadd.h f18, f6, f5, rdn # perform operation
fadd.h f18, f6, f5, rmm # perform operation
fadd.h f18, f6, f5, rne # perform operation
fadd.h f18, f6, f5, rtz # perform operation
fadd.h f18, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fadd.h f24, f8, f2, dyn # perform operation
fadd.h f24, f8, f2, rdn # perform operation
fadd.h f24, f8, f2, rmm # perform operation
fadd.h f24, f8, f2, rne # perform operation
fadd.h f24, f8, f2, rtz # perform operation
fadd.h f24, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fadd.h f8, f31, f30, dyn # perform operation
fadd.h f8, f31, f30, rdn # perform operation
fadd.h f8, f31, f30, rmm # perform operation
fadd.h f8, f31, f30, rne # perform operation
fadd.h f8, f31, f30, rtz # perform operation
fadd.h f8, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fadd.h f13, f12, f5, dyn # perform operation
fadd.h f13, f12, f5, rdn # perform operation
fadd.h f13, f12, f5, rmm # perform operation
fadd.h f13, f12, f5, rne # perform operation
fadd.h f13, f12, f5, rtz # perform operation
fadd.h f13, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fadd.h f13, f18, f5, dyn # perform operation
fadd.h f13, f18, f5, rdn # perform operation
fadd.h f13, f18, f5, rmm # perform operation
fadd.h f13, f18, f5, rne # perform operation
fadd.h f13, f18, f5, rtz # perform operation
fadd.h f13, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fadd.h f7, f28, f1, dyn # perform operation
fadd.h f7, f28, f1, rdn # perform operation
fadd.h f7, f28, f1, rmm # perform operation
fadd.h f7, f28, f1, rne # perform operation
fadd.h f7, f28, f1, rtz # perform operation
fadd.h f7, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fadd.h f25, f23, f7, dyn # perform operation
fadd.h f25, f23, f7, rdn # perform operation
fadd.h f25, f23, f7, rmm # perform operation
fadd.h f25, f23, f7, rne # perform operation
fadd.h f25, f23, f7, rtz # perform operation
fadd.h f25, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fadd.h f13, f8, f14, dyn # perform operation
fadd.h f13, f8, f14, rdn # perform operation
fadd.h f13, f8, f14, rmm # perform operation
fadd.h f13, f8, f14, rne # perform operation
fadd.h f13, f8, f14, rtz # perform operation
fadd.h f13, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fadd.h f18, f3, f5, dyn # perform operation
fadd.h f18, f3, f5, rdn # perform operation
fadd.h f18, f3, f5, rmm # perform operation
fadd.h f18, f3, f5, rne # perform operation
fadd.h f18, f3, f5, rtz # perform operation
fadd.h f18, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fadd.h f23, f5, f6, dyn # perform operation
fadd.h f23, f5, f6, rdn # perform operation
fadd.h f23, f5, f6, rmm # perform operation
fadd.h f23, f5, f6, rne # perform operation
fadd.h f23, f5, f6, rtz # perform operation
fadd.h f23, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fadd.h f5, f15, f14, dyn # perform operation
fadd.h f5, f15, f14, rdn # perform operation
fadd.h f5, f15, f14, rmm # perform operation
fadd.h f5, f15, f14, rne # perform operation
fadd.h f5, f15, f14, rtz # perform operation
fadd.h f5, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fadd.h f12, f29, f16, dyn # perform operation
fadd.h f12, f29, f16, rdn # perform operation
fadd.h f12, f29, f16, rmm # perform operation
fadd.h f12, f29, f16, rne # perform operation
fadd.h f12, f29, f16, rtz # perform operation
fadd.h f12, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fadd.h f22, f8, f26, dyn # perform operation
fadd.h f22, f8, f26, rdn # perform operation
fadd.h f22, f8, f26, rmm # perform operation
fadd.h f22, f8, f26, rne # perform operation
fadd.h f22, f8, f26, rtz # perform operation
fadd.h f22, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fadd.h f26, f31, f27, dyn # perform operation
fadd.h f26, f31, f27, rdn # perform operation
fadd.h f26, f31, f27, rmm # perform operation
fadd.h f26, f31, f27, rne # perform operation
fadd.h f26, f31, f27, rtz # perform operation
fadd.h f26, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fadd.h f17, f27, f10, dyn # perform operation
fadd.h f17, f27, f10, rdn # perform operation
fadd.h f17, f27, f10, rmm # perform operation
fadd.h f17, f27, f10, rne # perform operation
fadd.h f17, f27, f10, rtz # perform operation
fadd.h f17, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fadd.h f23, f5, f21, dyn # perform operation
fadd.h f23, f5, f21, rdn # perform operation
fadd.h f23, f5, f21, rmm # perform operation
fadd.h f23, f5, f21, rne # perform operation
fadd.h f23, f5, f21, rtz # perform operation
fadd.h f23, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fadd.h f15, f9, f21, dyn # perform operation
fadd.h f15, f9, f21, rdn # perform operation
fadd.h f15, f9, f21, rmm # perform operation
fadd.h f15, f9, f21, rne # perform operation
fadd.h f15, f9, f21, rtz # perform operation
fadd.h f15, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fadd.h f11, f28, f7, dyn # perform operation
fadd.h f11, f28, f7, rdn # perform operation
fadd.h f11, f28, f7, rmm # perform operation
fadd.h f11, f28, f7, rne # perform operation
fadd.h f11, f28, f7, rtz # perform operation
fadd.h f11, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fadd.h f26, f1, f24, dyn # perform operation
fadd.h f26, f1, f24, rdn # perform operation
fadd.h f26, f1, f24, rmm # perform operation
fadd.h f26, f1, f24, rne # perform operation
fadd.h f26, f1, f24, rtz # perform operation
fadd.h f26, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fadd.h f15, f12, f17, dyn # perform operation
fadd.h f15, f12, f17, rdn # perform operation
fadd.h f15, f12, f17, rmm # perform operation
fadd.h f15, f12, f17, rne # perform operation
fadd.h f15, f12, f17, rtz # perform operation
fadd.h f15, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fadd.h f6, f20, f10, dyn # perform operation
fadd.h f6, f20, f10, rdn # perform operation
fadd.h f6, f20, f10, rmm # perform operation
fadd.h f6, f20, f10, rne # perform operation
fadd.h f6, f20, f10, rtz # perform operation
fadd.h f6, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fadd.h f15, f30, f24, dyn # perform operation
fadd.h f15, f30, f24, rdn # perform operation
fadd.h f15, f30, f24, rmm # perform operation
fadd.h f15, f30, f24, rne # perform operation
fadd.h f15, f30, f24, rtz # perform operation
fadd.h f15, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fadd.h f12, f8, f15, dyn # perform operation
fadd.h f12, f8, f15, rdn # perform operation
fadd.h f12, f8, f15, rmm # perform operation
fadd.h f12, f8, f15, rne # perform operation
fadd.h f12, f8, f15, rtz # perform operation
fadd.h f12, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fadd.h f5, f24, f21, dyn # perform operation
fadd.h f5, f24, f21, rdn # perform operation
fadd.h f5, f24, f21, rmm # perform operation
fadd.h f5, f24, f21, rne # perform operation
fadd.h f5, f24, f21, rtz # perform operation
fadd.h f5, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fadd.h f20, f3, f14, dyn # perform operation
fadd.h f20, f3, f14, rdn # perform operation
fadd.h f20, f3, f14, rmm # perform operation
fadd.h f20, f3, f14, rne # perform operation
fadd.h f20, f3, f14, rtz # perform operation
fadd.h f20, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fadd.h f22, f24, f10, dyn # perform operation
fadd.h f22, f24, f10, rdn # perform operation
fadd.h f22, f24, f10, rmm # perform operation
fadd.h f22, f24, f10, rne # perform operation
fadd.h f22, f24, f10, rtz # perform operation
fadd.h f22, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fadd.h f17, f24, f28, dyn # perform operation
fadd.h f17, f24, f28, rdn # perform operation
fadd.h f17, f24, f28, rmm # perform operation
fadd.h f17, f24, f28, rne # perform operation
fadd.h f17, f24, f28, rtz # perform operation
fadd.h f17, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fadd.h f16, f10, f11, dyn # perform operation
fadd.h f16, f10, f11, rdn # perform operation
fadd.h f16, f10, f11, rmm # perform operation
fadd.h f16, f10, f11, rne # perform operation
fadd.h f16, f10, f11, rtz # perform operation
fadd.h f16, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fadd.h f22, f7, f21, dyn # perform operation
fadd.h f22, f7, f21, rdn # perform operation
fadd.h f22, f7, f21, rmm # perform operation
fadd.h f22, f7, f21, rne # perform operation
fadd.h f22, f7, f21, rtz # perform operation
fadd.h f22, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fadd.h f12, f2, f5, dyn # perform operation
fadd.h f12, f2, f5, rdn # perform operation
fadd.h f12, f2, f5, rmm # perform operation
fadd.h f12, f2, f5, rne # perform operation
fadd.h f12, f2, f5, rtz # perform operation
fadd.h f12, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fadd.h f21, f16, f23, dyn # perform operation
fadd.h f21, f16, f23, rdn # perform operation
fadd.h f21, f16, f23, rmm # perform operation
fadd.h f21, f16, f23, rne # perform operation
fadd.h f21, f16, f23, rtz # perform operation
fadd.h f21, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fadd.h f31, f11, f30, dyn # perform operation
fadd.h f31, f11, f30, rdn # perform operation
fadd.h f31, f11, f30, rmm # perform operation
fadd.h f31, f11, f30, rne # perform operation
fadd.h f31, f11, f30, rtz # perform operation
fadd.h f31, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fadd.h f8, f11, f10, dyn # perform operation
fadd.h f8, f11, f10, rdn # perform operation
fadd.h f8, f11, f10, rmm # perform operation
fadd.h f8, f11, f10, rne # perform operation
fadd.h f8, f11, f10, rtz # perform operation
fadd.h f8, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fadd.h f23, f17, f9, dyn # perform operation
fadd.h f23, f17, f9, rdn # perform operation
fadd.h f23, f17, f9, rmm # perform operation
fadd.h f23, f17, f9, rne # perform operation
fadd.h f23, f17, f9, rtz # perform operation
fadd.h f23, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fadd.h f9, f13, f8, dyn # perform operation
fadd.h f9, f13, f8, rdn # perform operation
fadd.h f9, f13, f8, rmm # perform operation
fadd.h f9, f13, f8, rne # perform operation
fadd.h f9, f13, f8, rtz # perform operation
fadd.h f9, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fadd.h f24, f19, f10, dyn # perform operation
fadd.h f24, f19, f10, rdn # perform operation
fadd.h f24, f19, f10, rmm # perform operation
fadd.h f24, f19, f10, rne # perform operation
fadd.h f24, f19, f10, rtz # perform operation
fadd.h f24, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fadd.h f20, f30, f18, dyn # perform operation
fadd.h f20, f30, f18, rdn # perform operation
fadd.h f20, f30, f18, rmm # perform operation
fadd.h f20, f30, f18, rne # perform operation
fadd.h f20, f30, f18, rtz # perform operation
fadd.h f20, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fadd.h f17, f13, f19, dyn # perform operation
fadd.h f17, f13, f19, rdn # perform operation
fadd.h f17, f13, f19, rmm # perform operation
fadd.h f17, f13, f19, rne # perform operation
fadd.h f17, f13, f19, rtz # perform operation
fadd.h f17, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fadd.h f6, f24, f14, dyn # perform operation
fadd.h f6, f24, f14, rdn # perform operation
fadd.h f6, f24, f14, rmm # perform operation
fadd.h f6, f24, f14, rne # perform operation
fadd.h f6, f24, f14, rtz # perform operation
fadd.h f6, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fadd.h f2, f26, f8, dyn # perform operation
fadd.h f2, f26, f8, rdn # perform operation
fadd.h f2, f26, f8, rmm # perform operation
fadd.h f2, f26, f8, rne # perform operation
fadd.h f2, f26, f8, rtz # perform operation
fadd.h f2, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fadd.h f31, f5, f27, dyn # perform operation
fadd.h f31, f5, f27, rdn # perform operation
fadd.h f31, f5, f27, rmm # perform operation
fadd.h f31, f5, f27, rne # perform operation
fadd.h f31, f5, f27, rtz # perform operation
fadd.h f31, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fadd.h f29, f30, f27, dyn # perform operation
fadd.h f29, f30, f27, rdn # perform operation
fadd.h f29, f30, f27, rmm # perform operation
fadd.h f29, f30, f27, rne # perform operation
fadd.h f29, f30, f27, rtz # perform operation
fadd.h f29, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fadd.h f18, f14, f8, dyn # perform operation
fadd.h f18, f14, f8, rdn # perform operation
fadd.h f18, f14, f8, rmm # perform operation
fadd.h f18, f14, f8, rne # perform operation
fadd.h f18, f14, f8, rtz # perform operation
fadd.h f18, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fadd.h f1, f21, f9, dyn # perform operation
fadd.h f1, f21, f9, rdn # perform operation
fadd.h f1, f21, f9, rmm # perform operation
fadd.h f1, f21, f9, rne # perform operation
fadd.h f1, f21, f9, rtz # perform operation
fadd.h f1, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fadd.h f1, f6, f16, dyn # perform operation
fadd.h f1, f6, f16, rdn # perform operation
fadd.h f1, f6, f16, rmm # perform operation
fadd.h f1, f6, f16, rne # perform operation
fadd.h f1, f6, f16, rtz # perform operation
fadd.h f1, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fadd.h f13, f17, f29, dyn # perform operation
fadd.h f13, f17, f29, rdn # perform operation
fadd.h f13, f17, f29, rmm # perform operation
fadd.h f13, f17, f29, rne # perform operation
fadd.h f13, f17, f29, rtz # perform operation
fadd.h f13, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fadd.h f25, f30, f9, dyn # perform operation
fadd.h f25, f30, f9, rdn # perform operation
fadd.h f25, f30, f9, rmm # perform operation
fadd.h f25, f30, f9, rne # perform operation
fadd.h f25, f30, f9, rtz # perform operation
fadd.h f25, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fadd.h f6, f9, f21, dyn # perform operation
fadd.h f6, f9, f21, rdn # perform operation
fadd.h f6, f9, f21, rmm # perform operation
fadd.h f6, f9, f21, rne # perform operation
fadd.h f6, f9, f21, rtz # perform operation
fadd.h f6, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fadd.h f14, f3, f29, dyn # perform operation
fadd.h f14, f3, f29, rdn # perform operation
fadd.h f14, f3, f29, rmm # perform operation
fadd.h f14, f3, f29, rne # perform operation
fadd.h f14, f3, f29, rtz # perform operation
fadd.h f14, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fadd.h f28, f29, f5, dyn # perform operation
fadd.h f28, f29, f5, rdn # perform operation
fadd.h f28, f29, f5, rmm # perform operation
fadd.h f28, f29, f5, rne # perform operation
fadd.h f28, f29, f5, rtz # perform operation
fadd.h f28, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fadd.h f24, f11, f18, dyn # perform operation
fadd.h f24, f11, f18, rdn # perform operation
fadd.h f24, f11, f18, rmm # perform operation
fadd.h f24, f11, f18, rne # perform operation
fadd.h f24, f11, f18, rtz # perform operation
fadd.h f24, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fadd.h f28, f7, f11, dyn # perform operation
fadd.h f28, f7, f11, rdn # perform operation
fadd.h f28, f7, f11, rmm # perform operation
fadd.h f28, f7, f11, rne # perform operation
fadd.h f28, f7, f11, rtz # perform operation
fadd.h f28, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fadd.h f18, f8, f1, dyn # perform operation
fadd.h f18, f8, f1, rdn # perform operation
fadd.h f18, f8, f1, rmm # perform operation
fadd.h f18, f8, f1, rne # perform operation
fadd.h f18, f8, f1, rtz # perform operation
fadd.h f18, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fadd.h f5, f16, f19, dyn # perform operation
fadd.h f5, f16, f19, rdn # perform operation
fadd.h f5, f16, f19, rmm # perform operation
fadd.h f5, f16, f19, rne # perform operation
fadd.h f5, f16, f19, rtz # perform operation
fadd.h f5, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fadd.h f11, f20, f16, dyn # perform operation
fadd.h f11, f20, f16, rdn # perform operation
fadd.h f11, f20, f16, rmm # perform operation
fadd.h f11, f20, f16, rne # perform operation
fadd.h f11, f20, f16, rtz # perform operation
fadd.h f11, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fadd.h f17, f30, f6, dyn # perform operation
fadd.h f17, f30, f6, rdn # perform operation
fadd.h f17, f30, f6, rmm # perform operation
fadd.h f17, f30, f6, rne # perform operation
fadd.h f17, f30, f6, rtz # perform operation
fadd.h f17, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fadd.h f26, f7, f31, dyn # perform operation
fadd.h f26, f7, f31, rdn # perform operation
fadd.h f26, f7, f31, rmm # perform operation
fadd.h f26, f7, f31, rne # perform operation
fadd.h f26, f7, f31, rtz # perform operation
fadd.h f26, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fadd.h f30, f14, f3, dyn # perform operation
fadd.h f30, f14, f3, rdn # perform operation
fadd.h f30, f14, f3, rmm # perform operation
fadd.h f30, f14, f3, rne # perform operation
fadd.h f30, f14, f3, rtz # perform operation
fadd.h f30, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f14, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f7, f31, f19, dyn # perform operation
fadd.h f7, f31, f19, rdn # perform operation
fadd.h f7, f31, f19, rmm # perform operation
fadd.h f7, f31, f19, rne # perform operation
fadd.h f7, f31, f19, rtz # perform operation
fadd.h f7, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fadd.h f13, f5, f29, dyn # perform operation
fadd.h f13, f5, f29, rdn # perform operation
fadd.h f13, f5, f29, rmm # perform operation
fadd.h f13, f5, f29, rne # perform operation
fadd.h f13, f5, f29, rtz # perform operation
fadd.h f13, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fadd.h f25, f24, f8, dyn # perform operation
fadd.h f25, f24, f8, rdn # perform operation
fadd.h f25, f24, f8, rmm # perform operation
fadd.h f25, f24, f8, rne # perform operation
fadd.h f25, f24, f8, rtz # perform operation
fadd.h f25, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fadd.h f7, f9, f31, dyn # perform operation
fadd.h f7, f9, f31, rdn # perform operation
fadd.h f7, f9, f31, rmm # perform operation
fadd.h f7, f9, f31, rne # perform operation
fadd.h f7, f9, f31, rtz # perform operation
fadd.h f7, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fadd.h f24, f25, f6, dyn # perform operation
fadd.h f24, f25, f6, rdn # perform operation
fadd.h f24, f25, f6, rmm # perform operation
fadd.h f24, f25, f6, rne # perform operation
fadd.h f24, f25, f6, rtz # perform operation
fadd.h f24, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fadd.h f9, f3, f27, dyn # perform operation
fadd.h f9, f3, f27, rdn # perform operation
fadd.h f9, f3, f27, rmm # perform operation
fadd.h f9, f3, f27, rne # perform operation
fadd.h f9, f3, f27, rtz # perform operation
fadd.h f9, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fadd.h f12, f29, f6, dyn # perform operation
fadd.h f12, f29, f6, rdn # perform operation
fadd.h f12, f29, f6, rmm # perform operation
fadd.h f12, f29, f6, rne # perform operation
fadd.h f12, f29, f6, rtz # perform operation
fadd.h f12, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fadd.h f30, f13, f29, dyn # perform operation
fadd.h f30, f13, f29, rdn # perform operation
fadd.h f30, f13, f29, rmm # perform operation
fadd.h f30, f13, f29, rne # perform operation
fadd.h f30, f13, f29, rtz # perform operation
fadd.h f30, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fadd.h f8, f12, f22, dyn # perform operation
fadd.h f8, f12, f22, rdn # perform operation
fadd.h f8, f12, f22, rmm # perform operation
fadd.h f8, f12, f22, rne # perform operation
fadd.h f8, f12, f22, rtz # perform operation
fadd.h f8, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fadd.h f24, f22, f7, dyn # perform operation
fadd.h f24, f22, f7, rdn # perform operation
fadd.h f24, f22, f7, rmm # perform operation
fadd.h f24, f22, f7, rne # perform operation
fadd.h f24, f22, f7, rtz # perform operation
fadd.h f24, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fadd.h f3, f24, f25, dyn # perform operation
fadd.h f3, f24, f25, rdn # perform operation
fadd.h f3, f24, f25, rmm # perform operation
fadd.h f3, f24, f25, rne # perform operation
fadd.h f3, f24, f25, rtz # perform operation
fadd.h f3, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fadd.h f20, f9, f16, dyn # perform operation
fadd.h f20, f9, f16, rdn # perform operation
fadd.h f20, f9, f16, rmm # perform operation
fadd.h f20, f9, f16, rne # perform operation
fadd.h f20, f9, f16, rtz # perform operation
fadd.h f20, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fadd.h f17, f15, f7, dyn # perform operation
fadd.h f17, f15, f7, rdn # perform operation
fadd.h f17, f15, f7, rmm # perform operation
fadd.h f17, f15, f7, rne # perform operation
fadd.h f17, f15, f7, rtz # perform operation
fadd.h f17, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fadd.h f5, f10, f18, dyn # perform operation
fadd.h f5, f10, f18, rdn # perform operation
fadd.h f5, f10, f18, rmm # perform operation
fadd.h f5, f10, f18, rne # perform operation
fadd.h f5, f10, f18, rtz # perform operation
fadd.h f5, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f27, f17, f15, dyn # perform operation
fadd.h f27, f17, f15, rdn # perform operation
fadd.h f27, f17, f15, rmm # perform operation
fadd.h f27, f17, f15, rne # perform operation
fadd.h f27, f17, f15, rtz # perform operation
fadd.h f27, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fadd.h f15, f7, f29, dyn # perform operation
fadd.h f15, f7, f29, rdn # perform operation
fadd.h f15, f7, f29, rmm # perform operation
fadd.h f15, f7, f29, rne # perform operation
fadd.h f15, f7, f29, rtz # perform operation
fadd.h f15, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fadd.h f15, f14, f3, dyn # perform operation
fadd.h f15, f14, f3, rdn # perform operation
fadd.h f15, f14, f3, rmm # perform operation
fadd.h f15, f14, f3, rne # perform operation
fadd.h f15, f14, f3, rtz # perform operation
fadd.h f15, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f14, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fadd.h f1, f5, f19, dyn # perform operation
fadd.h f1, f5, f19, rdn # perform operation
fadd.h f1, f5, f19, rmm # perform operation
fadd.h f1, f5, f19, rne # perform operation
fadd.h f1, f5, f19, rtz # perform operation
fadd.h f1, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fadd.h f17, f30, f16, dyn # perform operation
fadd.h f17, f30, f16, rdn # perform operation
fadd.h f17, f30, f16, rmm # perform operation
fadd.h f17, f30, f16, rne # perform operation
fadd.h f17, f30, f16, rtz # perform operation
fadd.h f17, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fadd.h f27, f26, f7, dyn # perform operation
fadd.h f27, f26, f7, rdn # perform operation
fadd.h f27, f26, f7, rmm # perform operation
fadd.h f27, f26, f7, rne # perform operation
fadd.h f27, f26, f7, rtz # perform operation
fadd.h f27, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fadd.h f9, f19, f16, dyn # perform operation
fadd.h f9, f19, f16, rdn # perform operation
fadd.h f9, f19, f16, rmm # perform operation
fadd.h f9, f19, f16, rne # perform operation
fadd.h f9, f19, f16, rtz # perform operation
fadd.h f9, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f27, f11, f1, dyn # perform operation
fadd.h f27, f11, f1, rdn # perform operation
fadd.h f27, f11, f1, rmm # perform operation
fadd.h f27, f11, f1, rne # perform operation
fadd.h f27, f11, f1, rtz # perform operation
fadd.h f27, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fadd.h f7, f31, f9, dyn # perform operation
fadd.h f7, f31, f9, rdn # perform operation
fadd.h f7, f31, f9, rmm # perform operation
fadd.h f7, f31, f9, rne # perform operation
fadd.h f7, f31, f9, rtz # perform operation
fadd.h f7, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fadd.h f12, f7, f1, dyn # perform operation
fadd.h f12, f7, f1, rdn # perform operation
fadd.h f12, f7, f1, rmm # perform operation
fadd.h f12, f7, f1, rne # perform operation
fadd.h f12, f7, f1, rtz # perform operation
fadd.h f12, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fadd.h f6, f2, f22, dyn # perform operation
fadd.h f6, f2, f22, rdn # perform operation
fadd.h f6, f2, f22, rmm # perform operation
fadd.h f6, f2, f22, rne # perform operation
fadd.h f6, f2, f22, rtz # perform operation
fadd.h f6, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fadd.h f22, f26, f20, dyn # perform operation
fadd.h f22, f26, f20, rdn # perform operation
fadd.h f22, f26, f20, rmm # perform operation
fadd.h f22, f26, f20, rne # perform operation
fadd.h f22, f26, f20, rtz # perform operation
fadd.h f22, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fadd.h f23, f19, f15, dyn # perform operation
fadd.h f23, f19, f15, rdn # perform operation
fadd.h f23, f19, f15, rmm # perform operation
fadd.h f23, f19, f15, rne # perform operation
fadd.h f23, f19, f15, rtz # perform operation
fadd.h f23, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fadd.h f11, f14, f13, dyn # perform operation
fadd.h f11, f14, f13, rdn # perform operation
fadd.h f11, f14, f13, rmm # perform operation
fadd.h f11, f14, f13, rne # perform operation
fadd.h f11, f14, f13, rtz # perform operation
fadd.h f11, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fadd.h f25, f15, f22, dyn # perform operation
fadd.h f25, f15, f22, rdn # perform operation
fadd.h f25, f15, f22, rmm # perform operation
fadd.h f25, f15, f22, rne # perform operation
fadd.h f25, f15, f22, rtz # perform operation
fadd.h f25, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fadd.h f8, f27, f2, dyn # perform operation
fadd.h f8, f27, f2, rdn # perform operation
fadd.h f8, f27, f2, rmm # perform operation
fadd.h f8, f27, f2, rne # perform operation
fadd.h f8, f27, f2, rtz # perform operation
fadd.h f8, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fadd.h f5, f17, f16, dyn # perform operation
fadd.h f5, f17, f16, rdn # perform operation
fadd.h f5, f17, f16, rmm # perform operation
fadd.h f5, f17, f16, rne # perform operation
fadd.h f5, f17, f16, rtz # perform operation
fadd.h f5, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fadd.h f14, f27, f8, dyn # perform operation
fadd.h f14, f27, f8, rdn # perform operation
fadd.h f14, f27, f8, rmm # perform operation
fadd.h f14, f27, f8, rne # perform operation
fadd.h f14, f27, f8, rtz # perform operation
fadd.h f14, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fadd.h f7, f27, f24, dyn # perform operation
fadd.h f7, f27, f24, rdn # perform operation
fadd.h f7, f27, f24, rmm # perform operation
fadd.h f7, f27, f24, rne # perform operation
fadd.h f7, f27, f24, rtz # perform operation
fadd.h f7, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fadd.h f23, f1, f29, dyn # perform operation
fadd.h f23, f1, f29, rdn # perform operation
fadd.h f23, f1, f29, rmm # perform operation
fadd.h f23, f1, f29, rne # perform operation
fadd.h f23, f1, f29, rtz # perform operation
fadd.h f23, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fadd.h f7, f27, f12, dyn # perform operation
fadd.h f7, f27, f12, rdn # perform operation
fadd.h f7, f27, f12, rmm # perform operation
fadd.h f7, f27, f12, rne # perform operation
fadd.h f7, f27, f12, rtz # perform operation
fadd.h f7, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fadd.h f5, f8, f22, dyn # perform operation
fadd.h f5, f8, f22, rdn # perform operation
fadd.h f5, f8, f22, rmm # perform operation
fadd.h f5, f8, f22, rne # perform operation
fadd.h f5, f8, f22, rtz # perform operation
fadd.h f5, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fadd.h f3, f2, f20, dyn # perform operation
fadd.h f3, f2, f20, rdn # perform operation
fadd.h f3, f2, f20, rmm # perform operation
fadd.h f3, f2, f20, rne # perform operation
fadd.h f3, f2, f20, rtz # perform operation
fadd.h f3, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fadd.h f21, f2, f5, dyn # perform operation
fadd.h f21, f2, f5, rdn # perform operation
fadd.h f21, f2, f5, rmm # perform operation
fadd.h f21, f2, f5, rne # perform operation
fadd.h f21, f2, f5, rtz # perform operation
fadd.h f21, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fadd.h f1, f29, f31, dyn # perform operation
fadd.h f1, f29, f31, rdn # perform operation
fadd.h f1, f29, f31, rmm # perform operation
fadd.h f1, f29, f31, rne # perform operation
fadd.h f1, f29, f31, rtz # perform operation
fadd.h f1, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fadd.h f6, f15, f21, dyn # perform operation
fadd.h f6, f15, f21, rdn # perform operation
fadd.h f6, f15, f21, rmm # perform operation
fadd.h f6, f15, f21, rne # perform operation
fadd.h f6, f15, f21, rtz # perform operation
fadd.h f6, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fadd.h f12, f25, f19, dyn # perform operation
fadd.h f12, f25, f19, rdn # perform operation
fadd.h f12, f25, f19, rmm # perform operation
fadd.h f12, f25, f19, rne # perform operation
fadd.h f12, f25, f19, rtz # perform operation
fadd.h f12, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fadd.h f8, f9, f27, dyn # perform operation
fadd.h f8, f9, f27, rdn # perform operation
fadd.h f8, f9, f27, rmm # perform operation
fadd.h f8, f9, f27, rne # perform operation
fadd.h f8, f9, f27, rtz # perform operation
fadd.h f8, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f20, f27, f15, dyn # perform operation
fadd.h f20, f27, f15, rdn # perform operation
fadd.h f20, f27, f15, rmm # perform operation
fadd.h f20, f27, f15, rne # perform operation
fadd.h f20, f27, f15, rtz # perform operation
fadd.h f20, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fadd.h f24, f9, f31, dyn # perform operation
fadd.h f24, f9, f31, rdn # perform operation
fadd.h f24, f9, f31, rmm # perform operation
fadd.h f24, f9, f31, rne # perform operation
fadd.h f24, f9, f31, rtz # perform operation
fadd.h f24, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fadd.h f17, f13, f24, dyn # perform operation
fadd.h f17, f13, f24, rdn # perform operation
fadd.h f17, f13, f24, rmm # perform operation
fadd.h f17, f13, f24, rne # perform operation
fadd.h f17, f13, f24, rtz # perform operation
fadd.h f17, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fadd.h f1, f8, f23, dyn # perform operation
fadd.h f1, f8, f23, rdn # perform operation
fadd.h f1, f8, f23, rmm # perform operation
fadd.h f1, f8, f23, rne # perform operation
fadd.h f1, f8, f23, rtz # perform operation
fadd.h f1, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fadd.h f23, f21, f15, dyn # perform operation
fadd.h f23, f21, f15, rdn # perform operation
fadd.h f23, f21, f15, rmm # perform operation
fadd.h f23, f21, f15, rne # perform operation
fadd.h f23, f21, f15, rtz # perform operation
fadd.h f23, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fadd.h f17, f21, f7, dyn # perform operation
fadd.h f17, f21, f7, rdn # perform operation
fadd.h f17, f21, f7, rmm # perform operation
fadd.h f17, f21, f7, rne # perform operation
fadd.h f17, f21, f7, rtz # perform operation
fadd.h f17, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fadd.h f20, f27, f18, dyn # perform operation
fadd.h f20, f27, f18, rdn # perform operation
fadd.h f20, f27, f18, rmm # perform operation
fadd.h f20, f27, f18, rne # perform operation
fadd.h f20, f27, f18, rtz # perform operation
fadd.h f20, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fadd.h f9, f17, f11, dyn # perform operation
fadd.h f9, f17, f11, rdn # perform operation
fadd.h f9, f17, f11, rmm # perform operation
fadd.h f9, f17, f11, rne # perform operation
fadd.h f9, f17, f11, rtz # perform operation
fadd.h f9, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fadd.h f2, f18, f1, dyn # perform operation
fadd.h f2, f18, f1, rdn # perform operation
fadd.h f2, f18, f1, rmm # perform operation
fadd.h f2, f18, f1, rne # perform operation
fadd.h f2, f18, f1, rtz # perform operation
fadd.h f2, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fadd.h f3, f16, f24, dyn # perform operation
fadd.h f3, f16, f24, rdn # perform operation
fadd.h f3, f16, f24, rmm # perform operation
fadd.h f3, f16, f24, rne # perform operation
fadd.h f3, f16, f24, rtz # perform operation
fadd.h f3, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fadd.h f12, f23, f24, dyn # perform operation
fadd.h f12, f23, f24, rdn # perform operation
fadd.h f12, f23, f24, rmm # perform operation
fadd.h f12, f23, f24, rne # perform operation
fadd.h f12, f23, f24, rtz # perform operation
fadd.h f12, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fadd.h f16, f7, f15, dyn # perform operation
fadd.h f16, f7, f15, rdn # perform operation
fadd.h f16, f7, f15, rmm # perform operation
fadd.h f16, f7, f15, rne # perform operation
fadd.h f16, f7, f15, rtz # perform operation
fadd.h f16, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fadd.h f7, f28, f1, dyn # perform operation
fadd.h f7, f28, f1, rdn # perform operation
fadd.h f7, f28, f1, rmm # perform operation
fadd.h f7, f28, f1, rne # perform operation
fadd.h f7, f28, f1, rtz # perform operation
fadd.h f7, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fadd.h f6, f22, f30, dyn # perform operation
fadd.h f6, f22, f30, rdn # perform operation
fadd.h f6, f22, f30, rmm # perform operation
fadd.h f6, f22, f30, rne # perform operation
fadd.h f6, f22, f30, rtz # perform operation
fadd.h f6, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fadd.h f7, f26, f17, dyn # perform operation
fadd.h f7, f26, f17, rdn # perform operation
fadd.h f7, f26, f17, rmm # perform operation
fadd.h f7, f26, f17, rne # perform operation
fadd.h f7, f26, f17, rtz # perform operation
fadd.h f7, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fadd.h f2, f15, f7, dyn # perform operation
fadd.h f2, f15, f7, rdn # perform operation
fadd.h f2, f15, f7, rmm # perform operation
fadd.h f2, f15, f7, rne # perform operation
fadd.h f2, f15, f7, rtz # perform operation
fadd.h f2, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fadd.h f31, f22, f9, dyn # perform operation
fadd.h f31, f22, f9, rdn # perform operation
fadd.h f31, f22, f9, rmm # perform operation
fadd.h f31, f22, f9, rne # perform operation
fadd.h f31, f22, f9, rtz # perform operation
fadd.h f31, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fadd.h f3, f16, f9, dyn # perform operation
fadd.h f3, f16, f9, rdn # perform operation
fadd.h f3, f16, f9, rmm # perform operation
fadd.h f3, f16, f9, rne # perform operation
fadd.h f3, f16, f9, rtz # perform operation
fadd.h f3, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fadd.h f12, f8, f29, dyn # perform operation
fadd.h f12, f8, f29, rdn # perform operation
fadd.h f12, f8, f29, rmm # perform operation
fadd.h f12, f8, f29, rne # perform operation
fadd.h f12, f8, f29, rtz # perform operation
fadd.h f12, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fadd.h f29, f17, f22, dyn # perform operation
fadd.h f29, f17, f22, rdn # perform operation
fadd.h f29, f17, f22, rmm # perform operation
fadd.h f29, f17, f22, rne # perform operation
fadd.h f29, f17, f22, rtz # perform operation
fadd.h f29, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fadd.h f5, f27, f9, dyn # perform operation
fadd.h f5, f27, f9, rdn # perform operation
fadd.h f5, f27, f9, rmm # perform operation
fadd.h f5, f27, f9, rne # perform operation
fadd.h f5, f27, f9, rtz # perform operation
fadd.h f5, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fadd.h f9, f2, f20, dyn # perform operation
fadd.h f9, f2, f20, rdn # perform operation
fadd.h f9, f2, f20, rmm # perform operation
fadd.h f9, f2, f20, rne # perform operation
fadd.h f9, f2, f20, rtz # perform operation
fadd.h f9, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fadd.h f9, f29, f8, dyn # perform operation
fadd.h f9, f29, f8, rdn # perform operation
fadd.h f9, f29, f8, rmm # perform operation
fadd.h f9, f29, f8, rne # perform operation
fadd.h f9, f29, f8, rtz # perform operation
fadd.h f9, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
fadd.h f11, f20, f22, dyn # perform operation
fadd.h f11, f20, f22, rdn # perform operation
fadd.h f11, f20, f22, rmm # perform operation
fadd.h f11, f20, f22, rne # perform operation
fadd.h f11, f20, f22, rtz # perform operation
fadd.h f11, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fadd.h f3, f21, f9, dyn # perform operation
fadd.h f3, f21, f9, rdn # perform operation
fadd.h f3, f21, f9, rmm # perform operation
fadd.h f3, f21, f9, rne # perform operation
fadd.h f3, f21, f9, rtz # perform operation
fadd.h f3, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fadd.h f13, f29, f6, dyn # perform operation
fadd.h f13, f29, f6, rdn # perform operation
fadd.h f13, f29, f6, rmm # perform operation
fadd.h f13, f29, f6, rne # perform operation
fadd.h f13, f29, f6, rtz # perform operation
fadd.h f13, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fadd.h f15, f18, f25, dyn # perform operation
fadd.h f15, f18, f25, rdn # perform operation
fadd.h f15, f18, f25, rmm # perform operation
fadd.h f15, f18, f25, rne # perform operation
fadd.h f15, f18, f25, rtz # perform operation
fadd.h f15, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fadd.h f22, f6, f10, dyn # perform operation
fadd.h f22, f6, f10, rdn # perform operation
fadd.h f22, f6, f10, rmm # perform operation
fadd.h f22, f6, f10, rne # perform operation
fadd.h f22, f6, f10, rtz # perform operation
fadd.h f22, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fadd.h f9, f14, f29, dyn # perform operation
fadd.h f9, f14, f29, rdn # perform operation
fadd.h f9, f14, f29, rmm # perform operation
fadd.h f9, f14, f29, rne # perform operation
fadd.h f9, f14, f29, rtz # perform operation
fadd.h f9, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fadd.h f30, f25, f16, dyn # perform operation
fadd.h f30, f25, f16, rdn # perform operation
fadd.h f30, f25, f16, rmm # perform operation
fadd.h f30, f25, f16, rne # perform operation
fadd.h f30, f25, f16, rtz # perform operation
fadd.h f30, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fadd.h f26, f13, f24, dyn # perform operation
fadd.h f26, f13, f24, rdn # perform operation
fadd.h f26, f13, f24, rmm # perform operation
fadd.h f26, f13, f24, rne # perform operation
fadd.h f26, f13, f24, rtz # perform operation
fadd.h f26, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fadd.h f1, f17, f25, dyn # perform operation
fadd.h f1, f17, f25, rdn # perform operation
fadd.h f1, f17, f25, rmm # perform operation
fadd.h f1, f17, f25, rne # perform operation
fadd.h f1, f17, f25, rtz # perform operation
fadd.h f1, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fadd.h f11, f21, f2, dyn # perform operation
fadd.h f11, f21, f2, rdn # perform operation
fadd.h f11, f21, f2, rmm # perform operation
fadd.h f11, f21, f2, rne # perform operation
fadd.h f11, f21, f2, rtz # perform operation
fadd.h f11, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fadd.h f24, f12, f16, dyn # perform operation
fadd.h f24, f12, f16, rdn # perform operation
fadd.h f24, f12, f16, rmm # perform operation
fadd.h f24, f12, f16, rne # perform operation
fadd.h f24, f12, f16, rtz # perform operation
fadd.h f24, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fadd.h f23, f11, f13, dyn # perform operation
fadd.h f23, f11, f13, rdn # perform operation
fadd.h f23, f11, f13, rmm # perform operation
fadd.h f23, f11, f13, rne # perform operation
fadd.h f23, f11, f13, rtz # perform operation
fadd.h f23, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fadd.h f22, f2, f19, dyn # perform operation
fadd.h f22, f2, f19, rdn # perform operation
fadd.h f22, f2, f19, rmm # perform operation
fadd.h f22, f2, f19, rne # perform operation
fadd.h f22, f2, f19, rtz # perform operation
fadd.h f22, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fadd.h f11, f14, f8, dyn # perform operation
fadd.h f11, f14, f8, rdn # perform operation
fadd.h f11, f14, f8, rmm # perform operation
fadd.h f11, f14, f8, rne # perform operation
fadd.h f11, f14, f8, rtz # perform operation
fadd.h f11, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fadd.h f11, f3, f24, dyn # perform operation
fadd.h f11, f3, f24, rdn # perform operation
fadd.h f11, f3, f24, rmm # perform operation
fadd.h f11, f3, f24, rne # perform operation
fadd.h f11, f3, f24, rtz # perform operation
fadd.h f11, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f23, f26, f17, dyn # perform operation
fadd.h f23, f26, f17, rdn # perform operation
fadd.h f23, f26, f17, rmm # perform operation
fadd.h f23, f26, f17, rne # perform operation
fadd.h f23, f26, f17, rtz # perform operation
fadd.h f23, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fadd.h f5, f2, f17, dyn # perform operation
fadd.h f5, f2, f17, rdn # perform operation
fadd.h f5, f2, f17, rmm # perform operation
fadd.h f5, f2, f17, rne # perform operation
fadd.h f5, f2, f17, rtz # perform operation
fadd.h f5, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fadd.h f7, f15, f19, dyn # perform operation
fadd.h f7, f15, f19, rdn # perform operation
fadd.h f7, f15, f19, rmm # perform operation
fadd.h f7, f15, f19, rne # perform operation
fadd.h f7, f15, f19, rtz # perform operation
fadd.h f7, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fadd.h f13, f17, f1, dyn # perform operation
fadd.h f13, f17, f1, rdn # perform operation
fadd.h f13, f17, f1, rmm # perform operation
fadd.h f13, f17, f1, rne # perform operation
fadd.h f13, f17, f1, rtz # perform operation
fadd.h f13, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f14, f15, f31, dyn # perform operation
fadd.h f14, f15, f31, rdn # perform operation
fadd.h f14, f15, f31, rmm # perform operation
fadd.h f14, f15, f31, rne # perform operation
fadd.h f14, f15, f31, rtz # perform operation
fadd.h f14, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fadd.h f30, f10, f21, dyn # perform operation
fadd.h f30, f10, f21, rdn # perform operation
fadd.h f30, f10, f21, rmm # perform operation
fadd.h f30, f10, f21, rne # perform operation
fadd.h f30, f10, f21, rtz # perform operation
fadd.h f30, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fadd.h f8, f25, f6, dyn # perform operation
fadd.h f8, f25, f6, rdn # perform operation
fadd.h f8, f25, f6, rmm # perform operation
fadd.h f8, f25, f6, rne # perform operation
fadd.h f8, f25, f6, rtz # perform operation
fadd.h f8, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fadd.h f5, f20, f16, dyn # perform operation
fadd.h f5, f20, f16, rdn # perform operation
fadd.h f5, f20, f16, rmm # perform operation
fadd.h f5, f20, f16, rne # perform operation
fadd.h f5, f20, f16, rtz # perform operation
fadd.h f5, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fadd.h f20, f21, f19, dyn # perform operation
fadd.h f20, f21, f19, rdn # perform operation
fadd.h f20, f21, f19, rmm # perform operation
fadd.h f20, f21, f19, rne # perform operation
fadd.h f20, f21, f19, rtz # perform operation
fadd.h f20, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fadd.h f6, f24, f18, dyn # perform operation
fadd.h f6, f24, f18, rdn # perform operation
fadd.h f6, f24, f18, rmm # perform operation
fadd.h f6, f24, f18, rne # perform operation
fadd.h f6, f24, f18, rtz # perform operation
fadd.h f6, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
fadd.h f25, f22, f29, dyn # perform operation
fadd.h f25, f22, f29, rdn # perform operation
fadd.h f25, f22, f29, rmm # perform operation
fadd.h f25, f22, f29, rne # perform operation
fadd.h f25, f22, f29, rtz # perform operation
fadd.h f25, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fadd.h f23, f24, f27, dyn # perform operation
fadd.h f23, f24, f27, rdn # perform operation
fadd.h f23, f24, f27, rmm # perform operation
fadd.h f23, f24, f27, rne # perform operation
fadd.h f23, f24, f27, rtz # perform operation
fadd.h f23, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fadd.h f30, f22, f20, dyn # perform operation
fadd.h f30, f22, f20, rdn # perform operation
fadd.h f30, f22, f20, rmm # perform operation
fadd.h f30, f22, f20, rne # perform operation
fadd.h f30, f22, f20, rtz # perform operation
fadd.h f30, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fadd.h f12, f29, f8, dyn # perform operation
fadd.h f12, f29, f8, rdn # perform operation
fadd.h f12, f29, f8, rmm # perform operation
fadd.h f12, f29, f8, rne # perform operation
fadd.h f12, f29, f8, rtz # perform operation
fadd.h f12, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f23, f9, f8, dyn # perform operation
fadd.h f23, f9, f8, rdn # perform operation
fadd.h f23, f9, f8, rmm # perform operation
fadd.h f23, f9, f8, rne # perform operation
fadd.h f23, f9, f8, rtz # perform operation
fadd.h f23, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fadd.h f13, f5, f23, dyn # perform operation
fadd.h f13, f5, f23, rdn # perform operation
fadd.h f13, f5, f23, rmm # perform operation
fadd.h f13, f5, f23, rne # perform operation
fadd.h f13, f5, f23, rtz # perform operation
fadd.h f13, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fadd.h f10, f9, f14, dyn # perform operation
fadd.h f10, f9, f14, rdn # perform operation
fadd.h f10, f9, f14, rmm # perform operation
fadd.h f10, f9, f14, rne # perform operation
fadd.h f10, f9, f14, rtz # perform operation
fadd.h f10, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fadd.h f23, f8, f21, dyn # perform operation
fadd.h f23, f8, f21, rdn # perform operation
fadd.h f23, f8, f21, rmm # perform operation
fadd.h f23, f8, f21, rne # perform operation
fadd.h f23, f8, f21, rtz # perform operation
fadd.h f23, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f27, f25, f8, dyn # perform operation
fadd.h f27, f25, f8, rdn # perform operation
fadd.h f27, f25, f8, rmm # perform operation
fadd.h f27, f25, f8, rne # perform operation
fadd.h f27, f25, f8, rtz # perform operation
fadd.h f27, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fadd.h f9, f12, f27, dyn # perform operation
fadd.h f9, f12, f27, rdn # perform operation
fadd.h f9, f12, f27, rmm # perform operation
fadd.h f9, f12, f27, rne # perform operation
fadd.h f9, f12, f27, rtz # perform operation
fadd.h f9, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fadd.h f17, f19, f5, dyn # perform operation
fadd.h f17, f19, f5, rdn # perform operation
fadd.h f17, f19, f5, rmm # perform operation
fadd.h f17, f19, f5, rne # perform operation
fadd.h f17, f19, f5, rtz # perform operation
fadd.h f17, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fadd.h f11, f15, f1, dyn # perform operation
fadd.h f11, f15, f1, rdn # perform operation
fadd.h f11, f15, f1, rmm # perform operation
fadd.h f11, f15, f1, rne # perform operation
fadd.h f11, f15, f1, rtz # perform operation
fadd.h f11, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fadd.h f1, f3, f28, dyn # perform operation
fadd.h f1, f3, f28, rdn # perform operation
fadd.h f1, f3, f28, rmm # perform operation
fadd.h f1, f3, f28, rne # perform operation
fadd.h f1, f3, f28, rtz # perform operation
fadd.h f1, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fadd.h f22, f5, f11, dyn # perform operation
fadd.h f22, f5, f11, rdn # perform operation
fadd.h f22, f5, f11, rmm # perform operation
fadd.h f22, f5, f11, rne # perform operation
fadd.h f22, f5, f11, rtz # perform operation
fadd.h f22, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fadd.h f11, f17, f24, dyn # perform operation
fadd.h f11, f17, f24, rdn # perform operation
fadd.h f11, f17, f24, rmm # perform operation
fadd.h f11, f17, f24, rne # perform operation
fadd.h f11, f17, f24, rtz # perform operation
fadd.h f11, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f11, f29, f25, dyn # perform operation
fadd.h f11, f29, f25, rdn # perform operation
fadd.h f11, f29, f25, rmm # perform operation
fadd.h f11, f29, f25, rne # perform operation
fadd.h f11, f29, f25, rtz # perform operation
fadd.h f11, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fadd.h f17, f3, f7, dyn # perform operation
fadd.h f17, f3, f7, rdn # perform operation
fadd.h f17, f3, f7, rmm # perform operation
fadd.h f17, f3, f7, rne # perform operation
fadd.h f17, f3, f7, rtz # perform operation
fadd.h f17, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fadd.h f16, f28, f26, dyn # perform operation
fadd.h f16, f28, f26, rdn # perform operation
fadd.h f16, f28, f26, rmm # perform operation
fadd.h f16, f28, f26, rne # perform operation
fadd.h f16, f28, f26, rtz # perform operation
fadd.h f16, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f14, f28, f17, dyn # perform operation
fadd.h f14, f28, f17, rdn # perform operation
fadd.h f14, f28, f17, rmm # perform operation
fadd.h f14, f28, f17, rne # perform operation
fadd.h f14, f28, f17, rtz # perform operation
fadd.h f14, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fadd.h f25, f7, f2, dyn # perform operation
fadd.h f25, f7, f2, rdn # perform operation
fadd.h f25, f7, f2, rmm # perform operation
fadd.h f25, f7, f2, rne # perform operation
fadd.h f25, f7, f2, rtz # perform operation
fadd.h f25, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fadd.h f19, f2, f10, dyn # perform operation
fadd.h f19, f2, f10, rdn # perform operation
fadd.h f19, f2, f10, rmm # perform operation
fadd.h f19, f2, f10, rne # perform operation
fadd.h f19, f2, f10, rtz # perform operation
fadd.h f19, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fadd.h f18, f28, f8, dyn # perform operation
fadd.h f18, f28, f8, rdn # perform operation
fadd.h f18, f28, f8, rmm # perform operation
fadd.h f18, f28, f8, rne # perform operation
fadd.h f18, f28, f8, rtz # perform operation
fadd.h f18, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fadd.h f6, f1, f3, dyn # perform operation
fadd.h f6, f1, f3, rdn # perform operation
fadd.h f6, f1, f3, rmm # perform operation
fadd.h f6, f1, f3, rne # perform operation
fadd.h f6, f1, f3, rtz # perform operation
fadd.h f6, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fadd.h f12, f21, f6, dyn # perform operation
fadd.h f12, f21, f6, rdn # perform operation
fadd.h f12, f21, f6, rmm # perform operation
fadd.h f12, f21, f6, rne # perform operation
fadd.h f12, f21, f6, rtz # perform operation
fadd.h f12, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fadd.h f5, f15, f30, dyn # perform operation
fadd.h f5, f15, f30, rdn # perform operation
fadd.h f5, f15, f30, rmm # perform operation
fadd.h f5, f15, f30, rne # perform operation
fadd.h f5, f15, f30, rtz # perform operation
fadd.h f5, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fadd.h f30, f31, f17, dyn # perform operation
fadd.h f30, f31, f17, rdn # perform operation
fadd.h f30, f31, f17, rmm # perform operation
fadd.h f30, f31, f17, rne # perform operation
fadd.h f30, f31, f17, rtz # perform operation
fadd.h f30, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fadd.h f26, f20, f27, dyn # perform operation
fadd.h f26, f20, f27, rdn # perform operation
fadd.h f26, f20, f27, rmm # perform operation
fadd.h f26, f20, f27, rne # perform operation
fadd.h f26, f20, f27, rtz # perform operation
fadd.h f26, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fadd.h f5, f31, f12, dyn # perform operation
fadd.h f5, f31, f12, rdn # perform operation
fadd.h f5, f31, f12, rmm # perform operation
fadd.h f5, f31, f12, rne # perform operation
fadd.h f5, f31, f12, rtz # perform operation
fadd.h f5, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fadd.h f6, f30, f13, dyn # perform operation
fadd.h f6, f30, f13, rdn # perform operation
fadd.h f6, f30, f13, rmm # perform operation
fadd.h f6, f30, f13, rne # perform operation
fadd.h f6, f30, f13, rtz # perform operation
fadd.h f6, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fadd.h f5, f2, f8, dyn # perform operation
fadd.h f5, f2, f8, rdn # perform operation
fadd.h f5, f2, f8, rmm # perform operation
fadd.h f5, f2, f8, rne # perform operation
fadd.h f5, f2, f8, rtz # perform operation
fadd.h f5, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fadd.h f1, f23, f28, dyn # perform operation
fadd.h f1, f23, f28, rdn # perform operation
fadd.h f1, f23, f28, rmm # perform operation
fadd.h f1, f23, f28, rne # perform operation
fadd.h f1, f23, f28, rtz # perform operation
fadd.h f1, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fadd.h f9, f1, f24, dyn # perform operation
fadd.h f9, f1, f24, rdn # perform operation
fadd.h f9, f1, f24, rmm # perform operation
fadd.h f9, f1, f24, rne # perform operation
fadd.h f9, f1, f24, rtz # perform operation
fadd.h f9, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fadd.h f12, f31, f28, dyn # perform operation
fadd.h f12, f31, f28, rdn # perform operation
fadd.h f12, f31, f28, rmm # perform operation
fadd.h f12, f31, f28, rne # perform operation
fadd.h f12, f31, f28, rtz # perform operation
fadd.h f12, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fadd.h f23, f28, f1, dyn # perform operation
fadd.h f23, f28, f1, rdn # perform operation
fadd.h f23, f28, f1, rmm # perform operation
fadd.h f23, f28, f1, rne # perform operation
fadd.h f23, f28, f1, rtz # perform operation
fadd.h f23, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fadd.h f21, f5, f29, dyn # perform operation
fadd.h f21, f5, f29, rdn # perform operation
fadd.h f21, f5, f29, rmm # perform operation
fadd.h f21, f5, f29, rne # perform operation
fadd.h f21, f5, f29, rtz # perform operation
fadd.h f21, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fadd.h f31, f12, f5, dyn # perform operation
fadd.h f31, f12, f5, rdn # perform operation
fadd.h f31, f12, f5, rmm # perform operation
fadd.h f31, f12, f5, rne # perform operation
fadd.h f31, f12, f5, rtz # perform operation
fadd.h f31, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fadd.h f26, f16, f12, dyn # perform operation
fadd.h f26, f16, f12, rdn # perform operation
fadd.h f26, f16, f12, rmm # perform operation
fadd.h f26, f16, f12, rne # perform operation
fadd.h f26, f16, f12, rtz # perform operation
fadd.h f26, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fadd.h f15, f23, f5, dyn # perform operation
fadd.h f15, f23, f5, rdn # perform operation
fadd.h f15, f23, f5, rmm # perform operation
fadd.h f15, f23, f5, rne # perform operation
fadd.h f15, f23, f5, rtz # perform operation
fadd.h f15, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fadd.h f19, f27, f31, dyn # perform operation
fadd.h f19, f27, f31, rdn # perform operation
fadd.h f19, f27, f31, rmm # perform operation
fadd.h f19, f27, f31, rne # perform operation
fadd.h f19, f27, f31, rtz # perform operation
fadd.h f19, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fadd.h f9, f6, f3, dyn # perform operation
fadd.h f9, f6, f3, rdn # perform operation
fadd.h f9, f6, f3, rmm # perform operation
fadd.h f9, f6, f3, rne # perform operation
fadd.h f9, f6, f3, rtz # perform operation
fadd.h f9, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fadd.h f25, f14, f11, dyn # perform operation
fadd.h f25, f14, f11, rdn # perform operation
fadd.h f25, f14, f11, rmm # perform operation
fadd.h f25, f14, f11, rne # perform operation
fadd.h f25, f14, f11, rtz # perform operation
fadd.h f25, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fadd.h f18, f10, f5, dyn # perform operation
fadd.h f18, f10, f5, rdn # perform operation
fadd.h f18, f10, f5, rmm # perform operation
fadd.h f18, f10, f5, rne # perform operation
fadd.h f18, f10, f5, rtz # perform operation
fadd.h f18, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fadd.h f16, f13, f20, dyn # perform operation
fadd.h f16, f13, f20, rdn # perform operation
fadd.h f16, f13, f20, rmm # perform operation
fadd.h f16, f13, f20, rne # perform operation
fadd.h f16, f13, f20, rtz # perform operation
fadd.h f16, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fadd.h f22, f1, f9, dyn # perform operation
fadd.h f22, f1, f9, rdn # perform operation
fadd.h f22, f1, f9, rmm # perform operation
fadd.h f22, f1, f9, rne # perform operation
fadd.h f22, f1, f9, rtz # perform operation
fadd.h f22, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fadd.h f25, f12, f14, dyn # perform operation
fadd.h f25, f12, f14, rdn # perform operation
fadd.h f25, f12, f14, rmm # perform operation
fadd.h f25, f12, f14, rne # perform operation
fadd.h f25, f12, f14, rtz # perform operation
fadd.h f25, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fadd.h f5, f28, f23, dyn # perform operation
fadd.h f5, f28, f23, rdn # perform operation
fadd.h f5, f28, f23, rmm # perform operation
fadd.h f5, f28, f23, rne # perform operation
fadd.h f5, f28, f23, rtz # perform operation
fadd.h f5, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fadd.h f10, f6, f7, dyn # perform operation
fadd.h f10, f6, f7, rdn # perform operation
fadd.h f10, f6, f7, rmm # perform operation
fadd.h f10, f6, f7, rne # perform operation
fadd.h f10, f6, f7, rtz # perform operation
fadd.h f10, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fadd.h f24, f16, f21, dyn # perform operation
fadd.h f24, f16, f21, rdn # perform operation
fadd.h f24, f16, f21, rmm # perform operation
fadd.h f24, f16, f21, rne # perform operation
fadd.h f24, f16, f21, rtz # perform operation
fadd.h f24, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fadd.h f28, f5, f20, dyn # perform operation
fadd.h f28, f5, f20, rdn # perform operation
fadd.h f28, f5, f20, rmm # perform operation
fadd.h f28, f5, f20, rne # perform operation
fadd.h f28, f5, f20, rtz # perform operation
fadd.h f28, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fadd.h f21, f27, f23, dyn # perform operation
fadd.h f21, f27, f23, rdn # perform operation
fadd.h f21, f27, f23, rmm # perform operation
fadd.h f21, f27, f23, rne # perform operation
fadd.h f21, f27, f23, rtz # perform operation
fadd.h f21, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f16, f18, f31, dyn # perform operation
fadd.h f16, f18, f31, rdn # perform operation
fadd.h f16, f18, f31, rmm # perform operation
fadd.h f16, f18, f31, rne # perform operation
fadd.h f16, f18, f31, rtz # perform operation
fadd.h f16, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fadd.h f23, f27, f14, dyn # perform operation
fadd.h f23, f27, f14, rdn # perform operation
fadd.h f23, f27, f14, rmm # perform operation
fadd.h f23, f27, f14, rne # perform operation
fadd.h f23, f27, f14, rtz # perform operation
fadd.h f23, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fadd.h f20, f27, f6, dyn # perform operation
fadd.h f20, f27, f6, rdn # perform operation
fadd.h f20, f27, f6, rmm # perform operation
fadd.h f20, f27, f6, rne # perform operation
fadd.h f20, f27, f6, rtz # perform operation
fadd.h f20, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fadd.h f22, f10, f11, dyn # perform operation
fadd.h f22, f10, f11, rdn # perform operation
fadd.h f22, f10, f11, rmm # perform operation
fadd.h f22, f10, f11, rne # perform operation
fadd.h f22, f10, f11, rtz # perform operation
fadd.h f22, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fadd.h f15, f2, f27, dyn # perform operation
fadd.h f15, f2, f27, rdn # perform operation
fadd.h f15, f2, f27, rmm # perform operation
fadd.h f15, f2, f27, rne # perform operation
fadd.h f15, f2, f27, rtz # perform operation
fadd.h f15, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fadd.h f27, f2, f20, dyn # perform operation
fadd.h f27, f2, f20, rdn # perform operation
fadd.h f27, f2, f20, rmm # perform operation
fadd.h f27, f2, f20, rne # perform operation
fadd.h f27, f2, f20, rtz # perform operation
fadd.h f27, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fadd.h f1, f10, f18, dyn # perform operation
fadd.h f1, f10, f18, rdn # perform operation
fadd.h f1, f10, f18, rmm # perform operation
fadd.h f1, f10, f18, rne # perform operation
fadd.h f1, f10, f18, rtz # perform operation
fadd.h f1, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fadd.h f6, f12, f11, dyn # perform operation
fadd.h f6, f12, f11, rdn # perform operation
fadd.h f6, f12, f11, rmm # perform operation
fadd.h f6, f12, f11, rne # perform operation
fadd.h f6, f12, f11, rtz # perform operation
fadd.h f6, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fadd.h f19, f24, f6, dyn # perform operation
fadd.h f19, f24, f6, rdn # perform operation
fadd.h f19, f24, f6, rmm # perform operation
fadd.h f19, f24, f6, rne # perform operation
fadd.h f19, f24, f6, rtz # perform operation
fadd.h f19, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fadd.h f17, f18, f31, dyn # perform operation
fadd.h f17, f18, f31, rdn # perform operation
fadd.h f17, f18, f31, rmm # perform operation
fadd.h f17, f18, f31, rne # perform operation
fadd.h f17, f18, f31, rtz # perform operation
fadd.h f17, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f28, f14, f30, dyn # perform operation
fadd.h f28, f14, f30, rdn # perform operation
fadd.h f28, f14, f30, rmm # perform operation
fadd.h f28, f14, f30, rne # perform operation
fadd.h f28, f14, f30, rtz # perform operation
fadd.h f28, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fadd.h f18, f8, f27, dyn # perform operation
fadd.h f18, f8, f27, rdn # perform operation
fadd.h f18, f8, f27, rmm # perform operation
fadd.h f18, f8, f27, rne # perform operation
fadd.h f18, f8, f27, rtz # perform operation
fadd.h f18, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fadd.h f13, f26, f11, dyn # perform operation
fadd.h f13, f26, f11, rdn # perform operation
fadd.h f13, f26, f11, rmm # perform operation
fadd.h f13, f26, f11, rne # perform operation
fadd.h f13, f26, f11, rtz # perform operation
fadd.h f13, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fadd.h f22, f27, f16, dyn # perform operation
fadd.h f22, f27, f16, rdn # perform operation
fadd.h f22, f27, f16, rmm # perform operation
fadd.h f22, f27, f16, rne # perform operation
fadd.h f22, f27, f16, rtz # perform operation
fadd.h f22, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fadd.h f1, f26, f29, dyn # perform operation
fadd.h f1, f26, f29, rdn # perform operation
fadd.h f1, f26, f29, rmm # perform operation
fadd.h f1, f26, f29, rne # perform operation
fadd.h f1, f26, f29, rtz # perform operation
fadd.h f1, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fadd.h f23, f3, f14, dyn # perform operation
fadd.h f23, f3, f14, rdn # perform operation
fadd.h f23, f3, f14, rmm # perform operation
fadd.h f23, f3, f14, rne # perform operation
fadd.h f23, f3, f14, rtz # perform operation
fadd.h f23, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fadd.h f24, f22, f7, dyn # perform operation
fadd.h f24, f22, f7, rdn # perform operation
fadd.h f24, f22, f7, rmm # perform operation
fadd.h f24, f22, f7, rne # perform operation
fadd.h f24, f22, f7, rtz # perform operation
fadd.h f24, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fadd.h f14, f10, f3, dyn # perform operation
fadd.h f14, f10, f3, rdn # perform operation
fadd.h f14, f10, f3, rmm # perform operation
fadd.h f14, f10, f3, rne # perform operation
fadd.h f14, f10, f3, rtz # perform operation
fadd.h f14, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f27, f13, f6, dyn # perform operation
fadd.h f27, f13, f6, rdn # perform operation
fadd.h f27, f13, f6, rmm # perform operation
fadd.h f27, f13, f6, rne # perform operation
fadd.h f27, f13, f6, rtz # perform operation
fadd.h f27, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fadd.h f31, f1, f2, dyn # perform operation
fadd.h f31, f1, f2, rdn # perform operation
fadd.h f31, f1, f2, rmm # perform operation
fadd.h f31, f1, f2, rne # perform operation
fadd.h f31, f1, f2, rtz # perform operation
fadd.h f31, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fadd.h f16, f7, f28, dyn # perform operation
fadd.h f16, f7, f28, rdn # perform operation
fadd.h f16, f7, f28, rmm # perform operation
fadd.h f16, f7, f28, rne # perform operation
fadd.h f16, f7, f28, rtz # perform operation
fadd.h f16, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f12, f21, f25, dyn # perform operation
fadd.h f12, f21, f25, rdn # perform operation
fadd.h f12, f21, f25, rmm # perform operation
fadd.h f12, f21, f25, rne # perform operation
fadd.h f12, f21, f25, rtz # perform operation
fadd.h f12, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fadd.h f8, f15, f12, dyn # perform operation
fadd.h f8, f15, f12, rdn # perform operation
fadd.h f8, f15, f12, rmm # perform operation
fadd.h f8, f15, f12, rne # perform operation
fadd.h f8, f15, f12, rtz # perform operation
fadd.h f8, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fadd.h f12, f19, f31, dyn # perform operation
fadd.h f12, f19, f31, rdn # perform operation
fadd.h f12, f19, f31, rmm # perform operation
fadd.h f12, f19, f31, rne # perform operation
fadd.h f12, f19, f31, rtz # perform operation
fadd.h f12, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fadd.h f31, f13, f15, dyn # perform operation
fadd.h f31, f13, f15, rdn # perform operation
fadd.h f31, f13, f15, rmm # perform operation
fadd.h f31, f13, f15, rne # perform operation
fadd.h f31, f13, f15, rtz # perform operation
fadd.h f31, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fadd.h f1, f9, f27, dyn # perform operation
fadd.h f1, f9, f27, rdn # perform operation
fadd.h f1, f9, f27, rmm # perform operation
fadd.h f1, f9, f27, rne # perform operation
fadd.h f1, f9, f27, rtz # perform operation
fadd.h f1, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fadd.h f21, f3, f1, dyn # perform operation
fadd.h f21, f3, f1, rdn # perform operation
fadd.h f21, f3, f1, rmm # perform operation
fadd.h f21, f3, f1, rne # perform operation
fadd.h f21, f3, f1, rtz # perform operation
fadd.h f21, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f12, f3, f7, dyn # perform operation
fadd.h f12, f3, f7, rdn # perform operation
fadd.h f12, f3, f7, rmm # perform operation
fadd.h f12, f3, f7, rne # perform operation
fadd.h f12, f3, f7, rtz # perform operation
fadd.h f12, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fadd.h f9, f20, f16, dyn # perform operation
fadd.h f9, f20, f16, rdn # perform operation
fadd.h f9, f20, f16, rmm # perform operation
fadd.h f9, f20, f16, rne # perform operation
fadd.h f9, f20, f16, rtz # perform operation
fadd.h f9, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fadd.h f28, f6, f24, dyn # perform operation
fadd.h f28, f6, f24, rdn # perform operation
fadd.h f28, f6, f24, rmm # perform operation
fadd.h f28, f6, f24, rne # perform operation
fadd.h f28, f6, f24, rtz # perform operation
fadd.h f28, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fadd.h f28, f24, f1, dyn # perform operation
fadd.h f28, f24, f1, rdn # perform operation
fadd.h f28, f24, f1, rmm # perform operation
fadd.h f28, f24, f1, rne # perform operation
fadd.h f28, f24, f1, rtz # perform operation
fadd.h f28, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fadd.h f20, f27, f28, dyn # perform operation
fadd.h f20, f27, f28, rdn # perform operation
fadd.h f20, f27, f28, rmm # perform operation
fadd.h f20, f27, f28, rne # perform operation
fadd.h f20, f27, f28, rtz # perform operation
fadd.h f20, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fadd.h f17, f12, f20, dyn # perform operation
fadd.h f17, f12, f20, rdn # perform operation
fadd.h f17, f12, f20, rmm # perform operation
fadd.h f17, f12, f20, rne # perform operation
fadd.h f17, f12, f20, rtz # perform operation
fadd.h f17, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fadd.h f5, f26, f29, dyn # perform operation
fadd.h f5, f26, f29, rdn # perform operation
fadd.h f5, f26, f29, rmm # perform operation
fadd.h f5, f26, f29, rne # perform operation
fadd.h f5, f26, f29, rtz # perform operation
fadd.h f5, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fadd.h f18, f21, f13, dyn # perform operation
fadd.h f18, f21, f13, rdn # perform operation
fadd.h f18, f21, f13, rmm # perform operation
fadd.h f18, f21, f13, rne # perform operation
fadd.h f18, f21, f13, rtz # perform operation
fadd.h f18, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fadd.h f14, f28, f11, dyn # perform operation
fadd.h f14, f28, f11, rdn # perform operation
fadd.h f14, f28, f11, rmm # perform operation
fadd.h f14, f28, f11, rne # perform operation
fadd.h f14, f28, f11, rtz # perform operation
fadd.h f14, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fadd.h f27, f7, f24, dyn # perform operation
fadd.h f27, f7, f24, rdn # perform operation
fadd.h f27, f7, f24, rmm # perform operation
fadd.h f27, f7, f24, rne # perform operation
fadd.h f27, f7, f24, rtz # perform operation
fadd.h f27, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
fadd.h f9, f17, f12, dyn # perform operation
fadd.h f9, f17, f12, rdn # perform operation
fadd.h f9, f17, f12, rmm # perform operation
fadd.h f9, f17, f12, rne # perform operation
fadd.h f9, f17, f12, rtz # perform operation
fadd.h f9, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fadd.h f21, f1, f28, dyn # perform operation
fadd.h f21, f1, f28, rdn # perform operation
fadd.h f21, f1, f28, rmm # perform operation
fadd.h f21, f1, f28, rne # perform operation
fadd.h f21, f1, f28, rtz # perform operation
fadd.h f21, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fadd.h f30, f25, f13, dyn # perform operation
fadd.h f30, f25, f13, rdn # perform operation
fadd.h f30, f25, f13, rmm # perform operation
fadd.h f30, f25, f13, rne # perform operation
fadd.h f30, f25, f13, rtz # perform operation
fadd.h f30, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fadd.h f29, f6, f12, dyn # perform operation
fadd.h f29, f6, f12, rdn # perform operation
fadd.h f29, f6, f12, rmm # perform operation
fadd.h f29, f6, f12, rne # perform operation
fadd.h f29, f6, f12, rtz # perform operation
fadd.h f29, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fadd.h f18, f14, f3, dyn # perform operation
fadd.h f18, f14, f3, rdn # perform operation
fadd.h f18, f14, f3, rmm # perform operation
fadd.h f18, f14, f3, rne # perform operation
fadd.h f18, f14, f3, rtz # perform operation
fadd.h f18, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f14, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fadd.h f5, f20, f25, dyn # perform operation
fadd.h f5, f20, f25, rdn # perform operation
fadd.h f5, f20, f25, rmm # perform operation
fadd.h f5, f20, f25, rne # perform operation
fadd.h f5, f20, f25, rtz # perform operation
fadd.h f5, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fadd.h f2, f20, f28, dyn # perform operation
fadd.h f2, f20, f28, rdn # perform operation
fadd.h f2, f20, f28, rmm # perform operation
fadd.h f2, f20, f28, rne # perform operation
fadd.h f2, f20, f28, rtz # perform operation
fadd.h f2, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fadd.h f17, f19, f22, dyn # perform operation
fadd.h f17, f19, f22, rdn # perform operation
fadd.h f17, f19, f22, rmm # perform operation
fadd.h f17, f19, f22, rne # perform operation
fadd.h f17, f19, f22, rtz # perform operation
fadd.h f17, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fadd.h f13, f7, f26, dyn # perform operation
fadd.h f13, f7, f26, rdn # perform operation
fadd.h f13, f7, f26, rmm # perform operation
fadd.h f13, f7, f26, rne # perform operation
fadd.h f13, f7, f26, rtz # perform operation
fadd.h f13, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fadd.h f24, f1, f26, dyn # perform operation
fadd.h f24, f1, f26, rdn # perform operation
fadd.h f24, f1, f26, rmm # perform operation
fadd.h f24, f1, f26, rne # perform operation
fadd.h f24, f1, f26, rtz # perform operation
fadd.h f24, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f15, f13, f25, dyn # perform operation
fadd.h f15, f13, f25, rdn # perform operation
fadd.h f15, f13, f25, rmm # perform operation
fadd.h f15, f13, f25, rne # perform operation
fadd.h f15, f13, f25, rtz # perform operation
fadd.h f15, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fadd.h f12, f19, f6, dyn # perform operation
fadd.h f12, f19, f6, rdn # perform operation
fadd.h f12, f19, f6, rmm # perform operation
fadd.h f12, f19, f6, rne # perform operation
fadd.h f12, f19, f6, rtz # perform operation
fadd.h f12, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f22, f16, f25, dyn # perform operation
fadd.h f22, f16, f25, rdn # perform operation
fadd.h f22, f16, f25, rmm # perform operation
fadd.h f22, f16, f25, rne # perform operation
fadd.h f22, f16, f25, rtz # perform operation
fadd.h f22, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fadd.h f17, f2, f11, dyn # perform operation
fadd.h f17, f2, f11, rdn # perform operation
fadd.h f17, f2, f11, rmm # perform operation
fadd.h f17, f2, f11, rne # perform operation
fadd.h f17, f2, f11, rtz # perform operation
fadd.h f17, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fadd.h f29, f27, f21, dyn # perform operation
fadd.h f29, f27, f21, rdn # perform operation
fadd.h f29, f27, f21, rmm # perform operation
fadd.h f29, f27, f21, rne # perform operation
fadd.h f29, f27, f21, rtz # perform operation
fadd.h f29, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f16, f20, f17, dyn # perform operation
fadd.h f16, f20, f17, rdn # perform operation
fadd.h f16, f20, f17, rmm # perform operation
fadd.h f16, f20, f17, rne # perform operation
fadd.h f16, f20, f17, rtz # perform operation
fadd.h f16, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fadd.h f9, f26, f27, dyn # perform operation
fadd.h f9, f26, f27, rdn # perform operation
fadd.h f9, f26, f27, rmm # perform operation
fadd.h f9, f26, f27, rne # perform operation
fadd.h f9, f26, f27, rtz # perform operation
fadd.h f9, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fadd.h f23, f19, f3, dyn # perform operation
fadd.h f23, f19, f3, rdn # perform operation
fadd.h f23, f19, f3, rmm # perform operation
fadd.h f23, f19, f3, rne # perform operation
fadd.h f23, f19, f3, rtz # perform operation
fadd.h f23, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fadd.h f21, f15, f1, dyn # perform operation
fadd.h f21, f15, f1, rdn # perform operation
fadd.h f21, f15, f1, rmm # perform operation
fadd.h f21, f15, f1, rne # perform operation
fadd.h f21, f15, f1, rtz # perform operation
fadd.h f21, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fadd.h f3, f16, f2, dyn # perform operation
fadd.h f3, f16, f2, rdn # perform operation
fadd.h f3, f16, f2, rmm # perform operation
fadd.h f3, f16, f2, rne # perform operation
fadd.h f3, f16, f2, rtz # perform operation
fadd.h f3, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fadd.h f26, f3, f14, dyn # perform operation
fadd.h f26, f3, f14, rdn # perform operation
fadd.h f26, f3, f14, rmm # perform operation
fadd.h f26, f3, f14, rne # perform operation
fadd.h f26, f3, f14, rtz # perform operation
fadd.h f26, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fadd.h f17, f25, f21, dyn # perform operation
fadd.h f17, f25, f21, rdn # perform operation
fadd.h f17, f25, f21, rmm # perform operation
fadd.h f17, f25, f21, rne # perform operation
fadd.h f17, f25, f21, rtz # perform operation
fadd.h f17, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fadd.h f26, f21, f28, dyn # perform operation
fadd.h f26, f21, f28, rdn # perform operation
fadd.h f26, f21, f28, rmm # perform operation
fadd.h f26, f21, f28, rne # perform operation
fadd.h f26, f21, f28, rtz # perform operation
fadd.h f26, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fadd.h f6, f12, f14, dyn # perform operation
fadd.h f6, f12, f14, rdn # perform operation
fadd.h f6, f12, f14, rmm # perform operation
fadd.h f6, f12, f14, rne # perform operation
fadd.h f6, f12, f14, rtz # perform operation
fadd.h f6, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fadd.h f3, f7, f21, dyn # perform operation
fadd.h f3, f7, f21, rdn # perform operation
fadd.h f3, f7, f21, rmm # perform operation
fadd.h f3, f7, f21, rne # perform operation
fadd.h f3, f7, f21, rtz # perform operation
fadd.h f3, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fadd.h f14, f5, f10, dyn # perform operation
fadd.h f14, f5, f10, rdn # perform operation
fadd.h f14, f5, f10, rmm # perform operation
fadd.h f14, f5, f10, rne # perform operation
fadd.h f14, f5, f10, rtz # perform operation
fadd.h f14, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fadd.h f22, f20, f29, dyn # perform operation
fadd.h f22, f20, f29, rdn # perform operation
fadd.h f22, f20, f29, rmm # perform operation
fadd.h f22, f20, f29, rne # perform operation
fadd.h f22, f20, f29, rtz # perform operation
fadd.h f22, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fadd.h f13, f15, f10, dyn # perform operation
fadd.h f13, f15, f10, rdn # perform operation
fadd.h f13, f15, f10, rmm # perform operation
fadd.h f13, f15, f10, rne # perform operation
fadd.h f13, f15, f10, rtz # perform operation
fadd.h f13, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
fadd.h f24, f17, f22, dyn # perform operation
fadd.h f24, f17, f22, rdn # perform operation
fadd.h f24, f17, f22, rmm # perform operation
fadd.h f24, f17, f22, rne # perform operation
fadd.h f24, f17, f22, rtz # perform operation
fadd.h f24, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fadd.h f3, f29, f11, dyn # perform operation
fadd.h f3, f29, f11, rdn # perform operation
fadd.h f3, f29, f11, rmm # perform operation
fadd.h f3, f29, f11, rne # perform operation
fadd.h f3, f29, f11, rtz # perform operation
fadd.h f3, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fadd.h f18, f31, f14, dyn # perform operation
fadd.h f18, f31, f14, rdn # perform operation
fadd.h f18, f31, f14, rmm # perform operation
fadd.h f18, f31, f14, rne # perform operation
fadd.h f18, f31, f14, rtz # perform operation
fadd.h f18, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f31, f14 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x8a03dc3a # load x3 with value 0x8a03dc3a
sw x3, 0(x2) # store 0x8a03dc3a in memory
flh f15, 0(x2) # load 0x8a03dc3a from memory into f15
la x2, scratch
li x3, 0xbd941660 # load x3 with value 0xbd941660
sw x3, 0(x2) # store 0xbd941660 in memory
flh f1, 0(x2) # load 0xbd941660 from memory into f1
fadd.h f7, f15, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x88e2ba50 # load x3 with value 0x88e2ba50
sw x3, 0(x2) # store 0x88e2ba50 in memory
flw f6, 0(x2) # load 0x88e2ba50 from memory into f6
fadd.h f1, f7, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f2, 0(x2) # load 0xfffe8000 from memory into f2
la x2, scratch
li x3, 0x08a6c98a # load x3 with value 0x08a6c98a
sw x3, 0(x2) # store 0x08a6c98a in memory
flw f15, 0(x2) # load 0x08a6c98a from memory into f15
fadd.h f1, f2, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f6, 0(x2) # load 0x7fff3c00 from memory into f6
la x2, scratch
li x3, 0x27c38432 # load x3 with value 0x27c38432
sw x3, 0(x2) # store 0x27c38432 in memory
flw f10, 0(x2) # load 0x27c38432 from memory into f10
fadd.h f12, f6, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f13, 0(x2) # load 0xbeefbc00 from memory into f13
la x2, scratch
li x3, 0xa59c8e2f # load x3 with value 0xa59c8e2f
sw x3, 0(x2) # store 0xa59c8e2f in memory
flw f9, 0(x2) # load 0xa59c8e2f from memory into f9
fadd.h f20, f13, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f26, 0(x2) # load 0xfeff0400 from memory into f26
la x2, scratch
li x3, 0x7d771041 # load x3 with value 0x7d771041
sw x3, 0(x2) # store 0x7d771041 in memory
flw f23, 0(x2) # load 0x7d771041 from memory into f23
fadd.h f9, f26, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f6, 0(x2) # load 0x0fff8400 from memory into f6
la x2, scratch
li x3, 0xd4f694b6 # load x3 with value 0xd4f694b6
sw x3, 0(x2) # store 0xd4f694b6 in memory
flw f30, 0(x2) # load 0xd4f694b6 from memory into f30
fadd.h f29, f6, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f22, 0(x2) # load 0xefff7bff from memory into f22
la x2, scratch
li x3, 0xe3902e3d # load x3 with value 0xe3902e3d
sw x3, 0(x2) # store 0xe3902e3d in memory
flw f25, 0(x2) # load 0xe3902e3d from memory into f25
fadd.h f1, f22, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f30, 0(x2) # load 0xc0defbff from memory into f30
la x2, scratch
li x3, 0x4f0b7e18 # load x3 with value 0x4f0b7e18
sw x3, 0(x2) # store 0x4f0b7e18 in memory
flw f21, 0(x2) # load 0x4f0b7e18 from memory into f21
fadd.h f9, f30, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f29, 0(x2) # load 0x4f1a7c00 from memory into f29
la x2, scratch
li x3, 0x28322a4a # load x3 with value 0x28322a4a
sw x3, 0(x2) # store 0x28322a4a in memory
flw f15, 0(x2) # load 0x28322a4a from memory into f15
fadd.h f13, f29, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f29, 0(x2) # load 0x0ffffc00 from memory into f29
la x2, scratch
li x3, 0x86d0bd33 # load x3 with value 0x86d0bd33
sw x3, 0(x2) # store 0x86d0bd33 in memory
flw f22, 0(x2) # load 0x86d0bd33 from memory into f22
fadd.h f23, f29, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f13, 0(x2) # load 0xffef7e00 from memory into f13
la x2, scratch
li x3, 0x664a5b6a # load x3 with value 0x664a5b6a
sw x3, 0(x2) # store 0x664a5b6a in memory
flw f1, 0(x2) # load 0x664a5b6a from memory into f1
fadd.h f11, f13, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f18, 0(x2) # load 0xfeef7fff from memory into f18
la x2, scratch
li x3, 0xf44a8a49 # load x3 with value 0xf44a8a49
sw x3, 0(x2) # store 0xf44a8a49 in memory
flw f6, 0(x2) # load 0xf44a8a49 from memory into f6
fadd.h f16, f18, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f1, 0(x2) # load 0xa1b27c01 from memory into f1
la x2, scratch
li x3, 0x58598efb # load x3 with value 0x58598efb
sw x3, 0(x2) # store 0x58598efb in memory
flw f8, 0(x2) # load 0x58598efb from memory into f8
fadd.h f20, f1, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f2, 0(x2) # load 0x4fd77dff from memory into f2
la x2, scratch
li x3, 0xe7da7a1a # load x3 with value 0xe7da7a1a
sw x3, 0(x2) # store 0xe7da7a1a in memory
flw f3, 0(x2) # load 0xe7da7a1a from memory into f3
fadd.h f11, f2, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xaf4c7682 # load x3 with value 0xaf4c7682
sw x3, 0(x2) # store 0xaf4c7682 in memory
flw f12, 0(x2) # load 0xaf4c7682 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fadd.h f6, f12, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0x15d61b3a # load x3 with value 0x15d61b3a
sw x3, 0(x2) # store 0x15d61b3a in memory
flw f12, 0(x2) # load 0x15d61b3a from memory into f12
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f28, 0(x2) # load 0xfffe8000 from memory into f28
fadd.h f13, f12, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0xf29a1770 # load x3 with value 0xf29a1770
sw x3, 0(x2) # store 0xf29a1770 in memory
flw f19, 0(x2) # load 0xf29a1770 from memory into f19
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f12, 0(x2) # load 0x7fff3c00 from memory into f12
fadd.h f1, f19, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0x1aef400c # load x3 with value 0x1aef400c
sw x3, 0(x2) # store 0x1aef400c in memory
flw f7, 0(x2) # load 0x1aef400c from memory into f7
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f21, 0(x2) # load 0xbeefbc00 from memory into f21
fadd.h f30, f7, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0x38a18bfd # load x3 with value 0x38a18bfd
sw x3, 0(x2) # store 0x38a18bfd in memory
flw f7, 0(x2) # load 0x38a18bfd from memory into f7
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f17, 0(x2) # load 0xfeff0400 from memory into f17
fadd.h f20, f7, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x455bc691 # load x3 with value 0x455bc691
sw x3, 0(x2) # store 0x455bc691 in memory
flw f5, 0(x2) # load 0x455bc691 from memory into f5
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f3, 0(x2) # load 0x0fff8400 from memory into f3
fadd.h f2, f5, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0x36351c7d # load x3 with value 0x36351c7d
sw x3, 0(x2) # store 0x36351c7d in memory
flw f2, 0(x2) # load 0x36351c7d from memory into f2
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f29, 0(x2) # load 0xefff7bff from memory into f29
fadd.h f18, f2, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xd78e1196 # load x3 with value 0xd78e1196
sw x3, 0(x2) # store 0xd78e1196 in memory
flw f8, 0(x2) # load 0xd78e1196 from memory into f8
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f6, 0(x2) # load 0xc0defbff from memory into f6
fadd.h f19, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x6ebb38b5 # load x3 with value 0x6ebb38b5
sw x3, 0(x2) # store 0x6ebb38b5 in memory
flw f10, 0(x2) # load 0x6ebb38b5 from memory into f10
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f31, 0(x2) # load 0x4f1a7c00 from memory into f31
fadd.h f19, f10, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0x8d55f852 # load x3 with value 0x8d55f852
sw x3, 0(x2) # store 0x8d55f852 in memory
flw f6, 0(x2) # load 0x8d55f852 from memory into f6
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f21, 0(x2) # load 0x0ffffc00 from memory into f21
fadd.h f31, f6, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0x14d8dad2 # load x3 with value 0x14d8dad2
sw x3, 0(x2) # store 0x14d8dad2 in memory
flw f17, 0(x2) # load 0x14d8dad2 from memory into f17
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f2, 0(x2) # load 0xffef7e00 from memory into f2
fadd.h f9, f17, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0x2082389b # load x3 with value 0x2082389b
sw x3, 0(x2) # store 0x2082389b in memory
flw f30, 0(x2) # load 0x2082389b from memory into f30
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f17, 0(x2) # load 0xfeef7fff from memory into f17
fadd.h f14, f30, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0x3bfba13e # load x3 with value 0x3bfba13e
sw x3, 0(x2) # store 0x3bfba13e in memory
flw f30, 0(x2) # load 0x3bfba13e from memory into f30
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f29, 0(x2) # load 0xa1b27c01 from memory into f29
fadd.h f26, f30, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0xedab74cb # load x3 with value 0xedab74cb
sw x3, 0(x2) # store 0xedab74cb in memory
flw f20, 0(x2) # load 0xedab74cb from memory into f20
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f8, 0(x2) # load 0x4fd77dff from memory into f8
fadd.h f22, f20, f8 # perform operation

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
