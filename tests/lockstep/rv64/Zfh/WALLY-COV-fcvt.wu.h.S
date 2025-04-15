///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.wu.h.S
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
li x3, 0xdbeddda4eb3347c2 # load x3 with value 0xdbeddda4eb3347c2
sw x3, 0(x2) # store 0xdbeddda4eb3347c2 in memory
flh f31, 0(x2) # load 0xdbeddda4eb3347c2 from memory into f31
fcvt.wu.h x0, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x8c5351498174167b # load x3 with value 0x8c5351498174167b
sw x3, 0(x2) # store 0x8c5351498174167b in memory
flh f29, 0(x2) # load 0x8c5351498174167b from memory into f29
fcvt.wu.h x1, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xbdb1ac3907c0859d # load x3 with value 0xbdb1ac3907c0859d
sw x3, 0(x2) # store 0xbdb1ac3907c0859d in memory
flh f7, 0(x2) # load 0xbdb1ac3907c0859d from memory into f7
fcvt.wu.h x2, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xa4a6a098e456234e # load x3 with value 0xa4a6a098e456234e
sw x3, 0(x2) # store 0xa4a6a098e456234e in memory
flh f15, 0(x2) # load 0xa4a6a098e456234e from memory into f15
fcvt.wu.h x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x407c3d9dec425f42 # load x3 with value 0x407c3d9dec425f42
sw x3, 0(x2) # store 0x407c3d9dec425f42 in memory
flh f28, 0(x2) # load 0x407c3d9dec425f42 from memory into f28
fcvt.wu.h x4, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1f1b0eca1e0e0965 # load x3 with value 0x1f1b0eca1e0e0965
sw x3, 0(x2) # store 0x1f1b0eca1e0e0965 in memory
flh f22, 0(x2) # load 0x1f1b0eca1e0e0965 from memory into f22
fcvt.wu.h x5, f22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x29da12febcc846bc # load x3 with value 0x29da12febcc846bc
sw x3, 0(x2) # store 0x29da12febcc846bc in memory
flh f12, 0(x2) # load 0x29da12febcc846bc from memory into f12
fcvt.wu.h x6, f12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x63befabcc2d96bd6 # load x3 with value 0x63befabcc2d96bd6
sw x3, 0(x2) # store 0x63befabcc2d96bd6 in memory
flh f29, 0(x2) # load 0x63befabcc2d96bd6 from memory into f29
fcvt.wu.h x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x6e65c15c9eaeea7b # load x3 with value 0x6e65c15c9eaeea7b
sw x3, 0(x2) # store 0x6e65c15c9eaeea7b in memory
flh f12, 0(x2) # load 0x6e65c15c9eaeea7b from memory into f12
fcvt.wu.h x8, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x2c15d52e5c0c89e8 # load x3 with value 0x2c15d52e5c0c89e8
sw x3, 0(x2) # store 0x2c15d52e5c0c89e8 in memory
flh f9, 0(x2) # load 0x2c15d52e5c0c89e8 from memory into f9
fcvt.wu.h x9, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x6ce0897425ed2f66 # load x3 with value 0x6ce0897425ed2f66
sw x3, 0(x2) # store 0x6ce0897425ed2f66 in memory
flh f18, 0(x2) # load 0x6ce0897425ed2f66 from memory into f18
fcvt.wu.h x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x9b3b8a63a2bbe34b # load x3 with value 0x9b3b8a63a2bbe34b
sw x3, 0(x2) # store 0x9b3b8a63a2bbe34b in memory
flh f2, 0(x2) # load 0x9b3b8a63a2bbe34b from memory into f2
fcvt.wu.h x11, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x5ed544d3c710b90c # load x3 with value 0x5ed544d3c710b90c
sw x3, 0(x2) # store 0x5ed544d3c710b90c in memory
flh f21, 0(x2) # load 0x5ed544d3c710b90c from memory into f21
fcvt.wu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x5d3a9383dcdb5b44 # load x3 with value 0x5d3a9383dcdb5b44
sw x3, 0(x2) # store 0x5d3a9383dcdb5b44 in memory
flh f14, 0(x2) # load 0x5d3a9383dcdb5b44 from memory into f14
fcvt.wu.h x13, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x1d7188efb271fb20 # load x3 with value 0x1d7188efb271fb20
sw x3, 0(x2) # store 0x1d7188efb271fb20 in memory
flh f10, 0(x2) # load 0x1d7188efb271fb20 from memory into f10
fcvt.wu.h x14, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x100625b625fda6a3 # load x3 with value 0x100625b625fda6a3
sw x3, 0(x2) # store 0x100625b625fda6a3 in memory
flh f19, 0(x2) # load 0x100625b625fda6a3 from memory into f19
fcvt.wu.h x15, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x4a1e25ac79825ba5 # load x3 with value 0x4a1e25ac79825ba5
sw x3, 0(x2) # store 0x4a1e25ac79825ba5 in memory
flh f20, 0(x2) # load 0x4a1e25ac79825ba5 from memory into f20
fcvt.wu.h x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xf01b43486c0784ac # load x3 with value 0xf01b43486c0784ac
sw x3, 0(x2) # store 0xf01b43486c0784ac in memory
flh f22, 0(x2) # load 0xf01b43486c0784ac from memory into f22
fcvt.wu.h x17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x9ed34098ae4fc5df # load x3 with value 0x9ed34098ae4fc5df
sw x3, 0(x2) # store 0x9ed34098ae4fc5df in memory
flh f31, 0(x2) # load 0x9ed34098ae4fc5df from memory into f31
fcvt.wu.h x18, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x9228b7172b25ad2a # load x3 with value 0x9228b7172b25ad2a
sw x3, 0(x2) # store 0x9228b7172b25ad2a in memory
flh f10, 0(x2) # load 0x9228b7172b25ad2a from memory into f10
fcvt.wu.h x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x333c75e21c26fb8c # load x3 with value 0x333c75e21c26fb8c
sw x3, 0(x2) # store 0x333c75e21c26fb8c in memory
flh f25, 0(x2) # load 0x333c75e21c26fb8c from memory into f25
fcvt.wu.h x20, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xab82cf9cb729a98f # load x3 with value 0xab82cf9cb729a98f
sw x3, 0(x2) # store 0xab82cf9cb729a98f in memory
flh f26, 0(x2) # load 0xab82cf9cb729a98f from memory into f26
fcvt.wu.h x21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x7154949398ef038e # load x3 with value 0x7154949398ef038e
sw x3, 0(x2) # store 0x7154949398ef038e in memory
flh f24, 0(x2) # load 0x7154949398ef038e from memory into f24
fcvt.wu.h x22, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x6cfa2c5a903b0aad # load x3 with value 0x6cfa2c5a903b0aad
sw x3, 0(x2) # store 0x6cfa2c5a903b0aad in memory
flh f5, 0(x2) # load 0x6cfa2c5a903b0aad from memory into f5
fcvt.wu.h x23, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xad2facc6f5556241 # load x3 with value 0xad2facc6f5556241
sw x3, 0(x2) # store 0xad2facc6f5556241 in memory
flh f25, 0(x2) # load 0xad2facc6f5556241 from memory into f25
fcvt.wu.h x24, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x9d5c4d7575d1b851 # load x3 with value 0x9d5c4d7575d1b851
sw x3, 0(x2) # store 0x9d5c4d7575d1b851 in memory
flh f8, 0(x2) # load 0x9d5c4d7575d1b851 from memory into f8
fcvt.wu.h x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x3431a30afb45c774 # load x3 with value 0x3431a30afb45c774
sw x3, 0(x2) # store 0x3431a30afb45c774 in memory
flh f18, 0(x2) # load 0x3431a30afb45c774 from memory into f18
fcvt.wu.h x26, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x14203d9c546776b5 # load x3 with value 0x14203d9c546776b5
sw x3, 0(x2) # store 0x14203d9c546776b5 in memory
flh f17, 0(x2) # load 0x14203d9c546776b5 from memory into f17
fcvt.wu.h x27, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xe0950286f3bcae3a # load x3 with value 0xe0950286f3bcae3a
sw x3, 0(x2) # store 0xe0950286f3bcae3a in memory
flh f6, 0(x2) # load 0xe0950286f3bcae3a from memory into f6
fcvt.wu.h x28, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x3020994be184e64f # load x3 with value 0x3020994be184e64f
sw x3, 0(x2) # store 0x3020994be184e64f in memory
flh f10, 0(x2) # load 0x3020994be184e64f from memory into f10
fcvt.wu.h x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x68119c1a5085e95e # load x3 with value 0x68119c1a5085e95e
sw x3, 0(x2) # store 0x68119c1a5085e95e in memory
flh f3, 0(x2) # load 0x68119c1a5085e95e from memory into f3
fcvt.wu.h x30, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xe735a6ee9f1bd2a0 # load x3 with value 0xe735a6ee9f1bd2a0
sw x3, 0(x2) # store 0xe735a6ee9f1bd2a0 in memory
flh f1, 0(x2) # load 0xe735a6ee9f1bd2a0 from memory into f1
fcvt.wu.h x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x28, x12 # perform first operation
fcvt.wu.h x19, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x21, x26 # perform first operation
fcvt.wu.h x30, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x17, x16 # perform first operation
fcvt.wu.h x20, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f23, f25, f14 # perform first operation
fcvt.wu.h x23, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x23, x15 # perform first operation
fcvt.wu.h x23, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x15, x26 # perform first operation
fcvt.wu.h x26, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x8, x18 # perform first operation
fcvt.wu.h x23, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x31, x2 # perform first operation
fcvt.wu.h x1, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x28, x8 # perform first operation
fcvt.wu.h x19, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x9, x8 # perform first operation
fcvt.wu.h x11, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x20, x25 # perform first operation
fcvt.wu.h x19, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x19, x29 # perform first operation
fcvt.wu.h x16, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x22, x12 # perform first operation
fcvt.wu.h x22, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x2, x13 # perform first operation
fcvt.wu.h x13, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x28, x25 # perform first operation
fcvt.wu.h x10, f23 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x88edf02e3411d3e6 # load x3 with value 0x88edf02e3411d3e6
sw x3, 0(x2) # store 0x88edf02e3411d3e6 in memory
flh f0, 0(x2) # load 0x88edf02e3411d3e6 from memory into f0
fcvt.wu.h x6, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x1ea7b4a97153219f # load x3 with value 0x1ea7b4a97153219f
sw x3, 0(x2) # store 0x1ea7b4a97153219f in memory
flh f1, 0(x2) # load 0x1ea7b4a97153219f from memory into f1
fcvt.wu.h x21, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x805bb0de41e5f57d # load x3 with value 0x805bb0de41e5f57d
sw x3, 0(x2) # store 0x805bb0de41e5f57d in memory
flh f2, 0(x2) # load 0x805bb0de41e5f57d from memory into f2
fcvt.wu.h x13, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x11557bcca6fc1cb9 # load x3 with value 0x11557bcca6fc1cb9
sw x3, 0(x2) # store 0x11557bcca6fc1cb9 in memory
flh f3, 0(x2) # load 0x11557bcca6fc1cb9 from memory into f3
fcvt.wu.h x13, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfd824c133bfb9665 # load x3 with value 0xfd824c133bfb9665
sw x3, 0(x2) # store 0xfd824c133bfb9665 in memory
flh f4, 0(x2) # load 0xfd824c133bfb9665 from memory into f4
fcvt.wu.h x20, f4 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
la x2, scratch
li x3, 0x7bc56f387f0c4c6f # load x3 with value 0x7bc56f387f0c4c6f
sw x3, 0(x2) # store 0x7bc56f387f0c4c6f in memory
flh f5, 0(x2) # load 0x7bc56f387f0c4c6f from memory into f5
fcvt.wu.h x31, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc5ce5c563718963f # load x3 with value 0xc5ce5c563718963f
sw x3, 0(x2) # store 0xc5ce5c563718963f in memory
flh f6, 0(x2) # load 0xc5ce5c563718963f from memory into f6
fcvt.wu.h x17, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x449b591d37419895 # load x3 with value 0x449b591d37419895
sw x3, 0(x2) # store 0x449b591d37419895 in memory
flh f7, 0(x2) # load 0x449b591d37419895 from memory into f7
fcvt.wu.h x2, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xa3598ff595a141a8 # load x3 with value 0xa3598ff595a141a8
sw x3, 0(x2) # store 0xa3598ff595a141a8 in memory
flh f8, 0(x2) # load 0xa3598ff595a141a8 from memory into f8
fcvt.wu.h x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x5edd88da454d94bd # load x3 with value 0x5edd88da454d94bd
sw x3, 0(x2) # store 0x5edd88da454d94bd in memory
flh f9, 0(x2) # load 0x5edd88da454d94bd from memory into f9
fcvt.wu.h x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xa3e61bb4cc948ab # load x3 with value 0xa3e61bb4cc948ab
sw x3, 0(x2) # store 0xa3e61bb4cc948ab in memory
flh f10, 0(x2) # load 0xa3e61bb4cc948ab from memory into f10
fcvt.wu.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x651631a412a4d34b # load x3 with value 0x651631a412a4d34b
sw x3, 0(x2) # store 0x651631a412a4d34b in memory
flh f11, 0(x2) # load 0x651631a412a4d34b from memory into f11
fcvt.wu.h x6, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x105ba2ac69783c31 # load x3 with value 0x105ba2ac69783c31
sw x3, 0(x2) # store 0x105ba2ac69783c31 in memory
flh f12, 0(x2) # load 0x105ba2ac69783c31 from memory into f12
fcvt.wu.h x23, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xa6110a06b93d587e # load x3 with value 0xa6110a06b93d587e
sw x3, 0(x2) # store 0xa6110a06b93d587e in memory
flh f13, 0(x2) # load 0xa6110a06b93d587e from memory into f13
fcvt.wu.h x17, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xd7f7b4ef32d13875 # load x3 with value 0xd7f7b4ef32d13875
sw x3, 0(x2) # store 0xd7f7b4ef32d13875 in memory
flh f14, 0(x2) # load 0xd7f7b4ef32d13875 from memory into f14
fcvt.wu.h x14, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xfe3686606db2bfe8 # load x3 with value 0xfe3686606db2bfe8
sw x3, 0(x2) # store 0xfe3686606db2bfe8 in memory
flh f15, 0(x2) # load 0xfe3686606db2bfe8 from memory into f15
fcvt.wu.h x25, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xf63dfa96a49132f2 # load x3 with value 0xf63dfa96a49132f2
sw x3, 0(x2) # store 0xf63dfa96a49132f2 in memory
flh f16, 0(x2) # load 0xf63dfa96a49132f2 from memory into f16
fcvt.wu.h x26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x2c9a328e7a1a4b6d # load x3 with value 0x2c9a328e7a1a4b6d
sw x3, 0(x2) # store 0x2c9a328e7a1a4b6d in memory
flh f17, 0(x2) # load 0x2c9a328e7a1a4b6d from memory into f17
fcvt.wu.h x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xdda5c14264d192ff # load x3 with value 0xdda5c14264d192ff
sw x3, 0(x2) # store 0xdda5c14264d192ff in memory
flh f18, 0(x2) # load 0xdda5c14264d192ff from memory into f18
fcvt.wu.h x13, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x1a805d8882d0cacb # load x3 with value 0x1a805d8882d0cacb
sw x3, 0(x2) # store 0x1a805d8882d0cacb in memory
flh f19, 0(x2) # load 0x1a805d8882d0cacb from memory into f19
fcvt.wu.h x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xe081efbd19a7afa2 # load x3 with value 0xe081efbd19a7afa2
sw x3, 0(x2) # store 0xe081efbd19a7afa2 in memory
flh f20, 0(x2) # load 0xe081efbd19a7afa2 from memory into f20
fcvt.wu.h x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xdecc06cfbc7a6687 # load x3 with value 0xdecc06cfbc7a6687
sw x3, 0(x2) # store 0xdecc06cfbc7a6687 in memory
flh f21, 0(x2) # load 0xdecc06cfbc7a6687 from memory into f21
fcvt.wu.h x16, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x702eb46985e55d26 # load x3 with value 0x702eb46985e55d26
sw x3, 0(x2) # store 0x702eb46985e55d26 in memory
flh f22, 0(x2) # load 0x702eb46985e55d26 from memory into f22
fcvt.wu.h x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x210299cad576033 # load x3 with value 0x210299cad576033
sw x3, 0(x2) # store 0x210299cad576033 in memory
flh f23, 0(x2) # load 0x210299cad576033 from memory into f23
fcvt.wu.h x12, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x11edbf427a3214e4 # load x3 with value 0x11edbf427a3214e4
sw x3, 0(x2) # store 0x11edbf427a3214e4 in memory
flh f24, 0(x2) # load 0x11edbf427a3214e4 from memory into f24
fcvt.wu.h x10, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xf5a5a066cf24e86e # load x3 with value 0xf5a5a066cf24e86e
sw x3, 0(x2) # store 0xf5a5a066cf24e86e in memory
flh f25, 0(x2) # load 0xf5a5a066cf24e86e from memory into f25
fcvt.wu.h x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x91ee79fb00514c04 # load x3 with value 0x91ee79fb00514c04
sw x3, 0(x2) # store 0x91ee79fb00514c04 in memory
flh f26, 0(x2) # load 0x91ee79fb00514c04 from memory into f26
fcvt.wu.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xfa7f4005bade6b6f # load x3 with value 0xfa7f4005bade6b6f
sw x3, 0(x2) # store 0xfa7f4005bade6b6f in memory
flh f27, 0(x2) # load 0xfa7f4005bade6b6f from memory into f27
fcvt.wu.h x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xe4a9e1378dd8ef3b # load x3 with value 0xe4a9e1378dd8ef3b
sw x3, 0(x2) # store 0xe4a9e1378dd8ef3b in memory
flh f28, 0(x2) # load 0xe4a9e1378dd8ef3b from memory into f28
fcvt.wu.h x26, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xe00131fb78d8cfd7 # load x3 with value 0xe00131fb78d8cfd7
sw x3, 0(x2) # store 0xe00131fb78d8cfd7 in memory
flh f29, 0(x2) # load 0xe00131fb78d8cfd7 from memory into f29
fcvt.wu.h x31, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x97cac2d104738468 # load x3 with value 0x97cac2d104738468
sw x3, 0(x2) # store 0x97cac2d104738468 in memory
flh f30, 0(x2) # load 0x97cac2d104738468 from memory into f30
fcvt.wu.h x25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xaa23c0237b3f8b29 # load x3 with value 0xaa23c0237b3f8b29
sw x3, 0(x2) # store 0xaa23c0237b3f8b29 in memory
flh f31, 0(x2) # load 0xaa23c0237b3f8b29 from memory into f31
fcvt.wu.h x7, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fcvt.wu.h x18, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fcvt.wu.h x23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fcvt.wu.h x10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fcvt.wu.h x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fcvt.wu.h x10, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fcvt.wu.h x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fcvt.wu.h x22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fcvt.wu.h x6, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fcvt.wu.h x19, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fcvt.wu.h x23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fcvt.wu.h x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fcvt.wu.h x31, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fcvt.wu.h x19, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fcvt.wu.h x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fcvt.wu.h x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fcvt.wu.h x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fcvt.wu.h x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fcvt.wu.h x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fcvt.wu.h x3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fcvt.wu.h x31, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fcvt.wu.h x1, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fcvt.wu.h x15, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fcvt.wu.h x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fcvt.wu.h x5, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fcvt.wu.h x15, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
fcvt.wu.h x14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fcvt.wu.h x5, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fcvt.wu.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fcvt.wu.h x30, f23, dyn # perform operation
fcvt.wu.h x30, f23, rdn # perform operation
fcvt.wu.h x30, f23, rmm # perform operation
fcvt.wu.h x30, f23, rne # perform operation
fcvt.wu.h x30, f23, rtz # perform operation
fcvt.wu.h x30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fcvt.wu.h x25, f6, dyn # perform operation
fcvt.wu.h x25, f6, rdn # perform operation
fcvt.wu.h x25, f6, rmm # perform operation
fcvt.wu.h x25, f6, rne # perform operation
fcvt.wu.h x25, f6, rtz # perform operation
fcvt.wu.h x25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x25, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x25, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x25, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x25, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x25, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fcvt.wu.h x15, f30, dyn # perform operation
fcvt.wu.h x15, f30, rdn # perform operation
fcvt.wu.h x15, f30, rmm # perform operation
fcvt.wu.h x15, f30, rne # perform operation
fcvt.wu.h x15, f30, rtz # perform operation
fcvt.wu.h x15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x15, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x15, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x15, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x15, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x15, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fcvt.wu.h x29, f9, dyn # perform operation
fcvt.wu.h x29, f9, rdn # perform operation
fcvt.wu.h x29, f9, rmm # perform operation
fcvt.wu.h x29, f9, rne # perform operation
fcvt.wu.h x29, f9, rtz # perform operation
fcvt.wu.h x29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fcvt.wu.h x30, f7, dyn # perform operation
fcvt.wu.h x30, f7, rdn # perform operation
fcvt.wu.h x30, f7, rmm # perform operation
fcvt.wu.h x30, f7, rne # perform operation
fcvt.wu.h x30, f7, rtz # perform operation
fcvt.wu.h x30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x30, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x30, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x30, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x30, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x30, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fcvt.wu.h x31, f26, dyn # perform operation
fcvt.wu.h x31, f26, rdn # perform operation
fcvt.wu.h x31, f26, rmm # perform operation
fcvt.wu.h x31, f26, rne # perform operation
fcvt.wu.h x31, f26, rtz # perform operation
fcvt.wu.h x31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fcvt.wu.h x12, f21, dyn # perform operation
fcvt.wu.h x12, f21, rdn # perform operation
fcvt.wu.h x12, f21, rmm # perform operation
fcvt.wu.h x12, f21, rne # perform operation
fcvt.wu.h x12, f21, rtz # perform operation
fcvt.wu.h x12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fcvt.wu.h x23, f7, dyn # perform operation
fcvt.wu.h x23, f7, rdn # perform operation
fcvt.wu.h x23, f7, rmm # perform operation
fcvt.wu.h x23, f7, rne # perform operation
fcvt.wu.h x23, f7, rtz # perform operation
fcvt.wu.h x23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x23, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fcvt.wu.h x12, f26, dyn # perform operation
fcvt.wu.h x12, f26, rdn # perform operation
fcvt.wu.h x12, f26, rmm # perform operation
fcvt.wu.h x12, f26, rne # perform operation
fcvt.wu.h x12, f26, rtz # perform operation
fcvt.wu.h x12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fcvt.wu.h x3, f18, dyn # perform operation
fcvt.wu.h x3, f18, rdn # perform operation
fcvt.wu.h x3, f18, rmm # perform operation
fcvt.wu.h x3, f18, rne # perform operation
fcvt.wu.h x3, f18, rtz # perform operation
fcvt.wu.h x3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fcvt.wu.h x2, f5, dyn # perform operation
fcvt.wu.h x2, f5, rdn # perform operation
fcvt.wu.h x2, f5, rmm # perform operation
fcvt.wu.h x2, f5, rne # perform operation
fcvt.wu.h x2, f5, rtz # perform operation
fcvt.wu.h x2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x2, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fcvt.wu.h x13, f6, dyn # perform operation
fcvt.wu.h x13, f6, rdn # perform operation
fcvt.wu.h x13, f6, rmm # perform operation
fcvt.wu.h x13, f6, rne # perform operation
fcvt.wu.h x13, f6, rtz # perform operation
fcvt.wu.h x13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x13, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fcvt.wu.h x8, f24, dyn # perform operation
fcvt.wu.h x8, f24, rdn # perform operation
fcvt.wu.h x8, f24, rmm # perform operation
fcvt.wu.h x8, f24, rne # perform operation
fcvt.wu.h x8, f24, rtz # perform operation
fcvt.wu.h x8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fcvt.wu.h x15, f26, dyn # perform operation
fcvt.wu.h x15, f26, rdn # perform operation
fcvt.wu.h x15, f26, rmm # perform operation
fcvt.wu.h x15, f26, rne # perform operation
fcvt.wu.h x15, f26, rtz # perform operation
fcvt.wu.h x15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fcvt.wu.h x11, f24, dyn # perform operation
fcvt.wu.h x11, f24, rdn # perform operation
fcvt.wu.h x11, f24, rmm # perform operation
fcvt.wu.h x11, f24, rne # perform operation
fcvt.wu.h x11, f24, rtz # perform operation
fcvt.wu.h x11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fcvt.wu.h x15, f18, dyn # perform operation
fcvt.wu.h x15, f18, rdn # perform operation
fcvt.wu.h x15, f18, rmm # perform operation
fcvt.wu.h x15, f18, rne # perform operation
fcvt.wu.h x15, f18, rtz # perform operation
fcvt.wu.h x15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fcvt.wu.h x30, f6, dyn # perform operation
fcvt.wu.h x30, f6, rdn # perform operation
fcvt.wu.h x30, f6, rmm # perform operation
fcvt.wu.h x30, f6, rne # perform operation
fcvt.wu.h x30, f6, rtz # perform operation
fcvt.wu.h x30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x30, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x30, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x30, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x30, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x30, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fcvt.wu.h x31, f6, dyn # perform operation
fcvt.wu.h x31, f6, rdn # perform operation
fcvt.wu.h x31, f6, rmm # perform operation
fcvt.wu.h x31, f6, rne # perform operation
fcvt.wu.h x31, f6, rtz # perform operation
fcvt.wu.h x31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fcvt.wu.h x18, f19, dyn # perform operation
fcvt.wu.h x18, f19, rdn # perform operation
fcvt.wu.h x18, f19, rmm # perform operation
fcvt.wu.h x18, f19, rne # perform operation
fcvt.wu.h x18, f19, rtz # perform operation
fcvt.wu.h x18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fcvt.wu.h x10, f26, dyn # perform operation
fcvt.wu.h x10, f26, rdn # perform operation
fcvt.wu.h x10, f26, rmm # perform operation
fcvt.wu.h x10, f26, rne # perform operation
fcvt.wu.h x10, f26, rtz # perform operation
fcvt.wu.h x10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fcvt.wu.h x23, f30, dyn # perform operation
fcvt.wu.h x23, f30, rdn # perform operation
fcvt.wu.h x23, f30, rmm # perform operation
fcvt.wu.h x23, f30, rne # perform operation
fcvt.wu.h x23, f30, rtz # perform operation
fcvt.wu.h x23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fcvt.wu.h x1, f24, dyn # perform operation
fcvt.wu.h x1, f24, rdn # perform operation
fcvt.wu.h x1, f24, rmm # perform operation
fcvt.wu.h x1, f24, rne # perform operation
fcvt.wu.h x1, f24, rtz # perform operation
fcvt.wu.h x1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x1, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x1, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x1, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x1, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x1, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fcvt.wu.h x1, f30, dyn # perform operation
fcvt.wu.h x1, f30, rdn # perform operation
fcvt.wu.h x1, f30, rmm # perform operation
fcvt.wu.h x1, f30, rne # perform operation
fcvt.wu.h x1, f30, rtz # perform operation
fcvt.wu.h x1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fcvt.wu.h x2, f3, dyn # perform operation
fcvt.wu.h x2, f3, rdn # perform operation
fcvt.wu.h x2, f3, rmm # perform operation
fcvt.wu.h x2, f3, rne # perform operation
fcvt.wu.h x2, f3, rtz # perform operation
fcvt.wu.h x2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fcvt.wu.h x24, f29, dyn # perform operation
fcvt.wu.h x24, f29, rdn # perform operation
fcvt.wu.h x24, f29, rmm # perform operation
fcvt.wu.h x24, f29, rne # perform operation
fcvt.wu.h x24, f29, rtz # perform operation
fcvt.wu.h x24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x24, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x24, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x24, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x24, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x24, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fcvt.wu.h x28, f16, dyn # perform operation
fcvt.wu.h x28, f16, rdn # perform operation
fcvt.wu.h x28, f16, rmm # perform operation
fcvt.wu.h x28, f16, rne # perform operation
fcvt.wu.h x28, f16, rtz # perform operation
fcvt.wu.h x28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fcvt.wu.h x19, f28, dyn # perform operation
fcvt.wu.h x19, f28, rdn # perform operation
fcvt.wu.h x19, f28, rmm # perform operation
fcvt.wu.h x19, f28, rne # perform operation
fcvt.wu.h x19, f28, rtz # perform operation
fcvt.wu.h x19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fcvt.wu.h x20, f18, dyn # perform operation
fcvt.wu.h x20, f18, rdn # perform operation
fcvt.wu.h x20, f18, rmm # perform operation
fcvt.wu.h x20, f18, rne # perform operation
fcvt.wu.h x20, f18, rtz # perform operation
fcvt.wu.h x20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0xb02ebbd09f30d981 # load x3 with value 0xb02ebbd09f30d981
sw x3, 0(x2) # store 0xb02ebbd09f30d981 in memory
flh f19, 0(x2) # load 0xb02ebbd09f30d981 from memory into f19
fcvt.wu.h x1, f19, dyn # perform operation
fcvt.wu.h x1, f19, rdn # perform operation
fcvt.wu.h x1, f19, rmm # perform operation
fcvt.wu.h x1, f19, rne # perform operation
fcvt.wu.h x1, f19, rtz # perform operation
fcvt.wu.h x1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)


# Testcase Improper NaNBoxed argument test (Value 0x0 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fcvt.wu.h x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f20, 0(x2) # load 0xfffe8000 from memory into f20
fcvt.wu.h x13, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f24, 0(x2) # load 0x7fff3c00 from memory into f24
fcvt.wu.h x31, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f8, 0(x2) # load 0xbeefbc00 from memory into f8
fcvt.wu.h x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f12, 0(x2) # load 0xfeff0400 from memory into f12
fcvt.wu.h x31, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f11, 0(x2) # load 0x0fff8400 from memory into f11
fcvt.wu.h x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f8, 0(x2) # load 0xefff7bff from memory into f8
fcvt.wu.h x16, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 144)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f12, 0(x2) # load 0xc0defbff from memory into f12
fcvt.wu.h x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f31, 0(x2) # load 0x4f1a7c00 from memory into f31
fcvt.wu.h x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f8, 0(x2) # load 0x0ffffc00 from memory into f8
fcvt.wu.h x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f25, 0(x2) # load 0xffef7e00 from memory into f25
fcvt.wu.h x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 176)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f5, 0(x2) # load 0xfeef7fff from memory into f5
fcvt.wu.h x15, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f18, 0(x2) # load 0xa1b27c01 from memory into f18
fcvt.wu.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f27, 0(x2) # load 0x4fd77dff from memory into f27
fcvt.wu.h x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

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
