///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.wu.s.S
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
li x3, 0x99ff78fcc7ac93e9 # load x3 with value 0x99ff78fcc7ac93e9
sw x3, 0(x2) # store 0x99ff78fcc7ac93e9 in memory
flw f24, 0(x2) # load 0x99ff78fcc7ac93e9 from memory into f24
fcvt.wu.s x0, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xcdb924686aa48eb7 # load x3 with value 0xcdb924686aa48eb7
sw x3, 0(x2) # store 0xcdb924686aa48eb7 in memory
flw f16, 0(x2) # load 0xcdb924686aa48eb7 from memory into f16
fcvt.wu.s x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xa3d10b821e60e945 # load x3 with value 0xa3d10b821e60e945
sw x3, 0(x2) # store 0xa3d10b821e60e945 in memory
flw f6, 0(x2) # load 0xa3d10b821e60e945 from memory into f6
fcvt.wu.s x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xdeda7ca6547b62 # load x3 with value 0xdeda7ca6547b62
sw x3, 0(x2) # store 0xdeda7ca6547b62 in memory
flw f26, 0(x2) # load 0xdeda7ca6547b62 from memory into f26
fcvt.wu.s x3, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x191c3a93e6449eec # load x3 with value 0x191c3a93e6449eec
sw x3, 0(x2) # store 0x191c3a93e6449eec in memory
flw f16, 0(x2) # load 0x191c3a93e6449eec from memory into f16
fcvt.wu.s x4, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x22ac2109ee11c14a # load x3 with value 0x22ac2109ee11c14a
sw x3, 0(x2) # store 0x22ac2109ee11c14a in memory
flw f18, 0(x2) # load 0x22ac2109ee11c14a from memory into f18
fcvt.wu.s x5, f18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x52e952150477eebb # load x3 with value 0x52e952150477eebb
sw x3, 0(x2) # store 0x52e952150477eebb in memory
flw f12, 0(x2) # load 0x52e952150477eebb from memory into f12
fcvt.wu.s x6, f12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x494a158e798fde0 # load x3 with value 0x494a158e798fde0
sw x3, 0(x2) # store 0x494a158e798fde0 in memory
flw f27, 0(x2) # load 0x494a158e798fde0 from memory into f27
fcvt.wu.s x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xb1940aeb7c082cd5 # load x3 with value 0xb1940aeb7c082cd5
sw x3, 0(x2) # store 0xb1940aeb7c082cd5 in memory
flw f14, 0(x2) # load 0xb1940aeb7c082cd5 from memory into f14
fcvt.wu.s x8, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x75d35f9389f624b1 # load x3 with value 0x75d35f9389f624b1
sw x3, 0(x2) # store 0x75d35f9389f624b1 in memory
flw f8, 0(x2) # load 0x75d35f9389f624b1 from memory into f8
fcvt.wu.s x9, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x5c703957e0e97449 # load x3 with value 0x5c703957e0e97449
sw x3, 0(x2) # store 0x5c703957e0e97449 in memory
flw f21, 0(x2) # load 0x5c703957e0e97449 from memory into f21
fcvt.wu.s x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x5f5276b8edfdb0a8 # load x3 with value 0x5f5276b8edfdb0a8
sw x3, 0(x2) # store 0x5f5276b8edfdb0a8 in memory
flw f14, 0(x2) # load 0x5f5276b8edfdb0a8 from memory into f14
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x756f1d045ce5afbf # load x3 with value 0x756f1d045ce5afbf
sw x3, 0(x2) # store 0x756f1d045ce5afbf in memory
flw f10, 0(x2) # load 0x756f1d045ce5afbf from memory into f10
fcvt.wu.s x12, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xe9bd9fe70eb56785 # load x3 with value 0xe9bd9fe70eb56785
sw x3, 0(x2) # store 0xe9bd9fe70eb56785 in memory
flw f23, 0(x2) # load 0xe9bd9fe70eb56785 from memory into f23
fcvt.wu.s x13, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x1c4e72ca4c80266b # load x3 with value 0x1c4e72ca4c80266b
sw x3, 0(x2) # store 0x1c4e72ca4c80266b in memory
flw f1, 0(x2) # load 0x1c4e72ca4c80266b from memory into f1
fcvt.wu.s x14, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x37ca596aa354b1f1 # load x3 with value 0x37ca596aa354b1f1
sw x3, 0(x2) # store 0x37ca596aa354b1f1 in memory
flw f16, 0(x2) # load 0x37ca596aa354b1f1 from memory into f16
fcvt.wu.s x15, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x98caf26a51ce26a1 # load x3 with value 0x98caf26a51ce26a1
sw x3, 0(x2) # store 0x98caf26a51ce26a1 in memory
flw f22, 0(x2) # load 0x98caf26a51ce26a1 from memory into f22
fcvt.wu.s x16, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xecc5c0898ede6298 # load x3 with value 0xecc5c0898ede6298
sw x3, 0(x2) # store 0xecc5c0898ede6298 in memory
flw f29, 0(x2) # load 0xecc5c0898ede6298 from memory into f29
fcvt.wu.s x17, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x42c09dc99165abf3 # load x3 with value 0x42c09dc99165abf3
sw x3, 0(x2) # store 0x42c09dc99165abf3 in memory
flw f12, 0(x2) # load 0x42c09dc99165abf3 from memory into f12
fcvt.wu.s x18, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xb4a2d36d8460cce7 # load x3 with value 0xb4a2d36d8460cce7
sw x3, 0(x2) # store 0xb4a2d36d8460cce7 in memory
flw f13, 0(x2) # load 0xb4a2d36d8460cce7 from memory into f13
fcvt.wu.s x19, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x2ac490d34de4b28b # load x3 with value 0x2ac490d34de4b28b
sw x3, 0(x2) # store 0x2ac490d34de4b28b in memory
flw f21, 0(x2) # load 0x2ac490d34de4b28b from memory into f21
fcvt.wu.s x20, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x8b7c1963bb91a396 # load x3 with value 0x8b7c1963bb91a396
sw x3, 0(x2) # store 0x8b7c1963bb91a396 in memory
flw f17, 0(x2) # load 0x8b7c1963bb91a396 from memory into f17
fcvt.wu.s x21, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xf2874c55c8ae05dc # load x3 with value 0xf2874c55c8ae05dc
sw x3, 0(x2) # store 0xf2874c55c8ae05dc in memory
flw f8, 0(x2) # load 0xf2874c55c8ae05dc from memory into f8
fcvt.wu.s x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x43a8ff95419dca97 # load x3 with value 0x43a8ff95419dca97
sw x3, 0(x2) # store 0x43a8ff95419dca97 in memory
flw f16, 0(x2) # load 0x43a8ff95419dca97 from memory into f16
fcvt.wu.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xad9e6e64895cca23 # load x3 with value 0xad9e6e64895cca23
sw x3, 0(x2) # store 0xad9e6e64895cca23 in memory
flw f11, 0(x2) # load 0xad9e6e64895cca23 from memory into f11
fcvt.wu.s x24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x8f660c4d829b7025 # load x3 with value 0x8f660c4d829b7025
sw x3, 0(x2) # store 0x8f660c4d829b7025 in memory
flw f2, 0(x2) # load 0x8f660c4d829b7025 from memory into f2
fcvt.wu.s x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xfc572c41766fb00a # load x3 with value 0xfc572c41766fb00a
sw x3, 0(x2) # store 0xfc572c41766fb00a in memory
flw f17, 0(x2) # load 0xfc572c41766fb00a from memory into f17
fcvt.wu.s x26, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xc66d52013d115b06 # load x3 with value 0xc66d52013d115b06
sw x3, 0(x2) # store 0xc66d52013d115b06 in memory
flw f23, 0(x2) # load 0xc66d52013d115b06 from memory into f23
fcvt.wu.s x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x4b3d9d933234ec5b # load x3 with value 0x4b3d9d933234ec5b
sw x3, 0(x2) # store 0x4b3d9d933234ec5b in memory
flw f27, 0(x2) # load 0x4b3d9d933234ec5b from memory into f27
fcvt.wu.s x28, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x7eeceab4428dc7c4 # load x3 with value 0x7eeceab4428dc7c4
sw x3, 0(x2) # store 0x7eeceab4428dc7c4 in memory
flw f7, 0(x2) # load 0x7eeceab4428dc7c4 from memory into f7
fcvt.wu.s x29, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x87842cc2d70b54fd # load x3 with value 0x87842cc2d70b54fd
sw x3, 0(x2) # store 0x87842cc2d70b54fd in memory
flw f14, 0(x2) # load 0x87842cc2d70b54fd from memory into f14
fcvt.wu.s x30, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x9a77fcd383fcff41 # load x3 with value 0x9a77fcd383fcff41
sw x3, 0(x2) # store 0x9a77fcd383fcff41 in memory
flw f17, 0(x2) # load 0x9a77fcd383fcff41 from memory into f17
fcvt.wu.s x31, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x17, x15 # perform first operation
fcvt.wu.s x21, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x2, x7 # perform first operation
fcvt.wu.s x26, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x30, x17 # perform first operation
fcvt.wu.s x28, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f31, f10, f8 # perform first operation
fcvt.wu.s x31, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x12, x14 # perform first operation
fcvt.wu.s x14, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x28, x18 # perform first operation
fcvt.wu.s x23, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x28, x10 # perform first operation
fcvt.wu.s x5, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x29, x12 # perform first operation
fcvt.wu.s x11, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x23, x15 # perform first operation
fcvt.wu.s x10, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x15, x1 # perform first operation
fcvt.wu.s x28, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x18, x27 # perform first operation
fcvt.wu.s x30, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x9, x5 # perform first operation
fcvt.wu.s x13, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x16, x1 # perform first operation
fcvt.wu.s x16, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x18, x25 # perform first operation
fcvt.wu.s x25, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x11, x16 # perform first operation
fcvt.wu.s x22, f17 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x5681af58325ca782 # load x3 with value 0x5681af58325ca782
sw x3, 0(x2) # store 0x5681af58325ca782 in memory
flw f0, 0(x2) # load 0x5681af58325ca782 from memory into f0
fcvt.wu.s x23, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x6f49163f33d066e3 # load x3 with value 0x6f49163f33d066e3
sw x3, 0(x2) # store 0x6f49163f33d066e3 in memory
flw f1, 0(x2) # load 0x6f49163f33d066e3 from memory into f1
fcvt.wu.s x3, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x2c2cda125beb47c8 # load x3 with value 0x2c2cda125beb47c8
sw x3, 0(x2) # store 0x2c2cda125beb47c8 in memory
flw f2, 0(x2) # load 0x2c2cda125beb47c8 from memory into f2
fcvt.wu.s x14, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x583e4c148b447bdc # load x3 with value 0x583e4c148b447bdc
sw x3, 0(x2) # store 0x583e4c148b447bdc in memory
flw f3, 0(x2) # load 0x583e4c148b447bdc from memory into f3
fcvt.wu.s x25, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbf440139cd98804d # load x3 with value 0xbf440139cd98804d
sw x3, 0(x2) # store 0xbf440139cd98804d in memory
flw f4, 0(x2) # load 0xbf440139cd98804d from memory into f4
fcvt.wu.s x13, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc42c3bbcd07f4373 # load x3 with value 0xc42c3bbcd07f4373
sw x3, 0(x2) # store 0xc42c3bbcd07f4373 in memory
flw f5, 0(x2) # load 0xc42c3bbcd07f4373 from memory into f5
fcvt.wu.s x19, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbf5d283077875488 # load x3 with value 0xbf5d283077875488
sw x3, 0(x2) # store 0xbf5d283077875488 in memory
flw f6, 0(x2) # load 0xbf5d283077875488 from memory into f6
fcvt.wu.s x11, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x87a84210f6fb7776 # load x3 with value 0x87a84210f6fb7776
sw x3, 0(x2) # store 0x87a84210f6fb7776 in memory
flw f7, 0(x2) # load 0x87a84210f6fb7776 from memory into f7
fcvt.wu.s x11, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x19f11a18abaa3ab # load x3 with value 0x19f11a18abaa3ab
sw x3, 0(x2) # store 0x19f11a18abaa3ab in memory
flw f8, 0(x2) # load 0x19f11a18abaa3ab from memory into f8
fcvt.wu.s x27, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xc37dd58d59c579c0 # load x3 with value 0xc37dd58d59c579c0
sw x3, 0(x2) # store 0xc37dd58d59c579c0 in memory
flw f9, 0(x2) # load 0xc37dd58d59c579c0 from memory into f9
fcvt.wu.s x31, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x275d3b5ddc679be0 # load x3 with value 0x275d3b5ddc679be0
sw x3, 0(x2) # store 0x275d3b5ddc679be0 in memory
flw f10, 0(x2) # load 0x275d3b5ddc679be0 from memory into f10
fcvt.wu.s x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x711b5555231a6606 # load x3 with value 0x711b5555231a6606
sw x3, 0(x2) # store 0x711b5555231a6606 in memory
flw f11, 0(x2) # load 0x711b5555231a6606 from memory into f11
fcvt.wu.s x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x31405bbf7abae8db # load x3 with value 0x31405bbf7abae8db
sw x3, 0(x2) # store 0x31405bbf7abae8db in memory
flw f12, 0(x2) # load 0x31405bbf7abae8db from memory into f12
fcvt.wu.s x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x58d0e5e357b39f8c # load x3 with value 0x58d0e5e357b39f8c
sw x3, 0(x2) # store 0x58d0e5e357b39f8c in memory
flw f13, 0(x2) # load 0x58d0e5e357b39f8c from memory into f13
fcvt.wu.s x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x66dba1db6921ac73 # load x3 with value 0x66dba1db6921ac73
sw x3, 0(x2) # store 0x66dba1db6921ac73 in memory
flw f14, 0(x2) # load 0x66dba1db6921ac73 from memory into f14
fcvt.wu.s x23, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xd1936b96b7e33e92 # load x3 with value 0xd1936b96b7e33e92
sw x3, 0(x2) # store 0xd1936b96b7e33e92 in memory
flw f15, 0(x2) # load 0xd1936b96b7e33e92 from memory into f15
fcvt.wu.s x6, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xbd62c607b1db25ef # load x3 with value 0xbd62c607b1db25ef
sw x3, 0(x2) # store 0xbd62c607b1db25ef in memory
flw f16, 0(x2) # load 0xbd62c607b1db25ef from memory into f16
fcvt.wu.s x6, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xf745b212b99d554 # load x3 with value 0xf745b212b99d554
sw x3, 0(x2) # store 0xf745b212b99d554 in memory
flw f17, 0(x2) # load 0xf745b212b99d554 from memory into f17
fcvt.wu.s x20, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x4e145dd3743d936c # load x3 with value 0x4e145dd3743d936c
sw x3, 0(x2) # store 0x4e145dd3743d936c in memory
flw f18, 0(x2) # load 0x4e145dd3743d936c from memory into f18
fcvt.wu.s x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x8b394c044d2db362 # load x3 with value 0x8b394c044d2db362
sw x3, 0(x2) # store 0x8b394c044d2db362 in memory
flw f19, 0(x2) # load 0x8b394c044d2db362 from memory into f19
fcvt.wu.s x9, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x1317ebb0250f2246 # load x3 with value 0x1317ebb0250f2246
sw x3, 0(x2) # store 0x1317ebb0250f2246 in memory
flw f20, 0(x2) # load 0x1317ebb0250f2246 from memory into f20
fcvt.wu.s x7, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x111d5d423f958e4e # load x3 with value 0x111d5d423f958e4e
sw x3, 0(x2) # store 0x111d5d423f958e4e in memory
flw f21, 0(x2) # load 0x111d5d423f958e4e from memory into f21
fcvt.wu.s x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xd351fe8fa497eaa8 # load x3 with value 0xd351fe8fa497eaa8
sw x3, 0(x2) # store 0xd351fe8fa497eaa8 in memory
flw f22, 0(x2) # load 0xd351fe8fa497eaa8 from memory into f22
fcvt.wu.s x17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x4dda7a8d23b0c2ec # load x3 with value 0x4dda7a8d23b0c2ec
sw x3, 0(x2) # store 0x4dda7a8d23b0c2ec in memory
flw f23, 0(x2) # load 0x4dda7a8d23b0c2ec from memory into f23
fcvt.wu.s x6, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xc013aa3078b2ab43 # load x3 with value 0xc013aa3078b2ab43
sw x3, 0(x2) # store 0xc013aa3078b2ab43 in memory
flw f24, 0(x2) # load 0xc013aa3078b2ab43 from memory into f24
fcvt.wu.s x16, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x55c97281c8a1b4ef # load x3 with value 0x55c97281c8a1b4ef
sw x3, 0(x2) # store 0x55c97281c8a1b4ef in memory
flw f25, 0(x2) # load 0x55c97281c8a1b4ef from memory into f25
fcvt.wu.s x12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x43c90cd139688912 # load x3 with value 0x43c90cd139688912
sw x3, 0(x2) # store 0x43c90cd139688912 in memory
flw f26, 0(x2) # load 0x43c90cd139688912 from memory into f26
fcvt.wu.s x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x8fa8b407a4be848a # load x3 with value 0x8fa8b407a4be848a
sw x3, 0(x2) # store 0x8fa8b407a4be848a in memory
flw f27, 0(x2) # load 0x8fa8b407a4be848a from memory into f27
fcvt.wu.s x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x82dde88aea0c1c09 # load x3 with value 0x82dde88aea0c1c09
sw x3, 0(x2) # store 0x82dde88aea0c1c09 in memory
flw f28, 0(x2) # load 0x82dde88aea0c1c09 from memory into f28
fcvt.wu.s x10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x1ca98cd0da043e27 # load x3 with value 0x1ca98cd0da043e27
sw x3, 0(x2) # store 0x1ca98cd0da043e27 in memory
flw f29, 0(x2) # load 0x1ca98cd0da043e27 from memory into f29
fcvt.wu.s x27, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x68bc7f5048a18193 # load x3 with value 0x68bc7f5048a18193
sw x3, 0(x2) # store 0x68bc7f5048a18193 in memory
flw f30, 0(x2) # load 0x68bc7f5048a18193 from memory into f30
fcvt.wu.s x11, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x8957aa76b138e0f7 # load x3 with value 0x8957aa76b138e0f7
sw x3, 0(x2) # store 0x8957aa76b138e0f7 in memory
flw f31, 0(x2) # load 0x8957aa76b138e0f7 from memory into f31
fcvt.wu.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fcvt.wu.s x31, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fcvt.wu.s x9, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fcvt.wu.s x18, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fcvt.wu.s x2, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fcvt.wu.s x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fcvt.wu.s x3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fcvt.wu.s x8, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fcvt.wu.s x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fcvt.wu.s x1, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fcvt.wu.s x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fcvt.wu.s x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fcvt.wu.s x25, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fcvt.wu.s x16, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fcvt.wu.s x3, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fcvt.wu.s x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fcvt.wu.s x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fcvt.wu.s x7, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fcvt.wu.s x16, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fcvt.wu.s x31, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fcvt.wu.s x23, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fcvt.wu.s x8, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fcvt.wu.s x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fcvt.wu.s x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fcvt.wu.s x8, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fcvt.wu.s x29, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fcvt.wu.s x12, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fcvt.wu.s x25, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fcvt.wu.s x25, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fcvt.wu.s x11, f14, dyn # perform operation
fcvt.wu.s x11, f14, rdn # perform operation
fcvt.wu.s x11, f14, rmm # perform operation
fcvt.wu.s x11, f14, rne # perform operation
fcvt.wu.s x11, f14, rtz # perform operation
fcvt.wu.s x11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fcvt.wu.s x23, f28, dyn # perform operation
fcvt.wu.s x23, f28, rdn # perform operation
fcvt.wu.s x23, f28, rmm # perform operation
fcvt.wu.s x23, f28, rne # perform operation
fcvt.wu.s x23, f28, rtz # perform operation
fcvt.wu.s x23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fcvt.wu.s x29, f10, dyn # perform operation
fcvt.wu.s x29, f10, rdn # perform operation
fcvt.wu.s x29, f10, rmm # perform operation
fcvt.wu.s x29, f10, rne # perform operation
fcvt.wu.s x29, f10, rtz # perform operation
fcvt.wu.s x29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fcvt.wu.s x27, f7, dyn # perform operation
fcvt.wu.s x27, f7, rdn # perform operation
fcvt.wu.s x27, f7, rmm # perform operation
fcvt.wu.s x27, f7, rne # perform operation
fcvt.wu.s x27, f7, rtz # perform operation
fcvt.wu.s x27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fcvt.wu.s x5, f12, dyn # perform operation
fcvt.wu.s x5, f12, rdn # perform operation
fcvt.wu.s x5, f12, rmm # perform operation
fcvt.wu.s x5, f12, rne # perform operation
fcvt.wu.s x5, f12, rtz # perform operation
fcvt.wu.s x5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fcvt.wu.s x11, f9, dyn # perform operation
fcvt.wu.s x11, f9, rdn # perform operation
fcvt.wu.s x11, f9, rmm # perform operation
fcvt.wu.s x11, f9, rne # perform operation
fcvt.wu.s x11, f9, rtz # perform operation
fcvt.wu.s x11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fcvt.wu.s x13, f21, dyn # perform operation
fcvt.wu.s x13, f21, rdn # perform operation
fcvt.wu.s x13, f21, rmm # perform operation
fcvt.wu.s x13, f21, rne # perform operation
fcvt.wu.s x13, f21, rtz # perform operation
fcvt.wu.s x13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fcvt.wu.s x22, f6, dyn # perform operation
fcvt.wu.s x22, f6, rdn # perform operation
fcvt.wu.s x22, f6, rmm # perform operation
fcvt.wu.s x22, f6, rne # perform operation
fcvt.wu.s x22, f6, rtz # perform operation
fcvt.wu.s x22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x22, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x22, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x22, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x22, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x22, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fcvt.wu.s x28, f31, dyn # perform operation
fcvt.wu.s x28, f31, rdn # perform operation
fcvt.wu.s x28, f31, rmm # perform operation
fcvt.wu.s x28, f31, rne # perform operation
fcvt.wu.s x28, f31, rtz # perform operation
fcvt.wu.s x28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x28, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x28, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x28, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x28, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x28, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fcvt.wu.s x9, f7, dyn # perform operation
fcvt.wu.s x9, f7, rdn # perform operation
fcvt.wu.s x9, f7, rmm # perform operation
fcvt.wu.s x9, f7, rne # perform operation
fcvt.wu.s x9, f7, rtz # perform operation
fcvt.wu.s x9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fcvt.wu.s x30, f25, dyn # perform operation
fcvt.wu.s x30, f25, rdn # perform operation
fcvt.wu.s x30, f25, rmm # perform operation
fcvt.wu.s x30, f25, rne # perform operation
fcvt.wu.s x30, f25, rtz # perform operation
fcvt.wu.s x30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fcvt.wu.s x26, f1, dyn # perform operation
fcvt.wu.s x26, f1, rdn # perform operation
fcvt.wu.s x26, f1, rmm # perform operation
fcvt.wu.s x26, f1, rne # perform operation
fcvt.wu.s x26, f1, rtz # perform operation
fcvt.wu.s x26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fcvt.wu.s x10, f25, dyn # perform operation
fcvt.wu.s x10, f25, rdn # perform operation
fcvt.wu.s x10, f25, rmm # perform operation
fcvt.wu.s x10, f25, rne # perform operation
fcvt.wu.s x10, f25, rtz # perform operation
fcvt.wu.s x10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x10, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fcvt.wu.s x22, f28, dyn # perform operation
fcvt.wu.s x22, f28, rdn # perform operation
fcvt.wu.s x22, f28, rmm # perform operation
fcvt.wu.s x22, f28, rne # perform operation
fcvt.wu.s x22, f28, rtz # perform operation
fcvt.wu.s x22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x22, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fcvt.wu.s x7, f26, dyn # perform operation
fcvt.wu.s x7, f26, rdn # perform operation
fcvt.wu.s x7, f26, rmm # perform operation
fcvt.wu.s x7, f26, rne # perform operation
fcvt.wu.s x7, f26, rtz # perform operation
fcvt.wu.s x7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x7, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fcvt.wu.s x29, f25, dyn # perform operation
fcvt.wu.s x29, f25, rdn # perform operation
fcvt.wu.s x29, f25, rmm # perform operation
fcvt.wu.s x29, f25, rne # perform operation
fcvt.wu.s x29, f25, rtz # perform operation
fcvt.wu.s x29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fcvt.wu.s x13, f8, dyn # perform operation
fcvt.wu.s x13, f8, rdn # perform operation
fcvt.wu.s x13, f8, rmm # perform operation
fcvt.wu.s x13, f8, rne # perform operation
fcvt.wu.s x13, f8, rtz # perform operation
fcvt.wu.s x13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fcvt.wu.s x21, f27, dyn # perform operation
fcvt.wu.s x21, f27, rdn # perform operation
fcvt.wu.s x21, f27, rmm # perform operation
fcvt.wu.s x21, f27, rne # perform operation
fcvt.wu.s x21, f27, rtz # perform operation
fcvt.wu.s x21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x21, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x21, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x21, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x21, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x21, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fcvt.wu.s x18, f9, dyn # perform operation
fcvt.wu.s x18, f9, rdn # perform operation
fcvt.wu.s x18, f9, rmm # perform operation
fcvt.wu.s x18, f9, rne # perform operation
fcvt.wu.s x18, f9, rtz # perform operation
fcvt.wu.s x18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fcvt.wu.s x31, f1, dyn # perform operation
fcvt.wu.s x31, f1, rdn # perform operation
fcvt.wu.s x31, f1, rmm # perform operation
fcvt.wu.s x31, f1, rne # perform operation
fcvt.wu.s x31, f1, rtz # perform operation
fcvt.wu.s x31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fcvt.wu.s x26, f5, dyn # perform operation
fcvt.wu.s x26, f5, rdn # perform operation
fcvt.wu.s x26, f5, rmm # perform operation
fcvt.wu.s x26, f5, rne # perform operation
fcvt.wu.s x26, f5, rtz # perform operation
fcvt.wu.s x26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fcvt.wu.s x3, f7, dyn # perform operation
fcvt.wu.s x3, f7, rdn # perform operation
fcvt.wu.s x3, f7, rmm # perform operation
fcvt.wu.s x3, f7, rne # perform operation
fcvt.wu.s x3, f7, rtz # perform operation
fcvt.wu.s x3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x3, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fcvt.wu.s x17, f28, dyn # perform operation
fcvt.wu.s x17, f28, rdn # perform operation
fcvt.wu.s x17, f28, rmm # perform operation
fcvt.wu.s x17, f28, rne # perform operation
fcvt.wu.s x17, f28, rtz # perform operation
fcvt.wu.s x17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x17, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fcvt.wu.s x18, f20, dyn # perform operation
fcvt.wu.s x18, f20, rdn # perform operation
fcvt.wu.s x18, f20, rmm # perform operation
fcvt.wu.s x18, f20, rne # perform operation
fcvt.wu.s x18, f20, rtz # perform operation
fcvt.wu.s x18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fcvt.wu.s x3, f6, dyn # perform operation
fcvt.wu.s x3, f6, rdn # perform operation
fcvt.wu.s x3, f6, rmm # perform operation
fcvt.wu.s x3, f6, rne # perform operation
fcvt.wu.s x3, f6, rtz # perform operation
fcvt.wu.s x3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fcvt.wu.s x21, f7, dyn # perform operation
fcvt.wu.s x21, f7, rdn # perform operation
fcvt.wu.s x21, f7, rmm # perform operation
fcvt.wu.s x21, f7, rne # perform operation
fcvt.wu.s x21, f7, rtz # perform operation
fcvt.wu.s x21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fcvt.wu.s x11, f19, dyn # perform operation
fcvt.wu.s x11, f19, rdn # perform operation
fcvt.wu.s x11, f19, rmm # perform operation
fcvt.wu.s x11, f19, rne # perform operation
fcvt.wu.s x11, f19, rtz # perform operation
fcvt.wu.s x11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x11, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x11, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x11, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x11, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x11, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fcvt.wu.s x3, f16, dyn # perform operation
fcvt.wu.s x3, f16, rdn # perform operation
fcvt.wu.s x3, f16, rmm # perform operation
fcvt.wu.s x3, f16, rne # perform operation
fcvt.wu.s x3, f16, rtz # perform operation
fcvt.wu.s x3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0xa2b7b18ad8973f54 # load x3 with value 0xa2b7b18ad8973f54
sw x3, 0(x2) # store 0xa2b7b18ad8973f54 in memory
flw f17, 0(x2) # load 0xa2b7b18ad8973f54 from memory into f17
fcvt.wu.s x13, f17, dyn # perform operation
fcvt.wu.s x13, f17, rdn # perform operation
fcvt.wu.s x13, f17, rmm # perform operation
fcvt.wu.s x13, f17, rne # perform operation
fcvt.wu.s x13, f17, rtz # perform operation
fcvt.wu.s x13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)


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
