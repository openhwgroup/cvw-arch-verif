///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.l.h.S
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
li x3, 0x81bd441cc10833e # load x3 with value 0x81bd441cc10833e
sw x3, 0(x2) # store 0x81bd441cc10833e in memory
flh f6, 0(x2) # load 0x81bd441cc10833e from memory into f6
fcvt.l.h x0, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x8aaf4088480c1d9a # load x3 with value 0x8aaf4088480c1d9a
sw x3, 0(x2) # store 0x8aaf4088480c1d9a in memory
flh f8, 0(x2) # load 0x8aaf4088480c1d9a from memory into f8
fcvt.l.h x1, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x32956664d43eaed7 # load x3 with value 0x32956664d43eaed7
sw x3, 0(x2) # store 0x32956664d43eaed7 in memory
flh f19, 0(x2) # load 0x32956664d43eaed7 from memory into f19
fcvt.l.h x2, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x3c9c745d3c809e89 # load x3 with value 0x3c9c745d3c809e89
sw x3, 0(x2) # store 0x3c9c745d3c809e89 in memory
flh f6, 0(x2) # load 0x3c9c745d3c809e89 from memory into f6
fcvt.l.h x3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa909981f2801b286 # load x3 with value 0xa909981f2801b286
sw x3, 0(x2) # store 0xa909981f2801b286 in memory
flh f28, 0(x2) # load 0xa909981f2801b286 from memory into f28
fcvt.l.h x4, f28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x409e2846629a1932 # load x3 with value 0x409e2846629a1932
sw x3, 0(x2) # store 0x409e2846629a1932 in memory
flh f20, 0(x2) # load 0x409e2846629a1932 from memory into f20
fcvt.l.h x5, f20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x51ebd8b620e158af # load x3 with value 0x51ebd8b620e158af
sw x3, 0(x2) # store 0x51ebd8b620e158af in memory
flh f19, 0(x2) # load 0x51ebd8b620e158af from memory into f19
fcvt.l.h x6, f19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6c71b8206252e08 # load x3 with value 0x6c71b8206252e08
sw x3, 0(x2) # store 0x6c71b8206252e08 in memory
flh f13, 0(x2) # load 0x6c71b8206252e08 from memory into f13
fcvt.l.h x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x73e97ee4ca4d91b1 # load x3 with value 0x73e97ee4ca4d91b1
sw x3, 0(x2) # store 0x73e97ee4ca4d91b1 in memory
flh f24, 0(x2) # load 0x73e97ee4ca4d91b1 from memory into f24
fcvt.l.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x3b168c488108bf96 # load x3 with value 0x3b168c488108bf96
sw x3, 0(x2) # store 0x3b168c488108bf96 in memory
flh f27, 0(x2) # load 0x3b168c488108bf96 from memory into f27
fcvt.l.h x9, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xa707401aa6222f48 # load x3 with value 0xa707401aa6222f48
sw x3, 0(x2) # store 0xa707401aa6222f48 in memory
flh f19, 0(x2) # load 0xa707401aa6222f48 from memory into f19
fcvt.l.h x10, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xe568480e22d53417 # load x3 with value 0xe568480e22d53417
sw x3, 0(x2) # store 0xe568480e22d53417 in memory
flh f21, 0(x2) # load 0xe568480e22d53417 from memory into f21
fcvt.l.h x11, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x5e9c10c9c3a8781c # load x3 with value 0x5e9c10c9c3a8781c
sw x3, 0(x2) # store 0x5e9c10c9c3a8781c in memory
flh f7, 0(x2) # load 0x5e9c10c9c3a8781c from memory into f7
fcvt.l.h x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x7c7610d73951251f # load x3 with value 0x7c7610d73951251f
sw x3, 0(x2) # store 0x7c7610d73951251f in memory
flh f23, 0(x2) # load 0x7c7610d73951251f from memory into f23
fcvt.l.h x13, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x9636466222c28c46 # load x3 with value 0x9636466222c28c46
sw x3, 0(x2) # store 0x9636466222c28c46 in memory
flh f5, 0(x2) # load 0x9636466222c28c46 from memory into f5
fcvt.l.h x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x7173012ddd96910b # load x3 with value 0x7173012ddd96910b
sw x3, 0(x2) # store 0x7173012ddd96910b in memory
flh f21, 0(x2) # load 0x7173012ddd96910b from memory into f21
fcvt.l.h x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x94977fbc4132d712 # load x3 with value 0x94977fbc4132d712
sw x3, 0(x2) # store 0x94977fbc4132d712 in memory
flh f16, 0(x2) # load 0x94977fbc4132d712 from memory into f16
fcvt.l.h x16, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x25713ca551eb59d5 # load x3 with value 0x25713ca551eb59d5
sw x3, 0(x2) # store 0x25713ca551eb59d5 in memory
flh f11, 0(x2) # load 0x25713ca551eb59d5 from memory into f11
fcvt.l.h x17, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xb93b3d14e61a4547 # load x3 with value 0xb93b3d14e61a4547
sw x3, 0(x2) # store 0xb93b3d14e61a4547 in memory
flh f27, 0(x2) # load 0xb93b3d14e61a4547 from memory into f27
fcvt.l.h x18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x342d747f818f2fc7 # load x3 with value 0x342d747f818f2fc7
sw x3, 0(x2) # store 0x342d747f818f2fc7 in memory
flh f26, 0(x2) # load 0x342d747f818f2fc7 from memory into f26
fcvt.l.h x19, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x45d44758576b0749 # load x3 with value 0x45d44758576b0749
sw x3, 0(x2) # store 0x45d44758576b0749 in memory
flh f9, 0(x2) # load 0x45d44758576b0749 from memory into f9
fcvt.l.h x20, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x71abd887747bba15 # load x3 with value 0x71abd887747bba15
sw x3, 0(x2) # store 0x71abd887747bba15 in memory
flh f7, 0(x2) # load 0x71abd887747bba15 from memory into f7
fcvt.l.h x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xf4c8b1d2e8825542 # load x3 with value 0xf4c8b1d2e8825542
sw x3, 0(x2) # store 0xf4c8b1d2e8825542 in memory
flh f29, 0(x2) # load 0xf4c8b1d2e8825542 from memory into f29
fcvt.l.h x22, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x35ad2127ef51ea31 # load x3 with value 0x35ad2127ef51ea31
sw x3, 0(x2) # store 0x35ad2127ef51ea31 in memory
flh f15, 0(x2) # load 0x35ad2127ef51ea31 from memory into f15
fcvt.l.h x23, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x68c5c603b3eb2dcd # load x3 with value 0x68c5c603b3eb2dcd
sw x3, 0(x2) # store 0x68c5c603b3eb2dcd in memory
flh f3, 0(x2) # load 0x68c5c603b3eb2dcd from memory into f3
fcvt.l.h x24, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x435c12ef7fc106a2 # load x3 with value 0x435c12ef7fc106a2
sw x3, 0(x2) # store 0x435c12ef7fc106a2 in memory
flh f8, 0(x2) # load 0x435c12ef7fc106a2 from memory into f8
fcvt.l.h x25, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xe2a300c682977774 # load x3 with value 0xe2a300c682977774
sw x3, 0(x2) # store 0xe2a300c682977774 in memory
flh f29, 0(x2) # load 0xe2a300c682977774 from memory into f29
fcvt.l.h x26, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x9792bfbb4545e3d7 # load x3 with value 0x9792bfbb4545e3d7
sw x3, 0(x2) # store 0x9792bfbb4545e3d7 in memory
flh f16, 0(x2) # load 0x9792bfbb4545e3d7 from memory into f16
fcvt.l.h x27, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x3f9d125a9f6cd9fb # load x3 with value 0x3f9d125a9f6cd9fb
sw x3, 0(x2) # store 0x3f9d125a9f6cd9fb in memory
flh f16, 0(x2) # load 0x3f9d125a9f6cd9fb from memory into f16
fcvt.l.h x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xf6c033a02c9b6a5f # load x3 with value 0xf6c033a02c9b6a5f
sw x3, 0(x2) # store 0xf6c033a02c9b6a5f in memory
flh f16, 0(x2) # load 0xf6c033a02c9b6a5f from memory into f16
fcvt.l.h x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xae4739ae6ad02386 # load x3 with value 0xae4739ae6ad02386
sw x3, 0(x2) # store 0xae4739ae6ad02386 in memory
flh f28, 0(x2) # load 0xae4739ae6ad02386 from memory into f28
fcvt.l.h x30, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xbe2c837adb2d0bdf # load x3 with value 0xbe2c837adb2d0bdf
sw x3, 0(x2) # store 0xbe2c837adb2d0bdf in memory
flh f14, 0(x2) # load 0xbe2c837adb2d0bdf from memory into f14
fcvt.l.h x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x10, x29 # perform first operation
fcvt.l.h x25, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x13, x7 # perform first operation
fcvt.l.h x9, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x17, x5 # perform first operation
fcvt.l.h x30, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f13, f14, f23 # perform first operation
fcvt.l.h x14, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x26, x1 # perform first operation
fcvt.l.h x13, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x30, x13 # perform first operation
fcvt.l.h x23, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x21, x17 # perform first operation
fcvt.l.h x30, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x21, x18 # perform first operation
fcvt.l.h x28, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x27, x24 # perform first operation
fcvt.l.h x7, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x11, x26 # perform first operation
fcvt.l.h x7, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x13, x23 # perform first operation
fcvt.l.h x18, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x3, x11 # perform first operation
fcvt.l.h x9, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x2, x25 # perform first operation
fcvt.l.h x2, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x10, x26 # perform first operation
fcvt.l.h x26, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x16, x8 # perform first operation
fcvt.l.h x18, f19 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x2caa53881551091 # load x3 with value 0x2caa53881551091
sw x3, 0(x2) # store 0x2caa53881551091 in memory
flh f0, 0(x2) # load 0x2caa53881551091 from memory into f0
fcvt.l.h x13, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x2eb3f714d01f495e # load x3 with value 0x2eb3f714d01f495e
sw x3, 0(x2) # store 0x2eb3f714d01f495e in memory
flh f1, 0(x2) # load 0x2eb3f714d01f495e from memory into f1
fcvt.l.h x19, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xa947ed1effcc9769 # load x3 with value 0xa947ed1effcc9769
sw x3, 0(x2) # store 0xa947ed1effcc9769 in memory
flh f2, 0(x2) # load 0xa947ed1effcc9769 from memory into f2
fcvt.l.h x3, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xf0968e12c309aac1 # load x3 with value 0xf0968e12c309aac1
sw x3, 0(x2) # store 0xf0968e12c309aac1 in memory
flh f3, 0(x2) # load 0xf0968e12c309aac1 from memory into f3
fcvt.l.h x26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xeca9e5b5d85414dd # load x3 with value 0xeca9e5b5d85414dd
sw x3, 0(x2) # store 0xeca9e5b5d85414dd in memory
flh f4, 0(x2) # load 0xeca9e5b5d85414dd from memory into f4
fcvt.l.h x25, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x23e3185d2ae0f0f8 # load x3 with value 0x23e3185d2ae0f0f8
sw x3, 0(x2) # store 0x23e3185d2ae0f0f8 in memory
flh f5, 0(x2) # load 0x23e3185d2ae0f0f8 from memory into f5
fcvt.l.h x26, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x92f0cb464cc90685 # load x3 with value 0x92f0cb464cc90685
sw x3, 0(x2) # store 0x92f0cb464cc90685 in memory
flh f6, 0(x2) # load 0x92f0cb464cc90685 from memory into f6
fcvt.l.h x28, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x19d25a76025b9c9e # load x3 with value 0x19d25a76025b9c9e
sw x3, 0(x2) # store 0x19d25a76025b9c9e in memory
flh f7, 0(x2) # load 0x19d25a76025b9c9e from memory into f7
fcvt.l.h x28, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x6a1d697292925af3 # load x3 with value 0x6a1d697292925af3
sw x3, 0(x2) # store 0x6a1d697292925af3 in memory
flh f8, 0(x2) # load 0x6a1d697292925af3 from memory into f8
fcvt.l.h x14, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xfb7ff4198d0b3e81 # load x3 with value 0xfb7ff4198d0b3e81
sw x3, 0(x2) # store 0xfb7ff4198d0b3e81 in memory
flh f9, 0(x2) # load 0xfb7ff4198d0b3e81 from memory into f9
fcvt.l.h x22, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x4ab1f785506c192 # load x3 with value 0x4ab1f785506c192
sw x3, 0(x2) # store 0x4ab1f785506c192 in memory
flh f10, 0(x2) # load 0x4ab1f785506c192 from memory into f10
fcvt.l.h x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x1da2a1797b48ba4d # load x3 with value 0x1da2a1797b48ba4d
sw x3, 0(x2) # store 0x1da2a1797b48ba4d in memory
flh f11, 0(x2) # load 0x1da2a1797b48ba4d from memory into f11
fcvt.l.h x30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x4c7bd105aede8902 # load x3 with value 0x4c7bd105aede8902
sw x3, 0(x2) # store 0x4c7bd105aede8902 in memory
flh f12, 0(x2) # load 0x4c7bd105aede8902 from memory into f12
fcvt.l.h x10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x839d93ecc9df60c0 # load x3 with value 0x839d93ecc9df60c0
sw x3, 0(x2) # store 0x839d93ecc9df60c0 in memory
flh f13, 0(x2) # load 0x839d93ecc9df60c0 from memory into f13
fcvt.l.h x28, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x3ec73f6e83a041f5 # load x3 with value 0x3ec73f6e83a041f5
sw x3, 0(x2) # store 0x3ec73f6e83a041f5 in memory
flh f14, 0(x2) # load 0x3ec73f6e83a041f5 from memory into f14
fcvt.l.h x9, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x7004efcf1907e6fb # load x3 with value 0x7004efcf1907e6fb
sw x3, 0(x2) # store 0x7004efcf1907e6fb in memory
flh f15, 0(x2) # load 0x7004efcf1907e6fb from memory into f15
fcvt.l.h x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xea9e7c15439b9b71 # load x3 with value 0xea9e7c15439b9b71
sw x3, 0(x2) # store 0xea9e7c15439b9b71 in memory
flh f16, 0(x2) # load 0xea9e7c15439b9b71 from memory into f16
fcvt.l.h x30, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xff99d35485abc9da # load x3 with value 0xff99d35485abc9da
sw x3, 0(x2) # store 0xff99d35485abc9da in memory
flh f17, 0(x2) # load 0xff99d35485abc9da from memory into f17
fcvt.l.h x25, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xfe904b18638793f6 # load x3 with value 0xfe904b18638793f6
sw x3, 0(x2) # store 0xfe904b18638793f6 in memory
flh f18, 0(x2) # load 0xfe904b18638793f6 from memory into f18
fcvt.l.h x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xebf7bf426297870e # load x3 with value 0xebf7bf426297870e
sw x3, 0(x2) # store 0xebf7bf426297870e in memory
flh f19, 0(x2) # load 0xebf7bf426297870e from memory into f19
fcvt.l.h x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xc2534aaf4046aeb6 # load x3 with value 0xc2534aaf4046aeb6
sw x3, 0(x2) # store 0xc2534aaf4046aeb6 in memory
flh f20, 0(x2) # load 0xc2534aaf4046aeb6 from memory into f20
fcvt.l.h x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x69576110adf79ee9 # load x3 with value 0x69576110adf79ee9
sw x3, 0(x2) # store 0x69576110adf79ee9 in memory
flh f21, 0(x2) # load 0x69576110adf79ee9 from memory into f21
fcvt.l.h x25, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x90e5610b500cac07 # load x3 with value 0x90e5610b500cac07
sw x3, 0(x2) # store 0x90e5610b500cac07 in memory
flh f22, 0(x2) # load 0x90e5610b500cac07 from memory into f22
fcvt.l.h x10, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xf7613da207aba368 # load x3 with value 0xf7613da207aba368
sw x3, 0(x2) # store 0xf7613da207aba368 in memory
flh f23, 0(x2) # load 0xf7613da207aba368 from memory into f23
fcvt.l.h x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x458700523afb611c # load x3 with value 0x458700523afb611c
sw x3, 0(x2) # store 0x458700523afb611c in memory
flh f24, 0(x2) # load 0x458700523afb611c from memory into f24
fcvt.l.h x10, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xad3c80cb7e51daa6 # load x3 with value 0xad3c80cb7e51daa6
sw x3, 0(x2) # store 0xad3c80cb7e51daa6 in memory
flh f25, 0(x2) # load 0xad3c80cb7e51daa6 from memory into f25
fcvt.l.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x5eef4968618989b9 # load x3 with value 0x5eef4968618989b9
sw x3, 0(x2) # store 0x5eef4968618989b9 in memory
flh f26, 0(x2) # load 0x5eef4968618989b9 from memory into f26
fcvt.l.h x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x6b4b53c3397c640e # load x3 with value 0x6b4b53c3397c640e
sw x3, 0(x2) # store 0x6b4b53c3397c640e in memory
flh f27, 0(x2) # load 0x6b4b53c3397c640e from memory into f27
fcvt.l.h x12, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x88216f084ea45cff # load x3 with value 0x88216f084ea45cff
sw x3, 0(x2) # store 0x88216f084ea45cff in memory
flh f28, 0(x2) # load 0x88216f084ea45cff from memory into f28
fcvt.l.h x13, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x3a0510de00437bbd # load x3 with value 0x3a0510de00437bbd
sw x3, 0(x2) # store 0x3a0510de00437bbd in memory
flh f29, 0(x2) # load 0x3a0510de00437bbd from memory into f29
fcvt.l.h x29, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xaf8b2c93d63970ff # load x3 with value 0xaf8b2c93d63970ff
sw x3, 0(x2) # store 0xaf8b2c93d63970ff in memory
flh f30, 0(x2) # load 0xaf8b2c93d63970ff from memory into f30
fcvt.l.h x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x5e7285908c94b88 # load x3 with value 0x5e7285908c94b88
sw x3, 0(x2) # store 0x5e7285908c94b88 in memory
flh f31, 0(x2) # load 0x5e7285908c94b88 from memory into f31
fcvt.l.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fcvt.l.h x28, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fcvt.l.h x27, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fcvt.l.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fcvt.l.h x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fcvt.l.h x5, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fcvt.l.h x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fcvt.l.h x8, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fcvt.l.h x7, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fcvt.l.h x10, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fcvt.l.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fcvt.l.h x20, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fcvt.l.h x9, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fcvt.l.h x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fcvt.l.h x16, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fcvt.l.h x10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fcvt.l.h x26, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fcvt.l.h x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fcvt.l.h x10, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fcvt.l.h x7, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fcvt.l.h x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fcvt.l.h x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fcvt.l.h x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fcvt.l.h x21, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fcvt.l.h x12, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fcvt.l.h x19, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
fcvt.l.h x19, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fcvt.l.h x26, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fcvt.l.h x2, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fcvt.l.h x30, f17, dyn # perform operation
fcvt.l.h x30, f17, rdn # perform operation
fcvt.l.h x30, f17, rmm # perform operation
fcvt.l.h x30, f17, rne # perform operation
fcvt.l.h x30, f17, rtz # perform operation
fcvt.l.h x30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x30, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fcvt.l.h x23, f8, dyn # perform operation
fcvt.l.h x23, f8, rdn # perform operation
fcvt.l.h x23, f8, rmm # perform operation
fcvt.l.h x23, f8, rne # perform operation
fcvt.l.h x23, f8, rtz # perform operation
fcvt.l.h x23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fcvt.l.h x14, f12, dyn # perform operation
fcvt.l.h x14, f12, rdn # perform operation
fcvt.l.h x14, f12, rmm # perform operation
fcvt.l.h x14, f12, rne # perform operation
fcvt.l.h x14, f12, rtz # perform operation
fcvt.l.h x14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x14, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x14, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x14, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x14, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x14, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fcvt.l.h x24, f6, dyn # perform operation
fcvt.l.h x24, f6, rdn # perform operation
fcvt.l.h x24, f6, rmm # perform operation
fcvt.l.h x24, f6, rne # perform operation
fcvt.l.h x24, f6, rtz # perform operation
fcvt.l.h x24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fcvt.l.h x28, f29, dyn # perform operation
fcvt.l.h x28, f29, rdn # perform operation
fcvt.l.h x28, f29, rmm # perform operation
fcvt.l.h x28, f29, rne # perform operation
fcvt.l.h x28, f29, rtz # perform operation
fcvt.l.h x28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fcvt.l.h x20, f27, dyn # perform operation
fcvt.l.h x20, f27, rdn # perform operation
fcvt.l.h x20, f27, rmm # perform operation
fcvt.l.h x20, f27, rne # perform operation
fcvt.l.h x20, f27, rtz # perform operation
fcvt.l.h x20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fcvt.l.h x25, f5, dyn # perform operation
fcvt.l.h x25, f5, rdn # perform operation
fcvt.l.h x25, f5, rmm # perform operation
fcvt.l.h x25, f5, rne # perform operation
fcvt.l.h x25, f5, rtz # perform operation
fcvt.l.h x25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fcvt.l.h x1, f16, dyn # perform operation
fcvt.l.h x1, f16, rdn # perform operation
fcvt.l.h x1, f16, rmm # perform operation
fcvt.l.h x1, f16, rne # perform operation
fcvt.l.h x1, f16, rtz # perform operation
fcvt.l.h x1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fcvt.l.h x27, f30, dyn # perform operation
fcvt.l.h x27, f30, rdn # perform operation
fcvt.l.h x27, f30, rmm # perform operation
fcvt.l.h x27, f30, rne # perform operation
fcvt.l.h x27, f30, rtz # perform operation
fcvt.l.h x27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fcvt.l.h x28, f26, dyn # perform operation
fcvt.l.h x28, f26, rdn # perform operation
fcvt.l.h x28, f26, rmm # perform operation
fcvt.l.h x28, f26, rne # perform operation
fcvt.l.h x28, f26, rtz # perform operation
fcvt.l.h x28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x28, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fcvt.l.h x11, f23, dyn # perform operation
fcvt.l.h x11, f23, rdn # perform operation
fcvt.l.h x11, f23, rmm # perform operation
fcvt.l.h x11, f23, rne # perform operation
fcvt.l.h x11, f23, rtz # perform operation
fcvt.l.h x11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fcvt.l.h x31, f18, dyn # perform operation
fcvt.l.h x31, f18, rdn # perform operation
fcvt.l.h x31, f18, rmm # perform operation
fcvt.l.h x31, f18, rne # perform operation
fcvt.l.h x31, f18, rtz # perform operation
fcvt.l.h x31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x31, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x31, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x31, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x31, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x31, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fcvt.l.h x22, f20, dyn # perform operation
fcvt.l.h x22, f20, rdn # perform operation
fcvt.l.h x22, f20, rmm # perform operation
fcvt.l.h x22, f20, rne # perform operation
fcvt.l.h x22, f20, rtz # perform operation
fcvt.l.h x22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fcvt.l.h x30, f15, dyn # perform operation
fcvt.l.h x30, f15, rdn # perform operation
fcvt.l.h x30, f15, rmm # perform operation
fcvt.l.h x30, f15, rne # perform operation
fcvt.l.h x30, f15, rtz # perform operation
fcvt.l.h x30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fcvt.l.h x22, f14, dyn # perform operation
fcvt.l.h x22, f14, rdn # perform operation
fcvt.l.h x22, f14, rmm # perform operation
fcvt.l.h x22, f14, rne # perform operation
fcvt.l.h x22, f14, rtz # perform operation
fcvt.l.h x22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x22, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fcvt.l.h x30, f19, dyn # perform operation
fcvt.l.h x30, f19, rdn # perform operation
fcvt.l.h x30, f19, rmm # perform operation
fcvt.l.h x30, f19, rne # perform operation
fcvt.l.h x30, f19, rtz # perform operation
fcvt.l.h x30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fcvt.l.h x2, f28, dyn # perform operation
fcvt.l.h x2, f28, rdn # perform operation
fcvt.l.h x2, f28, rmm # perform operation
fcvt.l.h x2, f28, rne # perform operation
fcvt.l.h x2, f28, rtz # perform operation
fcvt.l.h x2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fcvt.l.h x27, f9, dyn # perform operation
fcvt.l.h x27, f9, rdn # perform operation
fcvt.l.h x27, f9, rmm # perform operation
fcvt.l.h x27, f9, rne # perform operation
fcvt.l.h x27, f9, rtz # perform operation
fcvt.l.h x27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fcvt.l.h x14, f29, dyn # perform operation
fcvt.l.h x14, f29, rdn # perform operation
fcvt.l.h x14, f29, rmm # perform operation
fcvt.l.h x14, f29, rne # perform operation
fcvt.l.h x14, f29, rtz # perform operation
fcvt.l.h x14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x14, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x14, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x14, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x14, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x14, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fcvt.l.h x17, f5, dyn # perform operation
fcvt.l.h x17, f5, rdn # perform operation
fcvt.l.h x17, f5, rmm # perform operation
fcvt.l.h x17, f5, rne # perform operation
fcvt.l.h x17, f5, rtz # perform operation
fcvt.l.h x17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fcvt.l.h x29, f3, dyn # perform operation
fcvt.l.h x29, f3, rdn # perform operation
fcvt.l.h x29, f3, rmm # perform operation
fcvt.l.h x29, f3, rne # perform operation
fcvt.l.h x29, f3, rtz # perform operation
fcvt.l.h x29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fcvt.l.h x18, f20, dyn # perform operation
fcvt.l.h x18, f20, rdn # perform operation
fcvt.l.h x18, f20, rmm # perform operation
fcvt.l.h x18, f20, rne # perform operation
fcvt.l.h x18, f20, rtz # perform operation
fcvt.l.h x18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
fcvt.l.h x31, f25, dyn # perform operation
fcvt.l.h x31, f25, rdn # perform operation
fcvt.l.h x31, f25, rmm # perform operation
fcvt.l.h x31, f25, rne # perform operation
fcvt.l.h x31, f25, rtz # perform operation
fcvt.l.h x31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x31, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x31, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x31, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x31, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x31, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fcvt.l.h x29, f25, dyn # perform operation
fcvt.l.h x29, f25, rdn # perform operation
fcvt.l.h x29, f25, rmm # perform operation
fcvt.l.h x29, f25, rne # perform operation
fcvt.l.h x29, f25, rtz # perform operation
fcvt.l.h x29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fcvt.l.h x2, f6, dyn # perform operation
fcvt.l.h x2, f6, rdn # perform operation
fcvt.l.h x2, f6, rmm # perform operation
fcvt.l.h x2, f6, rne # perform operation
fcvt.l.h x2, f6, rtz # perform operation
fcvt.l.h x2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fcvt.l.h x20, f10, dyn # perform operation
fcvt.l.h x20, f10, rdn # perform operation
fcvt.l.h x20, f10, rmm # perform operation
fcvt.l.h x20, f10, rne # perform operation
fcvt.l.h x20, f10, rtz # perform operation
fcvt.l.h x20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fcvt.l.h x31, f27, dyn # perform operation
fcvt.l.h x31, f27, rdn # perform operation
fcvt.l.h x31, f27, rmm # perform operation
fcvt.l.h x31, f27, rne # perform operation
fcvt.l.h x31, f27, rtz # perform operation
fcvt.l.h x31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fcvt.l.h x21, f25, dyn # perform operation
fcvt.l.h x21, f25, rdn # perform operation
fcvt.l.h x21, f25, rmm # perform operation
fcvt.l.h x21, f25, rne # perform operation
fcvt.l.h x21, f25, rtz # perform operation
fcvt.l.h x21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x35200dee0ad044ec # load x3 with value 0x35200dee0ad044ec
sw x3, 0(x2) # store 0x35200dee0ad044ec in memory
flh f10, 0(x2) # load 0x35200dee0ad044ec from memory into f10
fcvt.l.h x5, f10, dyn # perform operation
fcvt.l.h x5, f10, rdn # perform operation
fcvt.l.h x5, f10, rmm # perform operation
fcvt.l.h x5, f10, rne # perform operation
fcvt.l.h x5, f10, rtz # perform operation
fcvt.l.h x5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)


# Testcase Improper NaNBoxed argument test (Value 0x0 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fcvt.l.h x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f18, 0(x2) # load 0xfffe8000 from memory into f18
fcvt.l.h x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f18, 0(x2) # load 0x7fff3c00 from memory into f18
fcvt.l.h x21, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f22, 0(x2) # load 0xbeefbc00 from memory into f22
fcvt.l.h x5, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f16, 0(x2) # load 0xfeff0400 from memory into f16
fcvt.l.h x13, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f1, 0(x2) # load 0x0fff8400 from memory into f1
fcvt.l.h x18, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f17, 0(x2) # load 0xefff7bff from memory into f17
fcvt.l.h x1, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f15, 0(x2) # load 0xc0defbff from memory into f15
fcvt.l.h x17, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f2, 0(x2) # load 0x4f1a7c00 from memory into f2
fcvt.l.h x10, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f27, 0(x2) # load 0x0ffffc00 from memory into f27
fcvt.l.h x14, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f30, 0(x2) # load 0xffef7e00 from memory into f30
fcvt.l.h x22, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f7, 0(x2) # load 0xfeef7fff from memory into f7
fcvt.l.h x12, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f11, 0(x2) # load 0xa1b27c01 from memory into f11
fcvt.l.h x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f19, 0(x2) # load 0x4fd77dff from memory into f19
fcvt.l.h x24, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 200)

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
