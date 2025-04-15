///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fsub.s.S
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
add x31, x3, x23 # perform first operation
fsub.s f9, f29, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x27, x14 # perform first operation
fsub.s f29, f30, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x19, x6 # perform first operation
fsub.s f18, f25, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f13, f21, f5 # perform first operation
fsub.s f13, f16, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f27, f31, f17 # perform first operation
fsub.s f31, f3, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x30, x20 # perform first operation
fsub.s f11, f19, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f3, f29 # perform first operation
fsub.s f5, f9, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f19, f1 # perform first operation
fsub.s f22, f15, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f17, f22, f7 # perform first operation
fsub.s f17, f19, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f14, f30 # perform first operation
fsub.s f14, f24, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f18, f25, f20 # perform first operation
fsub.s f20, f19, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f28, f31 # perform first operation
fsub.s f22, f26, f18 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x55f5347f6883e0e2 # load x3 with value 0x55f5347f6883e0e2
sw x3, 0(x2) # store 0x55f5347f6883e0e2 in memory
flw f0, 0(x2) # load 0x55f5347f6883e0e2 from memory into f0
la x2, scratch
li x3, 0x45bde30f648ef61d # load x3 with value 0x45bde30f648ef61d
sw x3, 0(x2) # store 0x45bde30f648ef61d in memory
flw f3, 0(x2) # load 0x45bde30f648ef61d from memory into f3
fsub.s f19, f0, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x98b5bcb8a31e45ed # load x3 with value 0x98b5bcb8a31e45ed
sw x3, 0(x2) # store 0x98b5bcb8a31e45ed in memory
flw f1, 0(x2) # load 0x98b5bcb8a31e45ed from memory into f1
la x2, scratch
li x3, 0x6adf668afcba76ef # load x3 with value 0x6adf668afcba76ef
sw x3, 0(x2) # store 0x6adf668afcba76ef in memory
flw f6, 0(x2) # load 0x6adf668afcba76ef from memory into f6
fsub.s f19, f1, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x15dd7e0eb115a6d # load x3 with value 0x15dd7e0eb115a6d
sw x3, 0(x2) # store 0x15dd7e0eb115a6d in memory
flw f2, 0(x2) # load 0x15dd7e0eb115a6d from memory into f2
la x2, scratch
li x3, 0x44f8b2507101b503 # load x3 with value 0x44f8b2507101b503
sw x3, 0(x2) # store 0x44f8b2507101b503 in memory
flw f28, 0(x2) # load 0x44f8b2507101b503 from memory into f28
fsub.s f25, f2, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x9050541f71223de3 # load x3 with value 0x9050541f71223de3
sw x3, 0(x2) # store 0x9050541f71223de3 in memory
flw f3, 0(x2) # load 0x9050541f71223de3 from memory into f3
la x2, scratch
li x3, 0xf26c9e193c01ae29 # load x3 with value 0xf26c9e193c01ae29
sw x3, 0(x2) # store 0xf26c9e193c01ae29 in memory
flw f6, 0(x2) # load 0xf26c9e193c01ae29 from memory into f6
fsub.s f12, f3, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xed13d7e5774adb9d # load x3 with value 0xed13d7e5774adb9d
sw x3, 0(x2) # store 0xed13d7e5774adb9d in memory
flw f4, 0(x2) # load 0xed13d7e5774adb9d from memory into f4
la x2, scratch
li x3, 0x701507572b98473b # load x3 with value 0x701507572b98473b
sw x3, 0(x2) # store 0x701507572b98473b in memory
flw f10, 0(x2) # load 0x701507572b98473b from memory into f10
fsub.s f15, f4, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x858e7aff765be667 # load x3 with value 0x858e7aff765be667
sw x3, 0(x2) # store 0x858e7aff765be667 in memory
flw f5, 0(x2) # load 0x858e7aff765be667 from memory into f5
la x2, scratch
li x3, 0x2cd5ac9125e35bd0 # load x3 with value 0x2cd5ac9125e35bd0
sw x3, 0(x2) # store 0x2cd5ac9125e35bd0 in memory
flw f14, 0(x2) # load 0x2cd5ac9125e35bd0 from memory into f14
fsub.s f20, f5, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd8b9872f8a91cb97 # load x3 with value 0xd8b9872f8a91cb97
sw x3, 0(x2) # store 0xd8b9872f8a91cb97 in memory
flw f6, 0(x2) # load 0xd8b9872f8a91cb97 from memory into f6
la x2, scratch
li x3, 0x7d5d0a485072dfae # load x3 with value 0x7d5d0a485072dfae
sw x3, 0(x2) # store 0x7d5d0a485072dfae in memory
flw f3, 0(x2) # load 0x7d5d0a485072dfae from memory into f3
fsub.s f30, f6, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd613ba10e9ff74 # load x3 with value 0xd613ba10e9ff74
sw x3, 0(x2) # store 0xd613ba10e9ff74 in memory
flw f7, 0(x2) # load 0xd613ba10e9ff74 from memory into f7
la x2, scratch
li x3, 0x4a8219d7d7134b40 # load x3 with value 0x4a8219d7d7134b40
sw x3, 0(x2) # store 0x4a8219d7d7134b40 in memory
flw f24, 0(x2) # load 0x4a8219d7d7134b40 from memory into f24
fsub.s f5, f7, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xd9ba95e34267a05d # load x3 with value 0xd9ba95e34267a05d
sw x3, 0(x2) # store 0xd9ba95e34267a05d in memory
flw f8, 0(x2) # load 0xd9ba95e34267a05d from memory into f8
la x2, scratch
li x3, 0xc35b552026ddc539 # load x3 with value 0xc35b552026ddc539
sw x3, 0(x2) # store 0xc35b552026ddc539 in memory
flw f22, 0(x2) # load 0xc35b552026ddc539 from memory into f22
fsub.s f12, f8, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xd0325ebc5a554768 # load x3 with value 0xd0325ebc5a554768
sw x3, 0(x2) # store 0xd0325ebc5a554768 in memory
flw f9, 0(x2) # load 0xd0325ebc5a554768 from memory into f9
la x2, scratch
li x3, 0xfa197b893380c666 # load x3 with value 0xfa197b893380c666
sw x3, 0(x2) # store 0xfa197b893380c666 in memory
flw f12, 0(x2) # load 0xfa197b893380c666 from memory into f12
fsub.s f15, f9, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xd1ed0a48fbdbf41b # load x3 with value 0xd1ed0a48fbdbf41b
sw x3, 0(x2) # store 0xd1ed0a48fbdbf41b in memory
flw f10, 0(x2) # load 0xd1ed0a48fbdbf41b from memory into f10
la x2, scratch
li x3, 0x23f0eaa7d4055a6f # load x3 with value 0x23f0eaa7d4055a6f
sw x3, 0(x2) # store 0x23f0eaa7d4055a6f in memory
flw f9, 0(x2) # load 0x23f0eaa7d4055a6f from memory into f9
fsub.s f30, f10, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x689e8bbb8581ec1f # load x3 with value 0x689e8bbb8581ec1f
sw x3, 0(x2) # store 0x689e8bbb8581ec1f in memory
flw f11, 0(x2) # load 0x689e8bbb8581ec1f from memory into f11
la x2, scratch
li x3, 0x10dade826dc365e4 # load x3 with value 0x10dade826dc365e4
sw x3, 0(x2) # store 0x10dade826dc365e4 in memory
flw f22, 0(x2) # load 0x10dade826dc365e4 from memory into f22
fsub.s f29, f11, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xe8a3961cbef5dd2d # load x3 with value 0xe8a3961cbef5dd2d
sw x3, 0(x2) # store 0xe8a3961cbef5dd2d in memory
flw f12, 0(x2) # load 0xe8a3961cbef5dd2d from memory into f12
la x2, scratch
li x3, 0x1eb225e1919369f7 # load x3 with value 0x1eb225e1919369f7
sw x3, 0(x2) # store 0x1eb225e1919369f7 in memory
flw f29, 0(x2) # load 0x1eb225e1919369f7 from memory into f29
fsub.s f31, f12, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xc059593d5fcf201 # load x3 with value 0xc059593d5fcf201
sw x3, 0(x2) # store 0xc059593d5fcf201 in memory
flw f13, 0(x2) # load 0xc059593d5fcf201 from memory into f13
la x2, scratch
li x3, 0x7a237fb7969f896 # load x3 with value 0x7a237fb7969f896
sw x3, 0(x2) # store 0x7a237fb7969f896 in memory
flw f3, 0(x2) # load 0x7a237fb7969f896 from memory into f3
fsub.s f9, f13, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xee09681a387d9c95 # load x3 with value 0xee09681a387d9c95
sw x3, 0(x2) # store 0xee09681a387d9c95 in memory
flw f14, 0(x2) # load 0xee09681a387d9c95 from memory into f14
la x2, scratch
li x3, 0xbbec2a237ddc02ec # load x3 with value 0xbbec2a237ddc02ec
sw x3, 0(x2) # store 0xbbec2a237ddc02ec in memory
flw f19, 0(x2) # load 0xbbec2a237ddc02ec from memory into f19
fsub.s f8, f14, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xdce55e222aa1f9e7 # load x3 with value 0xdce55e222aa1f9e7
sw x3, 0(x2) # store 0xdce55e222aa1f9e7 in memory
flw f15, 0(x2) # load 0xdce55e222aa1f9e7 from memory into f15
la x2, scratch
li x3, 0x555517ff1a3eeac8 # load x3 with value 0x555517ff1a3eeac8
sw x3, 0(x2) # store 0x555517ff1a3eeac8 in memory
flw f18, 0(x2) # load 0x555517ff1a3eeac8 from memory into f18
fsub.s f19, f15, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x7c1813d9b6b84fcd # load x3 with value 0x7c1813d9b6b84fcd
sw x3, 0(x2) # store 0x7c1813d9b6b84fcd in memory
flw f16, 0(x2) # load 0x7c1813d9b6b84fcd from memory into f16
la x2, scratch
li x3, 0x439c2fb1279a5e0e # load x3 with value 0x439c2fb1279a5e0e
sw x3, 0(x2) # store 0x439c2fb1279a5e0e in memory
flw f21, 0(x2) # load 0x439c2fb1279a5e0e from memory into f21
fsub.s f8, f16, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x5829617fdb102d61 # load x3 with value 0x5829617fdb102d61
sw x3, 0(x2) # store 0x5829617fdb102d61 in memory
flw f17, 0(x2) # load 0x5829617fdb102d61 from memory into f17
la x2, scratch
li x3, 0xe6740e28d8538bbd # load x3 with value 0xe6740e28d8538bbd
sw x3, 0(x2) # store 0xe6740e28d8538bbd in memory
flw f25, 0(x2) # load 0xe6740e28d8538bbd from memory into f25
fsub.s f27, f17, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x7e03b2292949e868 # load x3 with value 0x7e03b2292949e868
sw x3, 0(x2) # store 0x7e03b2292949e868 in memory
flw f18, 0(x2) # load 0x7e03b2292949e868 from memory into f18
la x2, scratch
li x3, 0x14a1a8972f543f3b # load x3 with value 0x14a1a8972f543f3b
sw x3, 0(x2) # store 0x14a1a8972f543f3b in memory
flw f27, 0(x2) # load 0x14a1a8972f543f3b from memory into f27
fsub.s f11, f18, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xdada5f6ff188ad84 # load x3 with value 0xdada5f6ff188ad84
sw x3, 0(x2) # store 0xdada5f6ff188ad84 in memory
flw f19, 0(x2) # load 0xdada5f6ff188ad84 from memory into f19
la x2, scratch
li x3, 0xd6f167c6e9d2bf9f # load x3 with value 0xd6f167c6e9d2bf9f
sw x3, 0(x2) # store 0xd6f167c6e9d2bf9f in memory
flw f20, 0(x2) # load 0xd6f167c6e9d2bf9f from memory into f20
fsub.s f2, f19, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xca0c9dde1c420679 # load x3 with value 0xca0c9dde1c420679
sw x3, 0(x2) # store 0xca0c9dde1c420679 in memory
flw f20, 0(x2) # load 0xca0c9dde1c420679 from memory into f20
la x2, scratch
li x3, 0xcb7ef7c5fd3133c9 # load x3 with value 0xcb7ef7c5fd3133c9
sw x3, 0(x2) # store 0xcb7ef7c5fd3133c9 in memory
flw f28, 0(x2) # load 0xcb7ef7c5fd3133c9 from memory into f28
fsub.s f1, f20, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xaf26b811084df83b # load x3 with value 0xaf26b811084df83b
sw x3, 0(x2) # store 0xaf26b811084df83b in memory
flw f21, 0(x2) # load 0xaf26b811084df83b from memory into f21
la x2, scratch
li x3, 0x3ebee8eeabda117 # load x3 with value 0x3ebee8eeabda117
sw x3, 0(x2) # store 0x3ebee8eeabda117 in memory
flw f30, 0(x2) # load 0x3ebee8eeabda117 from memory into f30
fsub.s f10, f21, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xbdf617ddf8cbd7 # load x3 with value 0xbdf617ddf8cbd7
sw x3, 0(x2) # store 0xbdf617ddf8cbd7 in memory
flw f22, 0(x2) # load 0xbdf617ddf8cbd7 from memory into f22
la x2, scratch
li x3, 0xd69ef6ccf609b5a # load x3 with value 0xd69ef6ccf609b5a
sw x3, 0(x2) # store 0xd69ef6ccf609b5a in memory
flw f1, 0(x2) # load 0xd69ef6ccf609b5a from memory into f1
fsub.s f19, f22, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x8ddf6d473f73639f # load x3 with value 0x8ddf6d473f73639f
sw x3, 0(x2) # store 0x8ddf6d473f73639f in memory
flw f23, 0(x2) # load 0x8ddf6d473f73639f from memory into f23
la x2, scratch
li x3, 0x3cfbe4d1202a09fa # load x3 with value 0x3cfbe4d1202a09fa
sw x3, 0(x2) # store 0x3cfbe4d1202a09fa in memory
flw f3, 0(x2) # load 0x3cfbe4d1202a09fa from memory into f3
fsub.s f13, f23, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xf9a8ae0a58d80731 # load x3 with value 0xf9a8ae0a58d80731
sw x3, 0(x2) # store 0xf9a8ae0a58d80731 in memory
flw f24, 0(x2) # load 0xf9a8ae0a58d80731 from memory into f24
la x2, scratch
li x3, 0x69871f251d86acfb # load x3 with value 0x69871f251d86acfb
sw x3, 0(x2) # store 0x69871f251d86acfb in memory
flw f9, 0(x2) # load 0x69871f251d86acfb from memory into f9
fsub.s f29, f24, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xb24b0b218c875edf # load x3 with value 0xb24b0b218c875edf
sw x3, 0(x2) # store 0xb24b0b218c875edf in memory
flw f25, 0(x2) # load 0xb24b0b218c875edf from memory into f25
la x2, scratch
li x3, 0x85c3a935694fb700 # load x3 with value 0x85c3a935694fb700
sw x3, 0(x2) # store 0x85c3a935694fb700 in memory
flw f29, 0(x2) # load 0x85c3a935694fb700 from memory into f29
fsub.s f26, f25, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x81046593746acf2d # load x3 with value 0x81046593746acf2d
sw x3, 0(x2) # store 0x81046593746acf2d in memory
flw f26, 0(x2) # load 0x81046593746acf2d from memory into f26
la x2, scratch
li x3, 0xfd695f3dea92af7d # load x3 with value 0xfd695f3dea92af7d
sw x3, 0(x2) # store 0xfd695f3dea92af7d in memory
flw f5, 0(x2) # load 0xfd695f3dea92af7d from memory into f5
fsub.s f20, f26, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x9cd61eb3b3e58a3f # load x3 with value 0x9cd61eb3b3e58a3f
sw x3, 0(x2) # store 0x9cd61eb3b3e58a3f in memory
flw f27, 0(x2) # load 0x9cd61eb3b3e58a3f from memory into f27
la x2, scratch
li x3, 0xe0867e5a03c613ca # load x3 with value 0xe0867e5a03c613ca
sw x3, 0(x2) # store 0xe0867e5a03c613ca in memory
flw f1, 0(x2) # load 0xe0867e5a03c613ca from memory into f1
fsub.s f12, f27, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x1e55d12a8a81b7f7 # load x3 with value 0x1e55d12a8a81b7f7
sw x3, 0(x2) # store 0x1e55d12a8a81b7f7 in memory
flw f28, 0(x2) # load 0x1e55d12a8a81b7f7 from memory into f28
la x2, scratch
li x3, 0x32557d775df4361f # load x3 with value 0x32557d775df4361f
sw x3, 0(x2) # store 0x32557d775df4361f in memory
flw f7, 0(x2) # load 0x32557d775df4361f from memory into f7
fsub.s f13, f28, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xd9316786e5d1c8a1 # load x3 with value 0xd9316786e5d1c8a1
sw x3, 0(x2) # store 0xd9316786e5d1c8a1 in memory
flw f29, 0(x2) # load 0xd9316786e5d1c8a1 from memory into f29
la x2, scratch
li x3, 0x3dd8d3e24f6caa9f # load x3 with value 0x3dd8d3e24f6caa9f
sw x3, 0(x2) # store 0x3dd8d3e24f6caa9f in memory
flw f15, 0(x2) # load 0x3dd8d3e24f6caa9f from memory into f15
fsub.s f29, f29, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xf947d1ef1e1fddba # load x3 with value 0xf947d1ef1e1fddba
sw x3, 0(x2) # store 0xf947d1ef1e1fddba in memory
flw f30, 0(x2) # load 0xf947d1ef1e1fddba from memory into f30
la x2, scratch
li x3, 0x646ecf1cf7ba0b81 # load x3 with value 0x646ecf1cf7ba0b81
sw x3, 0(x2) # store 0x646ecf1cf7ba0b81 in memory
flw f5, 0(x2) # load 0x646ecf1cf7ba0b81 from memory into f5
fsub.s f8, f30, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x43a7e26da472d861 # load x3 with value 0x43a7e26da472d861
sw x3, 0(x2) # store 0x43a7e26da472d861 in memory
flw f31, 0(x2) # load 0x43a7e26da472d861 from memory into f31
la x2, scratch
li x3, 0x817e7face428c41c # load x3 with value 0x817e7face428c41c
sw x3, 0(x2) # store 0x817e7face428c41c in memory
flw f21, 0(x2) # load 0x817e7face428c41c from memory into f21
fsub.s f28, f31, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x38289545ce176dd3 # load x3 with value 0x38289545ce176dd3
sw x3, 0(x2) # store 0x38289545ce176dd3 in memory
flw f11, 0(x2) # load 0x38289545ce176dd3 from memory into f11
la x2, scratch
li x3, 0x7e6251550b9bfb36 # load x3 with value 0x7e6251550b9bfb36
sw x3, 0(x2) # store 0x7e6251550b9bfb36 in memory
flw f0, 0(x2) # load 0x7e6251550b9bfb36 from memory into f0
fsub.s f18, f11, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x2c7e7c333413c931 # load x3 with value 0x2c7e7c333413c931
sw x3, 0(x2) # store 0x2c7e7c333413c931 in memory
flw f11, 0(x2) # load 0x2c7e7c333413c931 from memory into f11
la x2, scratch
li x3, 0x7715d91b5e92c715 # load x3 with value 0x7715d91b5e92c715
sw x3, 0(x2) # store 0x7715d91b5e92c715 in memory
flw f1, 0(x2) # load 0x7715d91b5e92c715 from memory into f1
fsub.s f13, f11, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x5db51a316da6250b # load x3 with value 0x5db51a316da6250b
sw x3, 0(x2) # store 0x5db51a316da6250b in memory
flw f17, 0(x2) # load 0x5db51a316da6250b from memory into f17
la x2, scratch
li x3, 0x32ba0c75b6a6353e # load x3 with value 0x32ba0c75b6a6353e
sw x3, 0(x2) # store 0x32ba0c75b6a6353e in memory
flw f2, 0(x2) # load 0x32ba0c75b6a6353e from memory into f2
fsub.s f10, f17, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xa666febc59dd8a8d # load x3 with value 0xa666febc59dd8a8d
sw x3, 0(x2) # store 0xa666febc59dd8a8d in memory
flw f27, 0(x2) # load 0xa666febc59dd8a8d from memory into f27
la x2, scratch
li x3, 0x8d53cdabb62083b9 # load x3 with value 0x8d53cdabb62083b9
sw x3, 0(x2) # store 0x8d53cdabb62083b9 in memory
flw f3, 0(x2) # load 0x8d53cdabb62083b9 from memory into f3
fsub.s f31, f27, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6efb043391a6b2f2 # load x3 with value 0x6efb043391a6b2f2
sw x3, 0(x2) # store 0x6efb043391a6b2f2 in memory
flw f24, 0(x2) # load 0x6efb043391a6b2f2 from memory into f24
la x2, scratch
li x3, 0xb2b2966f44d4df61 # load x3 with value 0xb2b2966f44d4df61
sw x3, 0(x2) # store 0xb2b2966f44d4df61 in memory
flw f4, 0(x2) # load 0xb2b2966f44d4df61 from memory into f4
fsub.s f28, f24, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9e2d3413dcc72c68 # load x3 with value 0x9e2d3413dcc72c68
sw x3, 0(x2) # store 0x9e2d3413dcc72c68 in memory
flw f12, 0(x2) # load 0x9e2d3413dcc72c68 from memory into f12
la x2, scratch
li x3, 0xe7f288c739f28db4 # load x3 with value 0xe7f288c739f28db4
sw x3, 0(x2) # store 0xe7f288c739f28db4 in memory
flw f5, 0(x2) # load 0xe7f288c739f28db4 from memory into f5
fsub.s f18, f12, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xee077b6a6efc25c4 # load x3 with value 0xee077b6a6efc25c4
sw x3, 0(x2) # store 0xee077b6a6efc25c4 in memory
flw f14, 0(x2) # load 0xee077b6a6efc25c4 from memory into f14
la x2, scratch
li x3, 0xe460d297d274b24c # load x3 with value 0xe460d297d274b24c
sw x3, 0(x2) # store 0xe460d297d274b24c in memory
flw f6, 0(x2) # load 0xe460d297d274b24c from memory into f6
fsub.s f21, f14, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x27674aa33eae0e0d # load x3 with value 0x27674aa33eae0e0d
sw x3, 0(x2) # store 0x27674aa33eae0e0d in memory
flw f27, 0(x2) # load 0x27674aa33eae0e0d from memory into f27
la x2, scratch
li x3, 0x6b72814cfdd4e03d # load x3 with value 0x6b72814cfdd4e03d
sw x3, 0(x2) # store 0x6b72814cfdd4e03d in memory
flw f7, 0(x2) # load 0x6b72814cfdd4e03d from memory into f7
fsub.s f3, f27, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xd652abcf96719bdc # load x3 with value 0xd652abcf96719bdc
sw x3, 0(x2) # store 0xd652abcf96719bdc in memory
flw f6, 0(x2) # load 0xd652abcf96719bdc from memory into f6
la x2, scratch
li x3, 0x4c2a59fd32641f34 # load x3 with value 0x4c2a59fd32641f34
sw x3, 0(x2) # store 0x4c2a59fd32641f34 in memory
flw f8, 0(x2) # load 0x4c2a59fd32641f34 from memory into f8
fsub.s f23, f6, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xb16370074a3df766 # load x3 with value 0xb16370074a3df766
sw x3, 0(x2) # store 0xb16370074a3df766 in memory
flw f19, 0(x2) # load 0xb16370074a3df766 from memory into f19
la x2, scratch
li x3, 0x963b6694689645e7 # load x3 with value 0x963b6694689645e7
sw x3, 0(x2) # store 0x963b6694689645e7 in memory
flw f9, 0(x2) # load 0x963b6694689645e7 from memory into f9
fsub.s f16, f19, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xe7f326d9a40f4007 # load x3 with value 0xe7f326d9a40f4007
sw x3, 0(x2) # store 0xe7f326d9a40f4007 in memory
flw f31, 0(x2) # load 0xe7f326d9a40f4007 from memory into f31
la x2, scratch
li x3, 0x7c50ef7d7b587881 # load x3 with value 0x7c50ef7d7b587881
sw x3, 0(x2) # store 0x7c50ef7d7b587881 in memory
flw f10, 0(x2) # load 0x7c50ef7d7b587881 from memory into f10
fsub.s f11, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x1c7618e86d54143e # load x3 with value 0x1c7618e86d54143e
sw x3, 0(x2) # store 0x1c7618e86d54143e in memory
flw f20, 0(x2) # load 0x1c7618e86d54143e from memory into f20
la x2, scratch
li x3, 0xeae37c80dad533bf # load x3 with value 0xeae37c80dad533bf
sw x3, 0(x2) # store 0xeae37c80dad533bf in memory
flw f11, 0(x2) # load 0xeae37c80dad533bf from memory into f11
fsub.s f17, f20, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x4edf19d7bbeca07f # load x3 with value 0x4edf19d7bbeca07f
sw x3, 0(x2) # store 0x4edf19d7bbeca07f in memory
flw f16, 0(x2) # load 0x4edf19d7bbeca07f from memory into f16
la x2, scratch
li x3, 0x1d707b1417943b42 # load x3 with value 0x1d707b1417943b42
sw x3, 0(x2) # store 0x1d707b1417943b42 in memory
flw f12, 0(x2) # load 0x1d707b1417943b42 from memory into f12
fsub.s f15, f16, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xd3251ecd04c5bc79 # load x3 with value 0xd3251ecd04c5bc79
sw x3, 0(x2) # store 0xd3251ecd04c5bc79 in memory
flw f23, 0(x2) # load 0xd3251ecd04c5bc79 from memory into f23
la x2, scratch
li x3, 0x62015a38dabd2ea1 # load x3 with value 0x62015a38dabd2ea1
sw x3, 0(x2) # store 0x62015a38dabd2ea1 in memory
flw f13, 0(x2) # load 0x62015a38dabd2ea1 from memory into f13
fsub.s f28, f23, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xe152f8557ea7b8a7 # load x3 with value 0xe152f8557ea7b8a7
sw x3, 0(x2) # store 0xe152f8557ea7b8a7 in memory
flw f18, 0(x2) # load 0xe152f8557ea7b8a7 from memory into f18
la x2, scratch
li x3, 0x581c5c5558816aef # load x3 with value 0x581c5c5558816aef
sw x3, 0(x2) # store 0x581c5c5558816aef in memory
flw f14, 0(x2) # load 0x581c5c5558816aef from memory into f14
fsub.s f1, f18, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x764ad46b2d31e8e0 # load x3 with value 0x764ad46b2d31e8e0
sw x3, 0(x2) # store 0x764ad46b2d31e8e0 in memory
flw f19, 0(x2) # load 0x764ad46b2d31e8e0 from memory into f19
la x2, scratch
li x3, 0x67f59d61a300837c # load x3 with value 0x67f59d61a300837c
sw x3, 0(x2) # store 0x67f59d61a300837c in memory
flw f15, 0(x2) # load 0x67f59d61a300837c from memory into f15
fsub.s f27, f19, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x950c67455e778fa5 # load x3 with value 0x950c67455e778fa5
sw x3, 0(x2) # store 0x950c67455e778fa5 in memory
flw f21, 0(x2) # load 0x950c67455e778fa5 from memory into f21
la x2, scratch
li x3, 0x7a7cc97ec97648d1 # load x3 with value 0x7a7cc97ec97648d1
sw x3, 0(x2) # store 0x7a7cc97ec97648d1 in memory
flw f16, 0(x2) # load 0x7a7cc97ec97648d1 from memory into f16
fsub.s f15, f21, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x35ce666629e78be7 # load x3 with value 0x35ce666629e78be7
sw x3, 0(x2) # store 0x35ce666629e78be7 in memory
flw f31, 0(x2) # load 0x35ce666629e78be7 from memory into f31
la x2, scratch
li x3, 0x525cb642d4f1602e # load x3 with value 0x525cb642d4f1602e
sw x3, 0(x2) # store 0x525cb642d4f1602e in memory
flw f17, 0(x2) # load 0x525cb642d4f1602e from memory into f17
fsub.s f8, f31, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xa759928cebeae98b # load x3 with value 0xa759928cebeae98b
sw x3, 0(x2) # store 0xa759928cebeae98b in memory
flw f27, 0(x2) # load 0xa759928cebeae98b from memory into f27
la x2, scratch
li x3, 0x68d82d3567e933b4 # load x3 with value 0x68d82d3567e933b4
sw x3, 0(x2) # store 0x68d82d3567e933b4 in memory
flw f18, 0(x2) # load 0x68d82d3567e933b4 from memory into f18
fsub.s f11, f27, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xfd9ca454f5c7d49b # load x3 with value 0xfd9ca454f5c7d49b
sw x3, 0(x2) # store 0xfd9ca454f5c7d49b in memory
flw f31, 0(x2) # load 0xfd9ca454f5c7d49b from memory into f31
la x2, scratch
li x3, 0xa6f99ab377cb80d # load x3 with value 0xa6f99ab377cb80d
sw x3, 0(x2) # store 0xa6f99ab377cb80d in memory
flw f19, 0(x2) # load 0xa6f99ab377cb80d from memory into f19
fsub.s f8, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x670158c2471f4696 # load x3 with value 0x670158c2471f4696
sw x3, 0(x2) # store 0x670158c2471f4696 in memory
flw f3, 0(x2) # load 0x670158c2471f4696 from memory into f3
la x2, scratch
li x3, 0xa364b1c55e9f7ba # load x3 with value 0xa364b1c55e9f7ba
sw x3, 0(x2) # store 0xa364b1c55e9f7ba in memory
flw f20, 0(x2) # load 0xa364b1c55e9f7ba from memory into f20
fsub.s f19, f3, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x5158d7e6a07aa232 # load x3 with value 0x5158d7e6a07aa232
sw x3, 0(x2) # store 0x5158d7e6a07aa232 in memory
flw f15, 0(x2) # load 0x5158d7e6a07aa232 from memory into f15
la x2, scratch
li x3, 0x698f20419b0ed1f9 # load x3 with value 0x698f20419b0ed1f9
sw x3, 0(x2) # store 0x698f20419b0ed1f9 in memory
flw f21, 0(x2) # load 0x698f20419b0ed1f9 from memory into f21
fsub.s f12, f15, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xf3b7cda2eb3edb # load x3 with value 0xf3b7cda2eb3edb
sw x3, 0(x2) # store 0xf3b7cda2eb3edb in memory
flw f10, 0(x2) # load 0xf3b7cda2eb3edb from memory into f10
la x2, scratch
li x3, 0x493c5268a5757dce # load x3 with value 0x493c5268a5757dce
sw x3, 0(x2) # store 0x493c5268a5757dce in memory
flw f22, 0(x2) # load 0x493c5268a5757dce from memory into f22
fsub.s f22, f10, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x82eb8f2c2fed9d51 # load x3 with value 0x82eb8f2c2fed9d51
sw x3, 0(x2) # store 0x82eb8f2c2fed9d51 in memory
flw f27, 0(x2) # load 0x82eb8f2c2fed9d51 from memory into f27
la x2, scratch
li x3, 0xade22adb66bde448 # load x3 with value 0xade22adb66bde448
sw x3, 0(x2) # store 0xade22adb66bde448 in memory
flw f23, 0(x2) # load 0xade22adb66bde448 from memory into f23
fsub.s f24, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xbae51b736764ca9c # load x3 with value 0xbae51b736764ca9c
sw x3, 0(x2) # store 0xbae51b736764ca9c in memory
flw f22, 0(x2) # load 0xbae51b736764ca9c from memory into f22
la x2, scratch
li x3, 0xec7ffdc3a88adb3f # load x3 with value 0xec7ffdc3a88adb3f
sw x3, 0(x2) # store 0xec7ffdc3a88adb3f in memory
flw f24, 0(x2) # load 0xec7ffdc3a88adb3f from memory into f24
fsub.s f28, f22, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x3676af4a55404f52 # load x3 with value 0x3676af4a55404f52
sw x3, 0(x2) # store 0x3676af4a55404f52 in memory
flw f20, 0(x2) # load 0x3676af4a55404f52 from memory into f20
la x2, scratch
li x3, 0xe79453d56cf1f67b # load x3 with value 0xe79453d56cf1f67b
sw x3, 0(x2) # store 0xe79453d56cf1f67b in memory
flw f25, 0(x2) # load 0xe79453d56cf1f67b from memory into f25
fsub.s f13, f20, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x31248c726b932d93 # load x3 with value 0x31248c726b932d93
sw x3, 0(x2) # store 0x31248c726b932d93 in memory
flw f19, 0(x2) # load 0x31248c726b932d93 from memory into f19
la x2, scratch
li x3, 0xd19b69ab978f46ca # load x3 with value 0xd19b69ab978f46ca
sw x3, 0(x2) # store 0xd19b69ab978f46ca in memory
flw f26, 0(x2) # load 0xd19b69ab978f46ca from memory into f26
fsub.s f3, f19, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x32e4e6f7926d5c8a # load x3 with value 0x32e4e6f7926d5c8a
sw x3, 0(x2) # store 0x32e4e6f7926d5c8a in memory
flw f9, 0(x2) # load 0x32e4e6f7926d5c8a from memory into f9
la x2, scratch
li x3, 0xfc885ec812ca5c20 # load x3 with value 0xfc885ec812ca5c20
sw x3, 0(x2) # store 0xfc885ec812ca5c20 in memory
flw f27, 0(x2) # load 0xfc885ec812ca5c20 from memory into f27
fsub.s f28, f9, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x8ab4663d3a247544 # load x3 with value 0x8ab4663d3a247544
sw x3, 0(x2) # store 0x8ab4663d3a247544 in memory
flw f27, 0(x2) # load 0x8ab4663d3a247544 from memory into f27
la x2, scratch
li x3, 0x569379df416782d6 # load x3 with value 0x569379df416782d6
sw x3, 0(x2) # store 0x569379df416782d6 in memory
flw f28, 0(x2) # load 0x569379df416782d6 from memory into f28
fsub.s f14, f27, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xc690496435afe0db # load x3 with value 0xc690496435afe0db
sw x3, 0(x2) # store 0xc690496435afe0db in memory
flw f9, 0(x2) # load 0xc690496435afe0db from memory into f9
la x2, scratch
li x3, 0x856f392d3d48ab52 # load x3 with value 0x856f392d3d48ab52
sw x3, 0(x2) # store 0x856f392d3d48ab52 in memory
flw f29, 0(x2) # load 0x856f392d3d48ab52 from memory into f29
fsub.s f13, f9, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x7991179e9f87aed5 # load x3 with value 0x7991179e9f87aed5
sw x3, 0(x2) # store 0x7991179e9f87aed5 in memory
flw f18, 0(x2) # load 0x7991179e9f87aed5 from memory into f18
la x2, scratch
li x3, 0xb58e5ca0fe8a6dcb # load x3 with value 0xb58e5ca0fe8a6dcb
sw x3, 0(x2) # store 0xb58e5ca0fe8a6dcb in memory
flw f30, 0(x2) # load 0xb58e5ca0fe8a6dcb from memory into f30
fsub.s f15, f18, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x3406523ba499f833 # load x3 with value 0x3406523ba499f833
sw x3, 0(x2) # store 0x3406523ba499f833 in memory
flw f3, 0(x2) # load 0x3406523ba499f833 from memory into f3
la x2, scratch
li x3, 0x180c9ed4013ffa8a # load x3 with value 0x180c9ed4013ffa8a
sw x3, 0(x2) # store 0x180c9ed4013ffa8a in memory
flw f31, 0(x2) # load 0x180c9ed4013ffa8a from memory into f31
fsub.s f15, f3, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x5a3b9b123e1088a6 # load x3 with value 0x5a3b9b123e1088a6
sw x3, 0(x2) # store 0x5a3b9b123e1088a6 in memory
flw f14, 0(x2) # load 0x5a3b9b123e1088a6 from memory into f14
la x2, scratch
li x3, 0x9803548efc4d3f6d # load x3 with value 0x9803548efc4d3f6d
sw x3, 0(x2) # store 0x9803548efc4d3f6d in memory
flw f12, 0(x2) # load 0x9803548efc4d3f6d from memory into f12
fsub.s f0, f14, f12 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x95d8d472e7dcd874 # load x3 with value 0x95d8d472e7dcd874
sw x3, 0(x2) # store 0x95d8d472e7dcd874 in memory
flw f22, 0(x2) # load 0x95d8d472e7dcd874 from memory into f22
la x2, scratch
li x3, 0x53cffb3707b03bb4 # load x3 with value 0x53cffb3707b03bb4
sw x3, 0(x2) # store 0x53cffb3707b03bb4 in memory
flw f12, 0(x2) # load 0x53cffb3707b03bb4 from memory into f12
fsub.s f1, f22, f12 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x74e8cddc46a9b4f8 # load x3 with value 0x74e8cddc46a9b4f8
sw x3, 0(x2) # store 0x74e8cddc46a9b4f8 in memory
flw f7, 0(x2) # load 0x74e8cddc46a9b4f8 from memory into f7
la x2, scratch
li x3, 0x502f52dd971c91ab # load x3 with value 0x502f52dd971c91ab
sw x3, 0(x2) # store 0x502f52dd971c91ab in memory
flw f16, 0(x2) # load 0x502f52dd971c91ab from memory into f16
fsub.s f2, f7, f16 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x5ba77d0d8f95055f # load x3 with value 0x5ba77d0d8f95055f
sw x3, 0(x2) # store 0x5ba77d0d8f95055f in memory
flw f25, 0(x2) # load 0x5ba77d0d8f95055f from memory into f25
la x2, scratch
li x3, 0x7c23ebb37383b9db # load x3 with value 0x7c23ebb37383b9db
sw x3, 0(x2) # store 0x7c23ebb37383b9db in memory
flw f21, 0(x2) # load 0x7c23ebb37383b9db from memory into f21
fsub.s f3, f25, f21 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa20954dccbb2ba99 # load x3 with value 0xa20954dccbb2ba99
sw x3, 0(x2) # store 0xa20954dccbb2ba99 in memory
flw f10, 0(x2) # load 0xa20954dccbb2ba99 from memory into f10
la x2, scratch
li x3, 0x9514fa9f9abda041 # load x3 with value 0x9514fa9f9abda041
sw x3, 0(x2) # store 0x9514fa9f9abda041 in memory
flw f3, 0(x2) # load 0x9514fa9f9abda041 from memory into f3
fsub.s f4, f10, f3 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb123f1be7d7b8d36 # load x3 with value 0xb123f1be7d7b8d36
sw x3, 0(x2) # store 0xb123f1be7d7b8d36 in memory
flw f27, 0(x2) # load 0xb123f1be7d7b8d36 from memory into f27
la x2, scratch
li x3, 0x6a5439b6be2e23ee # load x3 with value 0x6a5439b6be2e23ee
sw x3, 0(x2) # store 0x6a5439b6be2e23ee in memory
flw f7, 0(x2) # load 0x6a5439b6be2e23ee from memory into f7
fsub.s f5, f27, f7 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbe8c037b136a37ff # load x3 with value 0xbe8c037b136a37ff
sw x3, 0(x2) # store 0xbe8c037b136a37ff in memory
flw f31, 0(x2) # load 0xbe8c037b136a37ff from memory into f31
la x2, scratch
li x3, 0xa56526145a2eecc3 # load x3 with value 0xa56526145a2eecc3
sw x3, 0(x2) # store 0xa56526145a2eecc3 in memory
flw f26, 0(x2) # load 0xa56526145a2eecc3 from memory into f26
fsub.s f6, f31, f26 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x94f0f9a8f68570df # load x3 with value 0x94f0f9a8f68570df
sw x3, 0(x2) # store 0x94f0f9a8f68570df in memory
flw f2, 0(x2) # load 0x94f0f9a8f68570df from memory into f2
la x2, scratch
li x3, 0x564e8ac2a71e4b2 # load x3 with value 0x564e8ac2a71e4b2
sw x3, 0(x2) # store 0x564e8ac2a71e4b2 in memory
flw f17, 0(x2) # load 0x564e8ac2a71e4b2 from memory into f17
fsub.s f7, f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x26e5809e932366ce # load x3 with value 0x26e5809e932366ce
sw x3, 0(x2) # store 0x26e5809e932366ce in memory
flw f22, 0(x2) # load 0x26e5809e932366ce from memory into f22
la x2, scratch
li x3, 0x736a76f9ee0de347 # load x3 with value 0x736a76f9ee0de347
sw x3, 0(x2) # store 0x736a76f9ee0de347 in memory
flw f24, 0(x2) # load 0x736a76f9ee0de347 from memory into f24
fsub.s f8, f22, f24 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x4512aab6ede07912 # load x3 with value 0x4512aab6ede07912
sw x3, 0(x2) # store 0x4512aab6ede07912 in memory
flw f28, 0(x2) # load 0x4512aab6ede07912 from memory into f28
la x2, scratch
li x3, 0x7a18d6dc9ab8a88 # load x3 with value 0x7a18d6dc9ab8a88
sw x3, 0(x2) # store 0x7a18d6dc9ab8a88 in memory
flw f13, 0(x2) # load 0x7a18d6dc9ab8a88 from memory into f13
fsub.s f9, f28, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x1dbc88e0e7da948 # load x3 with value 0x1dbc88e0e7da948
sw x3, 0(x2) # store 0x1dbc88e0e7da948 in memory
flw f5, 0(x2) # load 0x1dbc88e0e7da948 from memory into f5
la x2, scratch
li x3, 0xe94b38a67f80045 # load x3 with value 0xe94b38a67f80045
sw x3, 0(x2) # store 0xe94b38a67f80045 in memory
flw f1, 0(x2) # load 0xe94b38a67f80045 from memory into f1
fsub.s f10, f5, f1 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x8c574521bda38168 # load x3 with value 0x8c574521bda38168
sw x3, 0(x2) # store 0x8c574521bda38168 in memory
flw f18, 0(x2) # load 0x8c574521bda38168 from memory into f18
la x2, scratch
li x3, 0x3912e2b99fd50eab # load x3 with value 0x3912e2b99fd50eab
sw x3, 0(x2) # store 0x3912e2b99fd50eab in memory
flw f17, 0(x2) # load 0x3912e2b99fd50eab from memory into f17
fsub.s f11, f18, f17 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0x5d18ac2838d55378 # load x3 with value 0x5d18ac2838d55378
sw x3, 0(x2) # store 0x5d18ac2838d55378 in memory
flw f9, 0(x2) # load 0x5d18ac2838d55378 from memory into f9
la x2, scratch
li x3, 0xac59564778594d7d # load x3 with value 0xac59564778594d7d
sw x3, 0(x2) # store 0xac59564778594d7d in memory
flw f23, 0(x2) # load 0xac59564778594d7d from memory into f23
fsub.s f12, f9, f23 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0xbfca81f4a242b8b3 # load x3 with value 0xbfca81f4a242b8b3
sw x3, 0(x2) # store 0xbfca81f4a242b8b3 in memory
flw f7, 0(x2) # load 0xbfca81f4a242b8b3 from memory into f7
la x2, scratch
li x3, 0x2ff7287c04ac077e # load x3 with value 0x2ff7287c04ac077e
sw x3, 0(x2) # store 0x2ff7287c04ac077e in memory
flw f17, 0(x2) # load 0x2ff7287c04ac077e from memory into f17
fsub.s f13, f7, f17 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0xc8df6b60d0fc689b # load x3 with value 0xc8df6b60d0fc689b
sw x3, 0(x2) # store 0xc8df6b60d0fc689b in memory
flw f5, 0(x2) # load 0xc8df6b60d0fc689b from memory into f5
la x2, scratch
li x3, 0x35ba9dd231749c58 # load x3 with value 0x35ba9dd231749c58
sw x3, 0(x2) # store 0x35ba9dd231749c58 in memory
flw f8, 0(x2) # load 0x35ba9dd231749c58 from memory into f8
fsub.s f14, f5, f8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xde523464e783e79a # load x3 with value 0xde523464e783e79a
sw x3, 0(x2) # store 0xde523464e783e79a in memory
flw f5, 0(x2) # load 0xde523464e783e79a from memory into f5
la x2, scratch
li x3, 0x93c535b2d88174f5 # load x3 with value 0x93c535b2d88174f5
sw x3, 0(x2) # store 0x93c535b2d88174f5 in memory
flw f28, 0(x2) # load 0x93c535b2d88174f5 from memory into f28
fsub.s f15, f5, f28 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0xd726f8c3be048ee5 # load x3 with value 0xd726f8c3be048ee5
sw x3, 0(x2) # store 0xd726f8c3be048ee5 in memory
flw f15, 0(x2) # load 0xd726f8c3be048ee5 from memory into f15
la x2, scratch
li x3, 0x789fc79edd890f26 # load x3 with value 0x789fc79edd890f26
sw x3, 0(x2) # store 0x789fc79edd890f26 in memory
flw f20, 0(x2) # load 0x789fc79edd890f26 from memory into f20
fsub.s f16, f15, f20 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x4c2d4cf155ca911b # load x3 with value 0x4c2d4cf155ca911b
sw x3, 0(x2) # store 0x4c2d4cf155ca911b in memory
flw f3, 0(x2) # load 0x4c2d4cf155ca911b from memory into f3
la x2, scratch
li x3, 0xee480ec4d9fe7a39 # load x3 with value 0xee480ec4d9fe7a39
sw x3, 0(x2) # store 0xee480ec4d9fe7a39 in memory
flw f16, 0(x2) # load 0xee480ec4d9fe7a39 from memory into f16
fsub.s f17, f3, f16 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x1ac0580fdca5ec76 # load x3 with value 0x1ac0580fdca5ec76
sw x3, 0(x2) # store 0x1ac0580fdca5ec76 in memory
flw f24, 0(x2) # load 0x1ac0580fdca5ec76 from memory into f24
la x2, scratch
li x3, 0x461bac1304bb12fa # load x3 with value 0x461bac1304bb12fa
sw x3, 0(x2) # store 0x461bac1304bb12fa in memory
flw f13, 0(x2) # load 0x461bac1304bb12fa from memory into f13
fsub.s f18, f24, f13 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0xe74a663b7e5b2e32 # load x3 with value 0xe74a663b7e5b2e32
sw x3, 0(x2) # store 0xe74a663b7e5b2e32 in memory
flw f28, 0(x2) # load 0xe74a663b7e5b2e32 from memory into f28
la x2, scratch
li x3, 0x6d64f5d45d176a17 # load x3 with value 0x6d64f5d45d176a17
sw x3, 0(x2) # store 0x6d64f5d45d176a17 in memory
flw f20, 0(x2) # load 0x6d64f5d45d176a17 from memory into f20
fsub.s f19, f28, f20 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x495041d0159a6a47 # load x3 with value 0x495041d0159a6a47
sw x3, 0(x2) # store 0x495041d0159a6a47 in memory
flw f3, 0(x2) # load 0x495041d0159a6a47 from memory into f3
la x2, scratch
li x3, 0x37e1eb4bcaff3144 # load x3 with value 0x37e1eb4bcaff3144
sw x3, 0(x2) # store 0x37e1eb4bcaff3144 in memory
flw f26, 0(x2) # load 0x37e1eb4bcaff3144 from memory into f26
fsub.s f20, f3, f26 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xcc153f9c37b88ff7 # load x3 with value 0xcc153f9c37b88ff7
sw x3, 0(x2) # store 0xcc153f9c37b88ff7 in memory
flw f15, 0(x2) # load 0xcc153f9c37b88ff7 from memory into f15
la x2, scratch
li x3, 0x620602bf162a1c46 # load x3 with value 0x620602bf162a1c46
sw x3, 0(x2) # store 0x620602bf162a1c46 in memory
flw f12, 0(x2) # load 0x620602bf162a1c46 from memory into f12
fsub.s f21, f15, f12 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xe01c09b86decc5c7 # load x3 with value 0xe01c09b86decc5c7
sw x3, 0(x2) # store 0xe01c09b86decc5c7 in memory
flw f22, 0(x2) # load 0xe01c09b86decc5c7 from memory into f22
la x2, scratch
li x3, 0x75a8728e1b33ce92 # load x3 with value 0x75a8728e1b33ce92
sw x3, 0(x2) # store 0x75a8728e1b33ce92 in memory
flw f16, 0(x2) # load 0x75a8728e1b33ce92 from memory into f16
fsub.s f22, f22, f16 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x55641511bd3e5604 # load x3 with value 0x55641511bd3e5604
sw x3, 0(x2) # store 0x55641511bd3e5604 in memory
flw f27, 0(x2) # load 0x55641511bd3e5604 from memory into f27
la x2, scratch
li x3, 0x4cf0176f4a497ffa # load x3 with value 0x4cf0176f4a497ffa
sw x3, 0(x2) # store 0x4cf0176f4a497ffa in memory
flw f23, 0(x2) # load 0x4cf0176f4a497ffa from memory into f23
fsub.s f23, f27, f23 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x533e9eba58f69a1e # load x3 with value 0x533e9eba58f69a1e
sw x3, 0(x2) # store 0x533e9eba58f69a1e in memory
flw f18, 0(x2) # load 0x533e9eba58f69a1e from memory into f18
la x2, scratch
li x3, 0x87459595b5a1f75e # load x3 with value 0x87459595b5a1f75e
sw x3, 0(x2) # store 0x87459595b5a1f75e in memory
flw f3, 0(x2) # load 0x87459595b5a1f75e from memory into f3
fsub.s f24, f18, f3 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0xc71c70f479f3cec9 # load x3 with value 0xc71c70f479f3cec9
sw x3, 0(x2) # store 0xc71c70f479f3cec9 in memory
flw f23, 0(x2) # load 0xc71c70f479f3cec9 from memory into f23
la x2, scratch
li x3, 0x94d5b40a0057824b # load x3 with value 0x94d5b40a0057824b
sw x3, 0(x2) # store 0x94d5b40a0057824b in memory
flw f3, 0(x2) # load 0x94d5b40a0057824b from memory into f3
fsub.s f25, f23, f3 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x3c5a81656ecc559d # load x3 with value 0x3c5a81656ecc559d
sw x3, 0(x2) # store 0x3c5a81656ecc559d in memory
flw f24, 0(x2) # load 0x3c5a81656ecc559d from memory into f24
la x2, scratch
li x3, 0x8427d8649c8d2868 # load x3 with value 0x8427d8649c8d2868
sw x3, 0(x2) # store 0x8427d8649c8d2868 in memory
flw f7, 0(x2) # load 0x8427d8649c8d2868 from memory into f7
fsub.s f26, f24, f7 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x9826b724825edd56 # load x3 with value 0x9826b724825edd56
sw x3, 0(x2) # store 0x9826b724825edd56 in memory
flw f7, 0(x2) # load 0x9826b724825edd56 from memory into f7
la x2, scratch
li x3, 0x414ceb7f75a09028 # load x3 with value 0x414ceb7f75a09028
sw x3, 0(x2) # store 0x414ceb7f75a09028 in memory
flw f8, 0(x2) # load 0x414ceb7f75a09028 from memory into f8
fsub.s f27, f7, f8 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0xc1930b935e826c26 # load x3 with value 0xc1930b935e826c26
sw x3, 0(x2) # store 0xc1930b935e826c26 in memory
flw f25, 0(x2) # load 0xc1930b935e826c26 from memory into f25
la x2, scratch
li x3, 0x3e6e2464d42fd108 # load x3 with value 0x3e6e2464d42fd108
sw x3, 0(x2) # store 0x3e6e2464d42fd108 in memory
flw f27, 0(x2) # load 0x3e6e2464d42fd108 from memory into f27
fsub.s f28, f25, f27 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x15087cdfc9cd391c # load x3 with value 0x15087cdfc9cd391c
sw x3, 0(x2) # store 0x15087cdfc9cd391c in memory
flw f24, 0(x2) # load 0x15087cdfc9cd391c from memory into f24
la x2, scratch
li x3, 0xc5732bcde2f143a7 # load x3 with value 0xc5732bcde2f143a7
sw x3, 0(x2) # store 0xc5732bcde2f143a7 in memory
flw f27, 0(x2) # load 0xc5732bcde2f143a7 from memory into f27
fsub.s f29, f24, f27 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x14acf5a8f8419571 # load x3 with value 0x14acf5a8f8419571
sw x3, 0(x2) # store 0x14acf5a8f8419571 in memory
flw f3, 0(x2) # load 0x14acf5a8f8419571 from memory into f3
la x2, scratch
li x3, 0x45ab3150f37611ae # load x3 with value 0x45ab3150f37611ae
sw x3, 0(x2) # store 0x45ab3150f37611ae in memory
flw f19, 0(x2) # load 0x45ab3150f37611ae from memory into f19
fsub.s f30, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0xd58fba29095d157c # load x3 with value 0xd58fba29095d157c
sw x3, 0(x2) # store 0xd58fba29095d157c in memory
flw f8, 0(x2) # load 0xd58fba29095d157c from memory into f8
la x2, scratch
li x3, 0x90d2aade5381989d # load x3 with value 0x90d2aade5381989d
sw x3, 0(x2) # store 0x90d2aade5381989d in memory
flw f23, 0(x2) # load 0x90d2aade5381989d from memory into f23
fsub.s f31, f8, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0xd38bb83d25e05f7b # load x3 with value 0xd38bb83d25e05f7b
sw x3, 0(x2) # store 0xd38bb83d25e05f7b in memory
flw f23, 0(x2) # load 0xd38bb83d25e05f7b from memory into f23
fsub.s f9, f29, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0x8f3204013251b185 # load x3 with value 0x8f3204013251b185
sw x3, 0(x2) # store 0x8f3204013251b185 in memory
flw f29, 0(x2) # load 0x8f3204013251b185 from memory into f29
fsub.s f17, f19, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
la x2, scratch
li x3, 0x22be3441449c5c63 # load x3 with value 0x22be3441449c5c63
sw x3, 0(x2) # store 0x22be3441449c5c63 in memory
flw f2, 0(x2) # load 0x22be3441449c5c63 from memory into f2
fsub.s f1, f28, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
la x2, scratch
li x3, 0x3a5910e671192600 # load x3 with value 0x3a5910e671192600
sw x3, 0(x2) # store 0x3a5910e671192600 in memory
flw f9, 0(x2) # load 0x3a5910e671192600 from memory into f9
fsub.s f23, f27, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
la x2, scratch
li x3, 0xa9016e2637152024 # load x3 with value 0xa9016e2637152024
sw x3, 0(x2) # store 0xa9016e2637152024 in memory
flw f10, 0(x2) # load 0xa9016e2637152024 from memory into f10
fsub.s f13, f24, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
la x2, scratch
li x3, 0x624c216ebea52d78 # load x3 with value 0x624c216ebea52d78
sw x3, 0(x2) # store 0x624c216ebea52d78 in memory
flw f11, 0(x2) # load 0x624c216ebea52d78 from memory into f11
fsub.s f12, f15, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0x2b7e36711e4f55cd # load x3 with value 0x2b7e36711e4f55cd
sw x3, 0(x2) # store 0x2b7e36711e4f55cd in memory
flw f24, 0(x2) # load 0x2b7e36711e4f55cd from memory into f24
fsub.s f23, f31, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x444b6b94fa847d03 # load x3 with value 0x444b6b94fa847d03
sw x3, 0(x2) # store 0x444b6b94fa847d03 in memory
flw f1, 0(x2) # load 0x444b6b94fa847d03 from memory into f1
fsub.s f19, f16, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
la x2, scratch
li x3, 0x6bdcdb915cf2bbbb # load x3 with value 0x6bdcdb915cf2bbbb
sw x3, 0(x2) # store 0x6bdcdb915cf2bbbb in memory
flw f9, 0(x2) # load 0x6bdcdb915cf2bbbb from memory into f9
fsub.s f21, f26, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x69bda8f953b9320e # load x3 with value 0x69bda8f953b9320e
sw x3, 0(x2) # store 0x69bda8f953b9320e in memory
flw f13, 0(x2) # load 0x69bda8f953b9320e from memory into f13
fsub.s f17, f10, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x1703d1b02ce66287 # load x3 with value 0x1703d1b02ce66287
sw x3, 0(x2) # store 0x1703d1b02ce66287 in memory
flw f12, 0(x2) # load 0x1703d1b02ce66287 from memory into f12
fsub.s f9, f29, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0xacaf0acc662afa1d # load x3 with value 0xacaf0acc662afa1d
sw x3, 0(x2) # store 0xacaf0acc662afa1d in memory
flw f11, 0(x2) # load 0xacaf0acc662afa1d from memory into f11
fsub.s f8, f7, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x29bb5a0fa42dbb4a # load x3 with value 0x29bb5a0fa42dbb4a
sw x3, 0(x2) # store 0x29bb5a0fa42dbb4a in memory
flw f29, 0(x2) # load 0x29bb5a0fa42dbb4a from memory into f29
fsub.s f23, f18, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0xcd7602e7ae727366 # load x3 with value 0xcd7602e7ae727366
sw x3, 0(x2) # store 0xcd7602e7ae727366 in memory
flw f3, 0(x2) # load 0xcd7602e7ae727366 from memory into f3
fsub.s f21, f2, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
la x2, scratch
li x3, 0x2140b9915095659f # load x3 with value 0x2140b9915095659f
sw x3, 0(x2) # store 0x2140b9915095659f in memory
flw f31, 0(x2) # load 0x2140b9915095659f from memory into f31
fsub.s f1, f27, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
la x2, scratch
li x3, 0x2aa56b9a1dcb5a05 # load x3 with value 0x2aa56b9a1dcb5a05
sw x3, 0(x2) # store 0x2aa56b9a1dcb5a05 in memory
flw f2, 0(x2) # load 0x2aa56b9a1dcb5a05 from memory into f2
fsub.s f1, f15, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x2888fb69db234a51 # load x3 with value 0x2888fb69db234a51
sw x3, 0(x2) # store 0x2888fb69db234a51 in memory
flw f23, 0(x2) # load 0x2888fb69db234a51 from memory into f23
fsub.s f11, f19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
la x2, scratch
li x3, 0xfd9c0ba16b47c10b # load x3 with value 0xfd9c0ba16b47c10b
sw x3, 0(x2) # store 0xfd9c0ba16b47c10b in memory
flw f10, 0(x2) # load 0xfd9c0ba16b47c10b from memory into f10
fsub.s f29, f18, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
la x2, scratch
li x3, 0x19503bf5e3faa308 # load x3 with value 0x19503bf5e3faa308
sw x3, 0(x2) # store 0x19503bf5e3faa308 in memory
flw f27, 0(x2) # load 0x19503bf5e3faa308 from memory into f27
fsub.s f28, f10, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x1689524bc168daa3 # load x3 with value 0x1689524bc168daa3
sw x3, 0(x2) # store 0x1689524bc168daa3 in memory
flw f28, 0(x2) # load 0x1689524bc168daa3 from memory into f28
fsub.s f15, f14, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0xea0263f620b0d7b6 # load x3 with value 0xea0263f620b0d7b6
sw x3, 0(x2) # store 0xea0263f620b0d7b6 in memory
flw f18, 0(x2) # load 0xea0263f620b0d7b6 from memory into f18
fsub.s f7, f8, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
la x2, scratch
li x3, 0x12ba538408938787 # load x3 with value 0x12ba538408938787
sw x3, 0(x2) # store 0x12ba538408938787 in memory
flw f26, 0(x2) # load 0x12ba538408938787 from memory into f26
fsub.s f27, f15, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x90f2f63b3613bae8 # load x3 with value 0x90f2f63b3613bae8
sw x3, 0(x2) # store 0x90f2f63b3613bae8 in memory
flw f29, 0(x2) # load 0x90f2f63b3613bae8 from memory into f29
fsub.s f27, f1, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0x2b374a695768c1cc # load x3 with value 0x2b374a695768c1cc
sw x3, 0(x2) # store 0x2b374a695768c1cc in memory
flw f26, 0(x2) # load 0x2b374a695768c1cc from memory into f26
fsub.s f19, f23, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
la x2, scratch
li x3, 0x52e5868b279ce277 # load x3 with value 0x52e5868b279ce277
sw x3, 0(x2) # store 0x52e5868b279ce277 in memory
flw f29, 0(x2) # load 0x52e5868b279ce277 from memory into f29
fsub.s f3, f24, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
la x2, scratch
li x3, 0x4c4bc8c125f58ea1 # load x3 with value 0x4c4bc8c125f58ea1
sw x3, 0(x2) # store 0x4c4bc8c125f58ea1 in memory
flw f29, 0(x2) # load 0x4c4bc8c125f58ea1 from memory into f29
fsub.s f31, f2, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
la x2, scratch
li x3, 0x829a6d4fce3fd4ca # load x3 with value 0x829a6d4fce3fd4ca
sw x3, 0(x2) # store 0x829a6d4fce3fd4ca in memory
flw f18, 0(x2) # load 0x829a6d4fce3fd4ca from memory into f18
fsub.s f1, f25, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0x4784f9d4ca19ac16 # load x3 with value 0x4784f9d4ca19ac16
sw x3, 0(x2) # store 0x4784f9d4ca19ac16 in memory
flw f28, 0(x2) # load 0x4784f9d4ca19ac16 from memory into f28
fsub.s f16, f24, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x58cc0ff9cfcc56f9 # load x3 with value 0x58cc0ff9cfcc56f9
sw x3, 0(x2) # store 0x58cc0ff9cfcc56f9 in memory
flw f2, 0(x2) # load 0x58cc0ff9cfcc56f9 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fsub.s f26, f2, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x4d37254a9bc46ae1 # load x3 with value 0x4d37254a9bc46ae1
sw x3, 0(x2) # store 0x4d37254a9bc46ae1 in memory
flw f13, 0(x2) # load 0x4d37254a9bc46ae1 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fsub.s f10, f13, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xe4c6b95383ded60e # load x3 with value 0xe4c6b95383ded60e
sw x3, 0(x2) # store 0xe4c6b95383ded60e in memory
flw f11, 0(x2) # load 0xe4c6b95383ded60e from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fsub.s f19, f11, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x9e2de6bb76ee748f # load x3 with value 0x9e2de6bb76ee748f
sw x3, 0(x2) # store 0x9e2de6bb76ee748f in memory
flw f14, 0(x2) # load 0x9e2de6bb76ee748f from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fsub.s f15, f14, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x1644f0151f0a6c23 # load x3 with value 0x1644f0151f0a6c23
sw x3, 0(x2) # store 0x1644f0151f0a6c23 in memory
flw f26, 0(x2) # load 0x1644f0151f0a6c23 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fsub.s f25, f26, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0x3826324acb58f794 # load x3 with value 0x3826324acb58f794
sw x3, 0(x2) # store 0x3826324acb58f794 in memory
flw f13, 0(x2) # load 0x3826324acb58f794 from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fsub.s f25, f13, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x1d2592e97ea384d6 # load x3 with value 0x1d2592e97ea384d6
sw x3, 0(x2) # store 0x1d2592e97ea384d6 in memory
flw f15, 0(x2) # load 0x1d2592e97ea384d6 from memory into f15
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fsub.s f8, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x436546295ec5114c # load x3 with value 0x436546295ec5114c
sw x3, 0(x2) # store 0x436546295ec5114c in memory
flw f9, 0(x2) # load 0x436546295ec5114c from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fsub.s f23, f9, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x7d99862e2fbdd27 # load x3 with value 0x7d99862e2fbdd27
sw x3, 0(x2) # store 0x7d99862e2fbdd27 in memory
flw f8, 0(x2) # load 0x7d99862e2fbdd27 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fsub.s f2, f8, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x5bdbc015b5efc8e8 # load x3 with value 0x5bdbc015b5efc8e8
sw x3, 0(x2) # store 0x5bdbc015b5efc8e8 in memory
flw f3, 0(x2) # load 0x5bdbc015b5efc8e8 from memory into f3
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fsub.s f6, f3, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x68f0fdcf5f84433a # load x3 with value 0x68f0fdcf5f84433a
sw x3, 0(x2) # store 0x68f0fdcf5f84433a in memory
flw f15, 0(x2) # load 0x68f0fdcf5f84433a from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fsub.s f24, f15, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0xe8185e117a65ecc4 # load x3 with value 0xe8185e117a65ecc4
sw x3, 0(x2) # store 0xe8185e117a65ecc4 in memory
flw f14, 0(x2) # load 0xe8185e117a65ecc4 from memory into f14
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fsub.s f30, f14, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0xabbe1067fafbe0df # load x3 with value 0xabbe1067fafbe0df
sw x3, 0(x2) # store 0xabbe1067fafbe0df in memory
flw f5, 0(x2) # load 0xabbe1067fafbe0df from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fsub.s f25, f5, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0xead38aae9c6ca65a # load x3 with value 0xead38aae9c6ca65a
sw x3, 0(x2) # store 0xead38aae9c6ca65a in memory
flw f5, 0(x2) # load 0xead38aae9c6ca65a from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fsub.s f23, f5, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x42776597b05f5b73 # load x3 with value 0x42776597b05f5b73
sw x3, 0(x2) # store 0x42776597b05f5b73 in memory
flw f20, 0(x2) # load 0x42776597b05f5b73 from memory into f20
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fsub.s f15, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x87c4bb2ce64cbf9e # load x3 with value 0x87c4bb2ce64cbf9e
sw x3, 0(x2) # store 0x87c4bb2ce64cbf9e in memory
flw f20, 0(x2) # load 0x87c4bb2ce64cbf9e from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fsub.s f7, f20, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x108371d2479aa4d2 # load x3 with value 0x108371d2479aa4d2
sw x3, 0(x2) # store 0x108371d2479aa4d2 in memory
flw f23, 0(x2) # load 0x108371d2479aa4d2 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fsub.s f6, f23, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x4d8db1f65b6d91cc # load x3 with value 0x4d8db1f65b6d91cc
sw x3, 0(x2) # store 0x4d8db1f65b6d91cc in memory
flw f21, 0(x2) # load 0x4d8db1f65b6d91cc from memory into f21
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fsub.s f24, f21, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0xd2bc9448048858d0 # load x3 with value 0xd2bc9448048858d0
sw x3, 0(x2) # store 0xd2bc9448048858d0 in memory
flw f8, 0(x2) # load 0xd2bc9448048858d0 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fsub.s f23, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0xe921262ea1c0f1e # load x3 with value 0xe921262ea1c0f1e
sw x3, 0(x2) # store 0xe921262ea1c0f1e in memory
flw f9, 0(x2) # load 0xe921262ea1c0f1e from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fsub.s f30, f9, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0xc8cb6663fb3a31e2 # load x3 with value 0xc8cb6663fb3a31e2
sw x3, 0(x2) # store 0xc8cb6663fb3a31e2 in memory
flw f31, 0(x2) # load 0xc8cb6663fb3a31e2 from memory into f31
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fsub.s f6, f31, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0xb6f4942f40d91f91 # load x3 with value 0xb6f4942f40d91f91
sw x3, 0(x2) # store 0xb6f4942f40d91f91 in memory
flw f11, 0(x2) # load 0xb6f4942f40d91f91 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fsub.s f30, f11, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0xe6ffde707196b747 # load x3 with value 0xe6ffde707196b747
sw x3, 0(x2) # store 0xe6ffde707196b747 in memory
flw f16, 0(x2) # load 0xe6ffde707196b747 from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
fsub.s f27, f16, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0xc8fcbd29dd6098af # load x3 with value 0xc8fcbd29dd6098af
sw x3, 0(x2) # store 0xc8fcbd29dd6098af in memory
flw f29, 0(x2) # load 0xc8fcbd29dd6098af from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fsub.s f8, f29, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x68551ee5e3d80d81 # load x3 with value 0x68551ee5e3d80d81
sw x3, 0(x2) # store 0x68551ee5e3d80d81 in memory
flw f31, 0(x2) # load 0x68551ee5e3d80d81 from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fsub.s f29, f31, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0x9da94d15d59fb19f # load x3 with value 0x9da94d15d59fb19f
sw x3, 0(x2) # store 0x9da94d15d59fb19f in memory
flw f1, 0(x2) # load 0x9da94d15d59fb19f from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fsub.s f29, f1, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x10f4faa55171c348 # load x3 with value 0x10f4faa55171c348
sw x3, 0(x2) # store 0x10f4faa55171c348 in memory
flw f14, 0(x2) # load 0x10f4faa55171c348 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fsub.s f16, f14, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x29cc056a4a949179 # load x3 with value 0x29cc056a4a949179
sw x3, 0(x2) # store 0x29cc056a4a949179 in memory
flw f28, 0(x2) # load 0x29cc056a4a949179 from memory into f28
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f6, f28, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x65eecfe227a71152 # load x3 with value 0x65eecfe227a71152
sw x3, 0(x2) # store 0x65eecfe227a71152 in memory
flw f0, 0(x2) # load 0x65eecfe227a71152 from memory into f0
la x2, scratch
li x3, 0xca2d27c8e130c744 # load x3 with value 0xca2d27c8e130c744
sw x3, 0(x2) # store 0xca2d27c8e130c744 in memory
flw f25, 0(x2) # load 0xca2d27c8e130c744 from memory into f25
fsub.s f0, f0, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0xbc699af66219cbd1 # load x3 with value 0xbc699af66219cbd1
sw x3, 0(x2) # store 0xbc699af66219cbd1 in memory
flw f1, 0(x2) # load 0xbc699af66219cbd1 from memory into f1
la x2, scratch
li x3, 0xb2922dec210df8f7 # load x3 with value 0xb2922dec210df8f7
sw x3, 0(x2) # store 0xb2922dec210df8f7 in memory
flw f19, 0(x2) # load 0xb2922dec210df8f7 from memory into f19
fsub.s f1, f1, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x98c89797ccabc81d # load x3 with value 0x98c89797ccabc81d
sw x3, 0(x2) # store 0x98c89797ccabc81d in memory
flw f2, 0(x2) # load 0x98c89797ccabc81d from memory into f2
la x2, scratch
li x3, 0x9c5a552628224a4c # load x3 with value 0x9c5a552628224a4c
sw x3, 0(x2) # store 0x9c5a552628224a4c in memory
flw f17, 0(x2) # load 0x9c5a552628224a4c from memory into f17
fsub.s f2, f2, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x14cffe14c26b4ecc # load x3 with value 0x14cffe14c26b4ecc
sw x3, 0(x2) # store 0x14cffe14c26b4ecc in memory
flw f3, 0(x2) # load 0x14cffe14c26b4ecc from memory into f3
la x2, scratch
li x3, 0xac42bc558b3190c1 # load x3 with value 0xac42bc558b3190c1
sw x3, 0(x2) # store 0xac42bc558b3190c1 in memory
flw f16, 0(x2) # load 0xac42bc558b3190c1 from memory into f16
fsub.s f3, f3, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x916bca449f646c87 # load x3 with value 0x916bca449f646c87
sw x3, 0(x2) # store 0x916bca449f646c87 in memory
flw f4, 0(x2) # load 0x916bca449f646c87 from memory into f4
la x2, scratch
li x3, 0x3f8ece7d092118f # load x3 with value 0x3f8ece7d092118f
sw x3, 0(x2) # store 0x3f8ece7d092118f in memory
flw f9, 0(x2) # load 0x3f8ece7d092118f from memory into f9
fsub.s f4, f4, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x76eb11ced71af75b # load x3 with value 0x76eb11ced71af75b
sw x3, 0(x2) # store 0x76eb11ced71af75b in memory
flw f5, 0(x2) # load 0x76eb11ced71af75b from memory into f5
la x2, scratch
li x3, 0x51f3c9c835819009 # load x3 with value 0x51f3c9c835819009
sw x3, 0(x2) # store 0x51f3c9c835819009 in memory
flw f7, 0(x2) # load 0x51f3c9c835819009 from memory into f7
fsub.s f5, f5, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x38511a2657419e4d # load x3 with value 0x38511a2657419e4d
sw x3, 0(x2) # store 0x38511a2657419e4d in memory
flw f6, 0(x2) # load 0x38511a2657419e4d from memory into f6
la x2, scratch
li x3, 0x37835637e318c0a7 # load x3 with value 0x37835637e318c0a7
sw x3, 0(x2) # store 0x37835637e318c0a7 in memory
flw f20, 0(x2) # load 0x37835637e318c0a7 from memory into f20
fsub.s f6, f6, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9f1f0a0dd01eff02 # load x3 with value 0x9f1f0a0dd01eff02
sw x3, 0(x2) # store 0x9f1f0a0dd01eff02 in memory
flw f7, 0(x2) # load 0x9f1f0a0dd01eff02 from memory into f7
la x2, scratch
li x3, 0x2850eef05cffb436 # load x3 with value 0x2850eef05cffb436
sw x3, 0(x2) # store 0x2850eef05cffb436 in memory
flw f11, 0(x2) # load 0x2850eef05cffb436 from memory into f11
fsub.s f7, f7, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x642e19109fb10488 # load x3 with value 0x642e19109fb10488
sw x3, 0(x2) # store 0x642e19109fb10488 in memory
flw f8, 0(x2) # load 0x642e19109fb10488 from memory into f8
la x2, scratch
li x3, 0x32e4d82cd0c1d288 # load x3 with value 0x32e4d82cd0c1d288
sw x3, 0(x2) # store 0x32e4d82cd0c1d288 in memory
flw f17, 0(x2) # load 0x32e4d82cd0c1d288 from memory into f17
fsub.s f8, f8, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xee6e8331ca077147 # load x3 with value 0xee6e8331ca077147
sw x3, 0(x2) # store 0xee6e8331ca077147 in memory
flw f9, 0(x2) # load 0xee6e8331ca077147 from memory into f9
la x2, scratch
li x3, 0x86ff4ddfe2d55fa2 # load x3 with value 0x86ff4ddfe2d55fa2
sw x3, 0(x2) # store 0x86ff4ddfe2d55fa2 in memory
flw f23, 0(x2) # load 0x86ff4ddfe2d55fa2 from memory into f23
fsub.s f9, f9, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x7d5c69b857d8b008 # load x3 with value 0x7d5c69b857d8b008
sw x3, 0(x2) # store 0x7d5c69b857d8b008 in memory
flw f10, 0(x2) # load 0x7d5c69b857d8b008 from memory into f10
la x2, scratch
li x3, 0xcb49d06592297e05 # load x3 with value 0xcb49d06592297e05
sw x3, 0(x2) # store 0xcb49d06592297e05 in memory
flw f22, 0(x2) # load 0xcb49d06592297e05 from memory into f22
fsub.s f10, f10, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x1e9508a83b29fc20 # load x3 with value 0x1e9508a83b29fc20
sw x3, 0(x2) # store 0x1e9508a83b29fc20 in memory
flw f11, 0(x2) # load 0x1e9508a83b29fc20 from memory into f11
la x2, scratch
li x3, 0xe544b0b492244930 # load x3 with value 0xe544b0b492244930
sw x3, 0(x2) # store 0xe544b0b492244930 in memory
flw f5, 0(x2) # load 0xe544b0b492244930 from memory into f5
fsub.s f11, f11, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xeafa4d42726dbdf8 # load x3 with value 0xeafa4d42726dbdf8
sw x3, 0(x2) # store 0xeafa4d42726dbdf8 in memory
flw f12, 0(x2) # load 0xeafa4d42726dbdf8 from memory into f12
la x2, scratch
li x3, 0xb4b7d5507436c7dc # load x3 with value 0xb4b7d5507436c7dc
sw x3, 0(x2) # store 0xb4b7d5507436c7dc in memory
flw f27, 0(x2) # load 0xb4b7d5507436c7dc from memory into f27
fsub.s f12, f12, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0x4e8541f51e3ceb93 # load x3 with value 0x4e8541f51e3ceb93
sw x3, 0(x2) # store 0x4e8541f51e3ceb93 in memory
flw f13, 0(x2) # load 0x4e8541f51e3ceb93 from memory into f13
la x2, scratch
li x3, 0x6063f345cd033db1 # load x3 with value 0x6063f345cd033db1
sw x3, 0(x2) # store 0x6063f345cd033db1 in memory
flw f28, 0(x2) # load 0x6063f345cd033db1 from memory into f28
fsub.s f13, f13, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x6d4f95164b4941ac # load x3 with value 0x6d4f95164b4941ac
sw x3, 0(x2) # store 0x6d4f95164b4941ac in memory
flw f14, 0(x2) # load 0x6d4f95164b4941ac from memory into f14
la x2, scratch
li x3, 0x8d5465ae8c17e4bf # load x3 with value 0x8d5465ae8c17e4bf
sw x3, 0(x2) # store 0x8d5465ae8c17e4bf in memory
flw f29, 0(x2) # load 0x8d5465ae8c17e4bf from memory into f29
fsub.s f14, f14, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0xa728b24d12c708d0 # load x3 with value 0xa728b24d12c708d0
sw x3, 0(x2) # store 0xa728b24d12c708d0 in memory
flw f15, 0(x2) # load 0xa728b24d12c708d0 from memory into f15
la x2, scratch
li x3, 0x90af7ed90c12469e # load x3 with value 0x90af7ed90c12469e
sw x3, 0(x2) # store 0x90af7ed90c12469e in memory
flw f25, 0(x2) # load 0x90af7ed90c12469e from memory into f25
fsub.s f15, f15, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x8d959986d0713dfe # load x3 with value 0x8d959986d0713dfe
sw x3, 0(x2) # store 0x8d959986d0713dfe in memory
flw f16, 0(x2) # load 0x8d959986d0713dfe from memory into f16
la x2, scratch
li x3, 0xae3dcfc7a0f18ff9 # load x3 with value 0xae3dcfc7a0f18ff9
sw x3, 0(x2) # store 0xae3dcfc7a0f18ff9 in memory
flw f1, 0(x2) # load 0xae3dcfc7a0f18ff9 from memory into f1
fsub.s f16, f16, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0xf1e948f0df579ea # load x3 with value 0xf1e948f0df579ea
sw x3, 0(x2) # store 0xf1e948f0df579ea in memory
flw f17, 0(x2) # load 0xf1e948f0df579ea from memory into f17
la x2, scratch
li x3, 0x7d9c7407b584e688 # load x3 with value 0x7d9c7407b584e688
sw x3, 0(x2) # store 0x7d9c7407b584e688 in memory
flw f15, 0(x2) # load 0x7d9c7407b584e688 from memory into f15
fsub.s f17, f17, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x49d26254bfd342da # load x3 with value 0x49d26254bfd342da
sw x3, 0(x2) # store 0x49d26254bfd342da in memory
flw f18, 0(x2) # load 0x49d26254bfd342da from memory into f18
la x2, scratch
li x3, 0x403cde1c38c2aa40 # load x3 with value 0x403cde1c38c2aa40
sw x3, 0(x2) # store 0x403cde1c38c2aa40 in memory
flw f8, 0(x2) # load 0x403cde1c38c2aa40 from memory into f8
fsub.s f18, f18, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0xc34d7d610530206c # load x3 with value 0xc34d7d610530206c
sw x3, 0(x2) # store 0xc34d7d610530206c in memory
flw f19, 0(x2) # load 0xc34d7d610530206c from memory into f19
la x2, scratch
li x3, 0x2671fb9bec93b213 # load x3 with value 0x2671fb9bec93b213
sw x3, 0(x2) # store 0x2671fb9bec93b213 in memory
flw f9, 0(x2) # load 0x2671fb9bec93b213 from memory into f9
fsub.s f19, f19, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x75b7c8bf4d77d355 # load x3 with value 0x75b7c8bf4d77d355
sw x3, 0(x2) # store 0x75b7c8bf4d77d355 in memory
flw f20, 0(x2) # load 0x75b7c8bf4d77d355 from memory into f20
la x2, scratch
li x3, 0x172c2a547ad9f99c # load x3 with value 0x172c2a547ad9f99c
sw x3, 0(x2) # store 0x172c2a547ad9f99c in memory
flw f28, 0(x2) # load 0x172c2a547ad9f99c from memory into f28
fsub.s f20, f20, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xb89733165703e80 # load x3 with value 0xb89733165703e80
sw x3, 0(x2) # store 0xb89733165703e80 in memory
flw f21, 0(x2) # load 0xb89733165703e80 from memory into f21
la x2, scratch
li x3, 0x3ae2335ffc10bcea # load x3 with value 0x3ae2335ffc10bcea
sw x3, 0(x2) # store 0x3ae2335ffc10bcea in memory
flw f30, 0(x2) # load 0x3ae2335ffc10bcea from memory into f30
fsub.s f21, f21, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x232178ccda4b1857 # load x3 with value 0x232178ccda4b1857
sw x3, 0(x2) # store 0x232178ccda4b1857 in memory
flw f22, 0(x2) # load 0x232178ccda4b1857 from memory into f22
la x2, scratch
li x3, 0x36c89b25495fd830 # load x3 with value 0x36c89b25495fd830
sw x3, 0(x2) # store 0x36c89b25495fd830 in memory
flw f11, 0(x2) # load 0x36c89b25495fd830 from memory into f11
fsub.s f22, f22, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0xc1147ce80afe2ec5 # load x3 with value 0xc1147ce80afe2ec5
sw x3, 0(x2) # store 0xc1147ce80afe2ec5 in memory
flw f23, 0(x2) # load 0xc1147ce80afe2ec5 from memory into f23
la x2, scratch
li x3, 0x2c9211842cb671f8 # load x3 with value 0x2c9211842cb671f8
sw x3, 0(x2) # store 0x2c9211842cb671f8 in memory
flw f25, 0(x2) # load 0x2c9211842cb671f8 from memory into f25
fsub.s f23, f23, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x569ecc4bea6bcc6f # load x3 with value 0x569ecc4bea6bcc6f
sw x3, 0(x2) # store 0x569ecc4bea6bcc6f in memory
flw f24, 0(x2) # load 0x569ecc4bea6bcc6f from memory into f24
la x2, scratch
li x3, 0x6ea6025d645ab887 # load x3 with value 0x6ea6025d645ab887
sw x3, 0(x2) # store 0x6ea6025d645ab887 in memory
flw f31, 0(x2) # load 0x6ea6025d645ab887 from memory into f31
fsub.s f24, f24, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0xf533e0ba24792350 # load x3 with value 0xf533e0ba24792350
sw x3, 0(x2) # store 0xf533e0ba24792350 in memory
flw f25, 0(x2) # load 0xf533e0ba24792350 from memory into f25
la x2, scratch
li x3, 0x6904c48c76c7ad8f # load x3 with value 0x6904c48c76c7ad8f
sw x3, 0(x2) # store 0x6904c48c76c7ad8f in memory
flw f13, 0(x2) # load 0x6904c48c76c7ad8f from memory into f13
fsub.s f25, f25, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0xf2307919bdeb9703 # load x3 with value 0xf2307919bdeb9703
sw x3, 0(x2) # store 0xf2307919bdeb9703 in memory
flw f26, 0(x2) # load 0xf2307919bdeb9703 from memory into f26
la x2, scratch
li x3, 0xf72278d700d9b8b # load x3 with value 0xf72278d700d9b8b
sw x3, 0(x2) # store 0xf72278d700d9b8b in memory
flw f17, 0(x2) # load 0xf72278d700d9b8b from memory into f17
fsub.s f26, f26, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0xf739c9a4f37ff895 # load x3 with value 0xf739c9a4f37ff895
sw x3, 0(x2) # store 0xf739c9a4f37ff895 in memory
flw f27, 0(x2) # load 0xf739c9a4f37ff895 from memory into f27
la x2, scratch
li x3, 0x17310a51ac0be7e2 # load x3 with value 0x17310a51ac0be7e2
sw x3, 0(x2) # store 0x17310a51ac0be7e2 in memory
flw f11, 0(x2) # load 0x17310a51ac0be7e2 from memory into f11
fsub.s f27, f27, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x2631aa557cb61c1a # load x3 with value 0x2631aa557cb61c1a
sw x3, 0(x2) # store 0x2631aa557cb61c1a in memory
flw f28, 0(x2) # load 0x2631aa557cb61c1a from memory into f28
la x2, scratch
li x3, 0x7e20f18b7a7af91a # load x3 with value 0x7e20f18b7a7af91a
sw x3, 0(x2) # store 0x7e20f18b7a7af91a in memory
flw f9, 0(x2) # load 0x7e20f18b7a7af91a from memory into f9
fsub.s f28, f28, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xaf80556ecc7dd7a4 # load x3 with value 0xaf80556ecc7dd7a4
sw x3, 0(x2) # store 0xaf80556ecc7dd7a4 in memory
flw f29, 0(x2) # load 0xaf80556ecc7dd7a4 from memory into f29
la x2, scratch
li x3, 0x8bfa9fb356d94aa # load x3 with value 0x8bfa9fb356d94aa
sw x3, 0(x2) # store 0x8bfa9fb356d94aa in memory
flw f15, 0(x2) # load 0x8bfa9fb356d94aa from memory into f15
fsub.s f29, f29, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xe5877b6c9519844b # load x3 with value 0xe5877b6c9519844b
sw x3, 0(x2) # store 0xe5877b6c9519844b in memory
flw f30, 0(x2) # load 0xe5877b6c9519844b from memory into f30
la x2, scratch
li x3, 0xac98ad0c2ba2bfaa # load x3 with value 0xac98ad0c2ba2bfaa
sw x3, 0(x2) # store 0xac98ad0c2ba2bfaa in memory
flw f5, 0(x2) # load 0xac98ad0c2ba2bfaa from memory into f5
fsub.s f30, f30, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x359037dcc4b25a09 # load x3 with value 0x359037dcc4b25a09
sw x3, 0(x2) # store 0x359037dcc4b25a09 in memory
flw f31, 0(x2) # load 0x359037dcc4b25a09 from memory into f31
la x2, scratch
li x3, 0x30b6e39e6c3b34bf # load x3 with value 0x30b6e39e6c3b34bf
sw x3, 0(x2) # store 0x30b6e39e6c3b34bf in memory
flw f18, 0(x2) # load 0x30b6e39e6c3b34bf from memory into f18
fsub.s f31, f31, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x8a73870d9d438a55 # load x3 with value 0x8a73870d9d438a55
sw x3, 0(x2) # store 0x8a73870d9d438a55 in memory
flw f3, 0(x2) # load 0x8a73870d9d438a55 from memory into f3
la x2, scratch
li x3, 0x54da180bbb484171 # load x3 with value 0x54da180bbb484171
sw x3, 0(x2) # store 0x54da180bbb484171 in memory
flw f0, 0(x2) # load 0x54da180bbb484171 from memory into f0
fsub.s f0, f3, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x4fbbf99d818bd568 # load x3 with value 0x4fbbf99d818bd568
sw x3, 0(x2) # store 0x4fbbf99d818bd568 in memory
flw f20, 0(x2) # load 0x4fbbf99d818bd568 from memory into f20
la x2, scratch
li x3, 0x39e22ae039558657 # load x3 with value 0x39e22ae039558657
sw x3, 0(x2) # store 0x39e22ae039558657 in memory
flw f1, 0(x2) # load 0x39e22ae039558657 from memory into f1
fsub.s f1, f20, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0xf3eaed69001d7707 # load x3 with value 0xf3eaed69001d7707
sw x3, 0(x2) # store 0xf3eaed69001d7707 in memory
flw f14, 0(x2) # load 0xf3eaed69001d7707 from memory into f14
la x2, scratch
li x3, 0x1266515260af6960 # load x3 with value 0x1266515260af6960
sw x3, 0(x2) # store 0x1266515260af6960 in memory
flw f2, 0(x2) # load 0x1266515260af6960 from memory into f2
fsub.s f2, f14, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0xc4ac5ce030558a51 # load x3 with value 0xc4ac5ce030558a51
sw x3, 0(x2) # store 0xc4ac5ce030558a51 in memory
flw f13, 0(x2) # load 0xc4ac5ce030558a51 from memory into f13
la x2, scratch
li x3, 0xf0ebb90108ede1ea # load x3 with value 0xf0ebb90108ede1ea
sw x3, 0(x2) # store 0xf0ebb90108ede1ea in memory
flw f3, 0(x2) # load 0xf0ebb90108ede1ea from memory into f3
fsub.s f3, f13, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x10b958bebb0c6ba4 # load x3 with value 0x10b958bebb0c6ba4
sw x3, 0(x2) # store 0x10b958bebb0c6ba4 in memory
flw f26, 0(x2) # load 0x10b958bebb0c6ba4 from memory into f26
la x2, scratch
li x3, 0x8fbcb83917049c4d # load x3 with value 0x8fbcb83917049c4d
sw x3, 0(x2) # store 0x8fbcb83917049c4d in memory
flw f4, 0(x2) # load 0x8fbcb83917049c4d from memory into f4
fsub.s f4, f26, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3433b6aea0297e10 # load x3 with value 0x3433b6aea0297e10
sw x3, 0(x2) # store 0x3433b6aea0297e10 in memory
flw f24, 0(x2) # load 0x3433b6aea0297e10 from memory into f24
la x2, scratch
li x3, 0x6326084a14522316 # load x3 with value 0x6326084a14522316
sw x3, 0(x2) # store 0x6326084a14522316 in memory
flw f5, 0(x2) # load 0x6326084a14522316 from memory into f5
fsub.s f5, f24, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xba3e831e8b86eacc # load x3 with value 0xba3e831e8b86eacc
sw x3, 0(x2) # store 0xba3e831e8b86eacc in memory
flw f8, 0(x2) # load 0xba3e831e8b86eacc from memory into f8
la x2, scratch
li x3, 0xdead4901c46ca750 # load x3 with value 0xdead4901c46ca750
sw x3, 0(x2) # store 0xdead4901c46ca750 in memory
flw f6, 0(x2) # load 0xdead4901c46ca750 from memory into f6
fsub.s f6, f8, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd8119094a86bbbc6 # load x3 with value 0xd8119094a86bbbc6
sw x3, 0(x2) # store 0xd8119094a86bbbc6 in memory
flw f15, 0(x2) # load 0xd8119094a86bbbc6 from memory into f15
la x2, scratch
li x3, 0x6ea5c71f7f7d990a # load x3 with value 0x6ea5c71f7f7d990a
sw x3, 0(x2) # store 0x6ea5c71f7f7d990a in memory
flw f7, 0(x2) # load 0x6ea5c71f7f7d990a from memory into f7
fsub.s f7, f15, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0xa38c02afcf472462 # load x3 with value 0xa38c02afcf472462
sw x3, 0(x2) # store 0xa38c02afcf472462 in memory
flw f24, 0(x2) # load 0xa38c02afcf472462 from memory into f24
la x2, scratch
li x3, 0xef7684afe484ca8c # load x3 with value 0xef7684afe484ca8c
sw x3, 0(x2) # store 0xef7684afe484ca8c in memory
flw f8, 0(x2) # load 0xef7684afe484ca8c from memory into f8
fsub.s f8, f24, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x57f5f5c0948be2f4 # load x3 with value 0x57f5f5c0948be2f4
sw x3, 0(x2) # store 0x57f5f5c0948be2f4 in memory
flw f14, 0(x2) # load 0x57f5f5c0948be2f4 from memory into f14
la x2, scratch
li x3, 0x2f44a927a4fa07d7 # load x3 with value 0x2f44a927a4fa07d7
sw x3, 0(x2) # store 0x2f44a927a4fa07d7 in memory
flw f9, 0(x2) # load 0x2f44a927a4fa07d7 from memory into f9
fsub.s f9, f14, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xce75128f15bb0088 # load x3 with value 0xce75128f15bb0088
sw x3, 0(x2) # store 0xce75128f15bb0088 in memory
flw f26, 0(x2) # load 0xce75128f15bb0088 from memory into f26
la x2, scratch
li x3, 0xb7404a664469f863 # load x3 with value 0xb7404a664469f863
sw x3, 0(x2) # store 0xb7404a664469f863 in memory
flw f10, 0(x2) # load 0xb7404a664469f863 from memory into f10
fsub.s f10, f26, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xb531496a9673f1cf # load x3 with value 0xb531496a9673f1cf
sw x3, 0(x2) # store 0xb531496a9673f1cf in memory
flw f27, 0(x2) # load 0xb531496a9673f1cf from memory into f27
la x2, scratch
li x3, 0x31ee191145e75da # load x3 with value 0x31ee191145e75da
sw x3, 0(x2) # store 0x31ee191145e75da in memory
flw f11, 0(x2) # load 0x31ee191145e75da from memory into f11
fsub.s f11, f27, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x53efcf98f95317e1 # load x3 with value 0x53efcf98f95317e1
sw x3, 0(x2) # store 0x53efcf98f95317e1 in memory
flw f23, 0(x2) # load 0x53efcf98f95317e1 from memory into f23
la x2, scratch
li x3, 0xb3c124f94d2b72fb # load x3 with value 0xb3c124f94d2b72fb
sw x3, 0(x2) # store 0xb3c124f94d2b72fb in memory
flw f12, 0(x2) # load 0xb3c124f94d2b72fb from memory into f12
fsub.s f12, f23, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0xe0ace2c459bc9c96 # load x3 with value 0xe0ace2c459bc9c96
sw x3, 0(x2) # store 0xe0ace2c459bc9c96 in memory
flw f19, 0(x2) # load 0xe0ace2c459bc9c96 from memory into f19
la x2, scratch
li x3, 0x133f6c578bf10c24 # load x3 with value 0x133f6c578bf10c24
sw x3, 0(x2) # store 0x133f6c578bf10c24 in memory
flw f13, 0(x2) # load 0x133f6c578bf10c24 from memory into f13
fsub.s f13, f19, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xdfc374b9d1d95688 # load x3 with value 0xdfc374b9d1d95688
sw x3, 0(x2) # store 0xdfc374b9d1d95688 in memory
flw f26, 0(x2) # load 0xdfc374b9d1d95688 from memory into f26
la x2, scratch
li x3, 0x7fa3678af5c2d11c # load x3 with value 0x7fa3678af5c2d11c
sw x3, 0(x2) # store 0x7fa3678af5c2d11c in memory
flw f14, 0(x2) # load 0x7fa3678af5c2d11c from memory into f14
fsub.s f14, f26, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x594cf0bbf2ea6e27 # load x3 with value 0x594cf0bbf2ea6e27
sw x3, 0(x2) # store 0x594cf0bbf2ea6e27 in memory
flw f12, 0(x2) # load 0x594cf0bbf2ea6e27 from memory into f12
la x2, scratch
li x3, 0x4a3027d6c9cef198 # load x3 with value 0x4a3027d6c9cef198
sw x3, 0(x2) # store 0x4a3027d6c9cef198 in memory
flw f15, 0(x2) # load 0x4a3027d6c9cef198 from memory into f15
fsub.s f15, f12, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x752cc610e36d48ea # load x3 with value 0x752cc610e36d48ea
sw x3, 0(x2) # store 0x752cc610e36d48ea in memory
flw f1, 0(x2) # load 0x752cc610e36d48ea from memory into f1
la x2, scratch
li x3, 0x2bd1543349219f8b # load x3 with value 0x2bd1543349219f8b
sw x3, 0(x2) # store 0x2bd1543349219f8b in memory
flw f16, 0(x2) # load 0x2bd1543349219f8b from memory into f16
fsub.s f16, f1, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0xd3fec3da0be711f4 # load x3 with value 0xd3fec3da0be711f4
sw x3, 0(x2) # store 0xd3fec3da0be711f4 in memory
flw f31, 0(x2) # load 0xd3fec3da0be711f4 from memory into f31
la x2, scratch
li x3, 0xabaf059c24c1cf94 # load x3 with value 0xabaf059c24c1cf94
sw x3, 0(x2) # store 0xabaf059c24c1cf94 in memory
flw f17, 0(x2) # load 0xabaf059c24c1cf94 from memory into f17
fsub.s f17, f31, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0xc67e5adb9802f136 # load x3 with value 0xc67e5adb9802f136
sw x3, 0(x2) # store 0xc67e5adb9802f136 in memory
flw f31, 0(x2) # load 0xc67e5adb9802f136 from memory into f31
la x2, scratch
li x3, 0xeee8bdea63502113 # load x3 with value 0xeee8bdea63502113
sw x3, 0(x2) # store 0xeee8bdea63502113 in memory
flw f18, 0(x2) # load 0xeee8bdea63502113 from memory into f18
fsub.s f18, f31, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x6f7e3ccc4520638c # load x3 with value 0x6f7e3ccc4520638c
sw x3, 0(x2) # store 0x6f7e3ccc4520638c in memory
flw f25, 0(x2) # load 0x6f7e3ccc4520638c from memory into f25
la x2, scratch
li x3, 0x323410a1157f1455 # load x3 with value 0x323410a1157f1455
sw x3, 0(x2) # store 0x323410a1157f1455 in memory
flw f19, 0(x2) # load 0x323410a1157f1455 from memory into f19
fsub.s f19, f25, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0xa2071a70957699b7 # load x3 with value 0xa2071a70957699b7
sw x3, 0(x2) # store 0xa2071a70957699b7 in memory
flw f28, 0(x2) # load 0xa2071a70957699b7 from memory into f28
la x2, scratch
li x3, 0x5f7f136bff48ba9c # load x3 with value 0x5f7f136bff48ba9c
sw x3, 0(x2) # store 0x5f7f136bff48ba9c in memory
flw f20, 0(x2) # load 0x5f7f136bff48ba9c from memory into f20
fsub.s f20, f28, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x83fb34bc5e491c71 # load x3 with value 0x83fb34bc5e491c71
sw x3, 0(x2) # store 0x83fb34bc5e491c71 in memory
flw f29, 0(x2) # load 0x83fb34bc5e491c71 from memory into f29
la x2, scratch
li x3, 0x1897fafc85f21f13 # load x3 with value 0x1897fafc85f21f13
sw x3, 0(x2) # store 0x1897fafc85f21f13 in memory
flw f21, 0(x2) # load 0x1897fafc85f21f13 from memory into f21
fsub.s f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x99a8aa4601838c1f # load x3 with value 0x99a8aa4601838c1f
sw x3, 0(x2) # store 0x99a8aa4601838c1f in memory
flw f10, 0(x2) # load 0x99a8aa4601838c1f from memory into f10
la x2, scratch
li x3, 0xd7bc4731eeb24ca1 # load x3 with value 0xd7bc4731eeb24ca1
sw x3, 0(x2) # store 0xd7bc4731eeb24ca1 in memory
flw f22, 0(x2) # load 0xd7bc4731eeb24ca1 from memory into f22
fsub.s f22, f10, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xc017781f83af5ebc # load x3 with value 0xc017781f83af5ebc
sw x3, 0(x2) # store 0xc017781f83af5ebc in memory
flw f13, 0(x2) # load 0xc017781f83af5ebc from memory into f13
la x2, scratch
li x3, 0x6c6a0eeb713ae266 # load x3 with value 0x6c6a0eeb713ae266
sw x3, 0(x2) # store 0x6c6a0eeb713ae266 in memory
flw f23, 0(x2) # load 0x6c6a0eeb713ae266 from memory into f23
fsub.s f23, f13, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x67e3f3746c2c727f # load x3 with value 0x67e3f3746c2c727f
sw x3, 0(x2) # store 0x67e3f3746c2c727f in memory
flw f8, 0(x2) # load 0x67e3f3746c2c727f from memory into f8
la x2, scratch
li x3, 0xea8c99bed799a704 # load x3 with value 0xea8c99bed799a704
sw x3, 0(x2) # store 0xea8c99bed799a704 in memory
flw f24, 0(x2) # load 0xea8c99bed799a704 from memory into f24
fsub.s f24, f8, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x365528a177266515 # load x3 with value 0x365528a177266515
sw x3, 0(x2) # store 0x365528a177266515 in memory
flw f17, 0(x2) # load 0x365528a177266515 from memory into f17
la x2, scratch
li x3, 0xe4df34132623c8d0 # load x3 with value 0xe4df34132623c8d0
sw x3, 0(x2) # store 0xe4df34132623c8d0 in memory
flw f25, 0(x2) # load 0xe4df34132623c8d0 from memory into f25
fsub.s f25, f17, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0xe0e5257806781927 # load x3 with value 0xe0e5257806781927
sw x3, 0(x2) # store 0xe0e5257806781927 in memory
flw f19, 0(x2) # load 0xe0e5257806781927 from memory into f19
la x2, scratch
li x3, 0xec6745b2f1376601 # load x3 with value 0xec6745b2f1376601
sw x3, 0(x2) # store 0xec6745b2f1376601 in memory
flw f26, 0(x2) # load 0xec6745b2f1376601 from memory into f26
fsub.s f26, f19, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x17a4d388331b903c # load x3 with value 0x17a4d388331b903c
sw x3, 0(x2) # store 0x17a4d388331b903c in memory
flw f3, 0(x2) # load 0x17a4d388331b903c from memory into f3
la x2, scratch
li x3, 0x47e39b6ef7892516 # load x3 with value 0x47e39b6ef7892516
sw x3, 0(x2) # store 0x47e39b6ef7892516 in memory
flw f27, 0(x2) # load 0x47e39b6ef7892516 from memory into f27
fsub.s f27, f3, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0xdbe5a5f4545a1c8 # load x3 with value 0xdbe5a5f4545a1c8
sw x3, 0(x2) # store 0xdbe5a5f4545a1c8 in memory
flw f10, 0(x2) # load 0xdbe5a5f4545a1c8 from memory into f10
la x2, scratch
li x3, 0xad105b59f7f42cba # load x3 with value 0xad105b59f7f42cba
sw x3, 0(x2) # store 0xad105b59f7f42cba in memory
flw f28, 0(x2) # load 0xad105b59f7f42cba from memory into f28
fsub.s f28, f10, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x911d267e89ff6422 # load x3 with value 0x911d267e89ff6422
sw x3, 0(x2) # store 0x911d267e89ff6422 in memory
flw f31, 0(x2) # load 0x911d267e89ff6422 from memory into f31
la x2, scratch
li x3, 0x5e89c885891fbc13 # load x3 with value 0x5e89c885891fbc13
sw x3, 0(x2) # store 0x5e89c885891fbc13 in memory
flw f29, 0(x2) # load 0x5e89c885891fbc13 from memory into f29
fsub.s f29, f31, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x8f1b87cbbcb8aa3f # load x3 with value 0x8f1b87cbbcb8aa3f
sw x3, 0(x2) # store 0x8f1b87cbbcb8aa3f in memory
flw f26, 0(x2) # load 0x8f1b87cbbcb8aa3f from memory into f26
la x2, scratch
li x3, 0x2d6e2bded7da5a28 # load x3 with value 0x2d6e2bded7da5a28
sw x3, 0(x2) # store 0x2d6e2bded7da5a28 in memory
flw f30, 0(x2) # load 0x2d6e2bded7da5a28 from memory into f30
fsub.s f30, f26, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x5e4b5c0f650808b2 # load x3 with value 0x5e4b5c0f650808b2
sw x3, 0(x2) # store 0x5e4b5c0f650808b2 in memory
flw f29, 0(x2) # load 0x5e4b5c0f650808b2 from memory into f29
la x2, scratch
li x3, 0x23f7f4ef3b028e04 # load x3 with value 0x23f7f4ef3b028e04
sw x3, 0(x2) # store 0x23f7f4ef3b028e04 in memory
flw f31, 0(x2) # load 0x23f7f4ef3b028e04 from memory into f31
fsub.s f31, f29, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x7f1974fc8e368299 # load x3 with value 0x7f1974fc8e368299
sw x3, 0(x2) # store 0x7f1974fc8e368299 in memory
flw f18, 0(x2) # load 0x7f1974fc8e368299 from memory into f18
la x2, scratch
li x3, 0x9831462f39aa51e0 # load x3 with value 0x9831462f39aa51e0
sw x3, 0(x2) # store 0x9831462f39aa51e0 in memory
flw f31, 0(x2) # load 0x9831462f39aa51e0 from memory into f31
fsub.s f22, f18, f31, dyn # perform operation
fsub.s f22, f18, f31, rdn # perform operation
fsub.s f22, f18, f31, rmm # perform operation
fsub.s f22, f18, f31, rne # perform operation
fsub.s f22, f18, f31, rtz # perform operation
fsub.s f22, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fsub.s f7, f9, f14, dyn # perform operation
fsub.s f7, f9, f14, rdn # perform operation
fsub.s f7, f9, f14, rmm # perform operation
fsub.s f7, f9, f14, rne # perform operation
fsub.s f7, f9, f14, rtz # perform operation
fsub.s f7, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fsub.s f27, f30, f19, dyn # perform operation
fsub.s f27, f30, f19, rdn # perform operation
fsub.s f27, f30, f19, rmm # perform operation
fsub.s f27, f30, f19, rne # perform operation
fsub.s f27, f30, f19, rtz # perform operation
fsub.s f27, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fsub.s f18, f13, f8, dyn # perform operation
fsub.s f18, f13, f8, rdn # perform operation
fsub.s f18, f13, f8, rmm # perform operation
fsub.s f18, f13, f8, rne # perform operation
fsub.s f18, f13, f8, rtz # perform operation
fsub.s f18, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fsub.s f19, f31, f8, dyn # perform operation
fsub.s f19, f31, f8, rdn # perform operation
fsub.s f19, f31, f8, rmm # perform operation
fsub.s f19, f31, f8, rne # perform operation
fsub.s f19, f31, f8, rtz # perform operation
fsub.s f19, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fsub.s f10, f17, f11, dyn # perform operation
fsub.s f10, f17, f11, rdn # perform operation
fsub.s f10, f17, f11, rmm # perform operation
fsub.s f10, f17, f11, rne # perform operation
fsub.s f10, f17, f11, rtz # perform operation
fsub.s f10, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f9, f1, f10, dyn # perform operation
fsub.s f9, f1, f10, rdn # perform operation
fsub.s f9, f1, f10, rmm # perform operation
fsub.s f9, f1, f10, rne # perform operation
fsub.s f9, f1, f10, rtz # perform operation
fsub.s f9, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f21, f16, f9, dyn # perform operation
fsub.s f21, f16, f9, rdn # perform operation
fsub.s f21, f16, f9, rmm # perform operation
fsub.s f21, f16, f9, rne # perform operation
fsub.s f21, f16, f9, rtz # perform operation
fsub.s f21, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fsub.s f10, f30, f2, dyn # perform operation
fsub.s f10, f30, f2, rdn # perform operation
fsub.s f10, f30, f2, rmm # perform operation
fsub.s f10, f30, f2, rne # perform operation
fsub.s f10, f30, f2, rtz # perform operation
fsub.s f10, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fsub.s f19, f13, f21, dyn # perform operation
fsub.s f19, f13, f21, rdn # perform operation
fsub.s f19, f13, f21, rmm # perform operation
fsub.s f19, f13, f21, rne # perform operation
fsub.s f19, f13, f21, rtz # perform operation
fsub.s f19, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fsub.s f16, f15, f24, dyn # perform operation
fsub.s f16, f15, f24, rdn # perform operation
fsub.s f16, f15, f24, rmm # perform operation
fsub.s f16, f15, f24, rne # perform operation
fsub.s f16, f15, f24, rtz # perform operation
fsub.s f16, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fsub.s f30, f19, f17, dyn # perform operation
fsub.s f30, f19, f17, rdn # perform operation
fsub.s f30, f19, f17, rmm # perform operation
fsub.s f30, f19, f17, rne # perform operation
fsub.s f30, f19, f17, rtz # perform operation
fsub.s f30, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fsub.s f9, f22, f17, dyn # perform operation
fsub.s f9, f22, f17, rdn # perform operation
fsub.s f9, f22, f17, rmm # perform operation
fsub.s f9, f22, f17, rne # perform operation
fsub.s f9, f22, f17, rtz # perform operation
fsub.s f9, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fsub.s f10, f5, f12, dyn # perform operation
fsub.s f10, f5, f12, rdn # perform operation
fsub.s f10, f5, f12, rmm # perform operation
fsub.s f10, f5, f12, rne # perform operation
fsub.s f10, f5, f12, rtz # perform operation
fsub.s f10, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fsub.s f15, f25, f31, dyn # perform operation
fsub.s f15, f25, f31, rdn # perform operation
fsub.s f15, f25, f31, rmm # perform operation
fsub.s f15, f25, f31, rne # perform operation
fsub.s f15, f25, f31, rtz # perform operation
fsub.s f15, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fsub.s f29, f19, f17, dyn # perform operation
fsub.s f29, f19, f17, rdn # perform operation
fsub.s f29, f19, f17, rmm # perform operation
fsub.s f29, f19, f17, rne # perform operation
fsub.s f29, f19, f17, rtz # perform operation
fsub.s f29, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fsub.s f23, f26, f28, dyn # perform operation
fsub.s f23, f26, f28, rdn # perform operation
fsub.s f23, f26, f28, rmm # perform operation
fsub.s f23, f26, f28, rne # perform operation
fsub.s f23, f26, f28, rtz # perform operation
fsub.s f23, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fsub.s f5, f17, f19, dyn # perform operation
fsub.s f5, f17, f19, rdn # perform operation
fsub.s f5, f17, f19, rmm # perform operation
fsub.s f5, f17, f19, rne # perform operation
fsub.s f5, f17, f19, rtz # perform operation
fsub.s f5, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fsub.s f10, f2, f31, dyn # perform operation
fsub.s f10, f2, f31, rdn # perform operation
fsub.s f10, f2, f31, rmm # perform operation
fsub.s f10, f2, f31, rne # perform operation
fsub.s f10, f2, f31, rtz # perform operation
fsub.s f10, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fsub.s f28, f6, f23, dyn # perform operation
fsub.s f28, f6, f23, rdn # perform operation
fsub.s f28, f6, f23, rmm # perform operation
fsub.s f28, f6, f23, rne # perform operation
fsub.s f28, f6, f23, rtz # perform operation
fsub.s f28, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f8, f23, f20, dyn # perform operation
fsub.s f8, f23, f20, rdn # perform operation
fsub.s f8, f23, f20, rmm # perform operation
fsub.s f8, f23, f20, rne # perform operation
fsub.s f8, f23, f20, rtz # perform operation
fsub.s f8, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fsub.s f26, f16, f29, dyn # perform operation
fsub.s f26, f16, f29, rdn # perform operation
fsub.s f26, f16, f29, rmm # perform operation
fsub.s f26, f16, f29, rne # perform operation
fsub.s f26, f16, f29, rtz # perform operation
fsub.s f26, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fsub.s f25, f9, f31, dyn # perform operation
fsub.s f25, f9, f31, rdn # perform operation
fsub.s f25, f9, f31, rmm # perform operation
fsub.s f25, f9, f31, rne # perform operation
fsub.s f25, f9, f31, rtz # perform operation
fsub.s f25, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f29, 0(x2) # load 0xffffffff from memory into f29
fsub.s f15, f20, f29, dyn # perform operation
fsub.s f15, f20, f29, rdn # perform operation
fsub.s f15, f20, f29, rmm # perform operation
fsub.s f15, f20, f29, rne # perform operation
fsub.s f15, f20, f29, rtz # perform operation
fsub.s f15, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fsub.s f22, f18, f12, dyn # perform operation
fsub.s f22, f18, f12, rdn # perform operation
fsub.s f22, f18, f12, rmm # perform operation
fsub.s f22, f18, f12, rne # perform operation
fsub.s f22, f18, f12, rtz # perform operation
fsub.s f22, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fsub.s f11, f22, f10, dyn # perform operation
fsub.s f11, f22, f10, rdn # perform operation
fsub.s f11, f22, f10, rmm # perform operation
fsub.s f11, f22, f10, rne # perform operation
fsub.s f11, f22, f10, rtz # perform operation
fsub.s f11, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
fsub.s f11, f31, f16, dyn # perform operation
fsub.s f11, f31, f16, rdn # perform operation
fsub.s f11, f31, f16, rmm # perform operation
fsub.s f11, f31, f16, rne # perform operation
fsub.s f11, f31, f16, rtz # perform operation
fsub.s f11, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fsub.s f23, f19, f14, dyn # perform operation
fsub.s f23, f19, f14, rdn # perform operation
fsub.s f23, f19, f14, rmm # perform operation
fsub.s f23, f19, f14, rne # perform operation
fsub.s f23, f19, f14, rtz # perform operation
fsub.s f23, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fsub.s f19, f14, f26, dyn # perform operation
fsub.s f19, f14, f26, rdn # perform operation
fsub.s f19, f14, f26, rmm # perform operation
fsub.s f19, f14, f26, rne # perform operation
fsub.s f19, f14, f26, rtz # perform operation
fsub.s f19, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fsub.s f6, f13, f24, dyn # perform operation
fsub.s f6, f13, f24, rdn # perform operation
fsub.s f6, f13, f24, rmm # perform operation
fsub.s f6, f13, f24, rne # perform operation
fsub.s f6, f13, f24, rtz # perform operation
fsub.s f6, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fsub.s f6, f27, f20, dyn # perform operation
fsub.s f6, f27, f20, rdn # perform operation
fsub.s f6, f27, f20, rmm # perform operation
fsub.s f6, f27, f20, rne # perform operation
fsub.s f6, f27, f20, rtz # perform operation
fsub.s f6, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsub.s f19, f20, f31, dyn # perform operation
fsub.s f19, f20, f31, rdn # perform operation
fsub.s f19, f20, f31, rmm # perform operation
fsub.s f19, f20, f31, rne # perform operation
fsub.s f19, f20, f31, rtz # perform operation
fsub.s f19, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fsub.s f10, f9, f30, dyn # perform operation
fsub.s f10, f9, f30, rdn # perform operation
fsub.s f10, f9, f30, rmm # perform operation
fsub.s f10, f9, f30, rne # perform operation
fsub.s f10, f9, f30, rtz # perform operation
fsub.s f10, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fsub.s f17, f11, f8, dyn # perform operation
fsub.s f17, f11, f8, rdn # perform operation
fsub.s f17, f11, f8, rmm # perform operation
fsub.s f17, f11, f8, rne # perform operation
fsub.s f17, f11, f8, rtz # perform operation
fsub.s f17, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fsub.s f18, f9, f16, dyn # perform operation
fsub.s f18, f9, f16, rdn # perform operation
fsub.s f18, f9, f16, rmm # perform operation
fsub.s f18, f9, f16, rne # perform operation
fsub.s f18, f9, f16, rtz # perform operation
fsub.s f18, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fsub.s f25, f28, f22, dyn # perform operation
fsub.s f25, f28, f22, rdn # perform operation
fsub.s f25, f28, f22, rmm # perform operation
fsub.s f25, f28, f22, rne # perform operation
fsub.s f25, f28, f22, rtz # perform operation
fsub.s f25, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fsub.s f27, f21, f11, dyn # perform operation
fsub.s f27, f21, f11, rdn # perform operation
fsub.s f27, f21, f11, rmm # perform operation
fsub.s f27, f21, f11, rne # perform operation
fsub.s f27, f21, f11, rtz # perform operation
fsub.s f27, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fsub.s f9, f22, f13, dyn # perform operation
fsub.s f9, f22, f13, rdn # perform operation
fsub.s f9, f22, f13, rmm # perform operation
fsub.s f9, f22, f13, rne # perform operation
fsub.s f9, f22, f13, rtz # perform operation
fsub.s f9, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fsub.s f6, f5, f18, dyn # perform operation
fsub.s f6, f5, f18, rdn # perform operation
fsub.s f6, f5, f18, rmm # perform operation
fsub.s f6, f5, f18, rne # perform operation
fsub.s f6, f5, f18, rtz # perform operation
fsub.s f6, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fsub.s f21, f18, f17, dyn # perform operation
fsub.s f21, f18, f17, rdn # perform operation
fsub.s f21, f18, f17, rmm # perform operation
fsub.s f21, f18, f17, rne # perform operation
fsub.s f21, f18, f17, rtz # perform operation
fsub.s f21, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fsub.s f11, f10, f24, dyn # perform operation
fsub.s f11, f10, f24, rdn # perform operation
fsub.s f11, f10, f24, rmm # perform operation
fsub.s f11, f10, f24, rne # perform operation
fsub.s f11, f10, f24, rtz # perform operation
fsub.s f11, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fsub.s f16, f11, f3, dyn # perform operation
fsub.s f16, f11, f3, rdn # perform operation
fsub.s f16, f11, f3, rmm # perform operation
fsub.s f16, f11, f3, rne # perform operation
fsub.s f16, f11, f3, rtz # perform operation
fsub.s f16, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fsub.s f16, f18, f23, dyn # perform operation
fsub.s f16, f18, f23, rdn # perform operation
fsub.s f16, f18, f23, rmm # perform operation
fsub.s f16, f18, f23, rne # perform operation
fsub.s f16, f18, f23, rtz # perform operation
fsub.s f16, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fsub.s f14, f26, f10, dyn # perform operation
fsub.s f14, f26, f10, rdn # perform operation
fsub.s f14, f26, f10, rmm # perform operation
fsub.s f14, f26, f10, rne # perform operation
fsub.s f14, f26, f10, rtz # perform operation
fsub.s f14, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fsub.s f25, f13, f3, dyn # perform operation
fsub.s f25, f13, f3, rdn # perform operation
fsub.s f25, f13, f3, rmm # perform operation
fsub.s f25, f13, f3, rne # perform operation
fsub.s f25, f13, f3, rtz # perform operation
fsub.s f25, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fsub.s f8, f30, f9, dyn # perform operation
fsub.s f8, f30, f9, rdn # perform operation
fsub.s f8, f30, f9, rmm # perform operation
fsub.s f8, f30, f9, rne # perform operation
fsub.s f8, f30, f9, rtz # perform operation
fsub.s f8, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fsub.s f28, f16, f19, dyn # perform operation
fsub.s f28, f16, f19, rdn # perform operation
fsub.s f28, f16, f19, rmm # perform operation
fsub.s f28, f16, f19, rne # perform operation
fsub.s f28, f16, f19, rtz # perform operation
fsub.s f28, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsub.s f31, f23, f7, dyn # perform operation
fsub.s f31, f23, f7, rdn # perform operation
fsub.s f31, f23, f7, rmm # perform operation
fsub.s f31, f23, f7, rne # perform operation
fsub.s f31, f23, f7, rtz # perform operation
fsub.s f31, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fsub.s f16, f14, f13, dyn # perform operation
fsub.s f16, f14, f13, rdn # perform operation
fsub.s f16, f14, f13, rmm # perform operation
fsub.s f16, f14, f13, rne # perform operation
fsub.s f16, f14, f13, rtz # perform operation
fsub.s f16, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fsub.s f21, f1, f19, dyn # perform operation
fsub.s f21, f1, f19, rdn # perform operation
fsub.s f21, f1, f19, rmm # perform operation
fsub.s f21, f1, f19, rne # perform operation
fsub.s f21, f1, f19, rtz # perform operation
fsub.s f21, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fsub.s f11, f19, f21, dyn # perform operation
fsub.s f11, f19, f21, rdn # perform operation
fsub.s f11, f19, f21, rmm # perform operation
fsub.s f11, f19, f21, rne # perform operation
fsub.s f11, f19, f21, rtz # perform operation
fsub.s f11, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fsub.s f26, f3, f7, dyn # perform operation
fsub.s f26, f3, f7, rdn # perform operation
fsub.s f26, f3, f7, rmm # perform operation
fsub.s f26, f3, f7, rne # perform operation
fsub.s f26, f3, f7, rtz # perform operation
fsub.s f26, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fsub.s f31, f22, f29, dyn # perform operation
fsub.s f31, f22, f29, rdn # perform operation
fsub.s f31, f22, f29, rmm # perform operation
fsub.s f31, f22, f29, rne # perform operation
fsub.s f31, f22, f29, rtz # perform operation
fsub.s f31, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fsub.s f30, f18, f8, dyn # perform operation
fsub.s f30, f18, f8, rdn # perform operation
fsub.s f30, f18, f8, rmm # perform operation
fsub.s f30, f18, f8, rne # perform operation
fsub.s f30, f18, f8, rtz # perform operation
fsub.s f30, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fsub.s f14, f13, f10, dyn # perform operation
fsub.s f14, f13, f10, rdn # perform operation
fsub.s f14, f13, f10, rmm # perform operation
fsub.s f14, f13, f10, rne # perform operation
fsub.s f14, f13, f10, rtz # perform operation
fsub.s f14, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fsub.s f8, f27, f25, dyn # perform operation
fsub.s f8, f27, f25, rdn # perform operation
fsub.s f8, f27, f25, rmm # perform operation
fsub.s f8, f27, f25, rne # perform operation
fsub.s f8, f27, f25, rtz # perform operation
fsub.s f8, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fsub.s f15, f11, f25, dyn # perform operation
fsub.s f15, f11, f25, rdn # perform operation
fsub.s f15, f11, f25, rmm # perform operation
fsub.s f15, f11, f25, rne # perform operation
fsub.s f15, f11, f25, rtz # perform operation
fsub.s f15, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsub.s f10, f17, f2, dyn # perform operation
fsub.s f10, f17, f2, rdn # perform operation
fsub.s f10, f17, f2, rmm # perform operation
fsub.s f10, f17, f2, rne # perform operation
fsub.s f10, f17, f2, rtz # perform operation
fsub.s f10, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fsub.s f14, f1, f24, dyn # perform operation
fsub.s f14, f1, f24, rdn # perform operation
fsub.s f14, f1, f24, rmm # perform operation
fsub.s f14, f1, f24, rne # perform operation
fsub.s f14, f1, f24, rtz # perform operation
fsub.s f14, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fsub.s f6, f13, f1, dyn # perform operation
fsub.s f6, f13, f1, rdn # perform operation
fsub.s f6, f13, f1, rmm # perform operation
fsub.s f6, f13, f1, rne # perform operation
fsub.s f6, f13, f1, rtz # perform operation
fsub.s f6, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f15, f17, f20, dyn # perform operation
fsub.s f15, f17, f20, rdn # perform operation
fsub.s f15, f17, f20, rmm # perform operation
fsub.s f15, f17, f20, rne # perform operation
fsub.s f15, f17, f20, rtz # perform operation
fsub.s f15, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fsub.s f26, f22, f21, dyn # perform operation
fsub.s f26, f22, f21, rdn # perform operation
fsub.s f26, f22, f21, rmm # perform operation
fsub.s f26, f22, f21, rne # perform operation
fsub.s f26, f22, f21, rtz # perform operation
fsub.s f26, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fsub.s f8, f10, f9, dyn # perform operation
fsub.s f8, f10, f9, rdn # perform operation
fsub.s f8, f10, f9, rmm # perform operation
fsub.s f8, f10, f9, rne # perform operation
fsub.s f8, f10, f9, rtz # perform operation
fsub.s f8, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f10, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fsub.s f9, f16, f10, dyn # perform operation
fsub.s f9, f16, f10, rdn # perform operation
fsub.s f9, f16, f10, rmm # perform operation
fsub.s f9, f16, f10, rne # perform operation
fsub.s f9, f16, f10, rtz # perform operation
fsub.s f9, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fsub.s f12, f11, f1, dyn # perform operation
fsub.s f12, f11, f1, rdn # perform operation
fsub.s f12, f11, f1, rmm # perform operation
fsub.s f12, f11, f1, rne # perform operation
fsub.s f12, f11, f1, rtz # perform operation
fsub.s f12, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fsub.s f5, f22, f25, dyn # perform operation
fsub.s f5, f22, f25, rdn # perform operation
fsub.s f5, f22, f25, rmm # perform operation
fsub.s f5, f22, f25, rne # perform operation
fsub.s f5, f22, f25, rtz # perform operation
fsub.s f5, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f22, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fsub.s f29, f10, f15, dyn # perform operation
fsub.s f29, f10, f15, rdn # perform operation
fsub.s f29, f10, f15, rmm # perform operation
fsub.s f29, f10, f15, rne # perform operation
fsub.s f29, f10, f15, rtz # perform operation
fsub.s f29, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fsub.s f13, f10, f12, dyn # perform operation
fsub.s f13, f10, f12, rdn # perform operation
fsub.s f13, f10, f12, rmm # perform operation
fsub.s f13, f10, f12, rne # perform operation
fsub.s f13, f10, f12, rtz # perform operation
fsub.s f13, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fsub.s f5, f21, f14, dyn # perform operation
fsub.s f5, f21, f14, rdn # perform operation
fsub.s f5, f21, f14, rmm # perform operation
fsub.s f5, f21, f14, rne # perform operation
fsub.s f5, f21, f14, rtz # perform operation
fsub.s f5, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fsub.s f19, f14, f30, dyn # perform operation
fsub.s f19, f14, f30, rdn # perform operation
fsub.s f19, f14, f30, rmm # perform operation
fsub.s f19, f14, f30, rne # perform operation
fsub.s f19, f14, f30, rtz # perform operation
fsub.s f19, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f19, f28, f3, dyn # perform operation
fsub.s f19, f28, f3, rdn # perform operation
fsub.s f19, f28, f3, rmm # perform operation
fsub.s f19, f28, f3, rne # perform operation
fsub.s f19, f28, f3, rtz # perform operation
fsub.s f19, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fsub.s f26, f28, f11, dyn # perform operation
fsub.s f26, f28, f11, rdn # perform operation
fsub.s f26, f28, f11, rmm # perform operation
fsub.s f26, f28, f11, rne # perform operation
fsub.s f26, f28, f11, rtz # perform operation
fsub.s f26, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fsub.s f25, f13, f16, dyn # perform operation
fsub.s f25, f13, f16, rdn # perform operation
fsub.s f25, f13, f16, rmm # perform operation
fsub.s f25, f13, f16, rne # perform operation
fsub.s f25, f13, f16, rtz # perform operation
fsub.s f25, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fsub.s f15, f5, f23, dyn # perform operation
fsub.s f15, f5, f23, rdn # perform operation
fsub.s f15, f5, f23, rmm # perform operation
fsub.s f15, f5, f23, rne # perform operation
fsub.s f15, f5, f23, rtz # perform operation
fsub.s f15, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fsub.s f21, f23, f9, dyn # perform operation
fsub.s f21, f23, f9, rdn # perform operation
fsub.s f21, f23, f9, rmm # perform operation
fsub.s f21, f23, f9, rne # perform operation
fsub.s f21, f23, f9, rtz # perform operation
fsub.s f21, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsub.s f18, f17, f2, dyn # perform operation
fsub.s f18, f17, f2, rdn # perform operation
fsub.s f18, f17, f2, rmm # perform operation
fsub.s f18, f17, f2, rne # perform operation
fsub.s f18, f17, f2, rtz # perform operation
fsub.s f18, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fsub.s f27, f26, f3, dyn # perform operation
fsub.s f27, f26, f3, rdn # perform operation
fsub.s f27, f26, f3, rmm # perform operation
fsub.s f27, f26, f3, rne # perform operation
fsub.s f27, f26, f3, rtz # perform operation
fsub.s f27, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fsub.s f20, f12, f26, dyn # perform operation
fsub.s f20, f12, f26, rdn # perform operation
fsub.s f20, f12, f26, rmm # perform operation
fsub.s f20, f12, f26, rne # perform operation
fsub.s f20, f12, f26, rtz # perform operation
fsub.s f20, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsub.s f9, f8, f26, dyn # perform operation
fsub.s f9, f8, f26, rdn # perform operation
fsub.s f9, f8, f26, rmm # perform operation
fsub.s f9, f8, f26, rne # perform operation
fsub.s f9, f8, f26, rtz # perform operation
fsub.s f9, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fsub.s f10, f12, f14, dyn # perform operation
fsub.s f10, f12, f14, rdn # perform operation
fsub.s f10, f12, f14, rmm # perform operation
fsub.s f10, f12, f14, rne # perform operation
fsub.s f10, f12, f14, rtz # perform operation
fsub.s f10, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fsub.s f8, f13, f2, dyn # perform operation
fsub.s f8, f13, f2, rdn # perform operation
fsub.s f8, f13, f2, rmm # perform operation
fsub.s f8, f13, f2, rne # perform operation
fsub.s f8, f13, f2, rtz # perform operation
fsub.s f8, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fsub.s f8, f18, f12, dyn # perform operation
fsub.s f8, f18, f12, rdn # perform operation
fsub.s f8, f18, f12, rmm # perform operation
fsub.s f8, f18, f12, rne # perform operation
fsub.s f8, f18, f12, rtz # perform operation
fsub.s f8, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fsub.s f26, f21, f14, dyn # perform operation
fsub.s f26, f21, f14, rdn # perform operation
fsub.s f26, f21, f14, rmm # perform operation
fsub.s f26, f21, f14, rne # perform operation
fsub.s f26, f21, f14, rtz # perform operation
fsub.s f26, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fsub.s f27, f15, f17, dyn # perform operation
fsub.s f27, f15, f17, rdn # perform operation
fsub.s f27, f15, f17, rmm # perform operation
fsub.s f27, f15, f17, rne # perform operation
fsub.s f27, f15, f17, rtz # perform operation
fsub.s f27, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fsub.s f5, f6, f24, dyn # perform operation
fsub.s f5, f6, f24, rdn # perform operation
fsub.s f5, f6, f24, rmm # perform operation
fsub.s f5, f6, f24, rne # perform operation
fsub.s f5, f6, f24, rtz # perform operation
fsub.s f5, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fsub.s f10, f9, f8, dyn # perform operation
fsub.s f10, f9, f8, rdn # perform operation
fsub.s f10, f9, f8, rmm # perform operation
fsub.s f10, f9, f8, rne # perform operation
fsub.s f10, f9, f8, rtz # perform operation
fsub.s f10, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fsub.s f14, f9, f13, dyn # perform operation
fsub.s f14, f9, f13, rdn # perform operation
fsub.s f14, f9, f13, rmm # perform operation
fsub.s f14, f9, f13, rne # perform operation
fsub.s f14, f9, f13, rtz # perform operation
fsub.s f14, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fsub.s f18, f29, f28, dyn # perform operation
fsub.s f18, f29, f28, rdn # perform operation
fsub.s f18, f29, f28, rmm # perform operation
fsub.s f18, f29, f28, rne # perform operation
fsub.s f18, f29, f28, rtz # perform operation
fsub.s f18, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fsub.s f25, f3, f15, dyn # perform operation
fsub.s f25, f3, f15, rdn # perform operation
fsub.s f25, f3, f15, rmm # perform operation
fsub.s f25, f3, f15, rne # perform operation
fsub.s f25, f3, f15, rtz # perform operation
fsub.s f25, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fsub.s f1, f26, f6, dyn # perform operation
fsub.s f1, f26, f6, rdn # perform operation
fsub.s f1, f26, f6, rmm # perform operation
fsub.s f1, f26, f6, rne # perform operation
fsub.s f1, f26, f6, rtz # perform operation
fsub.s f1, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fsub.s f12, f24, f9, dyn # perform operation
fsub.s f12, f24, f9, rdn # perform operation
fsub.s f12, f24, f9, rmm # perform operation
fsub.s f12, f24, f9, rne # perform operation
fsub.s f12, f24, f9, rtz # perform operation
fsub.s f12, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f22, f26, f9, dyn # perform operation
fsub.s f22, f26, f9, rdn # perform operation
fsub.s f22, f26, f9, rmm # perform operation
fsub.s f22, f26, f9, rne # perform operation
fsub.s f22, f26, f9, rtz # perform operation
fsub.s f22, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fsub.s f18, f29, f2, dyn # perform operation
fsub.s f18, f29, f2, rdn # perform operation
fsub.s f18, f29, f2, rmm # perform operation
fsub.s f18, f29, f2, rne # perform operation
fsub.s f18, f29, f2, rtz # perform operation
fsub.s f18, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsub.s f3, f22, f26, dyn # perform operation
fsub.s f3, f22, f26, rdn # perform operation
fsub.s f3, f22, f26, rmm # perform operation
fsub.s f3, f22, f26, rne # perform operation
fsub.s f3, f22, f26, rtz # perform operation
fsub.s f3, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fsub.s f17, f24, f30, dyn # perform operation
fsub.s f17, f24, f30, rdn # perform operation
fsub.s f17, f24, f30, rmm # perform operation
fsub.s f17, f24, f30, rne # perform operation
fsub.s f17, f24, f30, rtz # perform operation
fsub.s f17, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fsub.s f8, f16, f20, dyn # perform operation
fsub.s f8, f16, f20, rdn # perform operation
fsub.s f8, f16, f20, rmm # perform operation
fsub.s f8, f16, f20, rne # perform operation
fsub.s f8, f16, f20, rtz # perform operation
fsub.s f8, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fsub.s f26, f7, f14, dyn # perform operation
fsub.s f26, f7, f14, rdn # perform operation
fsub.s f26, f7, f14, rmm # perform operation
fsub.s f26, f7, f14, rne # perform operation
fsub.s f26, f7, f14, rtz # perform operation
fsub.s f26, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fsub.s f10, f27, f29, dyn # perform operation
fsub.s f10, f27, f29, rdn # perform operation
fsub.s f10, f27, f29, rmm # perform operation
fsub.s f10, f27, f29, rne # perform operation
fsub.s f10, f27, f29, rtz # perform operation
fsub.s f10, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f25, f14, f11, dyn # perform operation
fsub.s f25, f14, f11, rdn # perform operation
fsub.s f25, f14, f11, rmm # perform operation
fsub.s f25, f14, f11, rne # perform operation
fsub.s f25, f14, f11, rtz # perform operation
fsub.s f25, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fsub.s f30, f21, f2, dyn # perform operation
fsub.s f30, f21, f2, rdn # perform operation
fsub.s f30, f21, f2, rmm # perform operation
fsub.s f30, f21, f2, rne # perform operation
fsub.s f30, f21, f2, rtz # perform operation
fsub.s f30, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fsub.s f9, f22, f13, dyn # perform operation
fsub.s f9, f22, f13, rdn # perform operation
fsub.s f9, f22, f13, rmm # perform operation
fsub.s f9, f22, f13, rne # perform operation
fsub.s f9, f22, f13, rtz # perform operation
fsub.s f9, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fsub.s f5, f23, f17, dyn # perform operation
fsub.s f5, f23, f17, rdn # perform operation
fsub.s f5, f23, f17, rmm # perform operation
fsub.s f5, f23, f17, rne # perform operation
fsub.s f5, f23, f17, rtz # perform operation
fsub.s f5, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fsub.s f12, f1, f22, dyn # perform operation
fsub.s f12, f1, f22, rdn # perform operation
fsub.s f12, f1, f22, rmm # perform operation
fsub.s f12, f1, f22, rne # perform operation
fsub.s f12, f1, f22, rtz # perform operation
fsub.s f12, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fsub.s f26, f17, f20, dyn # perform operation
fsub.s f26, f17, f20, rdn # perform operation
fsub.s f26, f17, f20, rmm # perform operation
fsub.s f26, f17, f20, rne # perform operation
fsub.s f26, f17, f20, rtz # perform operation
fsub.s f26, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsub.s f9, f7, f27, dyn # perform operation
fsub.s f9, f7, f27, rdn # perform operation
fsub.s f9, f7, f27, rmm # perform operation
fsub.s f9, f7, f27, rne # perform operation
fsub.s f9, f7, f27, rtz # perform operation
fsub.s f9, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fsub.s f12, f27, f6, dyn # perform operation
fsub.s f12, f27, f6, rdn # perform operation
fsub.s f12, f27, f6, rmm # perform operation
fsub.s f12, f27, f6, rne # perform operation
fsub.s f12, f27, f6, rtz # perform operation
fsub.s f12, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fsub.s f9, f2, f12, dyn # perform operation
fsub.s f9, f2, f12, rdn # perform operation
fsub.s f9, f2, f12, rmm # perform operation
fsub.s f9, f2, f12, rne # perform operation
fsub.s f9, f2, f12, rtz # perform operation
fsub.s f9, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fsub.s f8, f25, f3, dyn # perform operation
fsub.s f8, f25, f3, rdn # perform operation
fsub.s f8, f25, f3, rmm # perform operation
fsub.s f8, f25, f3, rne # perform operation
fsub.s f8, f25, f3, rtz # perform operation
fsub.s f8, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fsub.s f1, f12, f25, dyn # perform operation
fsub.s f1, f12, f25, rdn # perform operation
fsub.s f1, f12, f25, rmm # perform operation
fsub.s f1, f12, f25, rne # perform operation
fsub.s f1, f12, f25, rtz # perform operation
fsub.s f1, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fsub.s f24, f14, f31, dyn # perform operation
fsub.s f24, f14, f31, rdn # perform operation
fsub.s f24, f14, f31, rmm # perform operation
fsub.s f24, f14, f31, rne # perform operation
fsub.s f24, f14, f31, rtz # perform operation
fsub.s f24, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fsub.s f29, f3, f23, dyn # perform operation
fsub.s f29, f3, f23, rdn # perform operation
fsub.s f29, f3, f23, rmm # perform operation
fsub.s f29, f3, f23, rne # perform operation
fsub.s f29, f3, f23, rtz # perform operation
fsub.s f29, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f27, f8, f21, dyn # perform operation
fsub.s f27, f8, f21, rdn # perform operation
fsub.s f27, f8, f21, rmm # perform operation
fsub.s f27, f8, f21, rne # perform operation
fsub.s f27, f8, f21, rtz # perform operation
fsub.s f27, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fsub.s f24, f25, f3, dyn # perform operation
fsub.s f24, f25, f3, rdn # perform operation
fsub.s f24, f25, f3, rmm # perform operation
fsub.s f24, f25, f3, rne # perform operation
fsub.s f24, f25, f3, rtz # perform operation
fsub.s f24, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f12, f23, f26, dyn # perform operation
fsub.s f12, f23, f26, rdn # perform operation
fsub.s f12, f23, f26, rmm # perform operation
fsub.s f12, f23, f26, rne # perform operation
fsub.s f12, f23, f26, rtz # perform operation
fsub.s f12, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fsub.s f6, f29, f30, dyn # perform operation
fsub.s f6, f29, f30, rdn # perform operation
fsub.s f6, f29, f30, rmm # perform operation
fsub.s f6, f29, f30, rne # perform operation
fsub.s f6, f29, f30, rtz # perform operation
fsub.s f6, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fsub.s f3, f14, f15, dyn # perform operation
fsub.s f3, f14, f15, rdn # perform operation
fsub.s f3, f14, f15, rmm # perform operation
fsub.s f3, f14, f15, rne # perform operation
fsub.s f3, f14, f15, rtz # perform operation
fsub.s f3, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f23, f21, f20, dyn # perform operation
fsub.s f23, f21, f20, rdn # perform operation
fsub.s f23, f21, f20, rmm # perform operation
fsub.s f23, f21, f20, rne # perform operation
fsub.s f23, f21, f20, rtz # perform operation
fsub.s f23, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fsub.s f10, f6, f27, dyn # perform operation
fsub.s f10, f6, f27, rdn # perform operation
fsub.s f10, f6, f27, rmm # perform operation
fsub.s f10, f6, f27, rne # perform operation
fsub.s f10, f6, f27, rtz # perform operation
fsub.s f10, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fsub.s f29, f13, f25, dyn # perform operation
fsub.s f29, f13, f25, rdn # perform operation
fsub.s f29, f13, f25, rmm # perform operation
fsub.s f29, f13, f25, rne # perform operation
fsub.s f29, f13, f25, rtz # perform operation
fsub.s f29, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fsub.s f30, f18, f26, dyn # perform operation
fsub.s f30, f18, f26, rdn # perform operation
fsub.s f30, f18, f26, rmm # perform operation
fsub.s f30, f18, f26, rne # perform operation
fsub.s f30, f18, f26, rtz # perform operation
fsub.s f30, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fsub.s f5, f1, f10, dyn # perform operation
fsub.s f5, f1, f10, rdn # perform operation
fsub.s f5, f1, f10, rmm # perform operation
fsub.s f5, f1, f10, rne # perform operation
fsub.s f5, f1, f10, rtz # perform operation
fsub.s f5, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fsub.s f7, f5, f17, dyn # perform operation
fsub.s f7, f5, f17, rdn # perform operation
fsub.s f7, f5, f17, rmm # perform operation
fsub.s f7, f5, f17, rne # perform operation
fsub.s f7, f5, f17, rtz # perform operation
fsub.s f7, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fsub.s f20, f27, f2, dyn # perform operation
fsub.s f20, f27, f2, rdn # perform operation
fsub.s f20, f27, f2, rmm # perform operation
fsub.s f20, f27, f2, rne # perform operation
fsub.s f20, f27, f2, rtz # perform operation
fsub.s f20, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fsub.s f13, f27, f5, dyn # perform operation
fsub.s f13, f27, f5, rdn # perform operation
fsub.s f13, f27, f5, rmm # perform operation
fsub.s f13, f27, f5, rne # perform operation
fsub.s f13, f27, f5, rtz # perform operation
fsub.s f13, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fsub.s f31, f23, f10, dyn # perform operation
fsub.s f31, f23, f10, rdn # perform operation
fsub.s f31, f23, f10, rmm # perform operation
fsub.s f31, f23, f10, rne # perform operation
fsub.s f31, f23, f10, rtz # perform operation
fsub.s f31, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fsub.s f30, f17, f21, dyn # perform operation
fsub.s f30, f17, f21, rdn # perform operation
fsub.s f30, f17, f21, rmm # perform operation
fsub.s f30, f17, f21, rne # perform operation
fsub.s f30, f17, f21, rtz # perform operation
fsub.s f30, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fsub.s f14, f8, f17, dyn # perform operation
fsub.s f14, f8, f17, rdn # perform operation
fsub.s f14, f8, f17, rmm # perform operation
fsub.s f14, f8, f17, rne # perform operation
fsub.s f14, f8, f17, rtz # perform operation
fsub.s f14, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f10, f28, f26, dyn # perform operation
fsub.s f10, f28, f26, rdn # perform operation
fsub.s f10, f28, f26, rmm # perform operation
fsub.s f10, f28, f26, rne # perform operation
fsub.s f10, f28, f26, rtz # perform operation
fsub.s f10, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fsub.s f11, f10, f31, dyn # perform operation
fsub.s f11, f10, f31, rdn # perform operation
fsub.s f11, f10, f31, rmm # perform operation
fsub.s f11, f10, f31, rne # perform operation
fsub.s f11, f10, f31, rtz # perform operation
fsub.s f11, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fsub.s f8, f11, f18, dyn # perform operation
fsub.s f8, f11, f18, rdn # perform operation
fsub.s f8, f11, f18, rmm # perform operation
fsub.s f8, f11, f18, rne # perform operation
fsub.s f8, f11, f18, rtz # perform operation
fsub.s f8, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fsub.s f1, f20, f30, dyn # perform operation
fsub.s f1, f20, f30, rdn # perform operation
fsub.s f1, f20, f30, rmm # perform operation
fsub.s f1, f20, f30, rne # perform operation
fsub.s f1, f20, f30, rtz # perform operation
fsub.s f1, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsub.s f19, f29, f7, dyn # perform operation
fsub.s f19, f29, f7, rdn # perform operation
fsub.s f19, f29, f7, rmm # perform operation
fsub.s f19, f29, f7, rne # perform operation
fsub.s f19, f29, f7, rtz # perform operation
fsub.s f19, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fsub.s f9, f28, f17, dyn # perform operation
fsub.s f9, f28, f17, rdn # perform operation
fsub.s f9, f28, f17, rmm # perform operation
fsub.s f9, f28, f17, rne # perform operation
fsub.s f9, f28, f17, rtz # perform operation
fsub.s f9, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fsub.s f13, f23, f30, dyn # perform operation
fsub.s f13, f23, f30, rdn # perform operation
fsub.s f13, f23, f30, rmm # perform operation
fsub.s f13, f23, f30, rne # perform operation
fsub.s f13, f23, f30, rtz # perform operation
fsub.s f13, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fsub.s f24, f31, f19, dyn # perform operation
fsub.s f24, f31, f19, rdn # perform operation
fsub.s f24, f31, f19, rmm # perform operation
fsub.s f24, f31, f19, rne # perform operation
fsub.s f24, f31, f19, rtz # perform operation
fsub.s f24, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fsub.s f1, f20, f5, dyn # perform operation
fsub.s f1, f20, f5, rdn # perform operation
fsub.s f1, f20, f5, rmm # perform operation
fsub.s f1, f20, f5, rne # perform operation
fsub.s f1, f20, f5, rtz # perform operation
fsub.s f1, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fsub.s f16, f27, f28, dyn # perform operation
fsub.s f16, f27, f28, rdn # perform operation
fsub.s f16, f27, f28, rmm # perform operation
fsub.s f16, f27, f28, rne # perform operation
fsub.s f16, f27, f28, rtz # perform operation
fsub.s f16, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fsub.s f12, f10, f31, dyn # perform operation
fsub.s f12, f10, f31, rdn # perform operation
fsub.s f12, f10, f31, rmm # perform operation
fsub.s f12, f10, f31, rne # perform operation
fsub.s f12, f10, f31, rtz # perform operation
fsub.s f12, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fsub.s f27, f5, f7, dyn # perform operation
fsub.s f27, f5, f7, rdn # perform operation
fsub.s f27, f5, f7, rmm # perform operation
fsub.s f27, f5, f7, rne # perform operation
fsub.s f27, f5, f7, rtz # perform operation
fsub.s f27, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fsub.s f8, f19, f9, dyn # perform operation
fsub.s f8, f19, f9, rdn # perform operation
fsub.s f8, f19, f9, rmm # perform operation
fsub.s f8, f19, f9, rne # perform operation
fsub.s f8, f19, f9, rtz # perform operation
fsub.s f8, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fsub.s f5, f7, f10, dyn # perform operation
fsub.s f5, f7, f10, rdn # perform operation
fsub.s f5, f7, f10, rmm # perform operation
fsub.s f5, f7, f10, rne # perform operation
fsub.s f5, f7, f10, rtz # perform operation
fsub.s f5, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fsub.s f8, f12, f1, dyn # perform operation
fsub.s f8, f12, f1, rdn # perform operation
fsub.s f8, f12, f1, rmm # perform operation
fsub.s f8, f12, f1, rne # perform operation
fsub.s f8, f12, f1, rtz # perform operation
fsub.s f8, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fsub.s f9, f19, f3, dyn # perform operation
fsub.s f9, f19, f3, rdn # perform operation
fsub.s f9, f19, f3, rmm # perform operation
fsub.s f9, f19, f3, rne # perform operation
fsub.s f9, f19, f3, rtz # perform operation
fsub.s f9, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fsub.s f18, f6, f9, dyn # perform operation
fsub.s f18, f6, f9, rdn # perform operation
fsub.s f18, f6, f9, rmm # perform operation
fsub.s f18, f6, f9, rne # perform operation
fsub.s f18, f6, f9, rtz # perform operation
fsub.s f18, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f16, f18, f22, dyn # perform operation
fsub.s f16, f18, f22, rdn # perform operation
fsub.s f16, f18, f22, rmm # perform operation
fsub.s f16, f18, f22, rne # perform operation
fsub.s f16, f18, f22, rtz # perform operation
fsub.s f16, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fsub.s f8, f12, f24, dyn # perform operation
fsub.s f8, f12, f24, rdn # perform operation
fsub.s f8, f12, f24, rmm # perform operation
fsub.s f8, f12, f24, rne # perform operation
fsub.s f8, f12, f24, rtz # perform operation
fsub.s f8, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fsub.s f10, f5, f28, dyn # perform operation
fsub.s f10, f5, f28, rdn # perform operation
fsub.s f10, f5, f28, rmm # perform operation
fsub.s f10, f5, f28, rne # perform operation
fsub.s f10, f5, f28, rtz # perform operation
fsub.s f10, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fsub.s f15, f8, f13, dyn # perform operation
fsub.s f15, f8, f13, rdn # perform operation
fsub.s f15, f8, f13, rmm # perform operation
fsub.s f15, f8, f13, rne # perform operation
fsub.s f15, f8, f13, rtz # perform operation
fsub.s f15, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f8, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsub.s f1, f10, f6, dyn # perform operation
fsub.s f1, f10, f6, rdn # perform operation
fsub.s f1, f10, f6, rmm # perform operation
fsub.s f1, f10, f6, rne # perform operation
fsub.s f1, f10, f6, rtz # perform operation
fsub.s f1, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fsub.s f21, f11, f20, dyn # perform operation
fsub.s f21, f11, f20, rdn # perform operation
fsub.s f21, f11, f20, rmm # perform operation
fsub.s f21, f11, f20, rne # perform operation
fsub.s f21, f11, f20, rtz # perform operation
fsub.s f21, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fsub.s f5, f13, f6, dyn # perform operation
fsub.s f5, f13, f6, rdn # perform operation
fsub.s f5, f13, f6, rmm # perform operation
fsub.s f5, f13, f6, rne # perform operation
fsub.s f5, f13, f6, rtz # perform operation
fsub.s f5, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fsub.s f14, f15, f7, dyn # perform operation
fsub.s f14, f15, f7, rdn # perform operation
fsub.s f14, f15, f7, rmm # perform operation
fsub.s f14, f15, f7, rne # perform operation
fsub.s f14, f15, f7, rtz # perform operation
fsub.s f14, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fsub.s f7, f25, f3, dyn # perform operation
fsub.s f7, f25, f3, rdn # perform operation
fsub.s f7, f25, f3, rmm # perform operation
fsub.s f7, f25, f3, rne # perform operation
fsub.s f7, f25, f3, rtz # perform operation
fsub.s f7, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fsub.s f27, f25, f31, dyn # perform operation
fsub.s f27, f25, f31, rdn # perform operation
fsub.s f27, f25, f31, rmm # perform operation
fsub.s f27, f25, f31, rne # perform operation
fsub.s f27, f25, f31, rtz # perform operation
fsub.s f27, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f15, f29, f3, dyn # perform operation
fsub.s f15, f29, f3, rdn # perform operation
fsub.s f15, f29, f3, rmm # perform operation
fsub.s f15, f29, f3, rne # perform operation
fsub.s f15, f29, f3, rtz # perform operation
fsub.s f15, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fsub.s f11, f17, f30, dyn # perform operation
fsub.s f11, f17, f30, rdn # perform operation
fsub.s f11, f17, f30, rmm # perform operation
fsub.s f11, f17, f30, rne # perform operation
fsub.s f11, f17, f30, rtz # perform operation
fsub.s f11, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fsub.s f15, f20, f6, dyn # perform operation
fsub.s f15, f20, f6, rdn # perform operation
fsub.s f15, f20, f6, rmm # perform operation
fsub.s f15, f20, f6, rne # perform operation
fsub.s f15, f20, f6, rtz # perform operation
fsub.s f15, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fsub.s f1, f13, f21, dyn # perform operation
fsub.s f1, f13, f21, rdn # perform operation
fsub.s f1, f13, f21, rmm # perform operation
fsub.s f1, f13, f21, rne # perform operation
fsub.s f1, f13, f21, rtz # perform operation
fsub.s f1, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fsub.s f19, f5, f3, dyn # perform operation
fsub.s f19, f5, f3, rdn # perform operation
fsub.s f19, f5, f3, rmm # perform operation
fsub.s f19, f5, f3, rne # perform operation
fsub.s f19, f5, f3, rtz # perform operation
fsub.s f19, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fsub.s f26, f23, f13, dyn # perform operation
fsub.s f26, f23, f13, rdn # perform operation
fsub.s f26, f23, f13, rmm # perform operation
fsub.s f26, f23, f13, rne # perform operation
fsub.s f26, f23, f13, rtz # perform operation
fsub.s f26, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fsub.s f10, f27, f19, dyn # perform operation
fsub.s f10, f27, f19, rdn # perform operation
fsub.s f10, f27, f19, rmm # perform operation
fsub.s f10, f27, f19, rne # perform operation
fsub.s f10, f27, f19, rtz # perform operation
fsub.s f10, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fsub.s f30, f10, f9, dyn # perform operation
fsub.s f30, f10, f9, rdn # perform operation
fsub.s f30, f10, f9, rmm # perform operation
fsub.s f30, f10, f9, rne # perform operation
fsub.s f30, f10, f9, rtz # perform operation
fsub.s f30, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f10, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fsub.s f25, f3, f21, dyn # perform operation
fsub.s f25, f3, f21, rdn # perform operation
fsub.s f25, f3, f21, rmm # perform operation
fsub.s f25, f3, f21, rne # perform operation
fsub.s f25, f3, f21, rtz # perform operation
fsub.s f25, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fsub.s f21, f5, f30, dyn # perform operation
fsub.s f21, f5, f30, rdn # perform operation
fsub.s f21, f5, f30, rmm # perform operation
fsub.s f21, f5, f30, rne # perform operation
fsub.s f21, f5, f30, rtz # perform operation
fsub.s f21, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fsub.s f22, f28, f15, dyn # perform operation
fsub.s f22, f28, f15, rdn # perform operation
fsub.s f22, f28, f15, rmm # perform operation
fsub.s f22, f28, f15, rne # perform operation
fsub.s f22, f28, f15, rtz # perform operation
fsub.s f22, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fsub.s f6, f3, f26, dyn # perform operation
fsub.s f6, f3, f26, rdn # perform operation
fsub.s f6, f3, f26, rmm # perform operation
fsub.s f6, f3, f26, rne # perform operation
fsub.s f6, f3, f26, rtz # perform operation
fsub.s f6, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fsub.s f22, f29, f24, dyn # perform operation
fsub.s f22, f29, f24, rdn # perform operation
fsub.s f22, f29, f24, rmm # perform operation
fsub.s f22, f29, f24, rne # perform operation
fsub.s f22, f29, f24, rtz # perform operation
fsub.s f22, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fsub.s f27, f25, f26, dyn # perform operation
fsub.s f27, f25, f26, rdn # perform operation
fsub.s f27, f25, f26, rmm # perform operation
fsub.s f27, f25, f26, rne # perform operation
fsub.s f27, f25, f26, rtz # perform operation
fsub.s f27, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fsub.s f20, f1, f16, dyn # perform operation
fsub.s f20, f1, f16, rdn # perform operation
fsub.s f20, f1, f16, rmm # perform operation
fsub.s f20, f1, f16, rne # perform operation
fsub.s f20, f1, f16, rtz # perform operation
fsub.s f20, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fsub.s f9, f27, f10, dyn # perform operation
fsub.s f9, f27, f10, rdn # perform operation
fsub.s f9, f27, f10, rmm # perform operation
fsub.s f9, f27, f10, rne # perform operation
fsub.s f9, f27, f10, rtz # perform operation
fsub.s f9, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fsub.s f6, f9, f15, dyn # perform operation
fsub.s f6, f9, f15, rdn # perform operation
fsub.s f6, f9, f15, rmm # perform operation
fsub.s f6, f9, f15, rne # perform operation
fsub.s f6, f9, f15, rtz # perform operation
fsub.s f6, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fsub.s f5, f17, f2, dyn # perform operation
fsub.s f5, f17, f2, rdn # perform operation
fsub.s f5, f17, f2, rmm # perform operation
fsub.s f5, f17, f2, rne # perform operation
fsub.s f5, f17, f2, rtz # perform operation
fsub.s f5, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fsub.s f23, f31, f28, dyn # perform operation
fsub.s f23, f31, f28, rdn # perform operation
fsub.s f23, f31, f28, rmm # perform operation
fsub.s f23, f31, f28, rne # perform operation
fsub.s f23, f31, f28, rtz # perform operation
fsub.s f23, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fsub.s f25, f12, f22, dyn # perform operation
fsub.s f25, f12, f22, rdn # perform operation
fsub.s f25, f12, f22, rmm # perform operation
fsub.s f25, f12, f22, rne # perform operation
fsub.s f25, f12, f22, rtz # perform operation
fsub.s f25, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f29, f1, f10, dyn # perform operation
fsub.s f29, f1, f10, rdn # perform operation
fsub.s f29, f1, f10, rmm # perform operation
fsub.s f29, f1, f10, rne # perform operation
fsub.s f29, f1, f10, rtz # perform operation
fsub.s f29, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f24, f3, f9, dyn # perform operation
fsub.s f24, f3, f9, rdn # perform operation
fsub.s f24, f3, f9, rmm # perform operation
fsub.s f24, f3, f9, rne # perform operation
fsub.s f24, f3, f9, rtz # perform operation
fsub.s f24, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fsub.s f1, f13, f24, dyn # perform operation
fsub.s f1, f13, f24, rdn # perform operation
fsub.s f1, f13, f24, rmm # perform operation
fsub.s f1, f13, f24, rne # perform operation
fsub.s f1, f13, f24, rtz # perform operation
fsub.s f1, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fsub.s f8, f22, f21, dyn # perform operation
fsub.s f8, f22, f21, rdn # perform operation
fsub.s f8, f22, f21, rmm # perform operation
fsub.s f8, f22, f21, rne # perform operation
fsub.s f8, f22, f21, rtz # perform operation
fsub.s f8, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fsub.s f5, f18, f10, dyn # perform operation
fsub.s f5, f18, f10, rdn # perform operation
fsub.s f5, f18, f10, rmm # perform operation
fsub.s f5, f18, f10, rne # perform operation
fsub.s f5, f18, f10, rtz # perform operation
fsub.s f5, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fsub.s f21, f1, f19, dyn # perform operation
fsub.s f21, f1, f19, rdn # perform operation
fsub.s f21, f1, f19, rmm # perform operation
fsub.s f21, f1, f19, rne # perform operation
fsub.s f21, f1, f19, rtz # perform operation
fsub.s f21, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fsub.s f25, f23, f26, dyn # perform operation
fsub.s f25, f23, f26, rdn # perform operation
fsub.s f25, f23, f26, rmm # perform operation
fsub.s f25, f23, f26, rne # perform operation
fsub.s f25, f23, f26, rtz # perform operation
fsub.s f25, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fsub.s f24, f3, f7, dyn # perform operation
fsub.s f24, f3, f7, rdn # perform operation
fsub.s f24, f3, f7, rmm # perform operation
fsub.s f24, f3, f7, rne # perform operation
fsub.s f24, f3, f7, rtz # perform operation
fsub.s f24, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fsub.s f11, f13, f25, dyn # perform operation
fsub.s f11, f13, f25, rdn # perform operation
fsub.s f11, f13, f25, rmm # perform operation
fsub.s f11, f13, f25, rne # perform operation
fsub.s f11, f13, f25, rtz # perform operation
fsub.s f11, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fsub.s f31, f28, f11, dyn # perform operation
fsub.s f31, f28, f11, rdn # perform operation
fsub.s f31, f28, f11, rmm # perform operation
fsub.s f31, f28, f11, rne # perform operation
fsub.s f31, f28, f11, rtz # perform operation
fsub.s f31, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fsub.s f24, f3, f14, dyn # perform operation
fsub.s f24, f3, f14, rdn # perform operation
fsub.s f24, f3, f14, rmm # perform operation
fsub.s f24, f3, f14, rne # perform operation
fsub.s f24, f3, f14, rtz # perform operation
fsub.s f24, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fsub.s f16, f30, f5, dyn # perform operation
fsub.s f16, f30, f5, rdn # perform operation
fsub.s f16, f30, f5, rmm # perform operation
fsub.s f16, f30, f5, rne # perform operation
fsub.s f16, f30, f5, rtz # perform operation
fsub.s f16, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fsub.s f24, f22, f16, dyn # perform operation
fsub.s f24, f22, f16, rdn # perform operation
fsub.s f24, f22, f16, rmm # perform operation
fsub.s f24, f22, f16, rne # perform operation
fsub.s f24, f22, f16, rtz # perform operation
fsub.s f24, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fsub.s f9, f15, f20, dyn # perform operation
fsub.s f9, f15, f20, rdn # perform operation
fsub.s f9, f15, f20, rmm # perform operation
fsub.s f9, f15, f20, rne # perform operation
fsub.s f9, f15, f20, rtz # perform operation
fsub.s f9, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fsub.s f12, f27, f7, dyn # perform operation
fsub.s f12, f27, f7, rdn # perform operation
fsub.s f12, f27, f7, rmm # perform operation
fsub.s f12, f27, f7, rne # perform operation
fsub.s f12, f27, f7, rtz # perform operation
fsub.s f12, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fsub.s f31, f3, f8, dyn # perform operation
fsub.s f31, f3, f8, rdn # perform operation
fsub.s f31, f3, f8, rmm # perform operation
fsub.s f31, f3, f8, rne # perform operation
fsub.s f31, f3, f8, rtz # perform operation
fsub.s f31, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fsub.s f18, f14, f20, dyn # perform operation
fsub.s f18, f14, f20, rdn # perform operation
fsub.s f18, f14, f20, rmm # perform operation
fsub.s f18, f14, f20, rne # perform operation
fsub.s f18, f14, f20, rtz # perform operation
fsub.s f18, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fsub.s f14, f19, f7, dyn # perform operation
fsub.s f14, f19, f7, rdn # perform operation
fsub.s f14, f19, f7, rmm # perform operation
fsub.s f14, f19, f7, rne # perform operation
fsub.s f14, f19, f7, rtz # perform operation
fsub.s f14, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fsub.s f12, f23, f14, dyn # perform operation
fsub.s f12, f23, f14, rdn # perform operation
fsub.s f12, f23, f14, rmm # perform operation
fsub.s f12, f23, f14, rne # perform operation
fsub.s f12, f23, f14, rtz # perform operation
fsub.s f12, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fsub.s f14, f25, f8, dyn # perform operation
fsub.s f14, f25, f8, rdn # perform operation
fsub.s f14, f25, f8, rmm # perform operation
fsub.s f14, f25, f8, rne # perform operation
fsub.s f14, f25, f8, rtz # perform operation
fsub.s f14, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fsub.s f8, f11, f18, dyn # perform operation
fsub.s f8, f11, f18, rdn # perform operation
fsub.s f8, f11, f18, rmm # perform operation
fsub.s f8, f11, f18, rne # perform operation
fsub.s f8, f11, f18, rtz # perform operation
fsub.s f8, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fsub.s f5, f1, f24, dyn # perform operation
fsub.s f5, f1, f24, rdn # perform operation
fsub.s f5, f1, f24, rmm # perform operation
fsub.s f5, f1, f24, rne # perform operation
fsub.s f5, f1, f24, rtz # perform operation
fsub.s f5, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fsub.s f15, f13, f19, dyn # perform operation
fsub.s f15, f13, f19, rdn # perform operation
fsub.s f15, f13, f19, rmm # perform operation
fsub.s f15, f13, f19, rne # perform operation
fsub.s f15, f13, f19, rtz # perform operation
fsub.s f15, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f13, f29, f31, dyn # perform operation
fsub.s f13, f29, f31, rdn # perform operation
fsub.s f13, f29, f31, rmm # perform operation
fsub.s f13, f29, f31, rne # perform operation
fsub.s f13, f29, f31, rtz # perform operation
fsub.s f13, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fsub.s f17, f6, f23, dyn # perform operation
fsub.s f17, f6, f23, rdn # perform operation
fsub.s f17, f6, f23, rmm # perform operation
fsub.s f17, f6, f23, rne # perform operation
fsub.s f17, f6, f23, rtz # perform operation
fsub.s f17, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fsub.s f20, f23, f7, dyn # perform operation
fsub.s f20, f23, f7, rdn # perform operation
fsub.s f20, f23, f7, rmm # perform operation
fsub.s f20, f23, f7, rne # perform operation
fsub.s f20, f23, f7, rtz # perform operation
fsub.s f20, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fsub.s f22, f31, f17, dyn # perform operation
fsub.s f22, f31, f17, rdn # perform operation
fsub.s f22, f31, f17, rmm # perform operation
fsub.s f22, f31, f17, rne # perform operation
fsub.s f22, f31, f17, rtz # perform operation
fsub.s f22, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fsub.s f19, f31, f12, dyn # perform operation
fsub.s f19, f31, f12, rdn # perform operation
fsub.s f19, f31, f12, rmm # perform operation
fsub.s f19, f31, f12, rne # perform operation
fsub.s f19, f31, f12, rtz # perform operation
fsub.s f19, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fsub.s f9, f31, f6, dyn # perform operation
fsub.s f9, f31, f6, rdn # perform operation
fsub.s f9, f31, f6, rmm # perform operation
fsub.s f9, f31, f6, rne # perform operation
fsub.s f9, f31, f6, rtz # perform operation
fsub.s f9, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fsub.s f19, f21, f15, dyn # perform operation
fsub.s f19, f21, f15, rdn # perform operation
fsub.s f19, f21, f15, rmm # perform operation
fsub.s f19, f21, f15, rne # perform operation
fsub.s f19, f21, f15, rtz # perform operation
fsub.s f19, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f21, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fsub.s f19, f28, f18, dyn # perform operation
fsub.s f19, f28, f18, rdn # perform operation
fsub.s f19, f28, f18, rmm # perform operation
fsub.s f19, f28, f18, rne # perform operation
fsub.s f19, f28, f18, rtz # perform operation
fsub.s f19, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fsub.s f21, f22, f2, dyn # perform operation
fsub.s f21, f22, f2, rdn # perform operation
fsub.s f21, f22, f2, rmm # perform operation
fsub.s f21, f22, f2, rne # perform operation
fsub.s f21, f22, f2, rtz # perform operation
fsub.s f21, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fsub.s f28, f14, f1, dyn # perform operation
fsub.s f28, f14, f1, rdn # perform operation
fsub.s f28, f14, f1, rmm # perform operation
fsub.s f28, f14, f1, rne # perform operation
fsub.s f28, f14, f1, rtz # perform operation
fsub.s f28, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsub.s f11, f5, f6, dyn # perform operation
fsub.s f11, f5, f6, rdn # perform operation
fsub.s f11, f5, f6, rmm # perform operation
fsub.s f11, f5, f6, rne # perform operation
fsub.s f11, f5, f6, rtz # perform operation
fsub.s f11, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fsub.s f21, f31, f14, dyn # perform operation
fsub.s f21, f31, f14, rdn # perform operation
fsub.s f21, f31, f14, rmm # perform operation
fsub.s f21, f31, f14, rne # perform operation
fsub.s f21, f31, f14, rtz # perform operation
fsub.s f21, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fsub.s f23, f30, f5, dyn # perform operation
fsub.s f23, f30, f5, rdn # perform operation
fsub.s f23, f30, f5, rmm # perform operation
fsub.s f23, f30, f5, rne # perform operation
fsub.s f23, f30, f5, rtz # perform operation
fsub.s f23, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fsub.s f27, f30, f26, dyn # perform operation
fsub.s f27, f30, f26, rdn # perform operation
fsub.s f27, f30, f26, rmm # perform operation
fsub.s f27, f30, f26, rne # perform operation
fsub.s f27, f30, f26, rtz # perform operation
fsub.s f27, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fsub.s f26, f15, f19, dyn # perform operation
fsub.s f26, f15, f19, rdn # perform operation
fsub.s f26, f15, f19, rmm # perform operation
fsub.s f26, f15, f19, rne # perform operation
fsub.s f26, f15, f19, rtz # perform operation
fsub.s f26, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fsub.s f10, f17, f12, dyn # perform operation
fsub.s f10, f17, f12, rdn # perform operation
fsub.s f10, f17, f12, rmm # perform operation
fsub.s f10, f17, f12, rne # perform operation
fsub.s f10, f17, f12, rtz # perform operation
fsub.s f10, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fsub.s f31, f2, f13, dyn # perform operation
fsub.s f31, f2, f13, rdn # perform operation
fsub.s f31, f2, f13, rmm # perform operation
fsub.s f31, f2, f13, rne # perform operation
fsub.s f31, f2, f13, rtz # perform operation
fsub.s f31, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsub.s f27, f22, f7, dyn # perform operation
fsub.s f27, f22, f7, rdn # perform operation
fsub.s f27, f22, f7, rmm # perform operation
fsub.s f27, f22, f7, rne # perform operation
fsub.s f27, f22, f7, rtz # perform operation
fsub.s f27, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fsub.s f30, f1, f20, dyn # perform operation
fsub.s f30, f1, f20, rdn # perform operation
fsub.s f30, f1, f20, rmm # perform operation
fsub.s f30, f1, f20, rne # perform operation
fsub.s f30, f1, f20, rtz # perform operation
fsub.s f30, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fsub.s f7, f29, f14, dyn # perform operation
fsub.s f7, f29, f14, rdn # perform operation
fsub.s f7, f29, f14, rmm # perform operation
fsub.s f7, f29, f14, rne # perform operation
fsub.s f7, f29, f14, rtz # perform operation
fsub.s f7, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fsub.s f17, f3, f29, dyn # perform operation
fsub.s f17, f3, f29, rdn # perform operation
fsub.s f17, f3, f29, rmm # perform operation
fsub.s f17, f3, f29, rne # perform operation
fsub.s f17, f3, f29, rtz # perform operation
fsub.s f17, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fsub.s f16, f21, f25, dyn # perform operation
fsub.s f16, f21, f25, rdn # perform operation
fsub.s f16, f21, f25, rmm # perform operation
fsub.s f16, f21, f25, rne # perform operation
fsub.s f16, f21, f25, rtz # perform operation
fsub.s f16, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
fsub.s f21, f30, f25, dyn # perform operation
fsub.s f21, f30, f25, rdn # perform operation
fsub.s f21, f30, f25, rmm # perform operation
fsub.s f21, f30, f25, rne # perform operation
fsub.s f21, f30, f25, rtz # perform operation
fsub.s f21, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fsub.s f27, f29, f2, dyn # perform operation
fsub.s f27, f29, f2, rdn # perform operation
fsub.s f27, f29, f2, rmm # perform operation
fsub.s f27, f29, f2, rne # perform operation
fsub.s f27, f29, f2, rtz # perform operation
fsub.s f27, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fsub.s f7, f13, f10, dyn # perform operation
fsub.s f7, f13, f10, rdn # perform operation
fsub.s f7, f13, f10, rmm # perform operation
fsub.s f7, f13, f10, rne # perform operation
fsub.s f7, f13, f10, rtz # perform operation
fsub.s f7, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fsub.s f27, f14, f8, dyn # perform operation
fsub.s f27, f14, f8, rdn # perform operation
fsub.s f27, f14, f8, rmm # perform operation
fsub.s f27, f14, f8, rne # perform operation
fsub.s f27, f14, f8, rtz # perform operation
fsub.s f27, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fsub.s f25, f27, f5, dyn # perform operation
fsub.s f25, f27, f5, rdn # perform operation
fsub.s f25, f27, f5, rmm # perform operation
fsub.s f25, f27, f5, rne # perform operation
fsub.s f25, f27, f5, rtz # perform operation
fsub.s f25, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fsub.s f8, f26, f17, dyn # perform operation
fsub.s f8, f26, f17, rdn # perform operation
fsub.s f8, f26, f17, rmm # perform operation
fsub.s f8, f26, f17, rne # perform operation
fsub.s f8, f26, f17, rtz # perform operation
fsub.s f8, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fsub.s f13, f21, f6, dyn # perform operation
fsub.s f13, f21, f6, rdn # perform operation
fsub.s f13, f21, f6, rmm # perform operation
fsub.s f13, f21, f6, rne # perform operation
fsub.s f13, f21, f6, rtz # perform operation
fsub.s f13, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fsub.s f23, f17, f2, dyn # perform operation
fsub.s f23, f17, f2, rdn # perform operation
fsub.s f23, f17, f2, rmm # perform operation
fsub.s f23, f17, f2, rne # perform operation
fsub.s f23, f17, f2, rtz # perform operation
fsub.s f23, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fsub.s f16, f30, f11, dyn # perform operation
fsub.s f16, f30, f11, rdn # perform operation
fsub.s f16, f30, f11, rmm # perform operation
fsub.s f16, f30, f11, rne # perform operation
fsub.s f16, f30, f11, rtz # perform operation
fsub.s f16, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fsub.s f28, f16, f31, dyn # perform operation
fsub.s f28, f16, f31, rdn # perform operation
fsub.s f28, f16, f31, rmm # perform operation
fsub.s f28, f16, f31, rne # perform operation
fsub.s f28, f16, f31, rtz # perform operation
fsub.s f28, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fsub.s f7, f6, f28, dyn # perform operation
fsub.s f7, f6, f28, rdn # perform operation
fsub.s f7, f6, f28, rmm # perform operation
fsub.s f7, f6, f28, rne # perform operation
fsub.s f7, f6, f28, rtz # perform operation
fsub.s f7, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fsub.s f5, f18, f14, dyn # perform operation
fsub.s f5, f18, f14, rdn # perform operation
fsub.s f5, f18, f14, rmm # perform operation
fsub.s f5, f18, f14, rne # perform operation
fsub.s f5, f18, f14, rtz # perform operation
fsub.s f5, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fsub.s f18, f14, f20, dyn # perform operation
fsub.s f18, f14, f20, rdn # perform operation
fsub.s f18, f14, f20, rmm # perform operation
fsub.s f18, f14, f20, rne # perform operation
fsub.s f18, f14, f20, rtz # perform operation
fsub.s f18, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fsub.s f1, f23, f13, dyn # perform operation
fsub.s f1, f23, f13, rdn # perform operation
fsub.s f1, f23, f13, rmm # perform operation
fsub.s f1, f23, f13, rne # perform operation
fsub.s f1, f23, f13, rtz # perform operation
fsub.s f1, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fsub.s f25, f27, f16, dyn # perform operation
fsub.s f25, f27, f16, rdn # perform operation
fsub.s f25, f27, f16, rmm # perform operation
fsub.s f25, f27, f16, rne # perform operation
fsub.s f25, f27, f16, rtz # perform operation
fsub.s f25, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f5, f8, f27, dyn # perform operation
fsub.s f5, f8, f27, rdn # perform operation
fsub.s f5, f8, f27, rmm # perform operation
fsub.s f5, f8, f27, rne # perform operation
fsub.s f5, f8, f27, rtz # perform operation
fsub.s f5, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fsub.s f10, f6, f25, dyn # perform operation
fsub.s f10, f6, f25, rdn # perform operation
fsub.s f10, f6, f25, rmm # perform operation
fsub.s f10, f6, f25, rne # perform operation
fsub.s f10, f6, f25, rtz # perform operation
fsub.s f10, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fsub.s f19, f26, f30, dyn # perform operation
fsub.s f19, f26, f30, rdn # perform operation
fsub.s f19, f26, f30, rmm # perform operation
fsub.s f19, f26, f30, rne # perform operation
fsub.s f19, f26, f30, rtz # perform operation
fsub.s f19, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fsub.s f13, f15, f9, dyn # perform operation
fsub.s f13, f15, f9, rdn # perform operation
fsub.s f13, f15, f9, rmm # perform operation
fsub.s f13, f15, f9, rne # perform operation
fsub.s f13, f15, f9, rtz # perform operation
fsub.s f13, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fsub.s f9, f11, f15, dyn # perform operation
fsub.s f9, f11, f15, rdn # perform operation
fsub.s f9, f11, f15, rmm # perform operation
fsub.s f9, f11, f15, rne # perform operation
fsub.s f9, f11, f15, rtz # perform operation
fsub.s f9, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fsub.s f21, f22, f5, dyn # perform operation
fsub.s f21, f22, f5, rdn # perform operation
fsub.s f21, f22, f5, rmm # perform operation
fsub.s f21, f22, f5, rne # perform operation
fsub.s f21, f22, f5, rtz # perform operation
fsub.s f21, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fsub.s f31, f18, f29, dyn # perform operation
fsub.s f31, f18, f29, rdn # perform operation
fsub.s f31, f18, f29, rmm # perform operation
fsub.s f31, f18, f29, rne # perform operation
fsub.s f31, f18, f29, rtz # perform operation
fsub.s f31, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fsub.s f17, f31, f23, dyn # perform operation
fsub.s f17, f31, f23, rdn # perform operation
fsub.s f17, f31, f23, rmm # perform operation
fsub.s f17, f31, f23, rne # perform operation
fsub.s f17, f31, f23, rtz # perform operation
fsub.s f17, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fsub.s f10, f27, f12, dyn # perform operation
fsub.s f10, f27, f12, rdn # perform operation
fsub.s f10, f27, f12, rmm # perform operation
fsub.s f10, f27, f12, rne # perform operation
fsub.s f10, f27, f12, rtz # perform operation
fsub.s f10, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fsub.s f10, f27, f28, dyn # perform operation
fsub.s f10, f27, f28, rdn # perform operation
fsub.s f10, f27, f28, rmm # perform operation
fsub.s f10, f27, f28, rne # perform operation
fsub.s f10, f27, f28, rtz # perform operation
fsub.s f10, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fsub.s f25, f23, f22, dyn # perform operation
fsub.s f25, f23, f22, rdn # perform operation
fsub.s f25, f23, f22, rmm # perform operation
fsub.s f25, f23, f22, rne # perform operation
fsub.s f25, f23, f22, rtz # perform operation
fsub.s f25, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fsub.s f15, f29, f25, dyn # perform operation
fsub.s f15, f29, f25, rdn # perform operation
fsub.s f15, f29, f25, rmm # perform operation
fsub.s f15, f29, f25, rne # perform operation
fsub.s f15, f29, f25, rtz # perform operation
fsub.s f15, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fsub.s f25, f16, f9, dyn # perform operation
fsub.s f25, f16, f9, rdn # perform operation
fsub.s f25, f16, f9, rmm # perform operation
fsub.s f25, f16, f9, rne # perform operation
fsub.s f25, f16, f9, rtz # perform operation
fsub.s f25, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
fsub.s f28, f12, f11, dyn # perform operation
fsub.s f28, f12, f11, rdn # perform operation
fsub.s f28, f12, f11, rmm # perform operation
fsub.s f28, f12, f11, rne # perform operation
fsub.s f28, f12, f11, rtz # perform operation
fsub.s f28, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fsub.s f31, f18, f10, dyn # perform operation
fsub.s f31, f18, f10, rdn # perform operation
fsub.s f31, f18, f10, rmm # perform operation
fsub.s f31, f18, f10, rne # perform operation
fsub.s f31, f18, f10, rtz # perform operation
fsub.s f31, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fsub.s f6, f1, f18, dyn # perform operation
fsub.s f6, f1, f18, rdn # perform operation
fsub.s f6, f1, f18, rmm # perform operation
fsub.s f6, f1, f18, rne # perform operation
fsub.s f6, f1, f18, rtz # perform operation
fsub.s f6, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fsub.s f16, f10, f25, dyn # perform operation
fsub.s f16, f10, f25, rdn # perform operation
fsub.s f16, f10, f25, rmm # perform operation
fsub.s f16, f10, f25, rne # perform operation
fsub.s f16, f10, f25, rtz # perform operation
fsub.s f16, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fsub.s f11, f10, f1, dyn # perform operation
fsub.s f11, f10, f1, rdn # perform operation
fsub.s f11, f10, f1, rmm # perform operation
fsub.s f11, f10, f1, rne # perform operation
fsub.s f11, f10, f1, rtz # perform operation
fsub.s f11, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fsub.s f10, f7, f17, dyn # perform operation
fsub.s f10, f7, f17, rdn # perform operation
fsub.s f10, f7, f17, rmm # perform operation
fsub.s f10, f7, f17, rne # perform operation
fsub.s f10, f7, f17, rtz # perform operation
fsub.s f10, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fsub.s f22, f6, f25, dyn # perform operation
fsub.s f22, f6, f25, rdn # perform operation
fsub.s f22, f6, f25, rmm # perform operation
fsub.s f22, f6, f25, rne # perform operation
fsub.s f22, f6, f25, rtz # perform operation
fsub.s f22, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fsub.s f22, f8, f26, dyn # perform operation
fsub.s f22, f8, f26, rdn # perform operation
fsub.s f22, f8, f26, rmm # perform operation
fsub.s f22, f8, f26, rne # perform operation
fsub.s f22, f8, f26, rtz # perform operation
fsub.s f22, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fsub.s f17, f15, f3, dyn # perform operation
fsub.s f17, f15, f3, rdn # perform operation
fsub.s f17, f15, f3, rmm # perform operation
fsub.s f17, f15, f3, rne # perform operation
fsub.s f17, f15, f3, rtz # perform operation
fsub.s f17, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fsub.s f6, f30, f9, dyn # perform operation
fsub.s f6, f30, f9, rdn # perform operation
fsub.s f6, f30, f9, rmm # perform operation
fsub.s f6, f30, f9, rne # perform operation
fsub.s f6, f30, f9, rtz # perform operation
fsub.s f6, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fsub.s f24, f9, f10, dyn # perform operation
fsub.s f24, f9, f10, rdn # perform operation
fsub.s f24, f9, f10, rmm # perform operation
fsub.s f24, f9, f10, rne # perform operation
fsub.s f24, f9, f10, rtz # perform operation
fsub.s f24, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fsub.s f1, f21, f7, dyn # perform operation
fsub.s f1, f21, f7, rdn # perform operation
fsub.s f1, f21, f7, rmm # perform operation
fsub.s f1, f21, f7, rne # perform operation
fsub.s f1, f21, f7, rtz # perform operation
fsub.s f1, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fsub.s f27, f29, f11, dyn # perform operation
fsub.s f27, f29, f11, rdn # perform operation
fsub.s f27, f29, f11, rmm # perform operation
fsub.s f27, f29, f11, rne # perform operation
fsub.s f27, f29, f11, rtz # perform operation
fsub.s f27, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fsub.s f25, f19, f22, dyn # perform operation
fsub.s f25, f19, f22, rdn # perform operation
fsub.s f25, f19, f22, rmm # perform operation
fsub.s f25, f19, f22, rne # perform operation
fsub.s f25, f19, f22, rtz # perform operation
fsub.s f25, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fsub.s f26, f12, f21, dyn # perform operation
fsub.s f26, f12, f21, rdn # perform operation
fsub.s f26, f12, f21, rmm # perform operation
fsub.s f26, f12, f21, rne # perform operation
fsub.s f26, f12, f21, rtz # perform operation
fsub.s f26, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fsub.s f16, f12, f18, dyn # perform operation
fsub.s f16, f12, f18, rdn # perform operation
fsub.s f16, f12, f18, rmm # perform operation
fsub.s f16, f12, f18, rne # perform operation
fsub.s f16, f12, f18, rtz # perform operation
fsub.s f16, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fsub.s f21, f7, f14, dyn # perform operation
fsub.s f21, f7, f14, rdn # perform operation
fsub.s f21, f7, f14, rmm # perform operation
fsub.s f21, f7, f14, rne # perform operation
fsub.s f21, f7, f14, rtz # perform operation
fsub.s f21, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fsub.s f14, f28, f21, dyn # perform operation
fsub.s f14, f28, f21, rdn # perform operation
fsub.s f14, f28, f21, rmm # perform operation
fsub.s f14, f28, f21, rne # perform operation
fsub.s f14, f28, f21, rtz # perform operation
fsub.s f14, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fsub.s f18, f31, f3, dyn # perform operation
fsub.s f18, f31, f3, rdn # perform operation
fsub.s f18, f31, f3, rmm # perform operation
fsub.s f18, f31, f3, rne # perform operation
fsub.s f18, f31, f3, rtz # perform operation
fsub.s f18, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f7, f29, f9, dyn # perform operation
fsub.s f7, f29, f9, rdn # perform operation
fsub.s f7, f29, f9, rmm # perform operation
fsub.s f7, f29, f9, rne # perform operation
fsub.s f7, f29, f9, rtz # perform operation
fsub.s f7, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fsub.s f24, f21, f18, dyn # perform operation
fsub.s f24, f21, f18, rdn # perform operation
fsub.s f24, f21, f18, rmm # perform operation
fsub.s f24, f21, f18, rne # perform operation
fsub.s f24, f21, f18, rtz # perform operation
fsub.s f24, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fsub.s f12, f2, f9, dyn # perform operation
fsub.s f12, f2, f9, rdn # perform operation
fsub.s f12, f2, f9, rmm # perform operation
fsub.s f12, f2, f9, rne # perform operation
fsub.s f12, f2, f9, rtz # perform operation
fsub.s f12, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fsub.s f12, f7, f21, dyn # perform operation
fsub.s f12, f7, f21, rdn # perform operation
fsub.s f12, f7, f21, rmm # perform operation
fsub.s f12, f7, f21, rne # perform operation
fsub.s f12, f7, f21, rtz # perform operation
fsub.s f12, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fsub.s f25, f18, f16, dyn # perform operation
fsub.s f25, f18, f16, rdn # perform operation
fsub.s f25, f18, f16, rmm # perform operation
fsub.s f25, f18, f16, rne # perform operation
fsub.s f25, f18, f16, rtz # perform operation
fsub.s f25, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fsub.s f1, f25, f28, dyn # perform operation
fsub.s f1, f25, f28, rdn # perform operation
fsub.s f1, f25, f28, rmm # perform operation
fsub.s f1, f25, f28, rne # perform operation
fsub.s f1, f25, f28, rtz # perform operation
fsub.s f1, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fsub.s f10, f3, f19, dyn # perform operation
fsub.s f10, f3, f19, rdn # perform operation
fsub.s f10, f3, f19, rmm # perform operation
fsub.s f10, f3, f19, rne # perform operation
fsub.s f10, f3, f19, rtz # perform operation
fsub.s f10, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fsub.s f29, f28, f22, dyn # perform operation
fsub.s f29, f28, f22, rdn # perform operation
fsub.s f29, f28, f22, rmm # perform operation
fsub.s f29, f28, f22, rne # perform operation
fsub.s f29, f28, f22, rtz # perform operation
fsub.s f29, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fsub.s f23, f10, f29, dyn # perform operation
fsub.s f23, f10, f29, rdn # perform operation
fsub.s f23, f10, f29, rmm # perform operation
fsub.s f23, f10, f29, rne # perform operation
fsub.s f23, f10, f29, rtz # perform operation
fsub.s f23, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fsub.s f5, f1, f19, dyn # perform operation
fsub.s f5, f1, f19, rdn # perform operation
fsub.s f5, f1, f19, rmm # perform operation
fsub.s f5, f1, f19, rne # perform operation
fsub.s f5, f1, f19, rtz # perform operation
fsub.s f5, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fsub.s f9, f22, f14, dyn # perform operation
fsub.s f9, f22, f14, rdn # perform operation
fsub.s f9, f22, f14, rmm # perform operation
fsub.s f9, f22, f14, rne # perform operation
fsub.s f9, f22, f14, rtz # perform operation
fsub.s f9, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fsub.s f31, f24, f17, dyn # perform operation
fsub.s f31, f24, f17, rdn # perform operation
fsub.s f31, f24, f17, rmm # perform operation
fsub.s f31, f24, f17, rne # perform operation
fsub.s f31, f24, f17, rtz # perform operation
fsub.s f31, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
fsub.s f13, f11, f31, dyn # perform operation
fsub.s f13, f11, f31, rdn # perform operation
fsub.s f13, f11, f31, rmm # perform operation
fsub.s f13, f11, f31, rne # perform operation
fsub.s f13, f11, f31, rtz # perform operation
fsub.s f13, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fsub.s f19, f18, f25, dyn # perform operation
fsub.s f19, f18, f25, rdn # perform operation
fsub.s f19, f18, f25, rmm # perform operation
fsub.s f19, f18, f25, rne # perform operation
fsub.s f19, f18, f25, rtz # perform operation
fsub.s f19, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f3, f26, f12, dyn # perform operation
fsub.s f3, f26, f12, rdn # perform operation
fsub.s f3, f26, f12, rmm # perform operation
fsub.s f3, f26, f12, rne # perform operation
fsub.s f3, f26, f12, rtz # perform operation
fsub.s f3, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fsub.s f18, f25, f29, dyn # perform operation
fsub.s f18, f25, f29, rdn # perform operation
fsub.s f18, f25, f29, rmm # perform operation
fsub.s f18, f25, f29, rne # perform operation
fsub.s f18, f25, f29, rtz # perform operation
fsub.s f18, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fsub.s f15, f6, f17, dyn # perform operation
fsub.s f15, f6, f17, rdn # perform operation
fsub.s f15, f6, f17, rmm # perform operation
fsub.s f15, f6, f17, rne # perform operation
fsub.s f15, f6, f17, rtz # perform operation
fsub.s f15, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fsub.s f2, f24, f14, dyn # perform operation
fsub.s f2, f24, f14, rdn # perform operation
fsub.s f2, f24, f14, rmm # perform operation
fsub.s f2, f24, f14, rne # perform operation
fsub.s f2, f24, f14, rtz # perform operation
fsub.s f2, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fsub.s f31, f30, f17, dyn # perform operation
fsub.s f31, f30, f17, rdn # perform operation
fsub.s f31, f30, f17, rmm # perform operation
fsub.s f31, f30, f17, rne # perform operation
fsub.s f31, f30, f17, rtz # perform operation
fsub.s f31, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fsub.s f18, f23, f6, dyn # perform operation
fsub.s f18, f23, f6, rdn # perform operation
fsub.s f18, f23, f6, rmm # perform operation
fsub.s f18, f23, f6, rne # perform operation
fsub.s f18, f23, f6, rtz # perform operation
fsub.s f18, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fsub.s f29, f13, f12, dyn # perform operation
fsub.s f29, f13, f12, rdn # perform operation
fsub.s f29, f13, f12, rmm # perform operation
fsub.s f29, f13, f12, rne # perform operation
fsub.s f29, f13, f12, rtz # perform operation
fsub.s f29, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fsub.s f26, f5, f28, dyn # perform operation
fsub.s f26, f5, f28, rdn # perform operation
fsub.s f26, f5, f28, rmm # perform operation
fsub.s f26, f5, f28, rne # perform operation
fsub.s f26, f5, f28, rtz # perform operation
fsub.s f26, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fsub.s f5, f29, f13, dyn # perform operation
fsub.s f5, f29, f13, rdn # perform operation
fsub.s f5, f29, f13, rmm # perform operation
fsub.s f5, f29, f13, rne # perform operation
fsub.s f5, f29, f13, rtz # perform operation
fsub.s f5, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fsub.s f19, f6, f18, dyn # perform operation
fsub.s f19, f6, f18, rdn # perform operation
fsub.s f19, f6, f18, rmm # perform operation
fsub.s f19, f6, f18, rne # perform operation
fsub.s f19, f6, f18, rtz # perform operation
fsub.s f19, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fsub.s f22, f29, f13, dyn # perform operation
fsub.s f22, f29, f13, rdn # perform operation
fsub.s f22, f29, f13, rmm # perform operation
fsub.s f22, f29, f13, rne # perform operation
fsub.s f22, f29, f13, rtz # perform operation
fsub.s f22, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fsub.s f19, f15, f17, dyn # perform operation
fsub.s f19, f15, f17, rdn # perform operation
fsub.s f19, f15, f17, rmm # perform operation
fsub.s f19, f15, f17, rne # perform operation
fsub.s f19, f15, f17, rtz # perform operation
fsub.s f19, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fsub.s f2, f30, f1, dyn # perform operation
fsub.s f2, f30, f1, rdn # perform operation
fsub.s f2, f30, f1, rmm # perform operation
fsub.s f2, f30, f1, rne # perform operation
fsub.s f2, f30, f1, rtz # perform operation
fsub.s f2, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fsub.s f29, f10, f27, dyn # perform operation
fsub.s f29, f10, f27, rdn # perform operation
fsub.s f29, f10, f27, rmm # perform operation
fsub.s f29, f10, f27, rne # perform operation
fsub.s f29, f10, f27, rtz # perform operation
fsub.s f29, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fsub.s f10, f15, f22, dyn # perform operation
fsub.s f10, f15, f22, rdn # perform operation
fsub.s f10, f15, f22, rmm # perform operation
fsub.s f10, f15, f22, rne # perform operation
fsub.s f10, f15, f22, rtz # perform operation
fsub.s f10, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fsub.s f14, f1, f7, dyn # perform operation
fsub.s f14, f1, f7, rdn # perform operation
fsub.s f14, f1, f7, rmm # perform operation
fsub.s f14, f1, f7, rne # perform operation
fsub.s f14, f1, f7, rtz # perform operation
fsub.s f14, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fsub.s f18, f30, f29, dyn # perform operation
fsub.s f18, f30, f29, rdn # perform operation
fsub.s f18, f30, f29, rmm # perform operation
fsub.s f18, f30, f29, rne # perform operation
fsub.s f18, f30, f29, rtz # perform operation
fsub.s f18, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fsub.s f20, f12, f8, dyn # perform operation
fsub.s f20, f12, f8, rdn # perform operation
fsub.s f20, f12, f8, rmm # perform operation
fsub.s f20, f12, f8, rne # perform operation
fsub.s f20, f12, f8, rtz # perform operation
fsub.s f20, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fsub.s f31, f11, f29, dyn # perform operation
fsub.s f31, f11, f29, rdn # perform operation
fsub.s f31, f11, f29, rmm # perform operation
fsub.s f31, f11, f29, rne # perform operation
fsub.s f31, f11, f29, rtz # perform operation
fsub.s f31, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fsub.s f28, f23, f14, dyn # perform operation
fsub.s f28, f23, f14, rdn # perform operation
fsub.s f28, f23, f14, rmm # perform operation
fsub.s f28, f23, f14, rne # perform operation
fsub.s f28, f23, f14, rtz # perform operation
fsub.s f28, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fsub.s f16, f13, f7, dyn # perform operation
fsub.s f16, f13, f7, rdn # perform operation
fsub.s f16, f13, f7, rmm # perform operation
fsub.s f16, f13, f7, rne # perform operation
fsub.s f16, f13, f7, rtz # perform operation
fsub.s f16, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fsub.s f22, f27, f17, dyn # perform operation
fsub.s f22, f27, f17, rdn # perform operation
fsub.s f22, f27, f17, rmm # perform operation
fsub.s f22, f27, f17, rne # perform operation
fsub.s f22, f27, f17, rtz # perform operation
fsub.s f22, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fsub.s f9, f24, f29, dyn # perform operation
fsub.s f9, f24, f29, rdn # perform operation
fsub.s f9, f24, f29, rmm # perform operation
fsub.s f9, f24, f29, rne # perform operation
fsub.s f9, f24, f29, rtz # perform operation
fsub.s f9, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
fsub.s f16, f25, f6, dyn # perform operation
fsub.s f16, f25, f6, rdn # perform operation
fsub.s f16, f25, f6, rmm # perform operation
fsub.s f16, f25, f6, rne # perform operation
fsub.s f16, f25, f6, rtz # perform operation
fsub.s f16, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fsub.s f8, f6, f18, dyn # perform operation
fsub.s f8, f6, f18, rdn # perform operation
fsub.s f8, f6, f18, rmm # perform operation
fsub.s f8, f6, f18, rne # perform operation
fsub.s f8, f6, f18, rtz # perform operation
fsub.s f8, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fsub.s f16, f22, f2, dyn # perform operation
fsub.s f16, f22, f2, rdn # perform operation
fsub.s f16, f22, f2, rmm # perform operation
fsub.s f16, f22, f2, rne # perform operation
fsub.s f16, f22, f2, rtz # perform operation
fsub.s f16, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fsub.s f10, f30, f24, dyn # perform operation
fsub.s f10, f30, f24, rdn # perform operation
fsub.s f10, f30, f24, rmm # perform operation
fsub.s f10, f30, f24, rne # perform operation
fsub.s f10, f30, f24, rtz # perform operation
fsub.s f10, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fsub.s f18, f27, f10, dyn # perform operation
fsub.s f18, f27, f10, rdn # perform operation
fsub.s f18, f27, f10, rmm # perform operation
fsub.s f18, f27, f10, rne # perform operation
fsub.s f18, f27, f10, rtz # perform operation
fsub.s f18, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fsub.s f23, f26, f2, dyn # perform operation
fsub.s f23, f26, f2, rdn # perform operation
fsub.s f23, f26, f2, rmm # perform operation
fsub.s f23, f26, f2, rne # perform operation
fsub.s f23, f26, f2, rtz # perform operation
fsub.s f23, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fsub.s f12, f14, f28, dyn # perform operation
fsub.s f12, f14, f28, rdn # perform operation
fsub.s f12, f14, f28, rmm # perform operation
fsub.s f12, f14, f28, rne # perform operation
fsub.s f12, f14, f28, rtz # perform operation
fsub.s f12, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fsub.s f29, f8, f31, dyn # perform operation
fsub.s f29, f8, f31, rdn # perform operation
fsub.s f29, f8, f31, rmm # perform operation
fsub.s f29, f8, f31, rne # perform operation
fsub.s f29, f8, f31, rtz # perform operation
fsub.s f29, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsub.s f31, f7, f30, dyn # perform operation
fsub.s f31, f7, f30, rdn # perform operation
fsub.s f31, f7, f30, rmm # perform operation
fsub.s f31, f7, f30, rne # perform operation
fsub.s f31, f7, f30, rtz # perform operation
fsub.s f31, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fsub.s f16, f11, f23, dyn # perform operation
fsub.s f16, f11, f23, rdn # perform operation
fsub.s f16, f11, f23, rmm # perform operation
fsub.s f16, f11, f23, rne # perform operation
fsub.s f16, f11, f23, rtz # perform operation
fsub.s f16, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fsub.s f26, f28, f12, dyn # perform operation
fsub.s f26, f28, f12, rdn # perform operation
fsub.s f26, f28, f12, rmm # perform operation
fsub.s f26, f28, f12, rne # perform operation
fsub.s f26, f28, f12, rtz # perform operation
fsub.s f26, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fsub.s f16, f11, f3, dyn # perform operation
fsub.s f16, f11, f3, rdn # perform operation
fsub.s f16, f11, f3, rmm # perform operation
fsub.s f16, f11, f3, rne # perform operation
fsub.s f16, f11, f3, rtz # perform operation
fsub.s f16, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fsub.s f22, f25, f19, dyn # perform operation
fsub.s f22, f25, f19, rdn # perform operation
fsub.s f22, f25, f19, rmm # perform operation
fsub.s f22, f25, f19, rne # perform operation
fsub.s f22, f25, f19, rtz # perform operation
fsub.s f22, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fsub.s f17, f7, f2, dyn # perform operation
fsub.s f17, f7, f2, rdn # perform operation
fsub.s f17, f7, f2, rmm # perform operation
fsub.s f17, f7, f2, rne # perform operation
fsub.s f17, f7, f2, rtz # perform operation
fsub.s f17, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fsub.s f22, f28, f6, dyn # perform operation
fsub.s f22, f28, f6, rdn # perform operation
fsub.s f22, f28, f6, rmm # perform operation
fsub.s f22, f28, f6, rne # perform operation
fsub.s f22, f28, f6, rtz # perform operation
fsub.s f22, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fsub.s f22, f6, f31, dyn # perform operation
fsub.s f22, f6, f31, rdn # perform operation
fsub.s f22, f6, f31, rmm # perform operation
fsub.s f22, f6, f31, rne # perform operation
fsub.s f22, f6, f31, rtz # perform operation
fsub.s f22, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fsub.s f19, f17, f14, dyn # perform operation
fsub.s f19, f17, f14, rdn # perform operation
fsub.s f19, f17, f14, rmm # perform operation
fsub.s f19, f17, f14, rne # perform operation
fsub.s f19, f17, f14, rtz # perform operation
fsub.s f19, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fsub.s f25, f22, f13, dyn # perform operation
fsub.s f25, f22, f13, rdn # perform operation
fsub.s f25, f22, f13, rmm # perform operation
fsub.s f25, f22, f13, rne # perform operation
fsub.s f25, f22, f13, rtz # perform operation
fsub.s f25, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fsub.s f5, f20, f15, dyn # perform operation
fsub.s f5, f20, f15, rdn # perform operation
fsub.s f5, f20, f15, rmm # perform operation
fsub.s f5, f20, f15, rne # perform operation
fsub.s f5, f20, f15, rtz # perform operation
fsub.s f5, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fsub.s f28, f9, f21, dyn # perform operation
fsub.s f28, f9, f21, rdn # perform operation
fsub.s f28, f9, f21, rmm # perform operation
fsub.s f28, f9, f21, rne # perform operation
fsub.s f28, f9, f21, rtz # perform operation
fsub.s f28, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f30, f13, f3, dyn # perform operation
fsub.s f30, f13, f3, rdn # perform operation
fsub.s f30, f13, f3, rmm # perform operation
fsub.s f30, f13, f3, rne # perform operation
fsub.s f30, f13, f3, rtz # perform operation
fsub.s f30, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fsub.s f5, f20, f10, dyn # perform operation
fsub.s f5, f20, f10, rdn # perform operation
fsub.s f5, f20, f10, rmm # perform operation
fsub.s f5, f20, f10, rne # perform operation
fsub.s f5, f20, f10, rtz # perform operation
fsub.s f5, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fsub.s f30, f5, f16, dyn # perform operation
fsub.s f30, f5, f16, rdn # perform operation
fsub.s f30, f5, f16, rmm # perform operation
fsub.s f30, f5, f16, rne # perform operation
fsub.s f30, f5, f16, rtz # perform operation
fsub.s f30, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fsub.s f16, f12, f14, dyn # perform operation
fsub.s f16, f12, f14, rdn # perform operation
fsub.s f16, f12, f14, rmm # perform operation
fsub.s f16, f12, f14, rne # perform operation
fsub.s f16, f12, f14, rtz # perform operation
fsub.s f16, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fsub.s f28, f3, f5, dyn # perform operation
fsub.s f28, f3, f5, rdn # perform operation
fsub.s f28, f3, f5, rmm # perform operation
fsub.s f28, f3, f5, rne # perform operation
fsub.s f28, f3, f5, rtz # perform operation
fsub.s f28, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fsub.s f5, f17, f21, dyn # perform operation
fsub.s f5, f17, f21, rdn # perform operation
fsub.s f5, f17, f21, rmm # perform operation
fsub.s f5, f17, f21, rne # perform operation
fsub.s f5, f17, f21, rtz # perform operation
fsub.s f5, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsub.s f26, f5, f2, dyn # perform operation
fsub.s f26, f5, f2, rdn # perform operation
fsub.s f26, f5, f2, rmm # perform operation
fsub.s f26, f5, f2, rne # perform operation
fsub.s f26, f5, f2, rtz # perform operation
fsub.s f26, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fsub.s f22, f25, f10, dyn # perform operation
fsub.s f22, f25, f10, rdn # perform operation
fsub.s f22, f25, f10, rmm # perform operation
fsub.s f22, f25, f10, rne # perform operation
fsub.s f22, f25, f10, rtz # perform operation
fsub.s f22, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fsub.s f14, f28, f12, dyn # perform operation
fsub.s f14, f28, f12, rdn # perform operation
fsub.s f14, f28, f12, rmm # perform operation
fsub.s f14, f28, f12, rne # perform operation
fsub.s f14, f28, f12, rtz # perform operation
fsub.s f14, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fsub.s f11, f14, f16, dyn # perform operation
fsub.s f11, f14, f16, rdn # perform operation
fsub.s f11, f14, f16, rmm # perform operation
fsub.s f11, f14, f16, rne # perform operation
fsub.s f11, f14, f16, rtz # perform operation
fsub.s f11, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fsub.s f5, f8, f26, dyn # perform operation
fsub.s f5, f8, f26, rdn # perform operation
fsub.s f5, f8, f26, rmm # perform operation
fsub.s f5, f8, f26, rne # perform operation
fsub.s f5, f8, f26, rtz # perform operation
fsub.s f5, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
fsub.s f26, f21, f28, dyn # perform operation
fsub.s f26, f21, f28, rdn # perform operation
fsub.s f26, f21, f28, rmm # perform operation
fsub.s f26, f21, f28, rne # perform operation
fsub.s f26, f21, f28, rtz # perform operation
fsub.s f26, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fsub.s f6, f14, f18, dyn # perform operation
fsub.s f6, f14, f18, rdn # perform operation
fsub.s f6, f14, f18, rmm # perform operation
fsub.s f6, f14, f18, rne # perform operation
fsub.s f6, f14, f18, rtz # perform operation
fsub.s f6, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fsub.s f14, f22, f16, dyn # perform operation
fsub.s f14, f22, f16, rdn # perform operation
fsub.s f14, f22, f16, rmm # perform operation
fsub.s f14, f22, f16, rne # perform operation
fsub.s f14, f22, f16, rtz # perform operation
fsub.s f14, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f31, f29, f26, dyn # perform operation
fsub.s f31, f29, f26, rdn # perform operation
fsub.s f31, f29, f26, rmm # perform operation
fsub.s f31, f29, f26, rne # perform operation
fsub.s f31, f29, f26, rtz # perform operation
fsub.s f31, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fsub.s f1, f30, f20, dyn # perform operation
fsub.s f1, f30, f20, rdn # perform operation
fsub.s f1, f30, f20, rmm # perform operation
fsub.s f1, f30, f20, rne # perform operation
fsub.s f1, f30, f20, rtz # perform operation
fsub.s f1, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsub.s f9, f13, f31, dyn # perform operation
fsub.s f9, f13, f31, rdn # perform operation
fsub.s f9, f13, f31, rmm # perform operation
fsub.s f9, f13, f31, rne # perform operation
fsub.s f9, f13, f31, rtz # perform operation
fsub.s f9, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fsub.s f31, f26, f13, dyn # perform operation
fsub.s f31, f26, f13, rdn # perform operation
fsub.s f31, f26, f13, rmm # perform operation
fsub.s f31, f26, f13, rne # perform operation
fsub.s f31, f26, f13, rtz # perform operation
fsub.s f31, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fsub.s f30, f27, f14, dyn # perform operation
fsub.s f30, f27, f14, rdn # perform operation
fsub.s f30, f27, f14, rmm # perform operation
fsub.s f30, f27, f14, rne # perform operation
fsub.s f30, f27, f14, rtz # perform operation
fsub.s f30, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fsub.s f23, f7, f20, dyn # perform operation
fsub.s f23, f7, f20, rdn # perform operation
fsub.s f23, f7, f20, rmm # perform operation
fsub.s f23, f7, f20, rne # perform operation
fsub.s f23, f7, f20, rtz # perform operation
fsub.s f23, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fsub.s f30, f11, f16, dyn # perform operation
fsub.s f30, f11, f16, rdn # perform operation
fsub.s f30, f11, f16, rmm # perform operation
fsub.s f30, f11, f16, rne # perform operation
fsub.s f30, f11, f16, rtz # perform operation
fsub.s f30, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fsub.s f26, f28, f13, dyn # perform operation
fsub.s f26, f28, f13, rdn # perform operation
fsub.s f26, f28, f13, rmm # perform operation
fsub.s f26, f28, f13, rne # perform operation
fsub.s f26, f28, f13, rtz # perform operation
fsub.s f26, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f19, f2, f11, dyn # perform operation
fsub.s f19, f2, f11, rdn # perform operation
fsub.s f19, f2, f11, rmm # perform operation
fsub.s f19, f2, f11, rne # perform operation
fsub.s f19, f2, f11, rtz # perform operation
fsub.s f19, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fsub.s f3, f14, f29, dyn # perform operation
fsub.s f3, f14, f29, rdn # perform operation
fsub.s f3, f14, f29, rmm # perform operation
fsub.s f3, f14, f29, rne # perform operation
fsub.s f3, f14, f29, rtz # perform operation
fsub.s f3, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsub.s f19, f18, f6, dyn # perform operation
fsub.s f19, f18, f6, rdn # perform operation
fsub.s f19, f18, f6, rmm # perform operation
fsub.s f19, f18, f6, rne # perform operation
fsub.s f19, f18, f6, rtz # perform operation
fsub.s f19, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fsub.s f17, f21, f19, dyn # perform operation
fsub.s f17, f21, f19, rdn # perform operation
fsub.s f17, f21, f19, rmm # perform operation
fsub.s f17, f21, f19, rne # perform operation
fsub.s f17, f21, f19, rtz # perform operation
fsub.s f17, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fsub.s f31, f17, f19, dyn # perform operation
fsub.s f31, f17, f19, rdn # perform operation
fsub.s f31, f17, f19, rmm # perform operation
fsub.s f31, f17, f19, rne # perform operation
fsub.s f31, f17, f19, rtz # perform operation
fsub.s f31, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fsub.s f28, f5, f14, dyn # perform operation
fsub.s f28, f5, f14, rdn # perform operation
fsub.s f28, f5, f14, rmm # perform operation
fsub.s f28, f5, f14, rne # perform operation
fsub.s f28, f5, f14, rtz # perform operation
fsub.s f28, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fsub.s f16, f23, f5, dyn # perform operation
fsub.s f16, f23, f5, rdn # perform operation
fsub.s f16, f23, f5, rmm # perform operation
fsub.s f16, f23, f5, rne # perform operation
fsub.s f16, f23, f5, rtz # perform operation
fsub.s f16, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fsub.s f9, f27, f2, dyn # perform operation
fsub.s f9, f27, f2, rdn # perform operation
fsub.s f9, f27, f2, rmm # perform operation
fsub.s f9, f27, f2, rne # perform operation
fsub.s f9, f27, f2, rtz # perform operation
fsub.s f9, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fsub.s f12, f16, f10, dyn # perform operation
fsub.s f12, f16, f10, rdn # perform operation
fsub.s f12, f16, f10, rmm # perform operation
fsub.s f12, f16, f10, rne # perform operation
fsub.s f12, f16, f10, rtz # perform operation
fsub.s f12, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f9, f15, f13, dyn # perform operation
fsub.s f9, f15, f13, rdn # perform operation
fsub.s f9, f15, f13, rmm # perform operation
fsub.s f9, f15, f13, rne # perform operation
fsub.s f9, f15, f13, rtz # perform operation
fsub.s f9, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fsub.s f29, f25, f30, dyn # perform operation
fsub.s f29, f25, f30, rdn # perform operation
fsub.s f29, f25, f30, rmm # perform operation
fsub.s f29, f25, f30, rne # perform operation
fsub.s f29, f25, f30, rtz # perform operation
fsub.s f29, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fsub.s f14, f20, f31, dyn # perform operation
fsub.s f14, f20, f31, rdn # perform operation
fsub.s f14, f20, f31, rmm # perform operation
fsub.s f14, f20, f31, rne # perform operation
fsub.s f14, f20, f31, rtz # perform operation
fsub.s f14, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fsub.s f18, f16, f1, dyn # perform operation
fsub.s f18, f16, f1, rdn # perform operation
fsub.s f18, f16, f1, rmm # perform operation
fsub.s f18, f16, f1, rne # perform operation
fsub.s f18, f16, f1, rtz # perform operation
fsub.s f18, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fsub.s f24, f10, f21, dyn # perform operation
fsub.s f24, f10, f21, rdn # perform operation
fsub.s f24, f10, f21, rmm # perform operation
fsub.s f24, f10, f21, rne # perform operation
fsub.s f24, f10, f21, rtz # perform operation
fsub.s f24, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
fsub.s f6, f16, f21, dyn # perform operation
fsub.s f6, f16, f21, rdn # perform operation
fsub.s f6, f16, f21, rmm # perform operation
fsub.s f6, f16, f21, rne # perform operation
fsub.s f6, f16, f21, rtz # perform operation
fsub.s f6, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fsub.s f11, f3, f27, dyn # perform operation
fsub.s f11, f3, f27, rdn # perform operation
fsub.s f11, f3, f27, rmm # perform operation
fsub.s f11, f3, f27, rne # perform operation
fsub.s f11, f3, f27, rtz # perform operation
fsub.s f11, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fsub.s f21, f15, f31, dyn # perform operation
fsub.s f21, f15, f31, rdn # perform operation
fsub.s f21, f15, f31, rmm # perform operation
fsub.s f21, f15, f31, rne # perform operation
fsub.s f21, f15, f31, rtz # perform operation
fsub.s f21, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
fsub.s f12, f2, f21, dyn # perform operation
fsub.s f12, f2, f21, rdn # perform operation
fsub.s f12, f2, f21, rmm # perform operation
fsub.s f12, f2, f21, rne # perform operation
fsub.s f12, f2, f21, rtz # perform operation
fsub.s f12, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fsub.s f22, f26, f27, dyn # perform operation
fsub.s f22, f26, f27, rdn # perform operation
fsub.s f22, f26, f27, rmm # perform operation
fsub.s f22, f26, f27, rne # perform operation
fsub.s f22, f26, f27, rtz # perform operation
fsub.s f22, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fsub.s f16, f10, f21, dyn # perform operation
fsub.s f16, f10, f21, rdn # perform operation
fsub.s f16, f10, f21, rmm # perform operation
fsub.s f16, f10, f21, rne # perform operation
fsub.s f16, f10, f21, rtz # perform operation
fsub.s f16, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsub.s f1, f20, f2, dyn # perform operation
fsub.s f1, f20, f2, rdn # perform operation
fsub.s f1, f20, f2, rmm # perform operation
fsub.s f1, f20, f2, rne # perform operation
fsub.s f1, f20, f2, rtz # perform operation
fsub.s f1, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fsub.s f19, f11, f30, dyn # perform operation
fsub.s f19, f11, f30, rdn # perform operation
fsub.s f19, f11, f30, rmm # perform operation
fsub.s f19, f11, f30, rne # perform operation
fsub.s f19, f11, f30, rtz # perform operation
fsub.s f19, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fsub.s f23, f15, f29, dyn # perform operation
fsub.s f23, f15, f29, rdn # perform operation
fsub.s f23, f15, f29, rmm # perform operation
fsub.s f23, f15, f29, rne # perform operation
fsub.s f23, f15, f29, rtz # perform operation
fsub.s f23, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fsub.s f5, f26, f12, dyn # perform operation
fsub.s f5, f26, f12, rdn # perform operation
fsub.s f5, f26, f12, rmm # perform operation
fsub.s f5, f26, f12, rne # perform operation
fsub.s f5, f26, f12, rtz # perform operation
fsub.s f5, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fsub.s f29, f10, f17, dyn # perform operation
fsub.s f29, f10, f17, rdn # perform operation
fsub.s f29, f10, f17, rmm # perform operation
fsub.s f29, f10, f17, rne # perform operation
fsub.s f29, f10, f17, rtz # perform operation
fsub.s f29, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fsub.s f17, f15, f25, dyn # perform operation
fsub.s f17, f15, f25, rdn # perform operation
fsub.s f17, f15, f25, rmm # perform operation
fsub.s f17, f15, f25, rne # perform operation
fsub.s f17, f15, f25, rtz # perform operation
fsub.s f17, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fsub.s f8, f31, f7, dyn # perform operation
fsub.s f8, f31, f7, rdn # perform operation
fsub.s f8, f31, f7, rmm # perform operation
fsub.s f8, f31, f7, rne # perform operation
fsub.s f8, f31, f7, rtz # perform operation
fsub.s f8, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fsub.s f26, f13, f11, dyn # perform operation
fsub.s f26, f13, f11, rdn # perform operation
fsub.s f26, f13, f11, rmm # perform operation
fsub.s f26, f13, f11, rne # perform operation
fsub.s f26, f13, f11, rtz # perform operation
fsub.s f26, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f10, f23, f11, dyn # perform operation
fsub.s f10, f23, f11, rdn # perform operation
fsub.s f10, f23, f11, rmm # perform operation
fsub.s f10, f23, f11, rne # perform operation
fsub.s f10, f23, f11, rtz # perform operation
fsub.s f10, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fsub.s f8, f7, f19, dyn # perform operation
fsub.s f8, f7, f19, rdn # perform operation
fsub.s f8, f7, f19, rmm # perform operation
fsub.s f8, f7, f19, rne # perform operation
fsub.s f8, f7, f19, rtz # perform operation
fsub.s f8, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fsub.s f10, f17, f3, dyn # perform operation
fsub.s f10, f17, f3, rdn # perform operation
fsub.s f10, f17, f3, rmm # perform operation
fsub.s f10, f17, f3, rne # perform operation
fsub.s f10, f17, f3, rtz # perform operation
fsub.s f10, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fsub.s f29, f19, f21, dyn # perform operation
fsub.s f29, f19, f21, rdn # perform operation
fsub.s f29, f19, f21, rmm # perform operation
fsub.s f29, f19, f21, rne # perform operation
fsub.s f29, f19, f21, rtz # perform operation
fsub.s f29, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fsub.s f16, f20, f2, dyn # perform operation
fsub.s f16, f20, f2, rdn # perform operation
fsub.s f16, f20, f2, rmm # perform operation
fsub.s f16, f20, f2, rne # perform operation
fsub.s f16, f20, f2, rtz # perform operation
fsub.s f16, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fsub.s f3, f28, f17, dyn # perform operation
fsub.s f3, f28, f17, rdn # perform operation
fsub.s f3, f28, f17, rmm # perform operation
fsub.s f3, f28, f17, rne # perform operation
fsub.s f3, f28, f17, rtz # perform operation
fsub.s f3, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fsub.s f16, f8, f12, dyn # perform operation
fsub.s f16, f8, f12, rdn # perform operation
fsub.s f16, f8, f12, rmm # perform operation
fsub.s f16, f8, f12, rne # perform operation
fsub.s f16, f8, f12, rtz # perform operation
fsub.s f16, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fsub.s f6, f31, f10, dyn # perform operation
fsub.s f6, f31, f10, rdn # perform operation
fsub.s f6, f31, f10, rmm # perform operation
fsub.s f6, f31, f10, rne # perform operation
fsub.s f6, f31, f10, rtz # perform operation
fsub.s f6, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fsub.s f30, f1, f26, dyn # perform operation
fsub.s f30, f1, f26, rdn # perform operation
fsub.s f30, f1, f26, rmm # perform operation
fsub.s f30, f1, f26, rne # perform operation
fsub.s f30, f1, f26, rtz # perform operation
fsub.s f30, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fsub.s f8, f24, f14, dyn # perform operation
fsub.s f8, f24, f14, rdn # perform operation
fsub.s f8, f24, f14, rmm # perform operation
fsub.s f8, f24, f14, rne # perform operation
fsub.s f8, f24, f14, rtz # perform operation
fsub.s f8, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fsub.s f7, f19, f11, dyn # perform operation
fsub.s f7, f19, f11, rdn # perform operation
fsub.s f7, f19, f11, rmm # perform operation
fsub.s f7, f19, f11, rne # perform operation
fsub.s f7, f19, f11, rtz # perform operation
fsub.s f7, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fsub.s f5, f8, f22, dyn # perform operation
fsub.s f5, f8, f22, rdn # perform operation
fsub.s f5, f8, f22, rmm # perform operation
fsub.s f5, f8, f22, rne # perform operation
fsub.s f5, f8, f22, rtz # perform operation
fsub.s f5, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fsub.s f8, f25, f21, dyn # perform operation
fsub.s f8, f25, f21, rdn # perform operation
fsub.s f8, f25, f21, rmm # perform operation
fsub.s f8, f25, f21, rne # perform operation
fsub.s f8, f25, f21, rtz # perform operation
fsub.s f8, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fsub.s f26, f12, f31, dyn # perform operation
fsub.s f26, f12, f31, rdn # perform operation
fsub.s f26, f12, f31, rmm # perform operation
fsub.s f26, f12, f31, rne # perform operation
fsub.s f26, f12, f31, rtz # perform operation
fsub.s f26, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fsub.s f31, f20, f5, dyn # perform operation
fsub.s f31, f20, f5, rdn # perform operation
fsub.s f31, f20, f5, rmm # perform operation
fsub.s f31, f20, f5, rne # perform operation
fsub.s f31, f20, f5, rtz # perform operation
fsub.s f31, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fsub.s f7, f29, f14, dyn # perform operation
fsub.s f7, f29, f14, rdn # perform operation
fsub.s f7, f29, f14, rmm # perform operation
fsub.s f7, f29, f14, rne # perform operation
fsub.s f7, f29, f14, rtz # perform operation
fsub.s f7, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fsub.s f31, f18, f3, dyn # perform operation
fsub.s f31, f18, f3, rdn # perform operation
fsub.s f31, f18, f3, rmm # perform operation
fsub.s f31, f18, f3, rne # perform operation
fsub.s f31, f18, f3, rtz # perform operation
fsub.s f31, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fsub.s f18, f2, f7, dyn # perform operation
fsub.s f18, f2, f7, rdn # perform operation
fsub.s f18, f2, f7, rmm # perform operation
fsub.s f18, f2, f7, rne # perform operation
fsub.s f18, f2, f7, rtz # perform operation
fsub.s f18, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f12, f15, f16, dyn # perform operation
fsub.s f12, f15, f16, rdn # perform operation
fsub.s f12, f15, f16, rmm # perform operation
fsub.s f12, f15, f16, rne # perform operation
fsub.s f12, f15, f16, rtz # perform operation
fsub.s f12, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fsub.s f31, f9, f22, dyn # perform operation
fsub.s f31, f9, f22, rdn # perform operation
fsub.s f31, f9, f22, rmm # perform operation
fsub.s f31, f9, f22, rne # perform operation
fsub.s f31, f9, f22, rtz # perform operation
fsub.s f31, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsub.s f26, f31, f16, dyn # perform operation
fsub.s f26, f31, f16, rdn # perform operation
fsub.s f26, f31, f16, rmm # perform operation
fsub.s f26, f31, f16, rne # perform operation
fsub.s f26, f31, f16, rtz # perform operation
fsub.s f26, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fsub.s f5, f2, f21, dyn # perform operation
fsub.s f5, f2, f21, rdn # perform operation
fsub.s f5, f2, f21, rmm # perform operation
fsub.s f5, f2, f21, rne # perform operation
fsub.s f5, f2, f21, rtz # perform operation
fsub.s f5, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fsub.s f23, f28, f22, dyn # perform operation
fsub.s f23, f28, f22, rdn # perform operation
fsub.s f23, f28, f22, rmm # perform operation
fsub.s f23, f28, f22, rne # perform operation
fsub.s f23, f28, f22, rtz # perform operation
fsub.s f23, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fsub.s f10, f24, f12, dyn # perform operation
fsub.s f10, f24, f12, rdn # perform operation
fsub.s f10, f24, f12, rmm # perform operation
fsub.s f10, f24, f12, rne # perform operation
fsub.s f10, f24, f12, rtz # perform operation
fsub.s f10, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fsub.s f30, f13, f17, dyn # perform operation
fsub.s f30, f13, f17, rdn # perform operation
fsub.s f30, f13, f17, rmm # perform operation
fsub.s f30, f13, f17, rne # perform operation
fsub.s f30, f13, f17, rtz # perform operation
fsub.s f30, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fsub.s f12, f20, f28, dyn # perform operation
fsub.s f12, f20, f28, rdn # perform operation
fsub.s f12, f20, f28, rmm # perform operation
fsub.s f12, f20, f28, rne # perform operation
fsub.s f12, f20, f28, rtz # perform operation
fsub.s f12, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fsub.s f9, f20, f21, dyn # perform operation
fsub.s f9, f20, f21, rdn # perform operation
fsub.s f9, f20, f21, rmm # perform operation
fsub.s f9, f20, f21, rne # perform operation
fsub.s f9, f20, f21, rtz # perform operation
fsub.s f9, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fsub.s f27, f19, f10, dyn # perform operation
fsub.s f27, f19, f10, rdn # perform operation
fsub.s f27, f19, f10, rmm # perform operation
fsub.s f27, f19, f10, rne # perform operation
fsub.s f27, f19, f10, rtz # perform operation
fsub.s f27, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f25, f19, f11, dyn # perform operation
fsub.s f25, f19, f11, rdn # perform operation
fsub.s f25, f19, f11, rmm # perform operation
fsub.s f25, f19, f11, rne # perform operation
fsub.s f25, f19, f11, rtz # perform operation
fsub.s f25, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fsub.s f5, f1, f8, dyn # perform operation
fsub.s f5, f1, f8, rdn # perform operation
fsub.s f5, f1, f8, rmm # perform operation
fsub.s f5, f1, f8, rne # perform operation
fsub.s f5, f1, f8, rtz # perform operation
fsub.s f5, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fsub.s f23, f14, f26, dyn # perform operation
fsub.s f23, f14, f26, rdn # perform operation
fsub.s f23, f14, f26, rmm # perform operation
fsub.s f23, f14, f26, rne # perform operation
fsub.s f23, f14, f26, rtz # perform operation
fsub.s f23, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fsub.s f27, f1, f3, dyn # perform operation
fsub.s f27, f1, f3, rdn # perform operation
fsub.s f27, f1, f3, rmm # perform operation
fsub.s f27, f1, f3, rne # perform operation
fsub.s f27, f1, f3, rtz # perform operation
fsub.s f27, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fsub.s f12, f2, f23, dyn # perform operation
fsub.s f12, f2, f23, rdn # perform operation
fsub.s f12, f2, f23, rmm # perform operation
fsub.s f12, f2, f23, rne # perform operation
fsub.s f12, f2, f23, rtz # perform operation
fsub.s f12, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fsub.s f9, f6, f27, dyn # perform operation
fsub.s f9, f6, f27, rdn # perform operation
fsub.s f9, f6, f27, rmm # perform operation
fsub.s f9, f6, f27, rne # perform operation
fsub.s f9, f6, f27, rtz # perform operation
fsub.s f9, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fsub.s f23, f29, f7, dyn # perform operation
fsub.s f23, f29, f7, rdn # perform operation
fsub.s f23, f29, f7, rmm # perform operation
fsub.s f23, f29, f7, rne # perform operation
fsub.s f23, f29, f7, rtz # perform operation
fsub.s f23, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fsub.s f7, f17, f13, dyn # perform operation
fsub.s f7, f17, f13, rdn # perform operation
fsub.s f7, f17, f13, rmm # perform operation
fsub.s f7, f17, f13, rne # perform operation
fsub.s f7, f17, f13, rtz # perform operation
fsub.s f7, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fsub.s f14, f23, f5, dyn # perform operation
fsub.s f14, f23, f5, rdn # perform operation
fsub.s f14, f23, f5, rmm # perform operation
fsub.s f14, f23, f5, rne # perform operation
fsub.s f14, f23, f5, rtz # perform operation
fsub.s f14, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f10, f2, f13, dyn # perform operation
fsub.s f10, f2, f13, rdn # perform operation
fsub.s f10, f2, f13, rmm # perform operation
fsub.s f10, f2, f13, rne # perform operation
fsub.s f10, f2, f13, rtz # perform operation
fsub.s f10, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fsub.s f23, f22, f24, dyn # perform operation
fsub.s f23, f22, f24, rdn # perform operation
fsub.s f23, f22, f24, rmm # perform operation
fsub.s f23, f22, f24, rne # perform operation
fsub.s f23, f22, f24, rtz # perform operation
fsub.s f23, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f12, f26, f20, dyn # perform operation
fsub.s f12, f26, f20, rdn # perform operation
fsub.s f12, f26, f20, rmm # perform operation
fsub.s f12, f26, f20, rne # perform operation
fsub.s f12, f26, f20, rtz # perform operation
fsub.s f12, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fsub.s f6, f30, f3, dyn # perform operation
fsub.s f6, f30, f3, rdn # perform operation
fsub.s f6, f30, f3, rmm # perform operation
fsub.s f6, f30, f3, rne # perform operation
fsub.s f6, f30, f3, rtz # perform operation
fsub.s f6, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fsub.s f17, f19, f12, dyn # perform operation
fsub.s f17, f19, f12, rdn # perform operation
fsub.s f17, f19, f12, rmm # perform operation
fsub.s f17, f19, f12, rne # perform operation
fsub.s f17, f19, f12, rtz # perform operation
fsub.s f17, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fsub.s f6, f8, f22, dyn # perform operation
fsub.s f6, f8, f22, rdn # perform operation
fsub.s f6, f8, f22, rmm # perform operation
fsub.s f6, f8, f22, rne # perform operation
fsub.s f6, f8, f22, rtz # perform operation
fsub.s f6, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fsub.s f5, f14, f26, dyn # perform operation
fsub.s f5, f14, f26, rdn # perform operation
fsub.s f5, f14, f26, rmm # perform operation
fsub.s f5, f14, f26, rne # perform operation
fsub.s f5, f14, f26, rtz # perform operation
fsub.s f5, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fsub.s f29, f24, f27, dyn # perform operation
fsub.s f29, f24, f27, rdn # perform operation
fsub.s f29, f24, f27, rmm # perform operation
fsub.s f29, f24, f27, rne # perform operation
fsub.s f29, f24, f27, rtz # perform operation
fsub.s f29, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fsub.s f1, f12, f29, dyn # perform operation
fsub.s f1, f12, f29, rdn # perform operation
fsub.s f1, f12, f29, rmm # perform operation
fsub.s f1, f12, f29, rne # perform operation
fsub.s f1, f12, f29, rtz # perform operation
fsub.s f1, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fsub.s f20, f27, f7, dyn # perform operation
fsub.s f20, f27, f7, rdn # perform operation
fsub.s f20, f27, f7, rmm # perform operation
fsub.s f20, f27, f7, rne # perform operation
fsub.s f20, f27, f7, rtz # perform operation
fsub.s f20, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fsub.s f20, f23, f28, dyn # perform operation
fsub.s f20, f23, f28, rdn # perform operation
fsub.s f20, f23, f28, rmm # perform operation
fsub.s f20, f23, f28, rne # perform operation
fsub.s f20, f23, f28, rtz # perform operation
fsub.s f20, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fsub.s f7, f23, f18, dyn # perform operation
fsub.s f7, f23, f18, rdn # perform operation
fsub.s f7, f23, f18, rmm # perform operation
fsub.s f7, f23, f18, rne # perform operation
fsub.s f7, f23, f18, rtz # perform operation
fsub.s f7, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fsub.s f7, f26, f27, dyn # perform operation
fsub.s f7, f26, f27, rdn # perform operation
fsub.s f7, f26, f27, rmm # perform operation
fsub.s f7, f26, f27, rne # perform operation
fsub.s f7, f26, f27, rtz # perform operation
fsub.s f7, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fsub.s f30, f17, f26, dyn # perform operation
fsub.s f30, f17, f26, rdn # perform operation
fsub.s f30, f17, f26, rmm # perform operation
fsub.s f30, f17, f26, rne # perform operation
fsub.s f30, f17, f26, rtz # perform operation
fsub.s f30, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fsub.s f29, f6, f9, dyn # perform operation
fsub.s f29, f6, f9, rdn # perform operation
fsub.s f29, f6, f9, rmm # perform operation
fsub.s f29, f6, f9, rne # perform operation
fsub.s f29, f6, f9, rtz # perform operation
fsub.s f29, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fsub.s f10, f30, f13, dyn # perform operation
fsub.s f10, f30, f13, rdn # perform operation
fsub.s f10, f30, f13, rmm # perform operation
fsub.s f10, f30, f13, rne # perform operation
fsub.s f10, f30, f13, rtz # perform operation
fsub.s f10, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fsub.s f8, f9, f27, dyn # perform operation
fsub.s f8, f9, f27, rdn # perform operation
fsub.s f8, f9, f27, rmm # perform operation
fsub.s f8, f9, f27, rne # perform operation
fsub.s f8, f9, f27, rtz # perform operation
fsub.s f8, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fsub.s f21, f15, f14, dyn # perform operation
fsub.s f21, f15, f14, rdn # perform operation
fsub.s f21, f15, f14, rmm # perform operation
fsub.s f21, f15, f14, rne # perform operation
fsub.s f21, f15, f14, rtz # perform operation
fsub.s f21, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fsub.s f1, f23, f24, dyn # perform operation
fsub.s f1, f23, f24, rdn # perform operation
fsub.s f1, f23, f24, rmm # perform operation
fsub.s f1, f23, f24, rne # perform operation
fsub.s f1, f23, f24, rtz # perform operation
fsub.s f1, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fsub.s f22, f6, f24, dyn # perform operation
fsub.s f22, f6, f24, rdn # perform operation
fsub.s f22, f6, f24, rmm # perform operation
fsub.s f22, f6, f24, rne # perform operation
fsub.s f22, f6, f24, rtz # perform operation
fsub.s f22, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fsub.s f20, f10, f28, dyn # perform operation
fsub.s f20, f10, f28, rdn # perform operation
fsub.s f20, f10, f28, rmm # perform operation
fsub.s f20, f10, f28, rne # perform operation
fsub.s f20, f10, f28, rtz # perform operation
fsub.s f20, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fsub.s f24, f26, f5, dyn # perform operation
fsub.s f24, f26, f5, rdn # perform operation
fsub.s f24, f26, f5, rmm # perform operation
fsub.s f24, f26, f5, rne # perform operation
fsub.s f24, f26, f5, rtz # perform operation
fsub.s f24, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fsub.s f6, f21, f24, dyn # perform operation
fsub.s f6, f21, f24, rdn # perform operation
fsub.s f6, f21, f24, rmm # perform operation
fsub.s f6, f21, f24, rne # perform operation
fsub.s f6, f21, f24, rtz # perform operation
fsub.s f6, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fsub.s f27, f13, f19, dyn # perform operation
fsub.s f27, f13, f19, rdn # perform operation
fsub.s f27, f13, f19, rmm # perform operation
fsub.s f27, f13, f19, rne # perform operation
fsub.s f27, f13, f19, rtz # perform operation
fsub.s f27, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fsub.s f18, f23, f25, dyn # perform operation
fsub.s f18, f23, f25, rdn # perform operation
fsub.s f18, f23, f25, rmm # perform operation
fsub.s f18, f23, f25, rne # perform operation
fsub.s f18, f23, f25, rtz # perform operation
fsub.s f18, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fsub.s f21, f12, f27, dyn # perform operation
fsub.s f21, f12, f27, rdn # perform operation
fsub.s f21, f12, f27, rmm # perform operation
fsub.s f21, f12, f27, rne # perform operation
fsub.s f21, f12, f27, rtz # perform operation
fsub.s f21, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fsub.s f5, f10, f18, dyn # perform operation
fsub.s f5, f10, f18, rdn # perform operation
fsub.s f5, f10, f18, rmm # perform operation
fsub.s f5, f10, f18, rne # perform operation
fsub.s f5, f10, f18, rtz # perform operation
fsub.s f5, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fsub.s f9, f20, f14, dyn # perform operation
fsub.s f9, f20, f14, rdn # perform operation
fsub.s f9, f20, f14, rmm # perform operation
fsub.s f9, f20, f14, rne # perform operation
fsub.s f9, f20, f14, rtz # perform operation
fsub.s f9, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsub.s f21, f17, f7, dyn # perform operation
fsub.s f21, f17, f7, rdn # perform operation
fsub.s f21, f17, f7, rmm # perform operation
fsub.s f21, f17, f7, rne # perform operation
fsub.s f21, f17, f7, rtz # perform operation
fsub.s f21, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fsub.s f12, f3, f13, dyn # perform operation
fsub.s f12, f3, f13, rdn # perform operation
fsub.s f12, f3, f13, rmm # perform operation
fsub.s f12, f3, f13, rne # perform operation
fsub.s f12, f3, f13, rtz # perform operation
fsub.s f12, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f25, f30, f29, dyn # perform operation
fsub.s f25, f30, f29, rdn # perform operation
fsub.s f25, f30, f29, rmm # perform operation
fsub.s f25, f30, f29, rne # perform operation
fsub.s f25, f30, f29, rtz # perform operation
fsub.s f25, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fsub.s f2, f27, f22, dyn # perform operation
fsub.s f2, f27, f22, rdn # perform operation
fsub.s f2, f27, f22, rmm # perform operation
fsub.s f2, f27, f22, rne # perform operation
fsub.s f2, f27, f22, rtz # perform operation
fsub.s f2, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fsub.s f24, f22, f16, dyn # perform operation
fsub.s f24, f22, f16, rdn # perform operation
fsub.s f24, f22, f16, rmm # perform operation
fsub.s f24, f22, f16, rne # perform operation
fsub.s f24, f22, f16, rtz # perform operation
fsub.s f24, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fsub.s f29, f6, f31, dyn # perform operation
fsub.s f29, f6, f31, rdn # perform operation
fsub.s f29, f6, f31, rmm # perform operation
fsub.s f29, f6, f31, rne # perform operation
fsub.s f29, f6, f31, rtz # perform operation
fsub.s f29, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fsub.s f10, f14, f15, dyn # perform operation
fsub.s f10, f14, f15, rdn # perform operation
fsub.s f10, f14, f15, rmm # perform operation
fsub.s f10, f14, f15, rne # perform operation
fsub.s f10, f14, f15, rtz # perform operation
fsub.s f10, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fsub.s f2, f7, f28, dyn # perform operation
fsub.s f2, f7, f28, rdn # perform operation
fsub.s f2, f7, f28, rmm # perform operation
fsub.s f2, f7, f28, rne # perform operation
fsub.s f2, f7, f28, rtz # perform operation
fsub.s f2, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fsub.s f14, f28, f1, dyn # perform operation
fsub.s f14, f28, f1, rdn # perform operation
fsub.s f14, f28, f1, rmm # perform operation
fsub.s f14, f28, f1, rne # perform operation
fsub.s f14, f28, f1, rtz # perform operation
fsub.s f14, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fsub.s f2, f20, f7, dyn # perform operation
fsub.s f2, f20, f7, rdn # perform operation
fsub.s f2, f20, f7, rmm # perform operation
fsub.s f2, f20, f7, rne # perform operation
fsub.s f2, f20, f7, rtz # perform operation
fsub.s f2, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fsub.s f13, f1, f17, dyn # perform operation
fsub.s f13, f1, f17, rdn # perform operation
fsub.s f13, f1, f17, rmm # perform operation
fsub.s f13, f1, f17, rne # perform operation
fsub.s f13, f1, f17, rtz # perform operation
fsub.s f13, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fsub.s f22, f26, f30, dyn # perform operation
fsub.s f22, f26, f30, rdn # perform operation
fsub.s f22, f26, f30, rmm # perform operation
fsub.s f22, f26, f30, rne # perform operation
fsub.s f22, f26, f30, rtz # perform operation
fsub.s f22, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fsub.s f9, f23, f28, dyn # perform operation
fsub.s f9, f23, f28, rdn # perform operation
fsub.s f9, f23, f28, rmm # perform operation
fsub.s f9, f23, f28, rne # perform operation
fsub.s f9, f23, f28, rtz # perform operation
fsub.s f9, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fsub.s f16, f2, f15, dyn # perform operation
fsub.s f16, f2, f15, rdn # perform operation
fsub.s f16, f2, f15, rmm # perform operation
fsub.s f16, f2, f15, rne # perform operation
fsub.s f16, f2, f15, rtz # perform operation
fsub.s f16, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fsub.s f16, f29, f30, dyn # perform operation
fsub.s f16, f29, f30, rdn # perform operation
fsub.s f16, f29, f30, rmm # perform operation
fsub.s f16, f29, f30, rne # perform operation
fsub.s f16, f29, f30, rtz # perform operation
fsub.s f16, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fsub.s f5, f24, f9, dyn # perform operation
fsub.s f5, f24, f9, rdn # perform operation
fsub.s f5, f24, f9, rmm # perform operation
fsub.s f5, f24, f9, rne # perform operation
fsub.s f5, f24, f9, rtz # perform operation
fsub.s f5, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fsub.s f13, f14, f29, dyn # perform operation
fsub.s f13, f14, f29, rdn # perform operation
fsub.s f13, f14, f29, rmm # perform operation
fsub.s f13, f14, f29, rne # perform operation
fsub.s f13, f14, f29, rtz # perform operation
fsub.s f13, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fsub.s f19, f9, f8, dyn # perform operation
fsub.s f19, f9, f8, rdn # perform operation
fsub.s f19, f9, f8, rmm # perform operation
fsub.s f19, f9, f8, rne # perform operation
fsub.s f19, f9, f8, rtz # perform operation
fsub.s f19, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fsub.s f30, f21, f31, dyn # perform operation
fsub.s f30, f21, f31, rdn # perform operation
fsub.s f30, f21, f31, rmm # perform operation
fsub.s f30, f21, f31, rne # perform operation
fsub.s f30, f21, f31, rtz # perform operation
fsub.s f30, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsub.s f17, f5, f26, dyn # perform operation
fsub.s f17, f5, f26, rdn # perform operation
fsub.s f17, f5, f26, rmm # perform operation
fsub.s f17, f5, f26, rne # perform operation
fsub.s f17, f5, f26, rtz # perform operation
fsub.s f17, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f5, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fsub.s f23, f16, f26, dyn # perform operation
fsub.s f23, f16, f26, rdn # perform operation
fsub.s f23, f16, f26, rmm # perform operation
fsub.s f23, f16, f26, rne # perform operation
fsub.s f23, f16, f26, rtz # perform operation
fsub.s f23, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fsub.s f12, f2, f22, dyn # perform operation
fsub.s f12, f2, f22, rdn # perform operation
fsub.s f12, f2, f22, rmm # perform operation
fsub.s f12, f2, f22, rne # perform operation
fsub.s f12, f2, f22, rtz # perform operation
fsub.s f12, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fsub.s f28, f25, f15, dyn # perform operation
fsub.s f28, f25, f15, rdn # perform operation
fsub.s f28, f25, f15, rmm # perform operation
fsub.s f28, f25, f15, rne # perform operation
fsub.s f28, f25, f15, rtz # perform operation
fsub.s f28, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fsub.s f31, f9, f28, dyn # perform operation
fsub.s f31, f9, f28, rdn # perform operation
fsub.s f31, f9, f28, rmm # perform operation
fsub.s f31, f9, f28, rne # perform operation
fsub.s f31, f9, f28, rtz # perform operation
fsub.s f31, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fsub.s f17, f23, f24, dyn # perform operation
fsub.s f17, f23, f24, rdn # perform operation
fsub.s f17, f23, f24, rmm # perform operation
fsub.s f17, f23, f24, rne # perform operation
fsub.s f17, f23, f24, rtz # perform operation
fsub.s f17, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fsub.s f14, f2, f17, dyn # perform operation
fsub.s f14, f2, f17, rdn # perform operation
fsub.s f14, f2, f17, rmm # perform operation
fsub.s f14, f2, f17, rne # perform operation
fsub.s f14, f2, f17, rtz # perform operation
fsub.s f14, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fsub.s f23, f21, f24, dyn # perform operation
fsub.s f23, f21, f24, rdn # perform operation
fsub.s f23, f21, f24, rmm # perform operation
fsub.s f23, f21, f24, rne # perform operation
fsub.s f23, f21, f24, rtz # perform operation
fsub.s f23, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fsub.s f23, f27, f22, dyn # perform operation
fsub.s f23, f27, f22, rdn # perform operation
fsub.s f23, f27, f22, rmm # perform operation
fsub.s f23, f27, f22, rne # perform operation
fsub.s f23, f27, f22, rtz # perform operation
fsub.s f23, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fsub.s f10, f16, f25, dyn # perform operation
fsub.s f10, f16, f25, rdn # perform operation
fsub.s f10, f16, f25, rmm # perform operation
fsub.s f10, f16, f25, rne # perform operation
fsub.s f10, f16, f25, rtz # perform operation
fsub.s f10, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fsub.s f11, f5, f25, dyn # perform operation
fsub.s f11, f5, f25, rdn # perform operation
fsub.s f11, f5, f25, rmm # perform operation
fsub.s f11, f5, f25, rne # perform operation
fsub.s f11, f5, f25, rtz # perform operation
fsub.s f11, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fsub.s f23, f2, f30, dyn # perform operation
fsub.s f23, f2, f30, rdn # perform operation
fsub.s f23, f2, f30, rmm # perform operation
fsub.s f23, f2, f30, rne # perform operation
fsub.s f23, f2, f30, rtz # perform operation
fsub.s f23, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fsub.s f9, f10, f16, dyn # perform operation
fsub.s f9, f10, f16, rdn # perform operation
fsub.s f9, f10, f16, rmm # perform operation
fsub.s f9, f10, f16, rne # perform operation
fsub.s f9, f10, f16, rtz # perform operation
fsub.s f9, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsub.s f1, f21, f26, dyn # perform operation
fsub.s f1, f21, f26, rdn # perform operation
fsub.s f1, f21, f26, rmm # perform operation
fsub.s f1, f21, f26, rne # perform operation
fsub.s f1, f21, f26, rtz # perform operation
fsub.s f1, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fsub.s f14, f21, f9, dyn # perform operation
fsub.s f14, f21, f9, rdn # perform operation
fsub.s f14, f21, f9, rmm # perform operation
fsub.s f14, f21, f9, rne # perform operation
fsub.s f14, f21, f9, rtz # perform operation
fsub.s f14, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fsub.s f26, f13, f20, dyn # perform operation
fsub.s f26, f13, f20, rdn # perform operation
fsub.s f26, f13, f20, rmm # perform operation
fsub.s f26, f13, f20, rne # perform operation
fsub.s f26, f13, f20, rtz # perform operation
fsub.s f26, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fsub.s f5, f13, f9, dyn # perform operation
fsub.s f5, f13, f9, rdn # perform operation
fsub.s f5, f13, f9, rmm # perform operation
fsub.s f5, f13, f9, rne # perform operation
fsub.s f5, f13, f9, rtz # perform operation
fsub.s f5, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
fsub.s f12, f29, f17, dyn # perform operation
fsub.s f12, f29, f17, rdn # perform operation
fsub.s f12, f29, f17, rmm # perform operation
fsub.s f12, f29, f17, rne # perform operation
fsub.s f12, f29, f17, rtz # perform operation
fsub.s f12, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fsub.s f1, f25, f12, dyn # perform operation
fsub.s f1, f25, f12, rdn # perform operation
fsub.s f1, f25, f12, rmm # perform operation
fsub.s f1, f25, f12, rne # perform operation
fsub.s f1, f25, f12, rtz # perform operation
fsub.s f1, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fsub.s f29, f6, f17, dyn # perform operation
fsub.s f29, f6, f17, rdn # perform operation
fsub.s f29, f6, f17, rmm # perform operation
fsub.s f29, f6, f17, rne # perform operation
fsub.s f29, f6, f17, rtz # perform operation
fsub.s f29, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f22, f12, f26, dyn # perform operation
fsub.s f22, f12, f26, rdn # perform operation
fsub.s f22, f12, f26, rmm # perform operation
fsub.s f22, f12, f26, rne # perform operation
fsub.s f22, f12, f26, rtz # perform operation
fsub.s f22, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fsub.s f12, f23, f3, dyn # perform operation
fsub.s f12, f23, f3, rdn # perform operation
fsub.s f12, f23, f3, rmm # perform operation
fsub.s f12, f23, f3, rne # perform operation
fsub.s f12, f23, f3, rtz # perform operation
fsub.s f12, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fsub.s f2, f13, f20, dyn # perform operation
fsub.s f2, f13, f20, rdn # perform operation
fsub.s f2, f13, f20, rmm # perform operation
fsub.s f2, f13, f20, rne # perform operation
fsub.s f2, f13, f20, rtz # perform operation
fsub.s f2, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f18, f21, f20, dyn # perform operation
fsub.s f18, f21, f20, rdn # perform operation
fsub.s f18, f21, f20, rmm # perform operation
fsub.s f18, f21, f20, rne # perform operation
fsub.s f18, f21, f20, rtz # perform operation
fsub.s f18, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fsub.s f27, f26, f17, dyn # perform operation
fsub.s f27, f26, f17, rdn # perform operation
fsub.s f27, f26, f17, rmm # perform operation
fsub.s f27, f26, f17, rne # perform operation
fsub.s f27, f26, f17, rtz # perform operation
fsub.s f27, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fsub.s f12, f9, f1, dyn # perform operation
fsub.s f12, f9, f1, rdn # perform operation
fsub.s f12, f9, f1, rmm # perform operation
fsub.s f12, f9, f1, rne # perform operation
fsub.s f12, f9, f1, rtz # perform operation
fsub.s f12, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fsub.s f7, f25, f2, dyn # perform operation
fsub.s f7, f25, f2, rdn # perform operation
fsub.s f7, f25, f2, rmm # perform operation
fsub.s f7, f25, f2, rne # perform operation
fsub.s f7, f25, f2, rtz # perform operation
fsub.s f7, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fsub.s f24, f3, f23, dyn # perform operation
fsub.s f24, f3, f23, rdn # perform operation
fsub.s f24, f3, f23, rmm # perform operation
fsub.s f24, f3, f23, rne # perform operation
fsub.s f24, f3, f23, rtz # perform operation
fsub.s f24, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fsub.s f13, f10, f21, dyn # perform operation
fsub.s f13, f10, f21, rdn # perform operation
fsub.s f13, f10, f21, rmm # perform operation
fsub.s f13, f10, f21, rne # perform operation
fsub.s f13, f10, f21, rtz # perform operation
fsub.s f13, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f13, f9, f27, dyn # perform operation
fsub.s f13, f9, f27, rdn # perform operation
fsub.s f13, f9, f27, rmm # perform operation
fsub.s f13, f9, f27, rne # perform operation
fsub.s f13, f9, f27, rtz # perform operation
fsub.s f13, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fsub.s f8, f7, f19, dyn # perform operation
fsub.s f8, f7, f19, rdn # perform operation
fsub.s f8, f7, f19, rmm # perform operation
fsub.s f8, f7, f19, rne # perform operation
fsub.s f8, f7, f19, rtz # perform operation
fsub.s f8, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fsub.s f29, f31, f19, dyn # perform operation
fsub.s f29, f31, f19, rdn # perform operation
fsub.s f29, f31, f19, rmm # perform operation
fsub.s f29, f31, f19, rne # perform operation
fsub.s f29, f31, f19, rtz # perform operation
fsub.s f29, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fsub.s f13, f19, f5, dyn # perform operation
fsub.s f13, f19, f5, rdn # perform operation
fsub.s f13, f19, f5, rmm # perform operation
fsub.s f13, f19, f5, rne # perform operation
fsub.s f13, f19, f5, rtz # perform operation
fsub.s f13, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fsub.s f7, f2, f24, dyn # perform operation
fsub.s f7, f2, f24, rdn # perform operation
fsub.s f7, f2, f24, rmm # perform operation
fsub.s f7, f2, f24, rne # perform operation
fsub.s f7, f2, f24, rtz # perform operation
fsub.s f7, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fsub.s f9, f10, f22, dyn # perform operation
fsub.s f9, f10, f22, rdn # perform operation
fsub.s f9, f10, f22, rmm # perform operation
fsub.s f9, f10, f22, rne # perform operation
fsub.s f9, f10, f22, rtz # perform operation
fsub.s f9, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fsub.s f17, f26, f22, dyn # perform operation
fsub.s f17, f26, f22, rdn # perform operation
fsub.s f17, f26, f22, rmm # perform operation
fsub.s f17, f26, f22, rne # perform operation
fsub.s f17, f26, f22, rtz # perform operation
fsub.s f17, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fsub.s f14, f19, f22, dyn # perform operation
fsub.s f14, f19, f22, rdn # perform operation
fsub.s f14, f19, f22, rmm # perform operation
fsub.s f14, f19, f22, rne # perform operation
fsub.s f14, f19, f22, rtz # perform operation
fsub.s f14, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fsub.s f11, f24, f30, dyn # perform operation
fsub.s f11, f24, f30, rdn # perform operation
fsub.s f11, f24, f30, rmm # perform operation
fsub.s f11, f24, f30, rne # perform operation
fsub.s f11, f24, f30, rtz # perform operation
fsub.s f11, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsub.s f17, f16, f2, dyn # perform operation
fsub.s f17, f16, f2, rdn # perform operation
fsub.s f17, f16, f2, rmm # perform operation
fsub.s f17, f16, f2, rne # perform operation
fsub.s f17, f16, f2, rtz # perform operation
fsub.s f17, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fsub.s f18, f16, f22, dyn # perform operation
fsub.s f18, f16, f22, rdn # perform operation
fsub.s f18, f16, f22, rmm # perform operation
fsub.s f18, f16, f22, rne # perform operation
fsub.s f18, f16, f22, rtz # perform operation
fsub.s f18, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fsub.s f27, f7, f10, dyn # perform operation
fsub.s f27, f7, f10, rdn # perform operation
fsub.s f27, f7, f10, rmm # perform operation
fsub.s f27, f7, f10, rne # perform operation
fsub.s f27, f7, f10, rtz # perform operation
fsub.s f27, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fsub.s f1, f22, f3, dyn # perform operation
fsub.s f1, f22, f3, rdn # perform operation
fsub.s f1, f22, f3, rmm # perform operation
fsub.s f1, f22, f3, rne # perform operation
fsub.s f1, f22, f3, rtz # perform operation
fsub.s f1, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
fsub.s f11, f14, f18, dyn # perform operation
fsub.s f11, f14, f18, rdn # perform operation
fsub.s f11, f14, f18, rmm # perform operation
fsub.s f11, f14, f18, rne # perform operation
fsub.s f11, f14, f18, rtz # perform operation
fsub.s f11, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fsub.s f30, f6, f13, dyn # perform operation
fsub.s f30, f6, f13, rdn # perform operation
fsub.s f30, f6, f13, rmm # perform operation
fsub.s f30, f6, f13, rne # perform operation
fsub.s f30, f6, f13, rtz # perform operation
fsub.s f30, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fsub.s f14, f28, f15, dyn # perform operation
fsub.s f14, f28, f15, rdn # perform operation
fsub.s f14, f28, f15, rmm # perform operation
fsub.s f14, f28, f15, rne # perform operation
fsub.s f14, f28, f15, rtz # perform operation
fsub.s f14, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fsub.s f8, f3, f14, dyn # perform operation
fsub.s f8, f3, f14, rdn # perform operation
fsub.s f8, f3, f14, rmm # perform operation
fsub.s f8, f3, f14, rne # perform operation
fsub.s f8, f3, f14, rtz # perform operation
fsub.s f8, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fsub.s f28, f25, f27, dyn # perform operation
fsub.s f28, f25, f27, rdn # perform operation
fsub.s f28, f25, f27, rmm # perform operation
fsub.s f28, f25, f27, rne # perform operation
fsub.s f28, f25, f27, rtz # perform operation
fsub.s f28, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fsub.s f2, f10, f7, dyn # perform operation
fsub.s f2, f10, f7, rdn # perform operation
fsub.s f2, f10, f7, rmm # perform operation
fsub.s f2, f10, f7, rne # perform operation
fsub.s f2, f10, f7, rtz # perform operation
fsub.s f2, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fsub.s f21, f8, f17, dyn # perform operation
fsub.s f21, f8, f17, rdn # perform operation
fsub.s f21, f8, f17, rmm # perform operation
fsub.s f21, f8, f17, rne # perform operation
fsub.s f21, f8, f17, rtz # perform operation
fsub.s f21, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fsub.s f5, f7, f19, dyn # perform operation
fsub.s f5, f7, f19, rdn # perform operation
fsub.s f5, f7, f19, rmm # perform operation
fsub.s f5, f7, f19, rne # perform operation
fsub.s f5, f7, f19, rtz # perform operation
fsub.s f5, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsub.s f8, f7, f30, dyn # perform operation
fsub.s f8, f7, f30, rdn # perform operation
fsub.s f8, f7, f30, rmm # perform operation
fsub.s f8, f7, f30, rne # perform operation
fsub.s f8, f7, f30, rtz # perform operation
fsub.s f8, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fsub.s f5, f12, f3, dyn # perform operation
fsub.s f5, f12, f3, rdn # perform operation
fsub.s f5, f12, f3, rmm # perform operation
fsub.s f5, f12, f3, rne # perform operation
fsub.s f5, f12, f3, rtz # perform operation
fsub.s f5, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fsub.s f26, f25, f8, dyn # perform operation
fsub.s f26, f25, f8, rdn # perform operation
fsub.s f26, f25, f8, rmm # perform operation
fsub.s f26, f25, f8, rne # perform operation
fsub.s f26, f25, f8, rtz # perform operation
fsub.s f26, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fsub.s f24, f22, f1, dyn # perform operation
fsub.s f24, f22, f1, rdn # perform operation
fsub.s f24, f22, f1, rmm # perform operation
fsub.s f24, f22, f1, rne # perform operation
fsub.s f24, f22, f1, rtz # perform operation
fsub.s f24, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fsub.s f27, f24, f10, dyn # perform operation
fsub.s f27, f24, f10, rdn # perform operation
fsub.s f27, f24, f10, rmm # perform operation
fsub.s f27, f24, f10, rne # perform operation
fsub.s f27, f24, f10, rtz # perform operation
fsub.s f27, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fsub.s f8, f17, f7, dyn # perform operation
fsub.s f8, f17, f7, rdn # perform operation
fsub.s f8, f17, f7, rmm # perform operation
fsub.s f8, f17, f7, rne # perform operation
fsub.s f8, f17, f7, rtz # perform operation
fsub.s f8, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fsub.s f23, f1, f30, dyn # perform operation
fsub.s f23, f1, f30, rdn # perform operation
fsub.s f23, f1, f30, rmm # perform operation
fsub.s f23, f1, f30, rne # perform operation
fsub.s f23, f1, f30, rtz # perform operation
fsub.s f23, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fsub.s f17, f23, f22, dyn # perform operation
fsub.s f17, f23, f22, rdn # perform operation
fsub.s f17, f23, f22, rmm # perform operation
fsub.s f17, f23, f22, rne # perform operation
fsub.s f17, f23, f22, rtz # perform operation
fsub.s f17, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fsub.s f1, f12, f26, dyn # perform operation
fsub.s f1, f12, f26, rdn # perform operation
fsub.s f1, f12, f26, rmm # perform operation
fsub.s f1, f12, f26, rne # perform operation
fsub.s f1, f12, f26, rtz # perform operation
fsub.s f1, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fsub.s f28, f29, f20, dyn # perform operation
fsub.s f28, f29, f20, rdn # perform operation
fsub.s f28, f29, f20, rmm # perform operation
fsub.s f28, f29, f20, rne # perform operation
fsub.s f28, f29, f20, rtz # perform operation
fsub.s f28, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fsub.s f20, f13, f27, dyn # perform operation
fsub.s f20, f13, f27, rdn # perform operation
fsub.s f20, f13, f27, rmm # perform operation
fsub.s f20, f13, f27, rne # perform operation
fsub.s f20, f13, f27, rtz # perform operation
fsub.s f20, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fsub.s f11, f10, f8, dyn # perform operation
fsub.s f11, f10, f8, rdn # perform operation
fsub.s f11, f10, f8, rmm # perform operation
fsub.s f11, f10, f8, rne # perform operation
fsub.s f11, f10, f8, rtz # perform operation
fsub.s f11, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fsub.s f17, f20, f31, dyn # perform operation
fsub.s f17, f20, f31, rdn # perform operation
fsub.s f17, f20, f31, rmm # perform operation
fsub.s f17, f20, f31, rne # perform operation
fsub.s f17, f20, f31, rtz # perform operation
fsub.s f17, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fsub.s f7, f12, f11, dyn # perform operation
fsub.s f7, f12, f11, rdn # perform operation
fsub.s f7, f12, f11, rmm # perform operation
fsub.s f7, f12, f11, rne # perform operation
fsub.s f7, f12, f11, rtz # perform operation
fsub.s f7, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fsub.s f23, f25, f16, dyn # perform operation
fsub.s f23, f25, f16, rdn # perform operation
fsub.s f23, f25, f16, rmm # perform operation
fsub.s f23, f25, f16, rne # perform operation
fsub.s f23, f25, f16, rtz # perform operation
fsub.s f23, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f7, f27, f13, dyn # perform operation
fsub.s f7, f27, f13, rdn # perform operation
fsub.s f7, f27, f13, rmm # perform operation
fsub.s f7, f27, f13, rne # perform operation
fsub.s f7, f27, f13, rtz # perform operation
fsub.s f7, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fsub.s f23, f5, f12, dyn # perform operation
fsub.s f23, f5, f12, rdn # perform operation
fsub.s f23, f5, f12, rmm # perform operation
fsub.s f23, f5, f12, rne # perform operation
fsub.s f23, f5, f12, rtz # perform operation
fsub.s f23, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsub.s f1, f22, f27, dyn # perform operation
fsub.s f1, f22, f27, rdn # perform operation
fsub.s f1, f22, f27, rmm # perform operation
fsub.s f1, f22, f27, rne # perform operation
fsub.s f1, f22, f27, rtz # perform operation
fsub.s f1, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fsub.s f14, f7, f17, dyn # perform operation
fsub.s f14, f7, f17, rdn # perform operation
fsub.s f14, f7, f17, rmm # perform operation
fsub.s f14, f7, f17, rne # perform operation
fsub.s f14, f7, f17, rtz # perform operation
fsub.s f14, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fsub.s f6, f17, f15, dyn # perform operation
fsub.s f6, f17, f15, rdn # perform operation
fsub.s f6, f17, f15, rmm # perform operation
fsub.s f6, f17, f15, rne # perform operation
fsub.s f6, f17, f15, rtz # perform operation
fsub.s f6, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fsub.s f21, f15, f12, dyn # perform operation
fsub.s f21, f15, f12, rdn # perform operation
fsub.s f21, f15, f12, rmm # perform operation
fsub.s f21, f15, f12, rne # perform operation
fsub.s f21, f15, f12, rtz # perform operation
fsub.s f21, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fsub.s f3, f29, f17, dyn # perform operation
fsub.s f3, f29, f17, rdn # perform operation
fsub.s f3, f29, f17, rmm # perform operation
fsub.s f3, f29, f17, rne # perform operation
fsub.s f3, f29, f17, rtz # perform operation
fsub.s f3, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fsub.s f25, f13, f20, dyn # perform operation
fsub.s f25, f13, f20, rdn # perform operation
fsub.s f25, f13, f20, rmm # perform operation
fsub.s f25, f13, f20, rne # perform operation
fsub.s f25, f13, f20, rtz # perform operation
fsub.s f25, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
fsub.s f2, f13, f26, dyn # perform operation
fsub.s f2, f13, f26, rdn # perform operation
fsub.s f2, f13, f26, rmm # perform operation
fsub.s f2, f13, f26, rne # perform operation
fsub.s f2, f13, f26, rtz # perform operation
fsub.s f2, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f31, f2, f21, dyn # perform operation
fsub.s f31, f2, f21, rdn # perform operation
fsub.s f31, f2, f21, rmm # perform operation
fsub.s f31, f2, f21, rne # perform operation
fsub.s f31, f2, f21, rtz # perform operation
fsub.s f31, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fsub.s f30, f31, f21, dyn # perform operation
fsub.s f30, f31, f21, rdn # perform operation
fsub.s f30, f31, f21, rmm # perform operation
fsub.s f30, f31, f21, rne # perform operation
fsub.s f30, f31, f21, rtz # perform operation
fsub.s f30, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fsub.s f8, f5, f21, dyn # perform operation
fsub.s f8, f5, f21, rdn # perform operation
fsub.s f8, f5, f21, rmm # perform operation
fsub.s f8, f5, f21, rne # perform operation
fsub.s f8, f5, f21, rtz # perform operation
fsub.s f8, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fsub.s f26, f14, f25, dyn # perform operation
fsub.s f26, f14, f25, rdn # perform operation
fsub.s f26, f14, f25, rmm # perform operation
fsub.s f26, f14, f25, rne # perform operation
fsub.s f26, f14, f25, rtz # perform operation
fsub.s f26, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fsub.s f31, f1, f21, dyn # perform operation
fsub.s f31, f1, f21, rdn # perform operation
fsub.s f31, f1, f21, rmm # perform operation
fsub.s f31, f1, f21, rne # perform operation
fsub.s f31, f1, f21, rtz # perform operation
fsub.s f31, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f17, f1, f22, dyn # perform operation
fsub.s f17, f1, f22, rdn # perform operation
fsub.s f17, f1, f22, rmm # perform operation
fsub.s f17, f1, f22, rne # perform operation
fsub.s f17, f1, f22, rtz # perform operation
fsub.s f17, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fsub.s f30, f22, f20, dyn # perform operation
fsub.s f30, f22, f20, rdn # perform operation
fsub.s f30, f22, f20, rmm # perform operation
fsub.s f30, f22, f20, rne # perform operation
fsub.s f30, f22, f20, rtz # perform operation
fsub.s f30, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fsub.s f8, f28, f22, dyn # perform operation
fsub.s f8, f28, f22, rdn # perform operation
fsub.s f8, f28, f22, rmm # perform operation
fsub.s f8, f28, f22, rne # perform operation
fsub.s f8, f28, f22, rtz # perform operation
fsub.s f8, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fsub.s f11, f18, f15, dyn # perform operation
fsub.s f11, f18, f15, rdn # perform operation
fsub.s f11, f18, f15, rmm # perform operation
fsub.s f11, f18, f15, rne # perform operation
fsub.s f11, f18, f15, rtz # perform operation
fsub.s f11, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fsub.s f27, f30, f3, dyn # perform operation
fsub.s f27, f30, f3, rdn # perform operation
fsub.s f27, f30, f3, rmm # perform operation
fsub.s f27, f30, f3, rne # perform operation
fsub.s f27, f30, f3, rtz # perform operation
fsub.s f27, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f27, f16, f11, dyn # perform operation
fsub.s f27, f16, f11, rdn # perform operation
fsub.s f27, f16, f11, rmm # perform operation
fsub.s f27, f16, f11, rne # perform operation
fsub.s f27, f16, f11, rtz # perform operation
fsub.s f27, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fsub.s f6, f30, f24, dyn # perform operation
fsub.s f6, f30, f24, rdn # perform operation
fsub.s f6, f30, f24, rmm # perform operation
fsub.s f6, f30, f24, rne # perform operation
fsub.s f6, f30, f24, rtz # perform operation
fsub.s f6, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fsub.s f21, f12, f8, dyn # perform operation
fsub.s f21, f12, f8, rdn # perform operation
fsub.s f21, f12, f8, rmm # perform operation
fsub.s f21, f12, f8, rne # perform operation
fsub.s f21, f12, f8, rtz # perform operation
fsub.s f21, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fsub.s f13, f30, f11, dyn # perform operation
fsub.s f13, f30, f11, rdn # perform operation
fsub.s f13, f30, f11, rmm # perform operation
fsub.s f13, f30, f11, rne # perform operation
fsub.s f13, f30, f11, rtz # perform operation
fsub.s f13, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fsub.s f5, f3, f20, dyn # perform operation
fsub.s f5, f3, f20, rdn # perform operation
fsub.s f5, f3, f20, rmm # perform operation
fsub.s f5, f3, f20, rne # perform operation
fsub.s f5, f3, f20, rtz # perform operation
fsub.s f5, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fsub.s f17, f12, f26, dyn # perform operation
fsub.s f17, f12, f26, rdn # perform operation
fsub.s f17, f12, f26, rmm # perform operation
fsub.s f17, f12, f26, rne # perform operation
fsub.s f17, f12, f26, rtz # perform operation
fsub.s f17, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f14, f29, f3, dyn # perform operation
fsub.s f14, f29, f3, rdn # perform operation
fsub.s f14, f29, f3, rmm # perform operation
fsub.s f14, f29, f3, rne # perform operation
fsub.s f14, f29, f3, rtz # perform operation
fsub.s f14, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fsub.s f17, f30, f29, dyn # perform operation
fsub.s f17, f30, f29, rdn # perform operation
fsub.s f17, f30, f29, rmm # perform operation
fsub.s f17, f30, f29, rne # perform operation
fsub.s f17, f30, f29, rtz # perform operation
fsub.s f17, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fsub.s f1, f13, f7, dyn # perform operation
fsub.s f1, f13, f7, rdn # perform operation
fsub.s f1, f13, f7, rmm # perform operation
fsub.s f1, f13, f7, rne # perform operation
fsub.s f1, f13, f7, rtz # perform operation
fsub.s f1, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fsub.s f23, f7, f3, dyn # perform operation
fsub.s f23, f7, f3, rdn # perform operation
fsub.s f23, f7, f3, rmm # perform operation
fsub.s f23, f7, f3, rne # perform operation
fsub.s f23, f7, f3, rtz # perform operation
fsub.s f23, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fsub.s f30, f22, f19, dyn # perform operation
fsub.s f30, f22, f19, rdn # perform operation
fsub.s f30, f22, f19, rmm # perform operation
fsub.s f30, f22, f19, rne # perform operation
fsub.s f30, f22, f19, rtz # perform operation
fsub.s f30, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f28, f6, f20, dyn # perform operation
fsub.s f28, f6, f20, rdn # perform operation
fsub.s f28, f6, f20, rmm # perform operation
fsub.s f28, f6, f20, rne # perform operation
fsub.s f28, f6, f20, rtz # perform operation
fsub.s f28, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fsub.s f30, f12, f14, dyn # perform operation
fsub.s f30, f12, f14, rdn # perform operation
fsub.s f30, f12, f14, rmm # perform operation
fsub.s f30, f12, f14, rne # perform operation
fsub.s f30, f12, f14, rtz # perform operation
fsub.s f30, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fsub.s f9, f12, f17, dyn # perform operation
fsub.s f9, f12, f17, rdn # perform operation
fsub.s f9, f12, f17, rmm # perform operation
fsub.s f9, f12, f17, rne # perform operation
fsub.s f9, f12, f17, rtz # perform operation
fsub.s f9, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fsub.s f30, f18, f12, dyn # perform operation
fsub.s f30, f18, f12, rdn # perform operation
fsub.s f30, f18, f12, rmm # perform operation
fsub.s f30, f18, f12, rne # perform operation
fsub.s f30, f18, f12, rtz # perform operation
fsub.s f30, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fsub.s f8, f18, f26, dyn # perform operation
fsub.s f8, f18, f26, rdn # perform operation
fsub.s f8, f18, f26, rmm # perform operation
fsub.s f8, f18, f26, rne # perform operation
fsub.s f8, f18, f26, rtz # perform operation
fsub.s f8, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fsub.s f17, f11, f6, dyn # perform operation
fsub.s f17, f11, f6, rdn # perform operation
fsub.s f17, f11, f6, rmm # perform operation
fsub.s f17, f11, f6, rne # perform operation
fsub.s f17, f11, f6, rtz # perform operation
fsub.s f17, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fsub.s f19, f3, f12, dyn # perform operation
fsub.s f19, f3, f12, rdn # perform operation
fsub.s f19, f3, f12, rmm # perform operation
fsub.s f19, f3, f12, rne # perform operation
fsub.s f19, f3, f12, rtz # perform operation
fsub.s f19, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fsub.s f15, f2, f20, dyn # perform operation
fsub.s f15, f2, f20, rdn # perform operation
fsub.s f15, f2, f20, rmm # perform operation
fsub.s f15, f2, f20, rne # perform operation
fsub.s f15, f2, f20, rtz # perform operation
fsub.s f15, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f13, f10, f12, dyn # perform operation
fsub.s f13, f10, f12, rdn # perform operation
fsub.s f13, f10, f12, rmm # perform operation
fsub.s f13, f10, f12, rne # perform operation
fsub.s f13, f10, f12, rtz # perform operation
fsub.s f13, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fsub.s f6, f17, f5, dyn # perform operation
fsub.s f6, f17, f5, rdn # perform operation
fsub.s f6, f17, f5, rmm # perform operation
fsub.s f6, f17, f5, rne # perform operation
fsub.s f6, f17, f5, rtz # perform operation
fsub.s f6, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fsub.s f31, f22, f20, dyn # perform operation
fsub.s f31, f22, f20, rdn # perform operation
fsub.s f31, f22, f20, rmm # perform operation
fsub.s f31, f22, f20, rne # perform operation
fsub.s f31, f22, f20, rtz # perform operation
fsub.s f31, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fsub.s f27, f1, f16, dyn # perform operation
fsub.s f27, f1, f16, rdn # perform operation
fsub.s f27, f1, f16, rmm # perform operation
fsub.s f27, f1, f16, rne # perform operation
fsub.s f27, f1, f16, rtz # perform operation
fsub.s f27, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fsub.s f31, f1, f16, dyn # perform operation
fsub.s f31, f1, f16, rdn # perform operation
fsub.s f31, f1, f16, rmm # perform operation
fsub.s f31, f1, f16, rne # perform operation
fsub.s f31, f1, f16, rtz # perform operation
fsub.s f31, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fsub.s f29, f28, f30, dyn # perform operation
fsub.s f29, f28, f30, rdn # perform operation
fsub.s f29, f28, f30, rmm # perform operation
fsub.s f29, f28, f30, rne # perform operation
fsub.s f29, f28, f30, rtz # perform operation
fsub.s f29, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fsub.s f25, f30, f7, dyn # perform operation
fsub.s f25, f30, f7, rdn # perform operation
fsub.s f25, f30, f7, rmm # perform operation
fsub.s f25, f30, f7, rne # perform operation
fsub.s f25, f30, f7, rtz # perform operation
fsub.s f25, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fsub.s f1, f10, f5, dyn # perform operation
fsub.s f1, f10, f5, rdn # perform operation
fsub.s f1, f10, f5, rmm # perform operation
fsub.s f1, f10, f5, rne # perform operation
fsub.s f1, f10, f5, rtz # perform operation
fsub.s f1, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fsub.s f26, f22, f1, dyn # perform operation
fsub.s f26, f22, f1, rdn # perform operation
fsub.s f26, f22, f1, rmm # perform operation
fsub.s f26, f22, f1, rne # perform operation
fsub.s f26, f22, f1, rtz # perform operation
fsub.s f26, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fsub.s f18, f6, f22, dyn # perform operation
fsub.s f18, f6, f22, rdn # perform operation
fsub.s f18, f6, f22, rmm # perform operation
fsub.s f18, f6, f22, rne # perform operation
fsub.s f18, f6, f22, rtz # perform operation
fsub.s f18, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fsub.s f14, f23, f24, dyn # perform operation
fsub.s f14, f23, f24, rdn # perform operation
fsub.s f14, f23, f24, rmm # perform operation
fsub.s f14, f23, f24, rne # perform operation
fsub.s f14, f23, f24, rtz # perform operation
fsub.s f14, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsub.s f25, f10, f6, dyn # perform operation
fsub.s f25, f10, f6, rdn # perform operation
fsub.s f25, f10, f6, rmm # perform operation
fsub.s f25, f10, f6, rne # perform operation
fsub.s f25, f10, f6, rtz # perform operation
fsub.s f25, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fsub.s f21, f26, f24, dyn # perform operation
fsub.s f21, f26, f24, rdn # perform operation
fsub.s f21, f26, f24, rmm # perform operation
fsub.s f21, f26, f24, rne # perform operation
fsub.s f21, f26, f24, rtz # perform operation
fsub.s f21, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fsub.s f23, f12, f15, dyn # perform operation
fsub.s f23, f12, f15, rdn # perform operation
fsub.s f23, f12, f15, rmm # perform operation
fsub.s f23, f12, f15, rne # perform operation
fsub.s f23, f12, f15, rtz # perform operation
fsub.s f23, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f6, f15, f9, dyn # perform operation
fsub.s f6, f15, f9, rdn # perform operation
fsub.s f6, f15, f9, rmm # perform operation
fsub.s f6, f15, f9, rne # perform operation
fsub.s f6, f15, f9, rtz # perform operation
fsub.s f6, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fsub.s f23, f15, f29, dyn # perform operation
fsub.s f23, f15, f29, rdn # perform operation
fsub.s f23, f15, f29, rmm # perform operation
fsub.s f23, f15, f29, rne # perform operation
fsub.s f23, f15, f29, rtz # perform operation
fsub.s f23, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fsub.s f5, f17, f26, dyn # perform operation
fsub.s f5, f17, f26, rdn # perform operation
fsub.s f5, f17, f26, rmm # perform operation
fsub.s f5, f17, f26, rne # perform operation
fsub.s f5, f17, f26, rtz # perform operation
fsub.s f5, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fsub.s f29, f16, f12, dyn # perform operation
fsub.s f29, f16, f12, rdn # perform operation
fsub.s f29, f16, f12, rmm # perform operation
fsub.s f29, f16, f12, rne # perform operation
fsub.s f29, f16, f12, rtz # perform operation
fsub.s f29, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fsub.s f9, f20, f23, dyn # perform operation
fsub.s f9, f20, f23, rdn # perform operation
fsub.s f9, f20, f23, rmm # perform operation
fsub.s f9, f20, f23, rne # perform operation
fsub.s f9, f20, f23, rtz # perform operation
fsub.s f9, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fsub.s f25, f13, f20, dyn # perform operation
fsub.s f25, f13, f20, rdn # perform operation
fsub.s f25, f13, f20, rmm # perform operation
fsub.s f25, f13, f20, rne # perform operation
fsub.s f25, f13, f20, rtz # perform operation
fsub.s f25, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fsub.s f27, f22, f17, dyn # perform operation
fsub.s f27, f22, f17, rdn # perform operation
fsub.s f27, f22, f17, rmm # perform operation
fsub.s f27, f22, f17, rne # perform operation
fsub.s f27, f22, f17, rtz # perform operation
fsub.s f27, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fsub.s f24, f20, f7, dyn # perform operation
fsub.s f24, f20, f7, rdn # perform operation
fsub.s f24, f20, f7, rmm # perform operation
fsub.s f24, f20, f7, rne # perform operation
fsub.s f24, f20, f7, rtz # perform operation
fsub.s f24, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fsub.s f19, f20, f5, dyn # perform operation
fsub.s f19, f20, f5, rdn # perform operation
fsub.s f19, f20, f5, rmm # perform operation
fsub.s f19, f20, f5, rne # perform operation
fsub.s f19, f20, f5, rtz # perform operation
fsub.s f19, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fsub.s f21, f15, f9, dyn # perform operation
fsub.s f21, f15, f9, rdn # perform operation
fsub.s f21, f15, f9, rmm # perform operation
fsub.s f21, f15, f9, rne # perform operation
fsub.s f21, f15, f9, rtz # perform operation
fsub.s f21, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fsub.s f22, f2, f21, dyn # perform operation
fsub.s f22, f2, f21, rdn # perform operation
fsub.s f22, f2, f21, rmm # perform operation
fsub.s f22, f2, f21, rne # perform operation
fsub.s f22, f2, f21, rtz # perform operation
fsub.s f22, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fsub.s f5, f12, f1, dyn # perform operation
fsub.s f5, f12, f1, rdn # perform operation
fsub.s f5, f12, f1, rmm # perform operation
fsub.s f5, f12, f1, rne # perform operation
fsub.s f5, f12, f1, rtz # perform operation
fsub.s f5, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
fsub.s f6, f7, f20, dyn # perform operation
fsub.s f6, f7, f20, rdn # perform operation
fsub.s f6, f7, f20, rmm # perform operation
fsub.s f6, f7, f20, rne # perform operation
fsub.s f6, f7, f20, rtz # perform operation
fsub.s f6, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fsub.s f8, f7, f24, dyn # perform operation
fsub.s f8, f7, f24, rdn # perform operation
fsub.s f8, f7, f24, rmm # perform operation
fsub.s f8, f7, f24, rne # perform operation
fsub.s f8, f7, f24, rtz # perform operation
fsub.s f8, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fsub.s f12, f21, f2, dyn # perform operation
fsub.s f12, f21, f2, rdn # perform operation
fsub.s f12, f21, f2, rmm # perform operation
fsub.s f12, f21, f2, rne # perform operation
fsub.s f12, f21, f2, rtz # perform operation
fsub.s f12, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f27, f28, f31, dyn # perform operation
fsub.s f27, f28, f31, rdn # perform operation
fsub.s f27, f28, f31, rmm # perform operation
fsub.s f27, f28, f31, rne # perform operation
fsub.s f27, f28, f31, rtz # perform operation
fsub.s f27, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fsub.s f24, f29, f1, dyn # perform operation
fsub.s f24, f29, f1, rdn # perform operation
fsub.s f24, f29, f1, rmm # perform operation
fsub.s f24, f29, f1, rne # perform operation
fsub.s f24, f29, f1, rtz # perform operation
fsub.s f24, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fsub.s f5, f22, f18, dyn # perform operation
fsub.s f5, f22, f18, rdn # perform operation
fsub.s f5, f22, f18, rmm # perform operation
fsub.s f5, f22, f18, rne # perform operation
fsub.s f5, f22, f18, rtz # perform operation
fsub.s f5, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fsub.s f28, f25, f7, dyn # perform operation
fsub.s f28, f25, f7, rdn # perform operation
fsub.s f28, f25, f7, rmm # perform operation
fsub.s f28, f25, f7, rne # perform operation
fsub.s f28, f25, f7, rtz # perform operation
fsub.s f28, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f21, f17, f29, dyn # perform operation
fsub.s f21, f17, f29, rdn # perform operation
fsub.s f21, f17, f29, rmm # perform operation
fsub.s f21, f17, f29, rne # perform operation
fsub.s f21, f17, f29, rtz # perform operation
fsub.s f21, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fsub.s f21, f16, f14, dyn # perform operation
fsub.s f21, f16, f14, rdn # perform operation
fsub.s f21, f16, f14, rmm # perform operation
fsub.s f21, f16, f14, rne # perform operation
fsub.s f21, f16, f14, rtz # perform operation
fsub.s f21, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fsub.s f2, f9, f1, dyn # perform operation
fsub.s f2, f9, f1, rdn # perform operation
fsub.s f2, f9, f1, rmm # perform operation
fsub.s f2, f9, f1, rne # perform operation
fsub.s f2, f9, f1, rtz # perform operation
fsub.s f2, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fsub.s f30, f24, f8, dyn # perform operation
fsub.s f30, f24, f8, rdn # perform operation
fsub.s f30, f24, f8, rmm # perform operation
fsub.s f30, f24, f8, rne # perform operation
fsub.s f30, f24, f8, rtz # perform operation
fsub.s f30, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fsub.s f21, f20, f10, dyn # perform operation
fsub.s f21, f20, f10, rdn # perform operation
fsub.s f21, f20, f10, rmm # perform operation
fsub.s f21, f20, f10, rne # perform operation
fsub.s f21, f20, f10, rtz # perform operation
fsub.s f21, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fsub.s f7, f11, f28, dyn # perform operation
fsub.s f7, f11, f28, rdn # perform operation
fsub.s f7, f11, f28, rmm # perform operation
fsub.s f7, f11, f28, rne # perform operation
fsub.s f7, f11, f28, rtz # perform operation
fsub.s f7, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fsub.s f20, f5, f3, dyn # perform operation
fsub.s f20, f5, f3, rdn # perform operation
fsub.s f20, f5, f3, rmm # perform operation
fsub.s f20, f5, f3, rne # perform operation
fsub.s f20, f5, f3, rtz # perform operation
fsub.s f20, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fsub.s f9, f28, f11, dyn # perform operation
fsub.s f9, f28, f11, rdn # perform operation
fsub.s f9, f28, f11, rmm # perform operation
fsub.s f9, f28, f11, rne # perform operation
fsub.s f9, f28, f11, rtz # perform operation
fsub.s f9, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fsub.s f14, f25, f18, dyn # perform operation
fsub.s f14, f25, f18, rdn # perform operation
fsub.s f14, f25, f18, rmm # perform operation
fsub.s f14, f25, f18, rne # perform operation
fsub.s f14, f25, f18, rtz # perform operation
fsub.s f14, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fsub.s f3, f8, f31, dyn # perform operation
fsub.s f3, f8, f31, rdn # perform operation
fsub.s f3, f8, f31, rmm # perform operation
fsub.s f3, f8, f31, rne # perform operation
fsub.s f3, f8, f31, rtz # perform operation
fsub.s f3, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fsub.s f27, f11, f20, dyn # perform operation
fsub.s f27, f11, f20, rdn # perform operation
fsub.s f27, f11, f20, rmm # perform operation
fsub.s f27, f11, f20, rne # perform operation
fsub.s f27, f11, f20, rtz # perform operation
fsub.s f27, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fsub.s f1, f5, f18, dyn # perform operation
fsub.s f1, f5, f18, rdn # perform operation
fsub.s f1, f5, f18, rmm # perform operation
fsub.s f1, f5, f18, rne # perform operation
fsub.s f1, f5, f18, rtz # perform operation
fsub.s f1, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fsub.s f14, f10, f7, dyn # perform operation
fsub.s f14, f10, f7, rdn # perform operation
fsub.s f14, f10, f7, rmm # perform operation
fsub.s f14, f10, f7, rne # perform operation
fsub.s f14, f10, f7, rtz # perform operation
fsub.s f14, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fsub.s f23, f10, f1, dyn # perform operation
fsub.s f23, f10, f1, rdn # perform operation
fsub.s f23, f10, f1, rmm # perform operation
fsub.s f23, f10, f1, rne # perform operation
fsub.s f23, f10, f1, rtz # perform operation
fsub.s f23, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fsub.s f31, f1, f20, dyn # perform operation
fsub.s f31, f1, f20, rdn # perform operation
fsub.s f31, f1, f20, rmm # perform operation
fsub.s f31, f1, f20, rne # perform operation
fsub.s f31, f1, f20, rtz # perform operation
fsub.s f31, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f7, f12, f29, dyn # perform operation
fsub.s f7, f12, f29, rdn # perform operation
fsub.s f7, f12, f29, rmm # perform operation
fsub.s f7, f12, f29, rne # perform operation
fsub.s f7, f12, f29, rtz # perform operation
fsub.s f7, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fsub.s f3, f16, f18, dyn # perform operation
fsub.s f3, f16, f18, rdn # perform operation
fsub.s f3, f16, f18, rmm # perform operation
fsub.s f3, f16, f18, rne # perform operation
fsub.s f3, f16, f18, rtz # perform operation
fsub.s f3, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fsub.s f15, f9, f7, dyn # perform operation
fsub.s f15, f9, f7, rdn # perform operation
fsub.s f15, f9, f7, rmm # perform operation
fsub.s f15, f9, f7, rne # perform operation
fsub.s f15, f9, f7, rtz # perform operation
fsub.s f15, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fsub.s f1, f13, f19, dyn # perform operation
fsub.s f1, f13, f19, rdn # perform operation
fsub.s f1, f13, f19, rmm # perform operation
fsub.s f1, f13, f19, rne # perform operation
fsub.s f1, f13, f19, rtz # perform operation
fsub.s f1, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fsub.s f17, f10, f8, dyn # perform operation
fsub.s f17, f10, f8, rdn # perform operation
fsub.s f17, f10, f8, rmm # perform operation
fsub.s f17, f10, f8, rne # perform operation
fsub.s f17, f10, f8, rtz # perform operation
fsub.s f17, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f22, f19, f5, dyn # perform operation
fsub.s f22, f19, f5, rdn # perform operation
fsub.s f22, f19, f5, rmm # perform operation
fsub.s f22, f19, f5, rne # perform operation
fsub.s f22, f19, f5, rtz # perform operation
fsub.s f22, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fsub.s f6, f21, f19, dyn # perform operation
fsub.s f6, f21, f19, rdn # perform operation
fsub.s f6, f21, f19, rmm # perform operation
fsub.s f6, f21, f19, rne # perform operation
fsub.s f6, f21, f19, rtz # perform operation
fsub.s f6, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fsub.s f6, f22, f20, dyn # perform operation
fsub.s f6, f22, f20, rdn # perform operation
fsub.s f6, f22, f20, rmm # perform operation
fsub.s f6, f22, f20, rne # perform operation
fsub.s f6, f22, f20, rtz # perform operation
fsub.s f6, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fsub.s f2, f22, f10, dyn # perform operation
fsub.s f2, f22, f10, rdn # perform operation
fsub.s f2, f22, f10, rmm # perform operation
fsub.s f2, f22, f10, rne # perform operation
fsub.s f2, f22, f10, rtz # perform operation
fsub.s f2, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f18, f1, f31, dyn # perform operation
fsub.s f18, f1, f31, rdn # perform operation
fsub.s f18, f1, f31, rmm # perform operation
fsub.s f18, f1, f31, rne # perform operation
fsub.s f18, f1, f31, rtz # perform operation
fsub.s f18, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fsub.s f26, f27, f6, dyn # perform operation
fsub.s f26, f27, f6, rdn # perform operation
fsub.s f26, f27, f6, rmm # perform operation
fsub.s f26, f27, f6, rne # perform operation
fsub.s f26, f27, f6, rtz # perform operation
fsub.s f26, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fsub.s f14, f28, f15, dyn # perform operation
fsub.s f14, f28, f15, rdn # perform operation
fsub.s f14, f28, f15, rmm # perform operation
fsub.s f14, f28, f15, rne # perform operation
fsub.s f14, f28, f15, rtz # perform operation
fsub.s f14, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fsub.s f14, f22, f23, dyn # perform operation
fsub.s f14, f22, f23, rdn # perform operation
fsub.s f14, f22, f23, rmm # perform operation
fsub.s f14, f22, f23, rne # perform operation
fsub.s f14, f22, f23, rtz # perform operation
fsub.s f14, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fsub.s f27, f20, f13, dyn # perform operation
fsub.s f27, f20, f13, rdn # perform operation
fsub.s f27, f20, f13, rmm # perform operation
fsub.s f27, f20, f13, rne # perform operation
fsub.s f27, f20, f13, rtz # perform operation
fsub.s f27, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fsub.s f10, f22, f2, dyn # perform operation
fsub.s f10, f22, f2, rdn # perform operation
fsub.s f10, f22, f2, rmm # perform operation
fsub.s f10, f22, f2, rne # perform operation
fsub.s f10, f22, f2, rtz # perform operation
fsub.s f10, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fsub.s f5, f21, f1, dyn # perform operation
fsub.s f5, f21, f1, rdn # perform operation
fsub.s f5, f21, f1, rmm # perform operation
fsub.s f5, f21, f1, rne # perform operation
fsub.s f5, f21, f1, rtz # perform operation
fsub.s f5, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fsub.s f8, f20, f19, dyn # perform operation
fsub.s f8, f20, f19, rdn # perform operation
fsub.s f8, f20, f19, rmm # perform operation
fsub.s f8, f20, f19, rne # perform operation
fsub.s f8, f20, f19, rtz # perform operation
fsub.s f8, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsub.s f20, f19, f26, dyn # perform operation
fsub.s f20, f19, f26, rdn # perform operation
fsub.s f20, f19, f26, rmm # perform operation
fsub.s f20, f19, f26, rne # perform operation
fsub.s f20, f19, f26, rtz # perform operation
fsub.s f20, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f1, f31, f20, dyn # perform operation
fsub.s f1, f31, f20, rdn # perform operation
fsub.s f1, f31, f20, rmm # perform operation
fsub.s f1, f31, f20, rne # perform operation
fsub.s f1, f31, f20, rtz # perform operation
fsub.s f1, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fsub.s f20, f26, f13, dyn # perform operation
fsub.s f20, f26, f13, rdn # perform operation
fsub.s f20, f26, f13, rmm # perform operation
fsub.s f20, f26, f13, rne # perform operation
fsub.s f20, f26, f13, rtz # perform operation
fsub.s f20, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsub.s f7, f3, f2, dyn # perform operation
fsub.s f7, f3, f2, rdn # perform operation
fsub.s f7, f3, f2, rmm # perform operation
fsub.s f7, f3, f2, rne # perform operation
fsub.s f7, f3, f2, rtz # perform operation
fsub.s f7, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fsub.s f14, f10, f23, dyn # perform operation
fsub.s f14, f10, f23, rdn # perform operation
fsub.s f14, f10, f23, rmm # perform operation
fsub.s f14, f10, f23, rne # perform operation
fsub.s f14, f10, f23, rtz # perform operation
fsub.s f14, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fsub.s f17, f28, f25, dyn # perform operation
fsub.s f17, f28, f25, rdn # perform operation
fsub.s f17, f28, f25, rmm # perform operation
fsub.s f17, f28, f25, rne # perform operation
fsub.s f17, f28, f25, rtz # perform operation
fsub.s f17, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fsub.s f19, f1, f14, dyn # perform operation
fsub.s f19, f1, f14, rdn # perform operation
fsub.s f19, f1, f14, rmm # perform operation
fsub.s f19, f1, f14, rne # perform operation
fsub.s f19, f1, f14, rtz # perform operation
fsub.s f19, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f1, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fsub.s f1, f24, f28, dyn # perform operation
fsub.s f1, f24, f28, rdn # perform operation
fsub.s f1, f24, f28, rmm # perform operation
fsub.s f1, f24, f28, rne # perform operation
fsub.s f1, f24, f28, rtz # perform operation
fsub.s f1, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fsub.s f19, f3, f30, dyn # perform operation
fsub.s f19, f3, f30, rdn # perform operation
fsub.s f19, f3, f30, rmm # perform operation
fsub.s f19, f3, f30, rne # perform operation
fsub.s f19, f3, f30, rtz # perform operation
fsub.s f19, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fsub.s f18, f24, f20, dyn # perform operation
fsub.s f18, f24, f20, rdn # perform operation
fsub.s f18, f24, f20, rmm # perform operation
fsub.s f18, f24, f20, rne # perform operation
fsub.s f18, f24, f20, rtz # perform operation
fsub.s f18, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fsub.s f10, f21, f27, dyn # perform operation
fsub.s f10, f21, f27, rdn # perform operation
fsub.s f10, f21, f27, rmm # perform operation
fsub.s f10, f21, f27, rne # perform operation
fsub.s f10, f21, f27, rtz # perform operation
fsub.s f10, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsub.s f23, f13, f9, dyn # perform operation
fsub.s f23, f13, f9, rdn # perform operation
fsub.s f23, f13, f9, rmm # perform operation
fsub.s f23, f13, f9, rne # perform operation
fsub.s f23, f13, f9, rtz # perform operation
fsub.s f23, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fsub.s f23, f14, f9, dyn # perform operation
fsub.s f23, f14, f9, rdn # perform operation
fsub.s f23, f14, f9, rmm # perform operation
fsub.s f23, f14, f9, rne # perform operation
fsub.s f23, f14, f9, rtz # perform operation
fsub.s f23, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fsub.s f14, f24, f15, dyn # perform operation
fsub.s f14, f24, f15, rdn # perform operation
fsub.s f14, f24, f15, rmm # perform operation
fsub.s f14, f24, f15, rne # perform operation
fsub.s f14, f24, f15, rtz # perform operation
fsub.s f14, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fsub.s f14, f11, f31, dyn # perform operation
fsub.s f14, f11, f31, rdn # perform operation
fsub.s f14, f11, f31, rmm # perform operation
fsub.s f14, f11, f31, rne # perform operation
fsub.s f14, f11, f31, rtz # perform operation
fsub.s f14, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fsub.s f3, f20, f27, dyn # perform operation
fsub.s f3, f20, f27, rdn # perform operation
fsub.s f3, f20, f27, rmm # perform operation
fsub.s f3, f20, f27, rne # perform operation
fsub.s f3, f20, f27, rtz # perform operation
fsub.s f3, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fsub.s f9, f11, f25, dyn # perform operation
fsub.s f9, f11, f25, rdn # perform operation
fsub.s f9, f11, f25, rmm # perform operation
fsub.s f9, f11, f25, rne # perform operation
fsub.s f9, f11, f25, rtz # perform operation
fsub.s f9, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
fsub.s f22, f9, f11, dyn # perform operation
fsub.s f22, f9, f11, rdn # perform operation
fsub.s f22, f9, f11, rmm # perform operation
fsub.s f22, f9, f11, rne # perform operation
fsub.s f22, f9, f11, rtz # perform operation
fsub.s f22, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fsub.s f14, f5, f13, dyn # perform operation
fsub.s f14, f5, f13, rdn # perform operation
fsub.s f14, f5, f13, rmm # perform operation
fsub.s f14, f5, f13, rne # perform operation
fsub.s f14, f5, f13, rtz # perform operation
fsub.s f14, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fsub.s f31, f16, f30, dyn # perform operation
fsub.s f31, f16, f30, rdn # perform operation
fsub.s f31, f16, f30, rmm # perform operation
fsub.s f31, f16, f30, rne # perform operation
fsub.s f31, f16, f30, rtz # perform operation
fsub.s f31, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f20, f11, f31, dyn # perform operation
fsub.s f20, f11, f31, rdn # perform operation
fsub.s f20, f11, f31, rmm # perform operation
fsub.s f20, f11, f31, rne # perform operation
fsub.s f20, f11, f31, rtz # perform operation
fsub.s f20, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fsub.s f6, f17, f14, dyn # perform operation
fsub.s f6, f17, f14, rdn # perform operation
fsub.s f6, f17, f14, rmm # perform operation
fsub.s f6, f17, f14, rne # perform operation
fsub.s f6, f17, f14, rtz # perform operation
fsub.s f6, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fsub.s f27, f3, f9, dyn # perform operation
fsub.s f27, f3, f9, rdn # perform operation
fsub.s f27, f3, f9, rmm # perform operation
fsub.s f27, f3, f9, rne # perform operation
fsub.s f27, f3, f9, rtz # perform operation
fsub.s f27, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fsub.s f6, f9, f29, dyn # perform operation
fsub.s f6, f9, f29, rdn # perform operation
fsub.s f6, f9, f29, rmm # perform operation
fsub.s f6, f9, f29, rne # perform operation
fsub.s f6, f9, f29, rtz # perform operation
fsub.s f6, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fsub.s f2, f22, f16, dyn # perform operation
fsub.s f2, f22, f16, rdn # perform operation
fsub.s f2, f22, f16, rmm # perform operation
fsub.s f2, f22, f16, rne # perform operation
fsub.s f2, f22, f16, rtz # perform operation
fsub.s f2, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fsub.s f11, f24, f28, dyn # perform operation
fsub.s f11, f24, f28, rdn # perform operation
fsub.s f11, f24, f28, rmm # perform operation
fsub.s f11, f24, f28, rne # perform operation
fsub.s f11, f24, f28, rtz # perform operation
fsub.s f11, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fsub.s f20, f11, f16, dyn # perform operation
fsub.s f20, f11, f16, rdn # perform operation
fsub.s f20, f11, f16, rmm # perform operation
fsub.s f20, f11, f16, rne # perform operation
fsub.s f20, f11, f16, rtz # perform operation
fsub.s f20, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fsub.s f2, f28, f17, dyn # perform operation
fsub.s f2, f28, f17, rdn # perform operation
fsub.s f2, f28, f17, rmm # perform operation
fsub.s f2, f28, f17, rne # perform operation
fsub.s f2, f28, f17, rtz # perform operation
fsub.s f2, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fsub.s f20, f1, f8, dyn # perform operation
fsub.s f20, f1, f8, rdn # perform operation
fsub.s f20, f1, f8, rmm # perform operation
fsub.s f20, f1, f8, rne # perform operation
fsub.s f20, f1, f8, rtz # perform operation
fsub.s f20, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fsub.s f23, f19, f1, dyn # perform operation
fsub.s f23, f19, f1, rdn # perform operation
fsub.s f23, f19, f1, rmm # perform operation
fsub.s f23, f19, f1, rne # perform operation
fsub.s f23, f19, f1, rtz # perform operation
fsub.s f23, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fsub.s f9, f3, f18, dyn # perform operation
fsub.s f9, f3, f18, rdn # perform operation
fsub.s f9, f3, f18, rmm # perform operation
fsub.s f9, f3, f18, rne # perform operation
fsub.s f9, f3, f18, rtz # perform operation
fsub.s f9, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fsub.s f14, f9, f31, dyn # perform operation
fsub.s f14, f9, f31, rdn # perform operation
fsub.s f14, f9, f31, rmm # perform operation
fsub.s f14, f9, f31, rne # perform operation
fsub.s f14, f9, f31, rtz # perform operation
fsub.s f14, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fsub.s f3, f6, f23, dyn # perform operation
fsub.s f3, f6, f23, rdn # perform operation
fsub.s f3, f6, f23, rmm # perform operation
fsub.s f3, f6, f23, rne # perform operation
fsub.s f3, f6, f23, rtz # perform operation
fsub.s f3, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fsub.s f5, f30, f12, dyn # perform operation
fsub.s f5, f30, f12, rdn # perform operation
fsub.s f5, f30, f12, rmm # perform operation
fsub.s f5, f30, f12, rne # perform operation
fsub.s f5, f30, f12, rtz # perform operation
fsub.s f5, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f11, f7, f3, dyn # perform operation
fsub.s f11, f7, f3, rdn # perform operation
fsub.s f11, f7, f3, rmm # perform operation
fsub.s f11, f7, f3, rne # perform operation
fsub.s f11, f7, f3, rtz # perform operation
fsub.s f11, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fsub.s f6, f26, f27, dyn # perform operation
fsub.s f6, f26, f27, rdn # perform operation
fsub.s f6, f26, f27, rmm # perform operation
fsub.s f6, f26, f27, rne # perform operation
fsub.s f6, f26, f27, rtz # perform operation
fsub.s f6, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f27, f12, f25, dyn # perform operation
fsub.s f27, f12, f25, rdn # perform operation
fsub.s f27, f12, f25, rmm # perform operation
fsub.s f27, f12, f25, rne # perform operation
fsub.s f27, f12, f25, rtz # perform operation
fsub.s f27, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fsub.s f6, f31, f3, dyn # perform operation
fsub.s f6, f31, f3, rdn # perform operation
fsub.s f6, f31, f3, rmm # perform operation
fsub.s f6, f31, f3, rne # perform operation
fsub.s f6, f31, f3, rtz # perform operation
fsub.s f6, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fsub.s f3, f22, f12, dyn # perform operation
fsub.s f3, f22, f12, rdn # perform operation
fsub.s f3, f22, f12, rmm # perform operation
fsub.s f3, f22, f12, rne # perform operation
fsub.s f3, f22, f12, rtz # perform operation
fsub.s f3, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f6, f27, f20, dyn # perform operation
fsub.s f6, f27, f20, rdn # perform operation
fsub.s f6, f27, f20, rmm # perform operation
fsub.s f6, f27, f20, rne # perform operation
fsub.s f6, f27, f20, rtz # perform operation
fsub.s f6, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fsub.s f1, f29, f23, dyn # perform operation
fsub.s f1, f29, f23, rdn # perform operation
fsub.s f1, f29, f23, rmm # perform operation
fsub.s f1, f29, f23, rne # perform operation
fsub.s f1, f29, f23, rtz # perform operation
fsub.s f1, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fsub.s f14, f7, f13, dyn # perform operation
fsub.s f14, f7, f13, rdn # perform operation
fsub.s f14, f7, f13, rmm # perform operation
fsub.s f14, f7, f13, rne # perform operation
fsub.s f14, f7, f13, rtz # perform operation
fsub.s f14, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fsub.s f1, f15, f7, dyn # perform operation
fsub.s f1, f15, f7, rdn # perform operation
fsub.s f1, f15, f7, rmm # perform operation
fsub.s f1, f15, f7, rne # perform operation
fsub.s f1, f15, f7, rtz # perform operation
fsub.s f1, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fsub.s f24, f10, f30, dyn # perform operation
fsub.s f24, f10, f30, rdn # perform operation
fsub.s f24, f10, f30, rmm # perform operation
fsub.s f24, f10, f30, rne # perform operation
fsub.s f24, f10, f30, rtz # perform operation
fsub.s f24, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fsub.s f11, f10, f13, dyn # perform operation
fsub.s f11, f10, f13, rdn # perform operation
fsub.s f11, f10, f13, rmm # perform operation
fsub.s f11, f10, f13, rne # perform operation
fsub.s f11, f10, f13, rtz # perform operation
fsub.s f11, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f10, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fsub.s f6, f15, f7, dyn # perform operation
fsub.s f6, f15, f7, rdn # perform operation
fsub.s f6, f15, f7, rmm # perform operation
fsub.s f6, f15, f7, rne # perform operation
fsub.s f6, f15, f7, rtz # perform operation
fsub.s f6, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f6, f23, f21, dyn # perform operation
fsub.s f6, f23, f21, rdn # perform operation
fsub.s f6, f23, f21, rmm # perform operation
fsub.s f6, f23, f21, rne # perform operation
fsub.s f6, f23, f21, rtz # perform operation
fsub.s f6, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fsub.s f19, f27, f9, dyn # perform operation
fsub.s f19, f27, f9, rdn # perform operation
fsub.s f19, f27, f9, rmm # perform operation
fsub.s f19, f27, f9, rne # perform operation
fsub.s f19, f27, f9, rtz # perform operation
fsub.s f19, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fsub.s f9, f21, f31, dyn # perform operation
fsub.s f9, f21, f31, rdn # perform operation
fsub.s f9, f21, f31, rmm # perform operation
fsub.s f9, f21, f31, rne # perform operation
fsub.s f9, f21, f31, rtz # perform operation
fsub.s f9, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fsub.s f16, f28, f3, dyn # perform operation
fsub.s f16, f28, f3, rdn # perform operation
fsub.s f16, f28, f3, rmm # perform operation
fsub.s f16, f28, f3, rne # perform operation
fsub.s f16, f28, f3, rtz # perform operation
fsub.s f16, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fsub.s f7, f8, f28, dyn # perform operation
fsub.s f7, f8, f28, rdn # perform operation
fsub.s f7, f8, f28, rmm # perform operation
fsub.s f7, f8, f28, rne # perform operation
fsub.s f7, f8, f28, rtz # perform operation
fsub.s f7, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fsub.s f20, f22, f3, dyn # perform operation
fsub.s f20, f22, f3, rdn # perform operation
fsub.s f20, f22, f3, rmm # perform operation
fsub.s f20, f22, f3, rne # perform operation
fsub.s f20, f22, f3, rtz # perform operation
fsub.s f20, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fsub.s f14, f11, f23, dyn # perform operation
fsub.s f14, f11, f23, rdn # perform operation
fsub.s f14, f11, f23, rmm # perform operation
fsub.s f14, f11, f23, rne # perform operation
fsub.s f14, f11, f23, rtz # perform operation
fsub.s f14, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fsub.s f18, f15, f5, dyn # perform operation
fsub.s f18, f15, f5, rdn # perform operation
fsub.s f18, f15, f5, rmm # perform operation
fsub.s f18, f15, f5, rne # perform operation
fsub.s f18, f15, f5, rtz # perform operation
fsub.s f18, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fsub.s f25, f27, f10, dyn # perform operation
fsub.s f25, f27, f10, rdn # perform operation
fsub.s f25, f27, f10, rmm # perform operation
fsub.s f25, f27, f10, rne # perform operation
fsub.s f25, f27, f10, rtz # perform operation
fsub.s f25, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f24, f18, f27, dyn # perform operation
fsub.s f24, f18, f27, rdn # perform operation
fsub.s f24, f18, f27, rmm # perform operation
fsub.s f24, f18, f27, rne # perform operation
fsub.s f24, f18, f27, rtz # perform operation
fsub.s f24, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fsub.s f16, f23, f7, dyn # perform operation
fsub.s f16, f23, f7, rdn # perform operation
fsub.s f16, f23, f7, rmm # perform operation
fsub.s f16, f23, f7, rne # perform operation
fsub.s f16, f23, f7, rtz # perform operation
fsub.s f16, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fsub.s f11, f13, f24, dyn # perform operation
fsub.s f11, f13, f24, rdn # perform operation
fsub.s f11, f13, f24, rmm # perform operation
fsub.s f11, f13, f24, rne # perform operation
fsub.s f11, f13, f24, rtz # perform operation
fsub.s f11, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fsub.s f2, f7, f16, dyn # perform operation
fsub.s f2, f7, f16, rdn # perform operation
fsub.s f2, f7, f16, rmm # perform operation
fsub.s f2, f7, f16, rne # perform operation
fsub.s f2, f7, f16, rtz # perform operation
fsub.s f2, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fsub.s f16, f28, f23, dyn # perform operation
fsub.s f16, f28, f23, rdn # perform operation
fsub.s f16, f28, f23, rmm # perform operation
fsub.s f16, f28, f23, rne # perform operation
fsub.s f16, f28, f23, rtz # perform operation
fsub.s f16, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fsub.s f24, f25, f31, dyn # perform operation
fsub.s f24, f25, f31, rdn # perform operation
fsub.s f24, f25, f31, rmm # perform operation
fsub.s f24, f25, f31, rne # perform operation
fsub.s f24, f25, f31, rtz # perform operation
fsub.s f24, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fsub.s f22, f27, f10, dyn # perform operation
fsub.s f22, f27, f10, rdn # perform operation
fsub.s f22, f27, f10, rmm # perform operation
fsub.s f22, f27, f10, rne # perform operation
fsub.s f22, f27, f10, rtz # perform operation
fsub.s f22, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fsub.s f17, f5, f11, dyn # perform operation
fsub.s f17, f5, f11, rdn # perform operation
fsub.s f17, f5, f11, rmm # perform operation
fsub.s f17, f5, f11, rne # perform operation
fsub.s f17, f5, f11, rtz # perform operation
fsub.s f17, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fsub.s f9, f22, f10, dyn # perform operation
fsub.s f9, f22, f10, rdn # perform operation
fsub.s f9, f22, f10, rmm # perform operation
fsub.s f9, f22, f10, rne # perform operation
fsub.s f9, f22, f10, rtz # perform operation
fsub.s f9, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fsub.s f7, f23, f31, dyn # perform operation
fsub.s f7, f23, f31, rdn # perform operation
fsub.s f7, f23, f31, rmm # perform operation
fsub.s f7, f23, f31, rne # perform operation
fsub.s f7, f23, f31, rtz # perform operation
fsub.s f7, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fsub.s f1, f5, f10, dyn # perform operation
fsub.s f1, f5, f10, rdn # perform operation
fsub.s f1, f5, f10, rmm # perform operation
fsub.s f1, f5, f10, rne # perform operation
fsub.s f1, f5, f10, rtz # perform operation
fsub.s f1, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fsub.s f11, f30, f1, dyn # perform operation
fsub.s f11, f30, f1, rdn # perform operation
fsub.s f11, f30, f1, rmm # perform operation
fsub.s f11, f30, f1, rne # perform operation
fsub.s f11, f30, f1, rtz # perform operation
fsub.s f11, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsub.s f18, f2, f27, dyn # perform operation
fsub.s f18, f2, f27, rdn # perform operation
fsub.s f18, f2, f27, rmm # perform operation
fsub.s f18, f2, f27, rne # perform operation
fsub.s f18, f2, f27, rtz # perform operation
fsub.s f18, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fsub.s f15, f7, f26, dyn # perform operation
fsub.s f15, f7, f26, rdn # perform operation
fsub.s f15, f7, f26, rmm # perform operation
fsub.s f15, f7, f26, rne # perform operation
fsub.s f15, f7, f26, rtz # perform operation
fsub.s f15, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fsub.s f23, f1, f15, dyn # perform operation
fsub.s f23, f1, f15, rdn # perform operation
fsub.s f23, f1, f15, rmm # perform operation
fsub.s f23, f1, f15, rne # perform operation
fsub.s f23, f1, f15, rtz # perform operation
fsub.s f23, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
fsub.s f26, f9, f11, dyn # perform operation
fsub.s f26, f9, f11, rdn # perform operation
fsub.s f26, f9, f11, rmm # perform operation
fsub.s f26, f9, f11, rne # perform operation
fsub.s f26, f9, f11, rtz # perform operation
fsub.s f26, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fsub.s f31, f11, f6, dyn # perform operation
fsub.s f31, f11, f6, rdn # perform operation
fsub.s f31, f11, f6, rmm # perform operation
fsub.s f31, f11, f6, rne # perform operation
fsub.s f31, f11, f6, rtz # perform operation
fsub.s f31, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fsub.s f6, f8, f27, dyn # perform operation
fsub.s f6, f8, f27, rdn # perform operation
fsub.s f6, f8, f27, rmm # perform operation
fsub.s f6, f8, f27, rne # perform operation
fsub.s f6, f8, f27, rtz # perform operation
fsub.s f6, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fsub.s f1, f31, f3, dyn # perform operation
fsub.s f1, f31, f3, rdn # perform operation
fsub.s f1, f31, f3, rmm # perform operation
fsub.s f1, f31, f3, rne # perform operation
fsub.s f1, f31, f3, rtz # perform operation
fsub.s f1, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fsub.s f23, f25, f5, dyn # perform operation
fsub.s f23, f25, f5, rdn # perform operation
fsub.s f23, f25, f5, rmm # perform operation
fsub.s f23, f25, f5, rne # perform operation
fsub.s f23, f25, f5, rtz # perform operation
fsub.s f23, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f10, f14, f12, dyn # perform operation
fsub.s f10, f14, f12, rdn # perform operation
fsub.s f10, f14, f12, rmm # perform operation
fsub.s f10, f14, f12, rne # perform operation
fsub.s f10, f14, f12, rtz # perform operation
fsub.s f10, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fsub.s f30, f28, f10, dyn # perform operation
fsub.s f30, f28, f10, rdn # perform operation
fsub.s f30, f28, f10, rmm # perform operation
fsub.s f30, f28, f10, rne # perform operation
fsub.s f30, f28, f10, rtz # perform operation
fsub.s f30, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fsub.s f7, f28, f17, dyn # perform operation
fsub.s f7, f28, f17, rdn # perform operation
fsub.s f7, f28, f17, rmm # perform operation
fsub.s f7, f28, f17, rne # perform operation
fsub.s f7, f28, f17, rtz # perform operation
fsub.s f7, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fsub.s f8, f25, f1, dyn # perform operation
fsub.s f8, f25, f1, rdn # perform operation
fsub.s f8, f25, f1, rmm # perform operation
fsub.s f8, f25, f1, rne # perform operation
fsub.s f8, f25, f1, rtz # perform operation
fsub.s f8, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fsub.s f17, f23, f14, dyn # perform operation
fsub.s f17, f23, f14, rdn # perform operation
fsub.s f17, f23, f14, rmm # perform operation
fsub.s f17, f23, f14, rne # perform operation
fsub.s f17, f23, f14, rtz # perform operation
fsub.s f17, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fsub.s f28, f5, f30, dyn # perform operation
fsub.s f28, f5, f30, rdn # perform operation
fsub.s f28, f5, f30, rmm # perform operation
fsub.s f28, f5, f30, rne # perform operation
fsub.s f28, f5, f30, rtz # perform operation
fsub.s f28, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fsub.s f20, f5, f16, dyn # perform operation
fsub.s f20, f5, f16, rdn # perform operation
fsub.s f20, f5, f16, rmm # perform operation
fsub.s f20, f5, f16, rne # perform operation
fsub.s f20, f5, f16, rtz # perform operation
fsub.s f20, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fsub.s f9, f10, f17, dyn # perform operation
fsub.s f9, f10, f17, rdn # perform operation
fsub.s f9, f10, f17, rmm # perform operation
fsub.s f9, f10, f17, rne # perform operation
fsub.s f9, f10, f17, rtz # perform operation
fsub.s f9, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fsub.s f22, f1, f8, dyn # perform operation
fsub.s f22, f1, f8, rdn # perform operation
fsub.s f22, f1, f8, rmm # perform operation
fsub.s f22, f1, f8, rne # perform operation
fsub.s f22, f1, f8, rtz # perform operation
fsub.s f22, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fsub.s f25, f17, f15, dyn # perform operation
fsub.s f25, f17, f15, rdn # perform operation
fsub.s f25, f17, f15, rmm # perform operation
fsub.s f25, f17, f15, rne # perform operation
fsub.s f25, f17, f15, rtz # perform operation
fsub.s f25, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fsub.s f27, f17, f15, dyn # perform operation
fsub.s f27, f17, f15, rdn # perform operation
fsub.s f27, f17, f15, rmm # perform operation
fsub.s f27, f17, f15, rne # perform operation
fsub.s f27, f17, f15, rtz # perform operation
fsub.s f27, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fsub.s f1, f7, f2, dyn # perform operation
fsub.s f1, f7, f2, rdn # perform operation
fsub.s f1, f7, f2, rmm # perform operation
fsub.s f1, f7, f2, rne # perform operation
fsub.s f1, f7, f2, rtz # perform operation
fsub.s f1, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fsub.s f6, f20, f5, dyn # perform operation
fsub.s f6, f20, f5, rdn # perform operation
fsub.s f6, f20, f5, rmm # perform operation
fsub.s f6, f20, f5, rne # perform operation
fsub.s f6, f20, f5, rtz # perform operation
fsub.s f6, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fsub.s f11, f21, f23, dyn # perform operation
fsub.s f11, f21, f23, rdn # perform operation
fsub.s f11, f21, f23, rmm # perform operation
fsub.s f11, f21, f23, rne # perform operation
fsub.s f11, f21, f23, rtz # perform operation
fsub.s f11, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fsub.s f29, f11, f23, dyn # perform operation
fsub.s f29, f11, f23, rdn # perform operation
fsub.s f29, f11, f23, rmm # perform operation
fsub.s f29, f11, f23, rne # perform operation
fsub.s f29, f11, f23, rtz # perform operation
fsub.s f29, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fsub.s f3, f13, f19, dyn # perform operation
fsub.s f3, f13, f19, rdn # perform operation
fsub.s f3, f13, f19, rmm # perform operation
fsub.s f3, f13, f19, rne # perform operation
fsub.s f3, f13, f19, rtz # perform operation
fsub.s f3, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fsub.s f7, f3, f31, dyn # perform operation
fsub.s f7, f3, f31, rdn # perform operation
fsub.s f7, f3, f31, rmm # perform operation
fsub.s f7, f3, f31, rne # perform operation
fsub.s f7, f3, f31, rtz # perform operation
fsub.s f7, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fsub.s f24, f7, f6, dyn # perform operation
fsub.s f24, f7, f6, rdn # perform operation
fsub.s f24, f7, f6, rmm # perform operation
fsub.s f24, f7, f6, rne # perform operation
fsub.s f24, f7, f6, rtz # perform operation
fsub.s f24, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fsub.s f21, f6, f25, dyn # perform operation
fsub.s f21, f6, f25, rdn # perform operation
fsub.s f21, f6, f25, rmm # perform operation
fsub.s f21, f6, f25, rne # perform operation
fsub.s f21, f6, f25, rtz # perform operation
fsub.s f21, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fsub.s f1, f3, f31, dyn # perform operation
fsub.s f1, f3, f31, rdn # perform operation
fsub.s f1, f3, f31, rmm # perform operation
fsub.s f1, f3, f31, rne # perform operation
fsub.s f1, f3, f31, rtz # perform operation
fsub.s f1, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsub.s f24, f22, f9, dyn # perform operation
fsub.s f24, f22, f9, rdn # perform operation
fsub.s f24, f22, f9, rmm # perform operation
fsub.s f24, f22, f9, rne # perform operation
fsub.s f24, f22, f9, rtz # perform operation
fsub.s f24, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fsub.s f23, f28, f19, dyn # perform operation
fsub.s f23, f28, f19, rdn # perform operation
fsub.s f23, f28, f19, rmm # perform operation
fsub.s f23, f28, f19, rne # perform operation
fsub.s f23, f28, f19, rtz # perform operation
fsub.s f23, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fsub.s f22, f7, f31, dyn # perform operation
fsub.s f22, f7, f31, rdn # perform operation
fsub.s f22, f7, f31, rmm # perform operation
fsub.s f22, f7, f31, rne # perform operation
fsub.s f22, f7, f31, rtz # perform operation
fsub.s f22, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fsub.s f20, f28, f5, dyn # perform operation
fsub.s f20, f28, f5, rdn # perform operation
fsub.s f20, f28, f5, rmm # perform operation
fsub.s f20, f28, f5, rne # perform operation
fsub.s f20, f28, f5, rtz # perform operation
fsub.s f20, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fsub.s f19, f17, f20, dyn # perform operation
fsub.s f19, f17, f20, rdn # perform operation
fsub.s f19, f17, f20, rmm # perform operation
fsub.s f19, f17, f20, rne # perform operation
fsub.s f19, f17, f20, rtz # perform operation
fsub.s f19, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fsub.s f21, f30, f24, dyn # perform operation
fsub.s f21, f30, f24, rdn # perform operation
fsub.s f21, f30, f24, rmm # perform operation
fsub.s f21, f30, f24, rne # perform operation
fsub.s f21, f30, f24, rtz # perform operation
fsub.s f21, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fsub.s f20, f14, f23, dyn # perform operation
fsub.s f20, f14, f23, rdn # perform operation
fsub.s f20, f14, f23, rmm # perform operation
fsub.s f20, f14, f23, rne # perform operation
fsub.s f20, f14, f23, rtz # perform operation
fsub.s f20, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fsub.s f1, f5, f3, dyn # perform operation
fsub.s f1, f5, f3, rdn # perform operation
fsub.s f1, f5, f3, rmm # perform operation
fsub.s f1, f5, f3, rne # perform operation
fsub.s f1, f5, f3, rtz # perform operation
fsub.s f1, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fsub.s f17, f19, f21, dyn # perform operation
fsub.s f17, f19, f21, rdn # perform operation
fsub.s f17, f19, f21, rmm # perform operation
fsub.s f17, f19, f21, rne # perform operation
fsub.s f17, f19, f21, rtz # perform operation
fsub.s f17, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fsub.s f24, f17, f27, dyn # perform operation
fsub.s f24, f17, f27, rdn # perform operation
fsub.s f24, f17, f27, rmm # perform operation
fsub.s f24, f17, f27, rne # perform operation
fsub.s f24, f17, f27, rtz # perform operation
fsub.s f24, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fsub.s f26, f14, f22, dyn # perform operation
fsub.s f26, f14, f22, rdn # perform operation
fsub.s f26, f14, f22, rmm # perform operation
fsub.s f26, f14, f22, rne # perform operation
fsub.s f26, f14, f22, rtz # perform operation
fsub.s f26, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fsub.s f12, f21, f23, dyn # perform operation
fsub.s f12, f21, f23, rdn # perform operation
fsub.s f12, f21, f23, rmm # perform operation
fsub.s f12, f21, f23, rne # perform operation
fsub.s f12, f21, f23, rtz # perform operation
fsub.s f12, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fsub.s f3, f1, f15, dyn # perform operation
fsub.s f3, f1, f15, rdn # perform operation
fsub.s f3, f1, f15, rmm # perform operation
fsub.s f3, f1, f15, rne # perform operation
fsub.s f3, f1, f15, rtz # perform operation
fsub.s f3, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fsub.s f29, f26, f11, dyn # perform operation
fsub.s f29, f26, f11, rdn # perform operation
fsub.s f29, f26, f11, rmm # perform operation
fsub.s f29, f26, f11, rne # perform operation
fsub.s f29, f26, f11, rtz # perform operation
fsub.s f29, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fsub.s f11, f13, f26, dyn # perform operation
fsub.s f11, f13, f26, rdn # perform operation
fsub.s f11, f13, f26, rmm # perform operation
fsub.s f11, f13, f26, rne # perform operation
fsub.s f11, f13, f26, rtz # perform operation
fsub.s f11, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fsub.s f6, f5, f25, dyn # perform operation
fsub.s f6, f5, f25, rdn # perform operation
fsub.s f6, f5, f25, rmm # perform operation
fsub.s f6, f5, f25, rne # perform operation
fsub.s f6, f5, f25, rtz # perform operation
fsub.s f6, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fsub.s f3, f23, f11, dyn # perform operation
fsub.s f3, f23, f11, rdn # perform operation
fsub.s f3, f23, f11, rmm # perform operation
fsub.s f3, f23, f11, rne # perform operation
fsub.s f3, f23, f11, rtz # perform operation
fsub.s f3, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fsub.s f3, f2, f10, dyn # perform operation
fsub.s f3, f2, f10, rdn # perform operation
fsub.s f3, f2, f10, rmm # perform operation
fsub.s f3, f2, f10, rne # perform operation
fsub.s f3, f2, f10, rtz # perform operation
fsub.s f3, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fsub.s f31, f3, f19, dyn # perform operation
fsub.s f31, f3, f19, rdn # perform operation
fsub.s f31, f3, f19, rmm # perform operation
fsub.s f31, f3, f19, rne # perform operation
fsub.s f31, f3, f19, rtz # perform operation
fsub.s f31, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fsub.s f27, f22, f13, dyn # perform operation
fsub.s f27, f22, f13, rdn # perform operation
fsub.s f27, f22, f13, rmm # perform operation
fsub.s f27, f22, f13, rne # perform operation
fsub.s f27, f22, f13, rtz # perform operation
fsub.s f27, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fsub.s f25, f14, f19, dyn # perform operation
fsub.s f25, f14, f19, rdn # perform operation
fsub.s f25, f14, f19, rmm # perform operation
fsub.s f25, f14, f19, rne # perform operation
fsub.s f25, f14, f19, rtz # perform operation
fsub.s f25, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fsub.s f15, f5, f31, dyn # perform operation
fsub.s f15, f5, f31, rdn # perform operation
fsub.s f15, f5, f31, rmm # perform operation
fsub.s f15, f5, f31, rne # perform operation
fsub.s f15, f5, f31, rtz # perform operation
fsub.s f15, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fsub.s f9, f13, f15, dyn # perform operation
fsub.s f9, f13, f15, rdn # perform operation
fsub.s f9, f13, f15, rmm # perform operation
fsub.s f9, f13, f15, rne # perform operation
fsub.s f9, f13, f15, rtz # perform operation
fsub.s f9, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fsub.s f6, f15, f31, dyn # perform operation
fsub.s f6, f15, f31, rdn # perform operation
fsub.s f6, f15, f31, rmm # perform operation
fsub.s f6, f15, f31, rne # perform operation
fsub.s f6, f15, f31, rtz # perform operation
fsub.s f6, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fsub.s f6, f29, f28, dyn # perform operation
fsub.s f6, f29, f28, rdn # perform operation
fsub.s f6, f29, f28, rmm # perform operation
fsub.s f6, f29, f28, rne # perform operation
fsub.s f6, f29, f28, rtz # perform operation
fsub.s f6, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fsub.s f29, f7, f28, dyn # perform operation
fsub.s f29, f7, f28, rdn # perform operation
fsub.s f29, f7, f28, rmm # perform operation
fsub.s f29, f7, f28, rne # perform operation
fsub.s f29, f7, f28, rtz # perform operation
fsub.s f29, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fsub.s f2, f22, f17, dyn # perform operation
fsub.s f2, f22, f17, rdn # perform operation
fsub.s f2, f22, f17, rmm # perform operation
fsub.s f2, f22, f17, rne # perform operation
fsub.s f2, f22, f17, rtz # perform operation
fsub.s f2, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fsub.s f7, f3, f19, dyn # perform operation
fsub.s f7, f3, f19, rdn # perform operation
fsub.s f7, f3, f19, rmm # perform operation
fsub.s f7, f3, f19, rne # perform operation
fsub.s f7, f3, f19, rtz # perform operation
fsub.s f7, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fsub.s f13, f21, f30, dyn # perform operation
fsub.s f13, f21, f30, rdn # perform operation
fsub.s f13, f21, f30, rmm # perform operation
fsub.s f13, f21, f30, rne # perform operation
fsub.s f13, f21, f30, rtz # perform operation
fsub.s f13, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fsub.s f9, f29, f15, dyn # perform operation
fsub.s f9, f29, f15, rdn # perform operation
fsub.s f9, f29, f15, rmm # perform operation
fsub.s f9, f29, f15, rne # perform operation
fsub.s f9, f29, f15, rtz # perform operation
fsub.s f9, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fsub.s f22, f26, f12, dyn # perform operation
fsub.s f22, f26, f12, rdn # perform operation
fsub.s f22, f26, f12, rmm # perform operation
fsub.s f22, f26, f12, rne # perform operation
fsub.s f22, f26, f12, rtz # perform operation
fsub.s f22, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fsub.s f2, f22, f9, dyn # perform operation
fsub.s f2, f22, f9, rdn # perform operation
fsub.s f2, f22, f9, rmm # perform operation
fsub.s f2, f22, f9, rne # perform operation
fsub.s f2, f22, f9, rtz # perform operation
fsub.s f2, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fsub.s f12, f25, f7, dyn # perform operation
fsub.s f12, f25, f7, rdn # perform operation
fsub.s f12, f25, f7, rmm # perform operation
fsub.s f12, f25, f7, rne # perform operation
fsub.s f12, f25, f7, rtz # perform operation
fsub.s f12, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fsub.s f18, f29, f7, dyn # perform operation
fsub.s f18, f29, f7, rdn # perform operation
fsub.s f18, f29, f7, rmm # perform operation
fsub.s f18, f29, f7, rne # perform operation
fsub.s f18, f29, f7, rtz # perform operation
fsub.s f18, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
fsub.s f7, f6, f17, dyn # perform operation
fsub.s f7, f6, f17, rdn # perform operation
fsub.s f7, f6, f17, rmm # perform operation
fsub.s f7, f6, f17, rne # perform operation
fsub.s f7, f6, f17, rtz # perform operation
fsub.s f7, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f27, f15, f16, dyn # perform operation
fsub.s f27, f15, f16, rdn # perform operation
fsub.s f27, f15, f16, rmm # perform operation
fsub.s f27, f15, f16, rne # perform operation
fsub.s f27, f15, f16, rtz # perform operation
fsub.s f27, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fsub.s f19, f2, f3, dyn # perform operation
fsub.s f19, f2, f3, rdn # perform operation
fsub.s f19, f2, f3, rmm # perform operation
fsub.s f19, f2, f3, rne # perform operation
fsub.s f19, f2, f3, rtz # perform operation
fsub.s f19, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fsub.s f11, f16, f14, dyn # perform operation
fsub.s f11, f16, f14, rdn # perform operation
fsub.s f11, f16, f14, rmm # perform operation
fsub.s f11, f16, f14, rne # perform operation
fsub.s f11, f16, f14, rtz # perform operation
fsub.s f11, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fsub.s f2, f19, f26, dyn # perform operation
fsub.s f2, f19, f26, rdn # perform operation
fsub.s f2, f19, f26, rmm # perform operation
fsub.s f2, f19, f26, rne # perform operation
fsub.s f2, f19, f26, rtz # perform operation
fsub.s f2, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fsub.s f12, f13, f25, dyn # perform operation
fsub.s f12, f13, f25, rdn # perform operation
fsub.s f12, f13, f25, rmm # perform operation
fsub.s f12, f13, f25, rne # perform operation
fsub.s f12, f13, f25, rtz # perform operation
fsub.s f12, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fsub.s f25, f26, f29, dyn # perform operation
fsub.s f25, f26, f29, rdn # perform operation
fsub.s f25, f26, f29, rmm # perform operation
fsub.s f25, f26, f29, rne # perform operation
fsub.s f25, f26, f29, rtz # perform operation
fsub.s f25, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fsub.s f30, f19, f26, dyn # perform operation
fsub.s f30, f19, f26, rdn # perform operation
fsub.s f30, f19, f26, rmm # perform operation
fsub.s f30, f19, f26, rne # perform operation
fsub.s f30, f19, f26, rtz # perform operation
fsub.s f30, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fsub.s f8, f17, f20, dyn # perform operation
fsub.s f8, f17, f20, rdn # perform operation
fsub.s f8, f17, f20, rmm # perform operation
fsub.s f8, f17, f20, rne # perform operation
fsub.s f8, f17, f20, rtz # perform operation
fsub.s f8, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fsub.s f9, f30, f13, dyn # perform operation
fsub.s f9, f30, f13, rdn # perform operation
fsub.s f9, f30, f13, rmm # perform operation
fsub.s f9, f30, f13, rne # perform operation
fsub.s f9, f30, f13, rtz # perform operation
fsub.s f9, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fsub.s f22, f18, f2, dyn # perform operation
fsub.s f22, f18, f2, rdn # perform operation
fsub.s f22, f18, f2, rmm # perform operation
fsub.s f22, f18, f2, rne # perform operation
fsub.s f22, f18, f2, rtz # perform operation
fsub.s f22, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fsub.s f19, f27, f26, dyn # perform operation
fsub.s f19, f27, f26, rdn # perform operation
fsub.s f19, f27, f26, rmm # perform operation
fsub.s f19, f27, f26, rne # perform operation
fsub.s f19, f27, f26, rtz # perform operation
fsub.s f19, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fsub.s f29, f13, f25, dyn # perform operation
fsub.s f29, f13, f25, rdn # perform operation
fsub.s f29, f13, f25, rmm # perform operation
fsub.s f29, f13, f25, rne # perform operation
fsub.s f29, f13, f25, rtz # perform operation
fsub.s f29, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fsub.s f30, f7, f24, dyn # perform operation
fsub.s f30, f7, f24, rdn # perform operation
fsub.s f30, f7, f24, rmm # perform operation
fsub.s f30, f7, f24, rne # perform operation
fsub.s f30, f7, f24, rtz # perform operation
fsub.s f30, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fsub.s f8, f28, f9, dyn # perform operation
fsub.s f8, f28, f9, rdn # perform operation
fsub.s f8, f28, f9, rmm # perform operation
fsub.s f8, f28, f9, rne # perform operation
fsub.s f8, f28, f9, rtz # perform operation
fsub.s f8, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fsub.s f8, f9, f20, dyn # perform operation
fsub.s f8, f9, f20, rdn # perform operation
fsub.s f8, f9, f20, rmm # perform operation
fsub.s f8, f9, f20, rne # perform operation
fsub.s f8, f9, f20, rtz # perform operation
fsub.s f8, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fsub.s f9, f11, f29, dyn # perform operation
fsub.s f9, f11, f29, rdn # perform operation
fsub.s f9, f11, f29, rmm # perform operation
fsub.s f9, f11, f29, rne # perform operation
fsub.s f9, f11, f29, rtz # perform operation
fsub.s f9, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fsub.s f24, f29, f25, dyn # perform operation
fsub.s f24, f29, f25, rdn # perform operation
fsub.s f24, f29, f25, rmm # perform operation
fsub.s f24, f29, f25, rne # perform operation
fsub.s f24, f29, f25, rtz # perform operation
fsub.s f24, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fsub.s f27, f11, f16, dyn # perform operation
fsub.s f27, f11, f16, rdn # perform operation
fsub.s f27, f11, f16, rmm # perform operation
fsub.s f27, f11, f16, rne # perform operation
fsub.s f27, f11, f16, rtz # perform operation
fsub.s f27, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsub.s f2, f28, f3, dyn # perform operation
fsub.s f2, f28, f3, rdn # perform operation
fsub.s f2, f28, f3, rmm # perform operation
fsub.s f2, f28, f3, rne # perform operation
fsub.s f2, f28, f3, rtz # perform operation
fsub.s f2, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fsub.s f12, f21, f28, dyn # perform operation
fsub.s f12, f21, f28, rdn # perform operation
fsub.s f12, f21, f28, rmm # perform operation
fsub.s f12, f21, f28, rne # perform operation
fsub.s f12, f21, f28, rtz # perform operation
fsub.s f12, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fsub.s f30, f31, f8, dyn # perform operation
fsub.s f30, f31, f8, rdn # perform operation
fsub.s f30, f31, f8, rmm # perform operation
fsub.s f30, f31, f8, rne # perform operation
fsub.s f30, f31, f8, rtz # perform operation
fsub.s f30, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fsub.s f22, f19, f15, dyn # perform operation
fsub.s f22, f19, f15, rdn # perform operation
fsub.s f22, f19, f15, rmm # perform operation
fsub.s f22, f19, f15, rne # perform operation
fsub.s f22, f19, f15, rtz # perform operation
fsub.s f22, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fsub.s f19, f25, f18, dyn # perform operation
fsub.s f19, f25, f18, rdn # perform operation
fsub.s f19, f25, f18, rmm # perform operation
fsub.s f19, f25, f18, rne # perform operation
fsub.s f19, f25, f18, rtz # perform operation
fsub.s f19, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fsub.s f26, f23, f8, dyn # perform operation
fsub.s f26, f23, f8, rdn # perform operation
fsub.s f26, f23, f8, rmm # perform operation
fsub.s f26, f23, f8, rne # perform operation
fsub.s f26, f23, f8, rtz # perform operation
fsub.s f26, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
fsub.s f27, f24, f23, dyn # perform operation
fsub.s f27, f24, f23, rdn # perform operation
fsub.s f27, f24, f23, rmm # perform operation
fsub.s f27, f24, f23, rne # perform operation
fsub.s f27, f24, f23, rtz # perform operation
fsub.s f27, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fsub.s f29, f17, f30, dyn # perform operation
fsub.s f29, f17, f30, rdn # perform operation
fsub.s f29, f17, f30, rmm # perform operation
fsub.s f29, f17, f30, rne # perform operation
fsub.s f29, f17, f30, rtz # perform operation
fsub.s f29, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f7, f10, f5, dyn # perform operation
fsub.s f7, f10, f5, rdn # perform operation
fsub.s f7, f10, f5, rmm # perform operation
fsub.s f7, f10, f5, rne # perform operation
fsub.s f7, f10, f5, rtz # perform operation
fsub.s f7, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
fsub.s f12, f18, f5, dyn # perform operation
fsub.s f12, f18, f5, rdn # perform operation
fsub.s f12, f18, f5, rmm # perform operation
fsub.s f12, f18, f5, rne # perform operation
fsub.s f12, f18, f5, rtz # perform operation
fsub.s f12, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fsub.s f25, f2, f1, dyn # perform operation
fsub.s f25, f2, f1, rdn # perform operation
fsub.s f25, f2, f1, rmm # perform operation
fsub.s f25, f2, f1, rne # perform operation
fsub.s f25, f2, f1, rtz # perform operation
fsub.s f25, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fsub.s f19, f26, f23, dyn # perform operation
fsub.s f19, f26, f23, rdn # perform operation
fsub.s f19, f26, f23, rmm # perform operation
fsub.s f19, f26, f23, rne # perform operation
fsub.s f19, f26, f23, rtz # perform operation
fsub.s f19, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f26, f23 # perform operation


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
