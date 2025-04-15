///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fmul.s.S
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
add x22, x26, x15 # perform first operation
fmul.s f7, f24, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x19, x14 # perform first operation
fmul.s f21, f17, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x19, x11 # perform first operation
fmul.s f24, f31, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f5, f6, f20 # perform first operation
fmul.s f20, f5, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f31, f11 # perform first operation
fmul.s f29, f6, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x9, x12 # perform first operation
fmul.s f12, f15, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f31, f1, f11 # perform first operation
fmul.s f31, f14, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f6, f18 # perform first operation
fmul.s f22, f17, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f28, f2, f31 # perform first operation
fmul.s f28, f16, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f30, f27, f18 # perform first operation
fmul.s f27, f22, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f20, f25, f12 # perform first operation
fmul.s f12, f8, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f17, f26, f23 # perform first operation
fmul.s f7, f3, f18 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x735659fcd8fdaee2 # load x3 with value 0x735659fcd8fdaee2
sw x3, 0(x2) # store 0x735659fcd8fdaee2 in memory
flw f0, 0(x2) # load 0x735659fcd8fdaee2 from memory into f0
la x2, scratch
li x3, 0x56e5dda9c24fad2c # load x3 with value 0x56e5dda9c24fad2c
sw x3, 0(x2) # store 0x56e5dda9c24fad2c in memory
flw f23, 0(x2) # load 0x56e5dda9c24fad2c from memory into f23
fmul.s f22, f0, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x2f83b0ce410f2804 # load x3 with value 0x2f83b0ce410f2804
sw x3, 0(x2) # store 0x2f83b0ce410f2804 in memory
flw f1, 0(x2) # load 0x2f83b0ce410f2804 from memory into f1
la x2, scratch
li x3, 0x79e9e7393965a750 # load x3 with value 0x79e9e7393965a750
sw x3, 0(x2) # store 0x79e9e7393965a750 in memory
flw f13, 0(x2) # load 0x79e9e7393965a750 from memory into f13
fmul.s f11, f1, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x8a5e6edeeae7d05c # load x3 with value 0x8a5e6edeeae7d05c
sw x3, 0(x2) # store 0x8a5e6edeeae7d05c in memory
flw f2, 0(x2) # load 0x8a5e6edeeae7d05c from memory into f2
la x2, scratch
li x3, 0x8fdaf8a01b03bca5 # load x3 with value 0x8fdaf8a01b03bca5
sw x3, 0(x2) # store 0x8fdaf8a01b03bca5 in memory
flw f30, 0(x2) # load 0x8fdaf8a01b03bca5 from memory into f30
fmul.s f27, f2, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x6fc9d79e3e67437d # load x3 with value 0x6fc9d79e3e67437d
sw x3, 0(x2) # store 0x6fc9d79e3e67437d in memory
flw f3, 0(x2) # load 0x6fc9d79e3e67437d from memory into f3
la x2, scratch
li x3, 0x7c37f68ffbfa57b5 # load x3 with value 0x7c37f68ffbfa57b5
sw x3, 0(x2) # store 0x7c37f68ffbfa57b5 in memory
flw f24, 0(x2) # load 0x7c37f68ffbfa57b5 from memory into f24
fmul.s f1, f3, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3d75a3f1a3568435 # load x3 with value 0x3d75a3f1a3568435
sw x3, 0(x2) # store 0x3d75a3f1a3568435 in memory
flw f4, 0(x2) # load 0x3d75a3f1a3568435 from memory into f4
la x2, scratch
li x3, 0x6a77e441dfd13626 # load x3 with value 0x6a77e441dfd13626
sw x3, 0(x2) # store 0x6a77e441dfd13626 in memory
flw f20, 0(x2) # load 0x6a77e441dfd13626 from memory into f20
fmul.s f5, f4, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
la x2, scratch
li x3, 0x5a082214de5d4cd7 # load x3 with value 0x5a082214de5d4cd7
sw x3, 0(x2) # store 0x5a082214de5d4cd7 in memory
flw f5, 0(x2) # load 0x5a082214de5d4cd7 from memory into f5
la x2, scratch
li x3, 0x425d3d974101b895 # load x3 with value 0x425d3d974101b895
sw x3, 0(x2) # store 0x425d3d974101b895 in memory
flw f13, 0(x2) # load 0x425d3d974101b895 from memory into f13
fmul.s f20, f5, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbee8698baf601445 # load x3 with value 0xbee8698baf601445
sw x3, 0(x2) # store 0xbee8698baf601445 in memory
flw f6, 0(x2) # load 0xbee8698baf601445 from memory into f6
la x2, scratch
li x3, 0x40a0891b22c38347 # load x3 with value 0x40a0891b22c38347
sw x3, 0(x2) # store 0x40a0891b22c38347 in memory
flw f26, 0(x2) # load 0x40a0891b22c38347 from memory into f26
fmul.s f3, f6, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf4350cd976d4ee55 # load x3 with value 0xf4350cd976d4ee55
sw x3, 0(x2) # store 0xf4350cd976d4ee55 in memory
flw f7, 0(x2) # load 0xf4350cd976d4ee55 from memory into f7
la x2, scratch
li x3, 0xd2b4a97336c08aba # load x3 with value 0xd2b4a97336c08aba
sw x3, 0(x2) # store 0xd2b4a97336c08aba in memory
flw f22, 0(x2) # load 0xd2b4a97336c08aba from memory into f22
fmul.s f28, f7, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xe56ce56e750f04e6 # load x3 with value 0xe56ce56e750f04e6
sw x3, 0(x2) # store 0xe56ce56e750f04e6 in memory
flw f8, 0(x2) # load 0xe56ce56e750f04e6 from memory into f8
la x2, scratch
li x3, 0xe423a79a403c2fd1 # load x3 with value 0xe423a79a403c2fd1
sw x3, 0(x2) # store 0xe423a79a403c2fd1 in memory
flw f9, 0(x2) # load 0xe423a79a403c2fd1 from memory into f9
fmul.s f11, f8, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x94ae36f1455f8d2 # load x3 with value 0x94ae36f1455f8d2
sw x3, 0(x2) # store 0x94ae36f1455f8d2 in memory
flw f9, 0(x2) # load 0x94ae36f1455f8d2 from memory into f9
la x2, scratch
li x3, 0x696ca352960e62ec # load x3 with value 0x696ca352960e62ec
sw x3, 0(x2) # store 0x696ca352960e62ec in memory
flw f18, 0(x2) # load 0x696ca352960e62ec from memory into f18
fmul.s f8, f9, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x23209074a416766f # load x3 with value 0x23209074a416766f
sw x3, 0(x2) # store 0x23209074a416766f in memory
flw f10, 0(x2) # load 0x23209074a416766f from memory into f10
la x2, scratch
li x3, 0x738c3797ee03078b # load x3 with value 0x738c3797ee03078b
sw x3, 0(x2) # store 0x738c3797ee03078b in memory
flw f3, 0(x2) # load 0x738c3797ee03078b from memory into f3
fmul.s f31, f10, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x877b3e1b2f7cd507 # load x3 with value 0x877b3e1b2f7cd507
sw x3, 0(x2) # store 0x877b3e1b2f7cd507 in memory
flw f11, 0(x2) # load 0x877b3e1b2f7cd507 from memory into f11
la x2, scratch
li x3, 0xfb2ce291fcdf08e1 # load x3 with value 0xfb2ce291fcdf08e1
sw x3, 0(x2) # store 0xfb2ce291fcdf08e1 in memory
flw f17, 0(x2) # load 0xfb2ce291fcdf08e1 from memory into f17
fmul.s f6, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x8be6201617d93c66 # load x3 with value 0x8be6201617d93c66
sw x3, 0(x2) # store 0x8be6201617d93c66 in memory
flw f12, 0(x2) # load 0x8be6201617d93c66 from memory into f12
la x2, scratch
li x3, 0x40e243a106a27f89 # load x3 with value 0x40e243a106a27f89
sw x3, 0(x2) # store 0x40e243a106a27f89 in memory
flw f22, 0(x2) # load 0x40e243a106a27f89 from memory into f22
fmul.s f21, f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xde1e43b81e8e9209 # load x3 with value 0xde1e43b81e8e9209
sw x3, 0(x2) # store 0xde1e43b81e8e9209 in memory
flw f13, 0(x2) # load 0xde1e43b81e8e9209 from memory into f13
la x2, scratch
li x3, 0x57c46bfe353e75ea # load x3 with value 0x57c46bfe353e75ea
sw x3, 0(x2) # store 0x57c46bfe353e75ea in memory
flw f5, 0(x2) # load 0x57c46bfe353e75ea from memory into f5
fmul.s f11, f13, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x49e4e71039fd9439 # load x3 with value 0x49e4e71039fd9439
sw x3, 0(x2) # store 0x49e4e71039fd9439 in memory
flw f14, 0(x2) # load 0x49e4e71039fd9439 from memory into f14
la x2, scratch
li x3, 0xa9e367f3348fed59 # load x3 with value 0xa9e367f3348fed59
sw x3, 0(x2) # store 0xa9e367f3348fed59 in memory
flw f20, 0(x2) # load 0xa9e367f3348fed59 from memory into f20
fmul.s f9, f14, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x4ea601557d3a66e1 # load x3 with value 0x4ea601557d3a66e1
sw x3, 0(x2) # store 0x4ea601557d3a66e1 in memory
flw f15, 0(x2) # load 0x4ea601557d3a66e1 from memory into f15
la x2, scratch
li x3, 0x62d0f8cbe7236568 # load x3 with value 0x62d0f8cbe7236568
sw x3, 0(x2) # store 0x62d0f8cbe7236568 in memory
flw f17, 0(x2) # load 0x62d0f8cbe7236568 from memory into f17
fmul.s f9, f15, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x9df72409606f951f # load x3 with value 0x9df72409606f951f
sw x3, 0(x2) # store 0x9df72409606f951f in memory
flw f16, 0(x2) # load 0x9df72409606f951f from memory into f16
la x2, scratch
li x3, 0xd40fba0f2576570f # load x3 with value 0xd40fba0f2576570f
sw x3, 0(x2) # store 0xd40fba0f2576570f in memory
flw f24, 0(x2) # load 0xd40fba0f2576570f from memory into f24
fmul.s f12, f16, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x67bd3d2790d345bd # load x3 with value 0x67bd3d2790d345bd
sw x3, 0(x2) # store 0x67bd3d2790d345bd in memory
flw f17, 0(x2) # load 0x67bd3d2790d345bd from memory into f17
la x2, scratch
li x3, 0x1495b9cceabeb5ef # load x3 with value 0x1495b9cceabeb5ef
sw x3, 0(x2) # store 0x1495b9cceabeb5ef in memory
flw f13, 0(x2) # load 0x1495b9cceabeb5ef from memory into f13
fmul.s f26, f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xf16fbf4f6e5b518a # load x3 with value 0xf16fbf4f6e5b518a
sw x3, 0(x2) # store 0xf16fbf4f6e5b518a in memory
flw f18, 0(x2) # load 0xf16fbf4f6e5b518a from memory into f18
la x2, scratch
li x3, 0xf5cd454e7216a7cf # load x3 with value 0xf5cd454e7216a7cf
sw x3, 0(x2) # store 0xf5cd454e7216a7cf in memory
flw f16, 0(x2) # load 0xf5cd454e7216a7cf from memory into f16
fmul.s f9, f18, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x88d2ae055e5f0bc0 # load x3 with value 0x88d2ae055e5f0bc0
sw x3, 0(x2) # store 0x88d2ae055e5f0bc0 in memory
flw f19, 0(x2) # load 0x88d2ae055e5f0bc0 from memory into f19
la x2, scratch
li x3, 0xaa8b5285b6610b8e # load x3 with value 0xaa8b5285b6610b8e
sw x3, 0(x2) # store 0xaa8b5285b6610b8e in memory
flw f20, 0(x2) # load 0xaa8b5285b6610b8e from memory into f20
fmul.s f14, f19, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xd08230efc63fab40 # load x3 with value 0xd08230efc63fab40
sw x3, 0(x2) # store 0xd08230efc63fab40 in memory
flw f20, 0(x2) # load 0xd08230efc63fab40 from memory into f20
la x2, scratch
li x3, 0xecf073c49c93f1da # load x3 with value 0xecf073c49c93f1da
sw x3, 0(x2) # store 0xecf073c49c93f1da in memory
flw f29, 0(x2) # load 0xecf073c49c93f1da from memory into f29
fmul.s f26, f20, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xc8559db7b53585f2 # load x3 with value 0xc8559db7b53585f2
sw x3, 0(x2) # store 0xc8559db7b53585f2 in memory
flw f21, 0(x2) # load 0xc8559db7b53585f2 from memory into f21
la x2, scratch
li x3, 0x1a92079c5f68fbf8 # load x3 with value 0x1a92079c5f68fbf8
sw x3, 0(x2) # store 0x1a92079c5f68fbf8 in memory
flw f25, 0(x2) # load 0x1a92079c5f68fbf8 from memory into f25
fmul.s f30, f21, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xe71246aa85f33b56 # load x3 with value 0xe71246aa85f33b56
sw x3, 0(x2) # store 0xe71246aa85f33b56 in memory
flw f22, 0(x2) # load 0xe71246aa85f33b56 from memory into f22
la x2, scratch
li x3, 0x24ac06670da300c0 # load x3 with value 0x24ac06670da300c0
sw x3, 0(x2) # store 0x24ac06670da300c0 in memory
flw f17, 0(x2) # load 0x24ac06670da300c0 from memory into f17
fmul.s f23, f22, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xb4d33b1e125372ab # load x3 with value 0xb4d33b1e125372ab
sw x3, 0(x2) # store 0xb4d33b1e125372ab in memory
flw f23, 0(x2) # load 0xb4d33b1e125372ab from memory into f23
la x2, scratch
li x3, 0x658cfd34fd031a88 # load x3 with value 0x658cfd34fd031a88
sw x3, 0(x2) # store 0x658cfd34fd031a88 in memory
flw f6, 0(x2) # load 0x658cfd34fd031a88 from memory into f6
fmul.s f12, f23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x93d3b218f864d1e2 # load x3 with value 0x93d3b218f864d1e2
sw x3, 0(x2) # store 0x93d3b218f864d1e2 in memory
flw f24, 0(x2) # load 0x93d3b218f864d1e2 from memory into f24
la x2, scratch
li x3, 0x53d4e8f6a936a8b4 # load x3 with value 0x53d4e8f6a936a8b4
sw x3, 0(x2) # store 0x53d4e8f6a936a8b4 in memory
flw f26, 0(x2) # load 0x53d4e8f6a936a8b4 from memory into f26
fmul.s f29, f24, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xc7e72e297762dd1b # load x3 with value 0xc7e72e297762dd1b
sw x3, 0(x2) # store 0xc7e72e297762dd1b in memory
flw f25, 0(x2) # load 0xc7e72e297762dd1b from memory into f25
la x2, scratch
li x3, 0x9b06686c34cd1854 # load x3 with value 0x9b06686c34cd1854
sw x3, 0(x2) # store 0x9b06686c34cd1854 in memory
flw f28, 0(x2) # load 0x9b06686c34cd1854 from memory into f28
fmul.s f26, f25, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x5537048ffbbac5be # load x3 with value 0x5537048ffbbac5be
sw x3, 0(x2) # store 0x5537048ffbbac5be in memory
flw f26, 0(x2) # load 0x5537048ffbbac5be from memory into f26
la x2, scratch
li x3, 0xca82d18fa99b6593 # load x3 with value 0xca82d18fa99b6593
sw x3, 0(x2) # store 0xca82d18fa99b6593 in memory
flw f29, 0(x2) # load 0xca82d18fa99b6593 from memory into f29
fmul.s f19, f26, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xe9b68dba41d5bbcb # load x3 with value 0xe9b68dba41d5bbcb
sw x3, 0(x2) # store 0xe9b68dba41d5bbcb in memory
flw f27, 0(x2) # load 0xe9b68dba41d5bbcb from memory into f27
la x2, scratch
li x3, 0xbd77fafcc00139ea # load x3 with value 0xbd77fafcc00139ea
sw x3, 0(x2) # store 0xbd77fafcc00139ea in memory
flw f17, 0(x2) # load 0xbd77fafcc00139ea from memory into f17
fmul.s f22, f27, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xbc732c3d56984bb0 # load x3 with value 0xbc732c3d56984bb0
sw x3, 0(x2) # store 0xbc732c3d56984bb0 in memory
flw f28, 0(x2) # load 0xbc732c3d56984bb0 from memory into f28
la x2, scratch
li x3, 0x97bbf5e135cbb82d # load x3 with value 0x97bbf5e135cbb82d
sw x3, 0(x2) # store 0x97bbf5e135cbb82d in memory
flw f30, 0(x2) # load 0x97bbf5e135cbb82d from memory into f30
fmul.s f25, f28, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x16bc9814dfb224a6 # load x3 with value 0x16bc9814dfb224a6
sw x3, 0(x2) # store 0x16bc9814dfb224a6 in memory
flw f29, 0(x2) # load 0x16bc9814dfb224a6 from memory into f29
la x2, scratch
li x3, 0x3fb0679ec7163e19 # load x3 with value 0x3fb0679ec7163e19
sw x3, 0(x2) # store 0x3fb0679ec7163e19 in memory
flw f15, 0(x2) # load 0x3fb0679ec7163e19 from memory into f15
fmul.s f3, f29, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x31b398193acd697c # load x3 with value 0x31b398193acd697c
sw x3, 0(x2) # store 0x31b398193acd697c in memory
flw f30, 0(x2) # load 0x31b398193acd697c from memory into f30
la x2, scratch
li x3, 0x1f3ca6f18c9b3b3d # load x3 with value 0x1f3ca6f18c9b3b3d
sw x3, 0(x2) # store 0x1f3ca6f18c9b3b3d in memory
flw f8, 0(x2) # load 0x1f3ca6f18c9b3b3d from memory into f8
fmul.s f27, f30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xf4df631d6224ca05 # load x3 with value 0xf4df631d6224ca05
sw x3, 0(x2) # store 0xf4df631d6224ca05 in memory
flw f31, 0(x2) # load 0xf4df631d6224ca05 from memory into f31
la x2, scratch
li x3, 0xeda488759e76b126 # load x3 with value 0xeda488759e76b126
sw x3, 0(x2) # store 0xeda488759e76b126 in memory
flw f29, 0(x2) # load 0xeda488759e76b126 from memory into f29
fmul.s f19, f31, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x13afa512c46c7481 # load x3 with value 0x13afa512c46c7481
sw x3, 0(x2) # store 0x13afa512c46c7481 in memory
flw f3, 0(x2) # load 0x13afa512c46c7481 from memory into f3
la x2, scratch
li x3, 0x19097e838d262d82 # load x3 with value 0x19097e838d262d82
sw x3, 0(x2) # store 0x19097e838d262d82 in memory
flw f0, 0(x2) # load 0x19097e838d262d82 from memory into f0
fmul.s f21, f3, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x826dd1545cb5af1f # load x3 with value 0x826dd1545cb5af1f
sw x3, 0(x2) # store 0x826dd1545cb5af1f in memory
flw f29, 0(x2) # load 0x826dd1545cb5af1f from memory into f29
la x2, scratch
li x3, 0xf023e602b228f25f # load x3 with value 0xf023e602b228f25f
sw x3, 0(x2) # store 0xf023e602b228f25f in memory
flw f1, 0(x2) # load 0xf023e602b228f25f from memory into f1
fmul.s f21, f29, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x40db0a600b2ec44a # load x3 with value 0x40db0a600b2ec44a
sw x3, 0(x2) # store 0x40db0a600b2ec44a in memory
flw f21, 0(x2) # load 0x40db0a600b2ec44a from memory into f21
la x2, scratch
li x3, 0x8a5378e52766d696 # load x3 with value 0x8a5378e52766d696
sw x3, 0(x2) # store 0x8a5378e52766d696 in memory
flw f2, 0(x2) # load 0x8a5378e52766d696 from memory into f2
fmul.s f18, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xebb1168a4394866a # load x3 with value 0xebb1168a4394866a
sw x3, 0(x2) # store 0xebb1168a4394866a in memory
flw f15, 0(x2) # load 0xebb1168a4394866a from memory into f15
la x2, scratch
li x3, 0x83c6b448958a5471 # load x3 with value 0x83c6b448958a5471
sw x3, 0(x2) # store 0x83c6b448958a5471 in memory
flw f3, 0(x2) # load 0x83c6b448958a5471 from memory into f3
fmul.s f18, f15, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb53f27a25989efb3 # load x3 with value 0xb53f27a25989efb3
sw x3, 0(x2) # store 0xb53f27a25989efb3 in memory
flw f17, 0(x2) # load 0xb53f27a25989efb3 from memory into f17
la x2, scratch
li x3, 0xad6898fef9b8bd11 # load x3 with value 0xad6898fef9b8bd11
sw x3, 0(x2) # store 0xad6898fef9b8bd11 in memory
flw f4, 0(x2) # load 0xad6898fef9b8bd11 from memory into f4
fmul.s f18, f17, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7d6659957808b48c # load x3 with value 0x7d6659957808b48c
sw x3, 0(x2) # store 0x7d6659957808b48c in memory
flw f4, 0(x2) # load 0x7d6659957808b48c from memory into f4
la x2, scratch
li x3, 0xdb2a67268465c21e # load x3 with value 0xdb2a67268465c21e
sw x3, 0(x2) # store 0xdb2a67268465c21e in memory
flw f5, 0(x2) # load 0xdb2a67268465c21e from memory into f5
fmul.s f30, f4, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x397209e818cbee50 # load x3 with value 0x397209e818cbee50
sw x3, 0(x2) # store 0x397209e818cbee50 in memory
flw f28, 0(x2) # load 0x397209e818cbee50 from memory into f28
la x2, scratch
li x3, 0xf81a010a6fbeac93 # load x3 with value 0xf81a010a6fbeac93
sw x3, 0(x2) # store 0xf81a010a6fbeac93 in memory
flw f6, 0(x2) # load 0xf81a010a6fbeac93 from memory into f6
fmul.s f22, f28, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc48b83f3ea29c354 # load x3 with value 0xc48b83f3ea29c354
sw x3, 0(x2) # store 0xc48b83f3ea29c354 in memory
flw f21, 0(x2) # load 0xc48b83f3ea29c354 from memory into f21
la x2, scratch
li x3, 0x31a3868a17fd6acf # load x3 with value 0x31a3868a17fd6acf
sw x3, 0(x2) # store 0x31a3868a17fd6acf in memory
flw f7, 0(x2) # load 0x31a3868a17fd6acf from memory into f7
fmul.s f24, f21, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xe85aab6ba9b622a4 # load x3 with value 0xe85aab6ba9b622a4
sw x3, 0(x2) # store 0xe85aab6ba9b622a4 in memory
flw f14, 0(x2) # load 0xe85aab6ba9b622a4 from memory into f14
la x2, scratch
li x3, 0xdcd84257b4cbac23 # load x3 with value 0xdcd84257b4cbac23
sw x3, 0(x2) # store 0xdcd84257b4cbac23 in memory
flw f8, 0(x2) # load 0xdcd84257b4cbac23 from memory into f8
fmul.s f10, f14, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xe2e14cda4228dee7 # load x3 with value 0xe2e14cda4228dee7
sw x3, 0(x2) # store 0xe2e14cda4228dee7 in memory
flw f11, 0(x2) # load 0xe2e14cda4228dee7 from memory into f11
la x2, scratch
li x3, 0xcdb523db38cabfe # load x3 with value 0xcdb523db38cabfe
sw x3, 0(x2) # store 0xcdb523db38cabfe in memory
flw f9, 0(x2) # load 0xcdb523db38cabfe from memory into f9
fmul.s f28, f11, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xc7999fcfba313770 # load x3 with value 0xc7999fcfba313770
sw x3, 0(x2) # store 0xc7999fcfba313770 in memory
flw f31, 0(x2) # load 0xc7999fcfba313770 from memory into f31
la x2, scratch
li x3, 0x8f914c70c0e87fdc # load x3 with value 0x8f914c70c0e87fdc
sw x3, 0(x2) # store 0x8f914c70c0e87fdc in memory
flw f10, 0(x2) # load 0x8f914c70c0e87fdc from memory into f10
fmul.s f6, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xa53aae3e295b62e3 # load x3 with value 0xa53aae3e295b62e3
sw x3, 0(x2) # store 0xa53aae3e295b62e3 in memory
flw f19, 0(x2) # load 0xa53aae3e295b62e3 from memory into f19
la x2, scratch
li x3, 0xa3f52c455c786ebd # load x3 with value 0xa3f52c455c786ebd
sw x3, 0(x2) # store 0xa3f52c455c786ebd in memory
flw f11, 0(x2) # load 0xa3f52c455c786ebd from memory into f11
fmul.s f10, f19, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x5b549137ddb01d8a # load x3 with value 0x5b549137ddb01d8a
sw x3, 0(x2) # store 0x5b549137ddb01d8a in memory
flw f14, 0(x2) # load 0x5b549137ddb01d8a from memory into f14
la x2, scratch
li x3, 0xf3f9520d718a18bf # load x3 with value 0xf3f9520d718a18bf
sw x3, 0(x2) # store 0xf3f9520d718a18bf in memory
flw f12, 0(x2) # load 0xf3f9520d718a18bf from memory into f12
fmul.s f10, f14, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x8235567a35db55a3 # load x3 with value 0x8235567a35db55a3
sw x3, 0(x2) # store 0x8235567a35db55a3 in memory
flw f23, 0(x2) # load 0x8235567a35db55a3 from memory into f23
la x2, scratch
li x3, 0xf88b1ce543495a0a # load x3 with value 0xf88b1ce543495a0a
sw x3, 0(x2) # store 0xf88b1ce543495a0a in memory
flw f13, 0(x2) # load 0xf88b1ce543495a0a from memory into f13
fmul.s f31, f23, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x9978a30693a96299 # load x3 with value 0x9978a30693a96299
sw x3, 0(x2) # store 0x9978a30693a96299 in memory
flw f18, 0(x2) # load 0x9978a30693a96299 from memory into f18
la x2, scratch
li x3, 0x7ecbca4d9381237d # load x3 with value 0x7ecbca4d9381237d
sw x3, 0(x2) # store 0x7ecbca4d9381237d in memory
flw f14, 0(x2) # load 0x7ecbca4d9381237d from memory into f14
fmul.s f14, f18, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xcb3426ccca31775b # load x3 with value 0xcb3426ccca31775b
sw x3, 0(x2) # store 0xcb3426ccca31775b in memory
flw f27, 0(x2) # load 0xcb3426ccca31775b from memory into f27
la x2, scratch
li x3, 0xd978b748b8cab806 # load x3 with value 0xd978b748b8cab806
sw x3, 0(x2) # store 0xd978b748b8cab806 in memory
flw f15, 0(x2) # load 0xd978b748b8cab806 from memory into f15
fmul.s f8, f27, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x5cda7fe88321083f # load x3 with value 0x5cda7fe88321083f
sw x3, 0(x2) # store 0x5cda7fe88321083f in memory
flw f10, 0(x2) # load 0x5cda7fe88321083f from memory into f10
la x2, scratch
li x3, 0x8ab42c65c7a6c1fb # load x3 with value 0x8ab42c65c7a6c1fb
sw x3, 0(x2) # store 0x8ab42c65c7a6c1fb in memory
flw f16, 0(x2) # load 0x8ab42c65c7a6c1fb from memory into f16
fmul.s f21, f10, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x2bebcd70cd8d9324 # load x3 with value 0x2bebcd70cd8d9324
sw x3, 0(x2) # store 0x2bebcd70cd8d9324 in memory
flw f22, 0(x2) # load 0x2bebcd70cd8d9324 from memory into f22
la x2, scratch
li x3, 0xe32c506c92031c7e # load x3 with value 0xe32c506c92031c7e
sw x3, 0(x2) # store 0xe32c506c92031c7e in memory
flw f17, 0(x2) # load 0xe32c506c92031c7e from memory into f17
fmul.s f31, f22, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xbc2dd247a7dce143 # load x3 with value 0xbc2dd247a7dce143
sw x3, 0(x2) # store 0xbc2dd247a7dce143 in memory
flw f6, 0(x2) # load 0xbc2dd247a7dce143 from memory into f6
la x2, scratch
li x3, 0x98e39ff6210a83f6 # load x3 with value 0x98e39ff6210a83f6
sw x3, 0(x2) # store 0x98e39ff6210a83f6 in memory
flw f18, 0(x2) # load 0x98e39ff6210a83f6 from memory into f18
fmul.s f24, f6, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x65a779709c0f541b # load x3 with value 0x65a779709c0f541b
sw x3, 0(x2) # store 0x65a779709c0f541b in memory
flw f27, 0(x2) # load 0x65a779709c0f541b from memory into f27
la x2, scratch
li x3, 0x7d0e5b725347ba04 # load x3 with value 0x7d0e5b725347ba04
sw x3, 0(x2) # store 0x7d0e5b725347ba04 in memory
flw f19, 0(x2) # load 0x7d0e5b725347ba04 from memory into f19
fmul.s f22, f27, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xb28660303e1d60be # load x3 with value 0xb28660303e1d60be
sw x3, 0(x2) # store 0xb28660303e1d60be in memory
flw f15, 0(x2) # load 0xb28660303e1d60be from memory into f15
la x2, scratch
li x3, 0x588f9d7c906eecdc # load x3 with value 0x588f9d7c906eecdc
sw x3, 0(x2) # store 0x588f9d7c906eecdc in memory
flw f20, 0(x2) # load 0x588f9d7c906eecdc from memory into f20
fmul.s f14, f15, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x45a8cf7adbaa7740 # load x3 with value 0x45a8cf7adbaa7740
sw x3, 0(x2) # store 0x45a8cf7adbaa7740 in memory
flw f6, 0(x2) # load 0x45a8cf7adbaa7740 from memory into f6
la x2, scratch
li x3, 0xcf4cb70aa82f1cc1 # load x3 with value 0xcf4cb70aa82f1cc1
sw x3, 0(x2) # store 0xcf4cb70aa82f1cc1 in memory
flw f21, 0(x2) # load 0xcf4cb70aa82f1cc1 from memory into f21
fmul.s f16, f6, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xdb848cd71a30710c # load x3 with value 0xdb848cd71a30710c
sw x3, 0(x2) # store 0xdb848cd71a30710c in memory
flw f7, 0(x2) # load 0xdb848cd71a30710c from memory into f7
la x2, scratch
li x3, 0xb99d4ef934fea1ab # load x3 with value 0xb99d4ef934fea1ab
sw x3, 0(x2) # store 0xb99d4ef934fea1ab in memory
flw f22, 0(x2) # load 0xb99d4ef934fea1ab from memory into f22
fmul.s f17, f7, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x75c1fdf5ada0fa09 # load x3 with value 0x75c1fdf5ada0fa09
sw x3, 0(x2) # store 0x75c1fdf5ada0fa09 in memory
flw f22, 0(x2) # load 0x75c1fdf5ada0fa09 from memory into f22
la x2, scratch
li x3, 0x1e1e4cab3ddb333b # load x3 with value 0x1e1e4cab3ddb333b
sw x3, 0(x2) # store 0x1e1e4cab3ddb333b in memory
flw f23, 0(x2) # load 0x1e1e4cab3ddb333b from memory into f23
fmul.s f5, f22, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x1381438f2a4ecbe1 # load x3 with value 0x1381438f2a4ecbe1
sw x3, 0(x2) # store 0x1381438f2a4ecbe1 in memory
flw f15, 0(x2) # load 0x1381438f2a4ecbe1 from memory into f15
la x2, scratch
li x3, 0xb1035251da1fdd81 # load x3 with value 0xb1035251da1fdd81
sw x3, 0(x2) # store 0xb1035251da1fdd81 in memory
flw f24, 0(x2) # load 0xb1035251da1fdd81 from memory into f24
fmul.s f20, f15, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xa522cacc85f24f46 # load x3 with value 0xa522cacc85f24f46
sw x3, 0(x2) # store 0xa522cacc85f24f46 in memory
flw f24, 0(x2) # load 0xa522cacc85f24f46 from memory into f24
la x2, scratch
li x3, 0xed03f77d4d3a1b9c # load x3 with value 0xed03f77d4d3a1b9c
sw x3, 0(x2) # store 0xed03f77d4d3a1b9c in memory
flw f25, 0(x2) # load 0xed03f77d4d3a1b9c from memory into f25
fmul.s f16, f24, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x37b1e53a9ac8824a # load x3 with value 0x37b1e53a9ac8824a
sw x3, 0(x2) # store 0x37b1e53a9ac8824a in memory
flw f8, 0(x2) # load 0x37b1e53a9ac8824a from memory into f8
la x2, scratch
li x3, 0xf0bac7aed0e8e4b8 # load x3 with value 0xf0bac7aed0e8e4b8
sw x3, 0(x2) # store 0xf0bac7aed0e8e4b8 in memory
flw f26, 0(x2) # load 0xf0bac7aed0e8e4b8 from memory into f26
fmul.s f13, f8, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xe58d970def66742a # load x3 with value 0xe58d970def66742a
sw x3, 0(x2) # store 0xe58d970def66742a in memory
flw f12, 0(x2) # load 0xe58d970def66742a from memory into f12
la x2, scratch
li x3, 0x6aa019e56de0a31c # load x3 with value 0x6aa019e56de0a31c
sw x3, 0(x2) # store 0x6aa019e56de0a31c in memory
flw f27, 0(x2) # load 0x6aa019e56de0a31c from memory into f27
fmul.s f24, f12, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x41134c87ea248e68 # load x3 with value 0x41134c87ea248e68
sw x3, 0(x2) # store 0x41134c87ea248e68 in memory
flw f10, 0(x2) # load 0x41134c87ea248e68 from memory into f10
la x2, scratch
li x3, 0x8fe6e51a7857d40b # load x3 with value 0x8fe6e51a7857d40b
sw x3, 0(x2) # store 0x8fe6e51a7857d40b in memory
flw f28, 0(x2) # load 0x8fe6e51a7857d40b from memory into f28
fmul.s f16, f10, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x8e6dd6afb50e31f3 # load x3 with value 0x8e6dd6afb50e31f3
sw x3, 0(x2) # store 0x8e6dd6afb50e31f3 in memory
flw f2, 0(x2) # load 0x8e6dd6afb50e31f3 from memory into f2
la x2, scratch
li x3, 0xdda3349db135e40a # load x3 with value 0xdda3349db135e40a
sw x3, 0(x2) # store 0xdda3349db135e40a in memory
flw f29, 0(x2) # load 0xdda3349db135e40a from memory into f29
fmul.s f14, f2, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xaf867a8bce83ac62 # load x3 with value 0xaf867a8bce83ac62
sw x3, 0(x2) # store 0xaf867a8bce83ac62 in memory
flw f23, 0(x2) # load 0xaf867a8bce83ac62 from memory into f23
la x2, scratch
li x3, 0x3919f6e29584655f # load x3 with value 0x3919f6e29584655f
sw x3, 0(x2) # store 0x3919f6e29584655f in memory
flw f30, 0(x2) # load 0x3919f6e29584655f from memory into f30
fmul.s f18, f23, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x16d93e2bb001836a # load x3 with value 0x16d93e2bb001836a
sw x3, 0(x2) # store 0x16d93e2bb001836a in memory
flw f6, 0(x2) # load 0x16d93e2bb001836a from memory into f6
la x2, scratch
li x3, 0xacb5b4056bfd5b1c # load x3 with value 0xacb5b4056bfd5b1c
sw x3, 0(x2) # store 0xacb5b4056bfd5b1c in memory
flw f31, 0(x2) # load 0xacb5b4056bfd5b1c from memory into f31
fmul.s f11, f6, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x219a0e26304b4625 # load x3 with value 0x219a0e26304b4625
sw x3, 0(x2) # store 0x219a0e26304b4625 in memory
flw f13, 0(x2) # load 0x219a0e26304b4625 from memory into f13
la x2, scratch
li x3, 0xe7904656db0aa3d0 # load x3 with value 0xe7904656db0aa3d0
sw x3, 0(x2) # store 0xe7904656db0aa3d0 in memory
flw f6, 0(x2) # load 0xe7904656db0aa3d0 from memory into f6
fmul.s f0, f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0xa6da0bb70a0fd9a3 # load x3 with value 0xa6da0bb70a0fd9a3
sw x3, 0(x2) # store 0xa6da0bb70a0fd9a3 in memory
flw f27, 0(x2) # load 0xa6da0bb70a0fd9a3 from memory into f27
la x2, scratch
li x3, 0x77a6e605f46bca83 # load x3 with value 0x77a6e605f46bca83
sw x3, 0(x2) # store 0x77a6e605f46bca83 in memory
flw f11, 0(x2) # load 0x77a6e605f46bca83 from memory into f11
fmul.s f1, f27, f11 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x4806a2cf0d6344e5 # load x3 with value 0x4806a2cf0d6344e5
sw x3, 0(x2) # store 0x4806a2cf0d6344e5 in memory
flw f28, 0(x2) # load 0x4806a2cf0d6344e5 from memory into f28
la x2, scratch
li x3, 0xf1b2234d9664c6f0 # load x3 with value 0xf1b2234d9664c6f0
sw x3, 0(x2) # store 0xf1b2234d9664c6f0 in memory
flw f13, 0(x2) # load 0xf1b2234d9664c6f0 from memory into f13
fmul.s f2, f28, f13 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x76d13d58fe2bdf5a # load x3 with value 0x76d13d58fe2bdf5a
sw x3, 0(x2) # store 0x76d13d58fe2bdf5a in memory
flw f12, 0(x2) # load 0x76d13d58fe2bdf5a from memory into f12
la x2, scratch
li x3, 0xe34219181b30dbb5 # load x3 with value 0xe34219181b30dbb5
sw x3, 0(x2) # store 0xe34219181b30dbb5 in memory
flw f22, 0(x2) # load 0xe34219181b30dbb5 from memory into f22
fmul.s f3, f12, f22 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x70a071bba22bcc91 # load x3 with value 0x70a071bba22bcc91
sw x3, 0(x2) # store 0x70a071bba22bcc91 in memory
flw f15, 0(x2) # load 0x70a071bba22bcc91 from memory into f15
la x2, scratch
li x3, 0xa8cd203ec80c9bcc # load x3 with value 0xa8cd203ec80c9bcc
sw x3, 0(x2) # store 0xa8cd203ec80c9bcc in memory
flw f20, 0(x2) # load 0xa8cd203ec80c9bcc from memory into f20
fmul.s f4, f15, f20 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdd06db6fd7520319 # load x3 with value 0xdd06db6fd7520319
sw x3, 0(x2) # store 0xdd06db6fd7520319 in memory
flw f6, 0(x2) # load 0xdd06db6fd7520319 from memory into f6
la x2, scratch
li x3, 0x6da18366ec98cd04 # load x3 with value 0x6da18366ec98cd04
sw x3, 0(x2) # store 0x6da18366ec98cd04 in memory
flw f12, 0(x2) # load 0x6da18366ec98cd04 from memory into f12
fmul.s f5, f6, f12 # perform operation

# Testcase cp_fd (Test destination fd = x6)
la x2, scratch
li x3, 0x4198c2370290d869 # load x3 with value 0x4198c2370290d869
sw x3, 0(x2) # store 0x4198c2370290d869 in memory
flw f16, 0(x2) # load 0x4198c2370290d869 from memory into f16
la x2, scratch
li x3, 0x25c772a23bf88517 # load x3 with value 0x25c772a23bf88517
sw x3, 0(x2) # store 0x25c772a23bf88517 in memory
flw f3, 0(x2) # load 0x25c772a23bf88517 from memory into f3
fmul.s f6, f16, f3 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9b19c1d1077a871c # load x3 with value 0x9b19c1d1077a871c
sw x3, 0(x2) # store 0x9b19c1d1077a871c in memory
flw f22, 0(x2) # load 0x9b19c1d1077a871c from memory into f22
la x2, scratch
li x3, 0xb71881171babdfb5 # load x3 with value 0xb71881171babdfb5
sw x3, 0(x2) # store 0xb71881171babdfb5 in memory
flw f5, 0(x2) # load 0xb71881171babdfb5 from memory into f5
fmul.s f7, f22, f5 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0xc0d2fd6b1a26df46 # load x3 with value 0xc0d2fd6b1a26df46
sw x3, 0(x2) # store 0xc0d2fd6b1a26df46 in memory
flw f17, 0(x2) # load 0xc0d2fd6b1a26df46 from memory into f17
la x2, scratch
li x3, 0x87cac97fedb07994 # load x3 with value 0x87cac97fedb07994
sw x3, 0(x2) # store 0x87cac97fedb07994 in memory
flw f18, 0(x2) # load 0x87cac97fedb07994 from memory into f18
fmul.s f8, f17, f18 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x89172b91e61e5396 # load x3 with value 0x89172b91e61e5396
sw x3, 0(x2) # store 0x89172b91e61e5396 in memory
flw f1, 0(x2) # load 0x89172b91e61e5396 from memory into f1
la x2, scratch
li x3, 0x77a0c9193067b418 # load x3 with value 0x77a0c9193067b418
sw x3, 0(x2) # store 0x77a0c9193067b418 in memory
flw f21, 0(x2) # load 0x77a0c9193067b418 from memory into f21
fmul.s f9, f1, f21 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x7a509ce6968bec2b # load x3 with value 0x7a509ce6968bec2b
sw x3, 0(x2) # store 0x7a509ce6968bec2b in memory
flw f7, 0(x2) # load 0x7a509ce6968bec2b from memory into f7
la x2, scratch
li x3, 0x8df51d562e45936d # load x3 with value 0x8df51d562e45936d
sw x3, 0(x2) # store 0x8df51d562e45936d in memory
flw f6, 0(x2) # load 0x8df51d562e45936d from memory into f6
fmul.s f10, f7, f6 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xb0f6c72e7e397cd7 # load x3 with value 0xb0f6c72e7e397cd7
sw x3, 0(x2) # store 0xb0f6c72e7e397cd7 in memory
flw f19, 0(x2) # load 0xb0f6c72e7e397cd7 from memory into f19
la x2, scratch
li x3, 0xe20c105cf3973e05 # load x3 with value 0xe20c105cf3973e05
sw x3, 0(x2) # store 0xe20c105cf3973e05 in memory
flw f8, 0(x2) # load 0xe20c105cf3973e05 from memory into f8
fmul.s f11, f19, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xb34e23260a53afd5 # load x3 with value 0xb34e23260a53afd5
sw x3, 0(x2) # store 0xb34e23260a53afd5 in memory
flw f9, 0(x2) # load 0xb34e23260a53afd5 from memory into f9
la x2, scratch
li x3, 0x5ccad61d7ed9ec5f # load x3 with value 0x5ccad61d7ed9ec5f
sw x3, 0(x2) # store 0x5ccad61d7ed9ec5f in memory
flw f11, 0(x2) # load 0x5ccad61d7ed9ec5f from memory into f11
fmul.s f12, f9, f11 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x4772b4921bd68435 # load x3 with value 0x4772b4921bd68435
sw x3, 0(x2) # store 0x4772b4921bd68435 in memory
flw f9, 0(x2) # load 0x4772b4921bd68435 from memory into f9
la x2, scratch
li x3, 0x181e6ac1ee32587e # load x3 with value 0x181e6ac1ee32587e
sw x3, 0(x2) # store 0x181e6ac1ee32587e in memory
flw f14, 0(x2) # load 0x181e6ac1ee32587e from memory into f14
fmul.s f13, f9, f14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x6c635231d69031dc # load x3 with value 0x6c635231d69031dc
sw x3, 0(x2) # store 0x6c635231d69031dc in memory
flw f18, 0(x2) # load 0x6c635231d69031dc from memory into f18
la x2, scratch
li x3, 0x1a2d9ba766a28fd3 # load x3 with value 0x1a2d9ba766a28fd3
sw x3, 0(x2) # store 0x1a2d9ba766a28fd3 in memory
flw f21, 0(x2) # load 0x1a2d9ba766a28fd3 from memory into f21
fmul.s f14, f18, f21 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xe556f1d3e36022d9 # load x3 with value 0xe556f1d3e36022d9
sw x3, 0(x2) # store 0xe556f1d3e36022d9 in memory
flw f2, 0(x2) # load 0xe556f1d3e36022d9 from memory into f2
la x2, scratch
li x3, 0xc4f21f5e7cce46a4 # load x3 with value 0xc4f21f5e7cce46a4
sw x3, 0(x2) # store 0xc4f21f5e7cce46a4 in memory
flw f27, 0(x2) # load 0xc4f21f5e7cce46a4 from memory into f27
fmul.s f15, f2, f27 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x1b2f8ae7cdacb85c # load x3 with value 0x1b2f8ae7cdacb85c
sw x3, 0(x2) # store 0x1b2f8ae7cdacb85c in memory
flw f17, 0(x2) # load 0x1b2f8ae7cdacb85c from memory into f17
la x2, scratch
li x3, 0x2f48150956a79045 # load x3 with value 0x2f48150956a79045
sw x3, 0(x2) # store 0x2f48150956a79045 in memory
flw f30, 0(x2) # load 0x2f48150956a79045 from memory into f30
fmul.s f16, f17, f30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xa5fc82b12cec0858 # load x3 with value 0xa5fc82b12cec0858
sw x3, 0(x2) # store 0xa5fc82b12cec0858 in memory
flw f2, 0(x2) # load 0xa5fc82b12cec0858 from memory into f2
la x2, scratch
li x3, 0xb2460ac441bdc02c # load x3 with value 0xb2460ac441bdc02c
sw x3, 0(x2) # store 0xb2460ac441bdc02c in memory
flw f28, 0(x2) # load 0xb2460ac441bdc02c from memory into f28
fmul.s f17, f2, f28 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0xb3f79b238886763a # load x3 with value 0xb3f79b238886763a
sw x3, 0(x2) # store 0xb3f79b238886763a in memory
flw f20, 0(x2) # load 0xb3f79b238886763a from memory into f20
la x2, scratch
li x3, 0x9533276cefc662be # load x3 with value 0x9533276cefc662be
sw x3, 0(x2) # store 0x9533276cefc662be in memory
flw f21, 0(x2) # load 0x9533276cefc662be from memory into f21
fmul.s f18, f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x3dde36cd65cdb6a2 # load x3 with value 0x3dde36cd65cdb6a2
sw x3, 0(x2) # store 0x3dde36cd65cdb6a2 in memory
flw f13, 0(x2) # load 0x3dde36cd65cdb6a2 from memory into f13
la x2, scratch
li x3, 0x3bddc7808b178446 # load x3 with value 0x3bddc7808b178446
sw x3, 0(x2) # store 0x3bddc7808b178446 in memory
flw f9, 0(x2) # load 0x3bddc7808b178446 from memory into f9
fmul.s f19, f13, f9 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x3293eddca91c8096 # load x3 with value 0x3293eddca91c8096
sw x3, 0(x2) # store 0x3293eddca91c8096 in memory
flw f2, 0(x2) # load 0x3293eddca91c8096 from memory into f2
la x2, scratch
li x3, 0xbd40ccb481da03a3 # load x3 with value 0xbd40ccb481da03a3
sw x3, 0(x2) # store 0xbd40ccb481da03a3 in memory
flw f1, 0(x2) # load 0xbd40ccb481da03a3 from memory into f1
fmul.s f20, f2, f1 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x946cfc954ce91468 # load x3 with value 0x946cfc954ce91468
sw x3, 0(x2) # store 0x946cfc954ce91468 in memory
flw f29, 0(x2) # load 0x946cfc954ce91468 from memory into f29
la x2, scratch
li x3, 0xdbb368f24bb9416e # load x3 with value 0xdbb368f24bb9416e
sw x3, 0(x2) # store 0xdbb368f24bb9416e in memory
flw f1, 0(x2) # load 0xdbb368f24bb9416e from memory into f1
fmul.s f21, f29, f1 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xbbdecc70bb9f9cb4 # load x3 with value 0xbbdecc70bb9f9cb4
sw x3, 0(x2) # store 0xbbdecc70bb9f9cb4 in memory
flw f27, 0(x2) # load 0xbbdecc70bb9f9cb4 from memory into f27
la x2, scratch
li x3, 0x924730e862103d20 # load x3 with value 0x924730e862103d20
sw x3, 0(x2) # store 0x924730e862103d20 in memory
flw f24, 0(x2) # load 0x924730e862103d20 from memory into f24
fmul.s f22, f27, f24 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0xde45d013ea4fbd2d # load x3 with value 0xde45d013ea4fbd2d
sw x3, 0(x2) # store 0xde45d013ea4fbd2d in memory
flw f15, 0(x2) # load 0xde45d013ea4fbd2d from memory into f15
la x2, scratch
li x3, 0xd56927c3fc4055fa # load x3 with value 0xd56927c3fc4055fa
sw x3, 0(x2) # store 0xd56927c3fc4055fa in memory
flw f31, 0(x2) # load 0xd56927c3fc4055fa from memory into f31
fmul.s f23, f15, f31 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x90d3ddff39492c84 # load x3 with value 0x90d3ddff39492c84
sw x3, 0(x2) # store 0x90d3ddff39492c84 in memory
flw f5, 0(x2) # load 0x90d3ddff39492c84 from memory into f5
la x2, scratch
li x3, 0xf9c8a87d5ae277cd # load x3 with value 0xf9c8a87d5ae277cd
sw x3, 0(x2) # store 0xf9c8a87d5ae277cd in memory
flw f2, 0(x2) # load 0xf9c8a87d5ae277cd from memory into f2
fmul.s f24, f5, f2 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0xd66b5c9078e8a5d9 # load x3 with value 0xd66b5c9078e8a5d9
sw x3, 0(x2) # store 0xd66b5c9078e8a5d9 in memory
flw f17, 0(x2) # load 0xd66b5c9078e8a5d9 from memory into f17
la x2, scratch
li x3, 0x39613358953aad96 # load x3 with value 0x39613358953aad96
sw x3, 0(x2) # store 0x39613358953aad96 in memory
flw f16, 0(x2) # load 0x39613358953aad96 from memory into f16
fmul.s f25, f17, f16 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x353eb8e72ca9940b # load x3 with value 0x353eb8e72ca9940b
sw x3, 0(x2) # store 0x353eb8e72ca9940b in memory
flw f12, 0(x2) # load 0x353eb8e72ca9940b from memory into f12
la x2, scratch
li x3, 0x81de2caa943c76a0 # load x3 with value 0x81de2caa943c76a0
sw x3, 0(x2) # store 0x81de2caa943c76a0 in memory
flw f31, 0(x2) # load 0x81de2caa943c76a0 from memory into f31
fmul.s f26, f12, f31 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xf70ef6b00f8dcf2c # load x3 with value 0xf70ef6b00f8dcf2c
sw x3, 0(x2) # store 0xf70ef6b00f8dcf2c in memory
flw f20, 0(x2) # load 0xf70ef6b00f8dcf2c from memory into f20
la x2, scratch
li x3, 0xa65b353811c4cf78 # load x3 with value 0xa65b353811c4cf78
sw x3, 0(x2) # store 0xa65b353811c4cf78 in memory
flw f29, 0(x2) # load 0xa65b353811c4cf78 from memory into f29
fmul.s f27, f20, f29 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x65eac0ded8fffc16 # load x3 with value 0x65eac0ded8fffc16
sw x3, 0(x2) # store 0x65eac0ded8fffc16 in memory
flw f18, 0(x2) # load 0x65eac0ded8fffc16 from memory into f18
la x2, scratch
li x3, 0x3a4778ac78df449d # load x3 with value 0x3a4778ac78df449d
sw x3, 0(x2) # store 0x3a4778ac78df449d in memory
flw f20, 0(x2) # load 0x3a4778ac78df449d from memory into f20
fmul.s f28, f18, f20 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0x5ad82e9d0bdc1d19 # load x3 with value 0x5ad82e9d0bdc1d19
sw x3, 0(x2) # store 0x5ad82e9d0bdc1d19 in memory
flw f31, 0(x2) # load 0x5ad82e9d0bdc1d19 from memory into f31
la x2, scratch
li x3, 0x8ede7ebf0be90f71 # load x3 with value 0x8ede7ebf0be90f71
sw x3, 0(x2) # store 0x8ede7ebf0be90f71 in memory
flw f10, 0(x2) # load 0x8ede7ebf0be90f71 from memory into f10
fmul.s f29, f31, f10 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x52f1d165d1971b5a # load x3 with value 0x52f1d165d1971b5a
sw x3, 0(x2) # store 0x52f1d165d1971b5a in memory
flw f14, 0(x2) # load 0x52f1d165d1971b5a from memory into f14
la x2, scratch
li x3, 0xebc7129be4a476da # load x3 with value 0xebc7129be4a476da
sw x3, 0(x2) # store 0xebc7129be4a476da in memory
flw f20, 0(x2) # load 0xebc7129be4a476da from memory into f20
fmul.s f30, f14, f20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x48114e6b3b67d14c # load x3 with value 0x48114e6b3b67d14c
sw x3, 0(x2) # store 0x48114e6b3b67d14c in memory
flw f6, 0(x2) # load 0x48114e6b3b67d14c from memory into f6
la x2, scratch
li x3, 0xde5302af2da900e0 # load x3 with value 0xde5302af2da900e0
sw x3, 0(x2) # store 0xde5302af2da900e0 in memory
flw f2, 0(x2) # load 0xde5302af2da900e0 from memory into f2
fmul.s f31, f6, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0xf3ae63cdd218bae1 # load x3 with value 0xf3ae63cdd218bae1
sw x3, 0(x2) # store 0xf3ae63cdd218bae1 in memory
flw f12, 0(x2) # load 0xf3ae63cdd218bae1 from memory into f12
fmul.s f9, f1, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
la x2, scratch
li x3, 0x364a70f95e7770a0 # load x3 with value 0x364a70f95e7770a0
sw x3, 0(x2) # store 0x364a70f95e7770a0 in memory
flw f14, 0(x2) # load 0x364a70f95e7770a0 from memory into f14
fmul.s f22, f26, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0xfc01d2750160ab80 # load x3 with value 0xfc01d2750160ab80
sw x3, 0(x2) # store 0xfc01d2750160ab80 in memory
flw f12, 0(x2) # load 0xfc01d2750160ab80 from memory into f12
fmul.s f10, f5, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0xfbd5c8b36fb192b1 # load x3 with value 0xfbd5c8b36fb192b1
sw x3, 0(x2) # store 0xfbd5c8b36fb192b1 in memory
flw f2, 0(x2) # load 0xfbd5c8b36fb192b1 from memory into f2
fmul.s f27, f19, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0x4e2146b98f1d0b44 # load x3 with value 0x4e2146b98f1d0b44
sw x3, 0(x2) # store 0x4e2146b98f1d0b44 in memory
flw f31, 0(x2) # load 0x4e2146b98f1d0b44 from memory into f31
fmul.s f14, f28, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0x912f785b7d46975b # load x3 with value 0x912f785b7d46975b
sw x3, 0(x2) # store 0x912f785b7d46975b in memory
flw f13, 0(x2) # load 0x912f785b7d46975b from memory into f13
fmul.s f26, f29, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
la x2, scratch
li x3, 0xe5a67add13bc2daf # load x3 with value 0xe5a67add13bc2daf
sw x3, 0(x2) # store 0xe5a67add13bc2daf in memory
flw f8, 0(x2) # load 0xe5a67add13bc2daf from memory into f8
fmul.s f30, f15, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0xb7da63b3ac3f3edd # load x3 with value 0xb7da63b3ac3f3edd
sw x3, 0(x2) # store 0xb7da63b3ac3f3edd in memory
flw f24, 0(x2) # load 0xb7da63b3ac3f3edd from memory into f24
fmul.s f18, f25, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0x2f6d384ce150d370 # load x3 with value 0x2f6d384ce150d370
sw x3, 0(x2) # store 0x2f6d384ce150d370 in memory
flw f13, 0(x2) # load 0x2f6d384ce150d370 from memory into f13
fmul.s f1, f11, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0x908665f4ba0a8296 # load x3 with value 0x908665f4ba0a8296
sw x3, 0(x2) # store 0x908665f4ba0a8296 in memory
flw f23, 0(x2) # load 0x908665f4ba0a8296 from memory into f23
fmul.s f18, f8, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x2, scratch
li x3, 0x21b737a517de076c # load x3 with value 0x21b737a517de076c
sw x3, 0(x2) # store 0x21b737a517de076c in memory
flw f20, 0(x2) # load 0x21b737a517de076c from memory into f20
fmul.s f29, f22, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
la x2, scratch
li x3, 0x24f99459a4e666ac # load x3 with value 0x24f99459a4e666ac
sw x3, 0(x2) # store 0x24f99459a4e666ac in memory
flw f17, 0(x2) # load 0x24f99459a4e666ac from memory into f17
fmul.s f12, f21, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0x6e2d9021d4b2be2f # load x3 with value 0x6e2d9021d4b2be2f
sw x3, 0(x2) # store 0x6e2d9021d4b2be2f in memory
flw f3, 0(x2) # load 0x6e2d9021d4b2be2f from memory into f3
fmul.s f2, f21, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0x627bd58fe195dacd # load x3 with value 0x627bd58fe195dacd
sw x3, 0(x2) # store 0x627bd58fe195dacd in memory
flw f3, 0(x2) # load 0x627bd58fe195dacd from memory into f3
fmul.s f19, f28, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0xbf991cb3c3471648 # load x3 with value 0xbf991cb3c3471648
sw x3, 0(x2) # store 0xbf991cb3c3471648 in memory
flw f17, 0(x2) # load 0xbf991cb3c3471648 from memory into f17
fmul.s f7, f30, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
la x2, scratch
li x3, 0xea333c7c0cc08d6d # load x3 with value 0xea333c7c0cc08d6d
sw x3, 0(x2) # store 0xea333c7c0cc08d6d in memory
flw f30, 0(x2) # load 0xea333c7c0cc08d6d from memory into f30
fmul.s f29, f17, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0xa49a08b9636cc3f9 # load x3 with value 0xa49a08b9636cc3f9
sw x3, 0(x2) # store 0xa49a08b9636cc3f9 in memory
flw f11, 0(x2) # load 0xa49a08b9636cc3f9 from memory into f11
fmul.s f2, f29, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
la x2, scratch
li x3, 0xa99c0e5f61f92805 # load x3 with value 0xa99c0e5f61f92805
sw x3, 0(x2) # store 0xa99c0e5f61f92805 in memory
flw f8, 0(x2) # load 0xa99c0e5f61f92805 from memory into f8
fmul.s f9, f5, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
la x2, scratch
li x3, 0x8a7593aed0fa1593 # load x3 with value 0x8a7593aed0fa1593
sw x3, 0(x2) # store 0x8a7593aed0fa1593 in memory
flw f15, 0(x2) # load 0x8a7593aed0fa1593 from memory into f15
fmul.s f1, f18, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
la x2, scratch
li x3, 0x19aac3af830bf53c # load x3 with value 0x19aac3af830bf53c
sw x3, 0(x2) # store 0x19aac3af830bf53c in memory
flw f30, 0(x2) # load 0x19aac3af830bf53c from memory into f30
fmul.s f27, f19, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
la x2, scratch
li x3, 0xde2fbd86481c0fd8 # load x3 with value 0xde2fbd86481c0fd8
sw x3, 0(x2) # store 0xde2fbd86481c0fd8 in memory
flw f3, 0(x2) # load 0xde2fbd86481c0fd8 from memory into f3
fmul.s f30, f31, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
la x2, scratch
li x3, 0x2fec20852a5ee517 # load x3 with value 0x2fec20852a5ee517
sw x3, 0(x2) # store 0x2fec20852a5ee517 in memory
flw f6, 0(x2) # load 0x2fec20852a5ee517 from memory into f6
fmul.s f9, f26, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
la x2, scratch
li x3, 0x5eadb8593f6d4bea # load x3 with value 0x5eadb8593f6d4bea
sw x3, 0(x2) # store 0x5eadb8593f6d4bea in memory
flw f19, 0(x2) # load 0x5eadb8593f6d4bea from memory into f19
fmul.s f25, f17, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
la x2, scratch
li x3, 0x9bdb260614f05f85 # load x3 with value 0x9bdb260614f05f85
sw x3, 0(x2) # store 0x9bdb260614f05f85 in memory
flw f27, 0(x2) # load 0x9bdb260614f05f85 from memory into f27
fmul.s f9, f15, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0xf72cf478401ce6eb # load x3 with value 0xf72cf478401ce6eb
sw x3, 0(x2) # store 0xf72cf478401ce6eb in memory
flw f18, 0(x2) # load 0xf72cf478401ce6eb from memory into f18
fmul.s f21, f19, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0xf6728c91ee412d7f # load x3 with value 0xf6728c91ee412d7f
sw x3, 0(x2) # store 0xf6728c91ee412d7f in memory
flw f28, 0(x2) # load 0xf6728c91ee412d7f from memory into f28
fmul.s f3, f29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x7219d6700da25b81 # load x3 with value 0x7219d6700da25b81
sw x3, 0(x2) # store 0x7219d6700da25b81 in memory
flw f31, 0(x2) # load 0x7219d6700da25b81 from memory into f31
fmul.s f11, f19, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
la x2, scratch
li x3, 0x174d6fb6c0f80ba4 # load x3 with value 0x174d6fb6c0f80ba4
sw x3, 0(x2) # store 0x174d6fb6c0f80ba4 in memory
flw f2, 0(x2) # load 0x174d6fb6c0f80ba4 from memory into f2
fmul.s f27, f22, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x1f6c4c632fbec316 # load x3 with value 0x1f6c4c632fbec316
sw x3, 0(x2) # store 0x1f6c4c632fbec316 in memory
flw f8, 0(x2) # load 0x1f6c4c632fbec316 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fmul.s f2, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x8e77d915e8721a0c # load x3 with value 0x8e77d915e8721a0c
sw x3, 0(x2) # store 0x8e77d915e8721a0c in memory
flw f24, 0(x2) # load 0x8e77d915e8721a0c from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmul.s f11, f24, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x6dbaaf916dc10e24 # load x3 with value 0x6dbaaf916dc10e24
sw x3, 0(x2) # store 0x6dbaaf916dc10e24 in memory
flw f16, 0(x2) # load 0x6dbaaf916dc10e24 from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fmul.s f23, f16, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x6759834553785834 # load x3 with value 0x6759834553785834
sw x3, 0(x2) # store 0x6759834553785834 in memory
flw f13, 0(x2) # load 0x6759834553785834 from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fmul.s f22, f13, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x4c9a1ee3a88ba3e0 # load x3 with value 0x4c9a1ee3a88ba3e0
sw x3, 0(x2) # store 0x4c9a1ee3a88ba3e0 in memory
flw f27, 0(x2) # load 0x4c9a1ee3a88ba3e0 from memory into f27
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f18, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0xbfacabe2515797ec # load x3 with value 0xbfacabe2515797ec
sw x3, 0(x2) # store 0xbfacabe2515797ec in memory
flw f15, 0(x2) # load 0xbfacabe2515797ec from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fmul.s f26, f15, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x45030c7289a7b758 # load x3 with value 0x45030c7289a7b758
sw x3, 0(x2) # store 0x45030c7289a7b758 in memory
flw f5, 0(x2) # load 0x45030c7289a7b758 from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fmul.s f22, f5, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0xb56455c837d07abc # load x3 with value 0xb56455c837d07abc
sw x3, 0(x2) # store 0xb56455c837d07abc in memory
flw f22, 0(x2) # load 0xb56455c837d07abc from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fmul.s f8, f22, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x6a75e1fafb649869 # load x3 with value 0x6a75e1fafb649869
sw x3, 0(x2) # store 0x6a75e1fafb649869 in memory
flw f27, 0(x2) # load 0x6a75e1fafb649869 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fmul.s f28, f27, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x98c72f7c73e1ae46 # load x3 with value 0x98c72f7c73e1ae46
sw x3, 0(x2) # store 0x98c72f7c73e1ae46 in memory
flw f19, 0(x2) # load 0x98c72f7c73e1ae46 from memory into f19
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fmul.s f31, f19, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0xc33133fc46c436c7 # load x3 with value 0xc33133fc46c436c7
sw x3, 0(x2) # store 0xc33133fc46c436c7 in memory
flw f16, 0(x2) # load 0xc33133fc46c436c7 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fmul.s f14, f16, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0x436a70d5324d8772 # load x3 with value 0x436a70d5324d8772
sw x3, 0(x2) # store 0x436a70d5324d8772 in memory
flw f19, 0(x2) # load 0x436a70d5324d8772 from memory into f19
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fmul.s f24, f19, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0xd1eb6678d969d9f # load x3 with value 0xd1eb6678d969d9f
sw x3, 0(x2) # store 0xd1eb6678d969d9f in memory
flw f28, 0(x2) # load 0xd1eb6678d969d9f from memory into f28
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fmul.s f5, f28, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0xeda9ee89599ca44b # load x3 with value 0xeda9ee89599ca44b
sw x3, 0(x2) # store 0xeda9ee89599ca44b in memory
flw f7, 0(x2) # load 0xeda9ee89599ca44b from memory into f7
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fmul.s f10, f7, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x3c45f3e35d29c07a # load x3 with value 0x3c45f3e35d29c07a
sw x3, 0(x2) # store 0x3c45f3e35d29c07a in memory
flw f22, 0(x2) # load 0x3c45f3e35d29c07a from memory into f22
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fmul.s f20, f22, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x52f4ad46e1ab05c2 # load x3 with value 0x52f4ad46e1ab05c2
sw x3, 0(x2) # store 0x52f4ad46e1ab05c2 in memory
flw f17, 0(x2) # load 0x52f4ad46e1ab05c2 from memory into f17
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fmul.s f21, f17, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x89a377b2cebd0655 # load x3 with value 0x89a377b2cebd0655
sw x3, 0(x2) # store 0x89a377b2cebd0655 in memory
flw f29, 0(x2) # load 0x89a377b2cebd0655 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f5, f29, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x37e7bb8f75dddda0 # load x3 with value 0x37e7bb8f75dddda0
sw x3, 0(x2) # store 0x37e7bb8f75dddda0 in memory
flw f8, 0(x2) # load 0x37e7bb8f75dddda0 from memory into f8
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmul.s f18, f8, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0xe44b1c8d9408f3b3 # load x3 with value 0xe44b1c8d9408f3b3
sw x3, 0(x2) # store 0xe44b1c8d9408f3b3 in memory
flw f11, 0(x2) # load 0xe44b1c8d9408f3b3 from memory into f11
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fmul.s f7, f11, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0x7408228fa9d3a5e0 # load x3 with value 0x7408228fa9d3a5e0
sw x3, 0(x2) # store 0x7408228fa9d3a5e0 in memory
flw f5, 0(x2) # load 0x7408228fa9d3a5e0 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fmul.s f26, f5, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x1d49cc7dde7ef25a # load x3 with value 0x1d49cc7dde7ef25a
sw x3, 0(x2) # store 0x1d49cc7dde7ef25a in memory
flw f17, 0(x2) # load 0x1d49cc7dde7ef25a from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fmul.s f1, f17, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0xf3bd094041e5714a # load x3 with value 0xf3bd094041e5714a
sw x3, 0(x2) # store 0xf3bd094041e5714a in memory
flw f26, 0(x2) # load 0xf3bd094041e5714a from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f22, f26, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0xd388f9bec83fcd21 # load x3 with value 0xd388f9bec83fcd21
sw x3, 0(x2) # store 0xd388f9bec83fcd21 in memory
flw f27, 0(x2) # load 0xd388f9bec83fcd21 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fmul.s f25, f27, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x67fea34bead00ae # load x3 with value 0x67fea34bead00ae
sw x3, 0(x2) # store 0x67fea34bead00ae in memory
flw f28, 0(x2) # load 0x67fea34bead00ae from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fmul.s f18, f28, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x980bc4125356ca94 # load x3 with value 0x980bc4125356ca94
sw x3, 0(x2) # store 0x980bc4125356ca94 in memory
flw f15, 0(x2) # load 0x980bc4125356ca94 from memory into f15
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fmul.s f29, f15, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0x3d2b13da4b2bbb21 # load x3 with value 0x3d2b13da4b2bbb21
sw x3, 0(x2) # store 0x3d2b13da4b2bbb21 in memory
flw f14, 0(x2) # load 0x3d2b13da4b2bbb21 from memory into f14
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
fmul.s f31, f14, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0xc96a0211d75dfed2 # load x3 with value 0xc96a0211d75dfed2
sw x3, 0(x2) # store 0xc96a0211d75dfed2 in memory
flw f15, 0(x2) # load 0xc96a0211d75dfed2 from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fmul.s f19, f15, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0xa103ba90413df3c3 # load x3 with value 0xa103ba90413df3c3
sw x3, 0(x2) # store 0xa103ba90413df3c3 in memory
flw f25, 0(x2) # load 0xa103ba90413df3c3 from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fmul.s f15, f25, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xe4d39e9cc05403e7 # load x3 with value 0xe4d39e9cc05403e7
sw x3, 0(x2) # store 0xe4d39e9cc05403e7 in memory
flw f0, 0(x2) # load 0xe4d39e9cc05403e7 from memory into f0
la x2, scratch
li x3, 0x7894ea9a808144c7 # load x3 with value 0x7894ea9a808144c7
sw x3, 0(x2) # store 0x7894ea9a808144c7 in memory
flw f6, 0(x2) # load 0x7894ea9a808144c7 from memory into f6
fmul.s f0, f0, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x67cbd40b55384ae0 # load x3 with value 0x67cbd40b55384ae0
sw x3, 0(x2) # store 0x67cbd40b55384ae0 in memory
flw f1, 0(x2) # load 0x67cbd40b55384ae0 from memory into f1
la x2, scratch
li x3, 0x678f0d2cca0cd391 # load x3 with value 0x678f0d2cca0cd391
sw x3, 0(x2) # store 0x678f0d2cca0cd391 in memory
flw f1, 0(x2) # load 0x678f0d2cca0cd391 from memory into f1
fmul.s f1, f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xa9d184d23ec0a0db # load x3 with value 0xa9d184d23ec0a0db
sw x3, 0(x2) # store 0xa9d184d23ec0a0db in memory
flw f2, 0(x2) # load 0xa9d184d23ec0a0db from memory into f2
la x2, scratch
li x3, 0xcb0c6c76be6cc3e1 # load x3 with value 0xcb0c6c76be6cc3e1
sw x3, 0(x2) # store 0xcb0c6c76be6cc3e1 in memory
flw f5, 0(x2) # load 0xcb0c6c76be6cc3e1 from memory into f5
fmul.s f2, f2, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x377b2a292b735ce4 # load x3 with value 0x377b2a292b735ce4
sw x3, 0(x2) # store 0x377b2a292b735ce4 in memory
flw f3, 0(x2) # load 0x377b2a292b735ce4 from memory into f3
la x2, scratch
li x3, 0xebf1d3536e41d33a # load x3 with value 0xebf1d3536e41d33a
sw x3, 0(x2) # store 0xebf1d3536e41d33a in memory
flw f7, 0(x2) # load 0xebf1d3536e41d33a from memory into f7
fmul.s f3, f3, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcc5643e24bfe8716 # load x3 with value 0xcc5643e24bfe8716
sw x3, 0(x2) # store 0xcc5643e24bfe8716 in memory
flw f4, 0(x2) # load 0xcc5643e24bfe8716 from memory into f4
la x2, scratch
li x3, 0xc6b696d1f33290a # load x3 with value 0xc6b696d1f33290a
sw x3, 0(x2) # store 0xc6b696d1f33290a in memory
flw f31, 0(x2) # load 0xc6b696d1f33290a from memory into f31
fmul.s f4, f4, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb0ab8857678f5bfe # load x3 with value 0xb0ab8857678f5bfe
sw x3, 0(x2) # store 0xb0ab8857678f5bfe in memory
flw f5, 0(x2) # load 0xb0ab8857678f5bfe from memory into f5
la x2, scratch
li x3, 0x7e68532ac2588c5e # load x3 with value 0x7e68532ac2588c5e
sw x3, 0(x2) # store 0x7e68532ac2588c5e in memory
flw f8, 0(x2) # load 0x7e68532ac2588c5e from memory into f8
fmul.s f5, f5, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe839aebe3a3c702 # load x3 with value 0xe839aebe3a3c702
sw x3, 0(x2) # store 0xe839aebe3a3c702 in memory
flw f6, 0(x2) # load 0xe839aebe3a3c702 from memory into f6
la x2, scratch
li x3, 0x30194f0f64d5eb47 # load x3 with value 0x30194f0f64d5eb47
sw x3, 0(x2) # store 0x30194f0f64d5eb47 in memory
flw f16, 0(x2) # load 0x30194f0f64d5eb47 from memory into f16
fmul.s f6, f6, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3ec16141903ceb26 # load x3 with value 0x3ec16141903ceb26
sw x3, 0(x2) # store 0x3ec16141903ceb26 in memory
flw f7, 0(x2) # load 0x3ec16141903ceb26 from memory into f7
la x2, scratch
li x3, 0xcfa3c52239a70c70 # load x3 with value 0xcfa3c52239a70c70
sw x3, 0(x2) # store 0xcfa3c52239a70c70 in memory
flw f26, 0(x2) # load 0xcfa3c52239a70c70 from memory into f26
fmul.s f7, f7, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xf798325f1bc1e1a5 # load x3 with value 0xf798325f1bc1e1a5
sw x3, 0(x2) # store 0xf798325f1bc1e1a5 in memory
flw f8, 0(x2) # load 0xf798325f1bc1e1a5 from memory into f8
la x2, scratch
li x3, 0x5e3dcfab77784b61 # load x3 with value 0x5e3dcfab77784b61
sw x3, 0(x2) # store 0x5e3dcfab77784b61 in memory
flw f15, 0(x2) # load 0x5e3dcfab77784b61 from memory into f15
fmul.s f8, f8, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x579f25e0f1cf140 # load x3 with value 0x579f25e0f1cf140
sw x3, 0(x2) # store 0x579f25e0f1cf140 in memory
flw f9, 0(x2) # load 0x579f25e0f1cf140 from memory into f9
la x2, scratch
li x3, 0x8aab5f1ad77f878 # load x3 with value 0x8aab5f1ad77f878
sw x3, 0(x2) # store 0x8aab5f1ad77f878 in memory
flw f28, 0(x2) # load 0x8aab5f1ad77f878 from memory into f28
fmul.s f9, f9, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xc89f45f9b1ed500b # load x3 with value 0xc89f45f9b1ed500b
sw x3, 0(x2) # store 0xc89f45f9b1ed500b in memory
flw f10, 0(x2) # load 0xc89f45f9b1ed500b from memory into f10
la x2, scratch
li x3, 0xe4cdee9ba8038a15 # load x3 with value 0xe4cdee9ba8038a15
sw x3, 0(x2) # store 0xe4cdee9ba8038a15 in memory
flw f8, 0(x2) # load 0xe4cdee9ba8038a15 from memory into f8
fmul.s f10, f10, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x597e4ff67884627e # load x3 with value 0x597e4ff67884627e
sw x3, 0(x2) # store 0x597e4ff67884627e in memory
flw f11, 0(x2) # load 0x597e4ff67884627e from memory into f11
la x2, scratch
li x3, 0x38aae55ba90c3023 # load x3 with value 0x38aae55ba90c3023
sw x3, 0(x2) # store 0x38aae55ba90c3023 in memory
flw f9, 0(x2) # load 0x38aae55ba90c3023 from memory into f9
fmul.s f11, f11, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xd35535d2869a9ea6 # load x3 with value 0xd35535d2869a9ea6
sw x3, 0(x2) # store 0xd35535d2869a9ea6 in memory
flw f12, 0(x2) # load 0xd35535d2869a9ea6 from memory into f12
la x2, scratch
li x3, 0xf51fbfdac5dc43b5 # load x3 with value 0xf51fbfdac5dc43b5
sw x3, 0(x2) # store 0xf51fbfdac5dc43b5 in memory
flw f13, 0(x2) # load 0xf51fbfdac5dc43b5 from memory into f13
fmul.s f12, f12, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0x6efe4f411ff088ce # load x3 with value 0x6efe4f411ff088ce
sw x3, 0(x2) # store 0x6efe4f411ff088ce in memory
flw f13, 0(x2) # load 0x6efe4f411ff088ce from memory into f13
la x2, scratch
li x3, 0xa4dc7f14ca2c982f # load x3 with value 0xa4dc7f14ca2c982f
sw x3, 0(x2) # store 0xa4dc7f14ca2c982f in memory
flw f20, 0(x2) # load 0xa4dc7f14ca2c982f from memory into f20
fmul.s f13, f13, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x2b363cec460da979 # load x3 with value 0x2b363cec460da979
sw x3, 0(x2) # store 0x2b363cec460da979 in memory
flw f14, 0(x2) # load 0x2b363cec460da979 from memory into f14
la x2, scratch
li x3, 0xaf82760b0bf8f4a1 # load x3 with value 0xaf82760b0bf8f4a1
sw x3, 0(x2) # store 0xaf82760b0bf8f4a1 in memory
flw f22, 0(x2) # load 0xaf82760b0bf8f4a1 from memory into f22
fmul.s f14, f14, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x5c826e901dc5b0b # load x3 with value 0x5c826e901dc5b0b
sw x3, 0(x2) # store 0x5c826e901dc5b0b in memory
flw f15, 0(x2) # load 0x5c826e901dc5b0b from memory into f15
la x2, scratch
li x3, 0x584402e5b9da244c # load x3 with value 0x584402e5b9da244c
sw x3, 0(x2) # store 0x584402e5b9da244c in memory
flw f20, 0(x2) # load 0x584402e5b9da244c from memory into f20
fmul.s f15, f15, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x88620758f180ea4b # load x3 with value 0x88620758f180ea4b
sw x3, 0(x2) # store 0x88620758f180ea4b in memory
flw f16, 0(x2) # load 0x88620758f180ea4b from memory into f16
la x2, scratch
li x3, 0x46cb054311912096 # load x3 with value 0x46cb054311912096
sw x3, 0(x2) # store 0x46cb054311912096 in memory
flw f24, 0(x2) # load 0x46cb054311912096 from memory into f24
fmul.s f16, f16, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x45372f3052fc639f # load x3 with value 0x45372f3052fc639f
sw x3, 0(x2) # store 0x45372f3052fc639f in memory
flw f17, 0(x2) # load 0x45372f3052fc639f from memory into f17
la x2, scratch
li x3, 0x57a0f9fefc9f7101 # load x3 with value 0x57a0f9fefc9f7101
sw x3, 0(x2) # store 0x57a0f9fefc9f7101 in memory
flw f27, 0(x2) # load 0x57a0f9fefc9f7101 from memory into f27
fmul.s f17, f17, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0xe0ae555385bbbfdb # load x3 with value 0xe0ae555385bbbfdb
sw x3, 0(x2) # store 0xe0ae555385bbbfdb in memory
flw f18, 0(x2) # load 0xe0ae555385bbbfdb from memory into f18
la x2, scratch
li x3, 0xff80c0c265175965 # load x3 with value 0xff80c0c265175965
sw x3, 0(x2) # store 0xff80c0c265175965 in memory
flw f7, 0(x2) # load 0xff80c0c265175965 from memory into f7
fmul.s f18, f18, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x748efabaf9360fc5 # load x3 with value 0x748efabaf9360fc5
sw x3, 0(x2) # store 0x748efabaf9360fc5 in memory
flw f19, 0(x2) # load 0x748efabaf9360fc5 from memory into f19
la x2, scratch
li x3, 0x6b9d4cfe3a9d2f85 # load x3 with value 0x6b9d4cfe3a9d2f85
sw x3, 0(x2) # store 0x6b9d4cfe3a9d2f85 in memory
flw f26, 0(x2) # load 0x6b9d4cfe3a9d2f85 from memory into f26
fmul.s f19, f19, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x1fdc59ccabe662dd # load x3 with value 0x1fdc59ccabe662dd
sw x3, 0(x2) # store 0x1fdc59ccabe662dd in memory
flw f20, 0(x2) # load 0x1fdc59ccabe662dd from memory into f20
la x2, scratch
li x3, 0x8f8d005a87bd64f2 # load x3 with value 0x8f8d005a87bd64f2
sw x3, 0(x2) # store 0x8f8d005a87bd64f2 in memory
flw f20, 0(x2) # load 0x8f8d005a87bd64f2 from memory into f20
fmul.s f20, f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xb6a6fa42ce4c5953 # load x3 with value 0xb6a6fa42ce4c5953
sw x3, 0(x2) # store 0xb6a6fa42ce4c5953 in memory
flw f21, 0(x2) # load 0xb6a6fa42ce4c5953 from memory into f21
la x2, scratch
li x3, 0xdc325e5615003d5f # load x3 with value 0xdc325e5615003d5f
sw x3, 0(x2) # store 0xdc325e5615003d5f in memory
flw f21, 0(x2) # load 0xdc325e5615003d5f from memory into f21
fmul.s f21, f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x3a63da0b268c1e79 # load x3 with value 0x3a63da0b268c1e79
sw x3, 0(x2) # store 0x3a63da0b268c1e79 in memory
flw f22, 0(x2) # load 0x3a63da0b268c1e79 from memory into f22
la x2, scratch
li x3, 0x405414e68250b618 # load x3 with value 0x405414e68250b618
sw x3, 0(x2) # store 0x405414e68250b618 in memory
flw f12, 0(x2) # load 0x405414e68250b618 from memory into f12
fmul.s f22, f22, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0xfa60c4de037914d4 # load x3 with value 0xfa60c4de037914d4
sw x3, 0(x2) # store 0xfa60c4de037914d4 in memory
flw f23, 0(x2) # load 0xfa60c4de037914d4 from memory into f23
la x2, scratch
li x3, 0x1102e9d0b1f3368a # load x3 with value 0x1102e9d0b1f3368a
sw x3, 0(x2) # store 0x1102e9d0b1f3368a in memory
flw f22, 0(x2) # load 0x1102e9d0b1f3368a from memory into f22
fmul.s f23, f23, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x4552ffefbb08473e # load x3 with value 0x4552ffefbb08473e
sw x3, 0(x2) # store 0x4552ffefbb08473e in memory
flw f24, 0(x2) # load 0x4552ffefbb08473e from memory into f24
la x2, scratch
li x3, 0x63d7b90624be000c # load x3 with value 0x63d7b90624be000c
sw x3, 0(x2) # store 0x63d7b90624be000c in memory
flw f7, 0(x2) # load 0x63d7b90624be000c from memory into f7
fmul.s f24, f24, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0xf99f734e923e269b # load x3 with value 0xf99f734e923e269b
sw x3, 0(x2) # store 0xf99f734e923e269b in memory
flw f25, 0(x2) # load 0xf99f734e923e269b from memory into f25
la x2, scratch
li x3, 0x2a9f45d57b6e9b61 # load x3 with value 0x2a9f45d57b6e9b61
sw x3, 0(x2) # store 0x2a9f45d57b6e9b61 in memory
flw f18, 0(x2) # load 0x2a9f45d57b6e9b61 from memory into f18
fmul.s f25, f25, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0xacea2381ee6ba09b # load x3 with value 0xacea2381ee6ba09b
sw x3, 0(x2) # store 0xacea2381ee6ba09b in memory
flw f26, 0(x2) # load 0xacea2381ee6ba09b from memory into f26
la x2, scratch
li x3, 0xefaa1dd296ec8477 # load x3 with value 0xefaa1dd296ec8477
sw x3, 0(x2) # store 0xefaa1dd296ec8477 in memory
flw f28, 0(x2) # load 0xefaa1dd296ec8477 from memory into f28
fmul.s f26, f26, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x123bdc8db363ce1d # load x3 with value 0x123bdc8db363ce1d
sw x3, 0(x2) # store 0x123bdc8db363ce1d in memory
flw f27, 0(x2) # load 0x123bdc8db363ce1d from memory into f27
la x2, scratch
li x3, 0xb3f62482f4cab6e # load x3 with value 0xb3f62482f4cab6e
sw x3, 0(x2) # store 0xb3f62482f4cab6e in memory
flw f3, 0(x2) # load 0xb3f62482f4cab6e from memory into f3
fmul.s f27, f27, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x6c4630e18895eab1 # load x3 with value 0x6c4630e18895eab1
sw x3, 0(x2) # store 0x6c4630e18895eab1 in memory
flw f28, 0(x2) # load 0x6c4630e18895eab1 from memory into f28
la x2, scratch
li x3, 0xc65ef13a0aa0ff74 # load x3 with value 0xc65ef13a0aa0ff74
sw x3, 0(x2) # store 0xc65ef13a0aa0ff74 in memory
flw f2, 0(x2) # load 0xc65ef13a0aa0ff74 from memory into f2
fmul.s f28, f28, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0x1581095a13936d10 # load x3 with value 0x1581095a13936d10
sw x3, 0(x2) # store 0x1581095a13936d10 in memory
flw f29, 0(x2) # load 0x1581095a13936d10 from memory into f29
la x2, scratch
li x3, 0xcd8918e21e056e66 # load x3 with value 0xcd8918e21e056e66
sw x3, 0(x2) # store 0xcd8918e21e056e66 in memory
flw f26, 0(x2) # load 0xcd8918e21e056e66 from memory into f26
fmul.s f29, f29, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x8560723c2749c823 # load x3 with value 0x8560723c2749c823
sw x3, 0(x2) # store 0x8560723c2749c823 in memory
flw f30, 0(x2) # load 0x8560723c2749c823 from memory into f30
la x2, scratch
li x3, 0x70e3aa80dc77a7d2 # load x3 with value 0x70e3aa80dc77a7d2
sw x3, 0(x2) # store 0x70e3aa80dc77a7d2 in memory
flw f22, 0(x2) # load 0x70e3aa80dc77a7d2 from memory into f22
fmul.s f30, f30, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x2552e1acf7746995 # load x3 with value 0x2552e1acf7746995
sw x3, 0(x2) # store 0x2552e1acf7746995 in memory
flw f31, 0(x2) # load 0x2552e1acf7746995 from memory into f31
la x2, scratch
li x3, 0x38c973d262df63ae # load x3 with value 0x38c973d262df63ae
sw x3, 0(x2) # store 0x38c973d262df63ae in memory
flw f22, 0(x2) # load 0x38c973d262df63ae from memory into f22
fmul.s f31, f31, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x1245a530d3faa44d # load x3 with value 0x1245a530d3faa44d
sw x3, 0(x2) # store 0x1245a530d3faa44d in memory
flw f20, 0(x2) # load 0x1245a530d3faa44d from memory into f20
la x2, scratch
li x3, 0x24df37b09f97f3bd # load x3 with value 0x24df37b09f97f3bd
sw x3, 0(x2) # store 0x24df37b09f97f3bd in memory
flw f0, 0(x2) # load 0x24df37b09f97f3bd from memory into f0
fmul.s f0, f20, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x833c9ae84a38ce48 # load x3 with value 0x833c9ae84a38ce48
sw x3, 0(x2) # store 0x833c9ae84a38ce48 in memory
flw f13, 0(x2) # load 0x833c9ae84a38ce48 from memory into f13
la x2, scratch
li x3, 0xd2605966ad4c35c3 # load x3 with value 0xd2605966ad4c35c3
sw x3, 0(x2) # store 0xd2605966ad4c35c3 in memory
flw f1, 0(x2) # load 0xd2605966ad4c35c3 from memory into f1
fmul.s f1, f13, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0xcd8c3b9d1789f1ec # load x3 with value 0xcd8c3b9d1789f1ec
sw x3, 0(x2) # store 0xcd8c3b9d1789f1ec in memory
flw f15, 0(x2) # load 0xcd8c3b9d1789f1ec from memory into f15
la x2, scratch
li x3, 0x4c3c6b4bcc8dfd93 # load x3 with value 0x4c3c6b4bcc8dfd93
sw x3, 0(x2) # store 0x4c3c6b4bcc8dfd93 in memory
flw f2, 0(x2) # load 0x4c3c6b4bcc8dfd93 from memory into f2
fmul.s f2, f15, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0xb7784001f69713e6 # load x3 with value 0xb7784001f69713e6
sw x3, 0(x2) # store 0xb7784001f69713e6 in memory
flw f31, 0(x2) # load 0xb7784001f69713e6 from memory into f31
la x2, scratch
li x3, 0x7a082436410b5371 # load x3 with value 0x7a082436410b5371
sw x3, 0(x2) # store 0x7a082436410b5371 in memory
flw f3, 0(x2) # load 0x7a082436410b5371 from memory into f3
fmul.s f3, f31, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3b15b1e6fe99bb65 # load x3 with value 0x3b15b1e6fe99bb65
sw x3, 0(x2) # store 0x3b15b1e6fe99bb65 in memory
flw f11, 0(x2) # load 0x3b15b1e6fe99bb65 from memory into f11
la x2, scratch
li x3, 0x54cce15c2a41030a # load x3 with value 0x54cce15c2a41030a
sw x3, 0(x2) # store 0x54cce15c2a41030a in memory
flw f4, 0(x2) # load 0x54cce15c2a41030a from memory into f4
fmul.s f4, f11, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc9a120e2954abe6b # load x3 with value 0xc9a120e2954abe6b
sw x3, 0(x2) # store 0xc9a120e2954abe6b in memory
flw f9, 0(x2) # load 0xc9a120e2954abe6b from memory into f9
la x2, scratch
li x3, 0xc638480309b630a1 # load x3 with value 0xc638480309b630a1
sw x3, 0(x2) # store 0xc638480309b630a1 in memory
flw f5, 0(x2) # load 0xc638480309b630a1 from memory into f5
fmul.s f5, f9, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7390224636ae4ef8 # load x3 with value 0x7390224636ae4ef8
sw x3, 0(x2) # store 0x7390224636ae4ef8 in memory
flw f15, 0(x2) # load 0x7390224636ae4ef8 from memory into f15
la x2, scratch
li x3, 0x7b2fda1573b595eb # load x3 with value 0x7b2fda1573b595eb
sw x3, 0(x2) # store 0x7b2fda1573b595eb in memory
flw f6, 0(x2) # load 0x7b2fda1573b595eb from memory into f6
fmul.s f6, f15, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x62c81ec6c42005a6 # load x3 with value 0x62c81ec6c42005a6
sw x3, 0(x2) # store 0x62c81ec6c42005a6 in memory
flw f18, 0(x2) # load 0x62c81ec6c42005a6 from memory into f18
la x2, scratch
li x3, 0x738e55b406d32e68 # load x3 with value 0x738e55b406d32e68
sw x3, 0(x2) # store 0x738e55b406d32e68 in memory
flw f7, 0(x2) # load 0x738e55b406d32e68 from memory into f7
fmul.s f7, f18, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x5ad7e68ede76d35c # load x3 with value 0x5ad7e68ede76d35c
sw x3, 0(x2) # store 0x5ad7e68ede76d35c in memory
flw f20, 0(x2) # load 0x5ad7e68ede76d35c from memory into f20
la x2, scratch
li x3, 0x25bedae3577095ee # load x3 with value 0x25bedae3577095ee
sw x3, 0(x2) # store 0x25bedae3577095ee in memory
flw f8, 0(x2) # load 0x25bedae3577095ee from memory into f8
fmul.s f8, f20, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xb05e2817b7dc439b # load x3 with value 0xb05e2817b7dc439b
sw x3, 0(x2) # store 0xb05e2817b7dc439b in memory
flw f15, 0(x2) # load 0xb05e2817b7dc439b from memory into f15
la x2, scratch
li x3, 0x63f2e8ab4035a1ca # load x3 with value 0x63f2e8ab4035a1ca
sw x3, 0(x2) # store 0x63f2e8ab4035a1ca in memory
flw f9, 0(x2) # load 0x63f2e8ab4035a1ca from memory into f9
fmul.s f9, f15, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x22e896d86afe4ee2 # load x3 with value 0x22e896d86afe4ee2
sw x3, 0(x2) # store 0x22e896d86afe4ee2 in memory
flw f14, 0(x2) # load 0x22e896d86afe4ee2 from memory into f14
la x2, scratch
li x3, 0xf9cf4e4e77a8de9e # load x3 with value 0xf9cf4e4e77a8de9e
sw x3, 0(x2) # store 0xf9cf4e4e77a8de9e in memory
flw f10, 0(x2) # load 0xf9cf4e4e77a8de9e from memory into f10
fmul.s f10, f14, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x562e67feb8f0d96 # load x3 with value 0x562e67feb8f0d96
sw x3, 0(x2) # store 0x562e67feb8f0d96 in memory
flw f19, 0(x2) # load 0x562e67feb8f0d96 from memory into f19
la x2, scratch
li x3, 0x79c7cff4af4e4a30 # load x3 with value 0x79c7cff4af4e4a30
sw x3, 0(x2) # store 0x79c7cff4af4e4a30 in memory
flw f11, 0(x2) # load 0x79c7cff4af4e4a30 from memory into f11
fmul.s f11, f19, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0xabdacc84a1528248 # load x3 with value 0xabdacc84a1528248
sw x3, 0(x2) # store 0xabdacc84a1528248 in memory
flw f2, 0(x2) # load 0xabdacc84a1528248 from memory into f2
la x2, scratch
li x3, 0x646301ecef4d3520 # load x3 with value 0x646301ecef4d3520
sw x3, 0(x2) # store 0x646301ecef4d3520 in memory
flw f12, 0(x2) # load 0x646301ecef4d3520 from memory into f12
fmul.s f12, f2, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x4a3d55c69d7e1ea1 # load x3 with value 0x4a3d55c69d7e1ea1
sw x3, 0(x2) # store 0x4a3d55c69d7e1ea1 in memory
flw f10, 0(x2) # load 0x4a3d55c69d7e1ea1 from memory into f10
la x2, scratch
li x3, 0x7277daccc53c7de7 # load x3 with value 0x7277daccc53c7de7
sw x3, 0(x2) # store 0x7277daccc53c7de7 in memory
flw f13, 0(x2) # load 0x7277daccc53c7de7 from memory into f13
fmul.s f13, f10, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0x51e2288efbca82ef # load x3 with value 0x51e2288efbca82ef
sw x3, 0(x2) # store 0x51e2288efbca82ef in memory
flw f12, 0(x2) # load 0x51e2288efbca82ef from memory into f12
la x2, scratch
li x3, 0x9a83d0b69318af63 # load x3 with value 0x9a83d0b69318af63
sw x3, 0(x2) # store 0x9a83d0b69318af63 in memory
flw f14, 0(x2) # load 0x9a83d0b69318af63 from memory into f14
fmul.s f14, f12, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0xd4d2a4a4d3f59a30 # load x3 with value 0xd4d2a4a4d3f59a30
sw x3, 0(x2) # store 0xd4d2a4a4d3f59a30 in memory
flw f7, 0(x2) # load 0xd4d2a4a4d3f59a30 from memory into f7
la x2, scratch
li x3, 0x8aab03dac32052c0 # load x3 with value 0x8aab03dac32052c0
sw x3, 0(x2) # store 0x8aab03dac32052c0 in memory
flw f15, 0(x2) # load 0x8aab03dac32052c0 from memory into f15
fmul.s f15, f7, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x67170fe736875d02 # load x3 with value 0x67170fe736875d02
sw x3, 0(x2) # store 0x67170fe736875d02 in memory
flw f25, 0(x2) # load 0x67170fe736875d02 from memory into f25
la x2, scratch
li x3, 0xfe098e46e902a3a0 # load x3 with value 0xfe098e46e902a3a0
sw x3, 0(x2) # store 0xfe098e46e902a3a0 in memory
flw f16, 0(x2) # load 0xfe098e46e902a3a0 from memory into f16
fmul.s f16, f25, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x872a6c94833933b5 # load x3 with value 0x872a6c94833933b5
sw x3, 0(x2) # store 0x872a6c94833933b5 in memory
flw f11, 0(x2) # load 0x872a6c94833933b5 from memory into f11
la x2, scratch
li x3, 0x4dbfe085269b577b # load x3 with value 0x4dbfe085269b577b
sw x3, 0(x2) # store 0x4dbfe085269b577b in memory
flw f17, 0(x2) # load 0x4dbfe085269b577b from memory into f17
fmul.s f17, f11, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x10d931be0b5d85b1 # load x3 with value 0x10d931be0b5d85b1
sw x3, 0(x2) # store 0x10d931be0b5d85b1 in memory
flw f18, 0(x2) # load 0x10d931be0b5d85b1 from memory into f18
la x2, scratch
li x3, 0x94b6ed0d89ae5c33 # load x3 with value 0x94b6ed0d89ae5c33
sw x3, 0(x2) # store 0x94b6ed0d89ae5c33 in memory
flw f18, 0(x2) # load 0x94b6ed0d89ae5c33 from memory into f18
fmul.s f18, f18, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x23c40f2264ba5d68 # load x3 with value 0x23c40f2264ba5d68
sw x3, 0(x2) # store 0x23c40f2264ba5d68 in memory
flw f20, 0(x2) # load 0x23c40f2264ba5d68 from memory into f20
la x2, scratch
li x3, 0xded16a120d8ba379 # load x3 with value 0xded16a120d8ba379
sw x3, 0(x2) # store 0xded16a120d8ba379 in memory
flw f19, 0(x2) # load 0xded16a120d8ba379 from memory into f19
fmul.s f19, f20, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0xdcede6a34b2e430b # load x3 with value 0xdcede6a34b2e430b
sw x3, 0(x2) # store 0xdcede6a34b2e430b in memory
flw f29, 0(x2) # load 0xdcede6a34b2e430b from memory into f29
la x2, scratch
li x3, 0xfe8f508dc2084afe # load x3 with value 0xfe8f508dc2084afe
sw x3, 0(x2) # store 0xfe8f508dc2084afe in memory
flw f20, 0(x2) # load 0xfe8f508dc2084afe from memory into f20
fmul.s f20, f29, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x6332d72545ad6149 # load x3 with value 0x6332d72545ad6149
sw x3, 0(x2) # store 0x6332d72545ad6149 in memory
flw f24, 0(x2) # load 0x6332d72545ad6149 from memory into f24
la x2, scratch
li x3, 0x9a20e1eac4021fd3 # load x3 with value 0x9a20e1eac4021fd3
sw x3, 0(x2) # store 0x9a20e1eac4021fd3 in memory
flw f21, 0(x2) # load 0x9a20e1eac4021fd3 from memory into f21
fmul.s f21, f24, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x2bbeb6be44b0bec # load x3 with value 0x2bbeb6be44b0bec
sw x3, 0(x2) # store 0x2bbeb6be44b0bec in memory
flw f1, 0(x2) # load 0x2bbeb6be44b0bec from memory into f1
la x2, scratch
li x3, 0xe4d16fea6b2459bd # load x3 with value 0xe4d16fea6b2459bd
sw x3, 0(x2) # store 0xe4d16fea6b2459bd in memory
flw f22, 0(x2) # load 0xe4d16fea6b2459bd from memory into f22
fmul.s f22, f1, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xef01ca102007df67 # load x3 with value 0xef01ca102007df67
sw x3, 0(x2) # store 0xef01ca102007df67 in memory
flw f3, 0(x2) # load 0xef01ca102007df67 from memory into f3
la x2, scratch
li x3, 0x87ecc5b4f87f1824 # load x3 with value 0x87ecc5b4f87f1824
sw x3, 0(x2) # store 0x87ecc5b4f87f1824 in memory
flw f23, 0(x2) # load 0x87ecc5b4f87f1824 from memory into f23
fmul.s f23, f3, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0xdb44465ce62d7d24 # load x3 with value 0xdb44465ce62d7d24
sw x3, 0(x2) # store 0xdb44465ce62d7d24 in memory
flw f26, 0(x2) # load 0xdb44465ce62d7d24 from memory into f26
la x2, scratch
li x3, 0xb65385a033909bb4 # load x3 with value 0xb65385a033909bb4
sw x3, 0(x2) # store 0xb65385a033909bb4 in memory
flw f24, 0(x2) # load 0xb65385a033909bb4 from memory into f24
fmul.s f24, f26, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xd3e13f644f4823e9 # load x3 with value 0xd3e13f644f4823e9
sw x3, 0(x2) # store 0xd3e13f644f4823e9 in memory
flw f30, 0(x2) # load 0xd3e13f644f4823e9 from memory into f30
la x2, scratch
li x3, 0x950f40ec59641ec6 # load x3 with value 0x950f40ec59641ec6
sw x3, 0(x2) # store 0x950f40ec59641ec6 in memory
flw f25, 0(x2) # load 0x950f40ec59641ec6 from memory into f25
fmul.s f25, f30, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x4df78c56627c2b3f # load x3 with value 0x4df78c56627c2b3f
sw x3, 0(x2) # store 0x4df78c56627c2b3f in memory
flw f30, 0(x2) # load 0x4df78c56627c2b3f from memory into f30
la x2, scratch
li x3, 0x7a5f49901fcc61dd # load x3 with value 0x7a5f49901fcc61dd
sw x3, 0(x2) # store 0x7a5f49901fcc61dd in memory
flw f26, 0(x2) # load 0x7a5f49901fcc61dd from memory into f26
fmul.s f26, f30, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0xe818892ed74db35b # load x3 with value 0xe818892ed74db35b
sw x3, 0(x2) # store 0xe818892ed74db35b in memory
flw f21, 0(x2) # load 0xe818892ed74db35b from memory into f21
la x2, scratch
li x3, 0x5d51083984f1eb3a # load x3 with value 0x5d51083984f1eb3a
sw x3, 0(x2) # store 0x5d51083984f1eb3a in memory
flw f27, 0(x2) # load 0x5d51083984f1eb3a from memory into f27
fmul.s f27, f21, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x8285756117c9cebc # load x3 with value 0x8285756117c9cebc
sw x3, 0(x2) # store 0x8285756117c9cebc in memory
flw f3, 0(x2) # load 0x8285756117c9cebc from memory into f3
la x2, scratch
li x3, 0x825141432d318137 # load x3 with value 0x825141432d318137
sw x3, 0(x2) # store 0x825141432d318137 in memory
flw f28, 0(x2) # load 0x825141432d318137 from memory into f28
fmul.s f28, f3, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x952a565654fbff49 # load x3 with value 0x952a565654fbff49
sw x3, 0(x2) # store 0x952a565654fbff49 in memory
flw f9, 0(x2) # load 0x952a565654fbff49 from memory into f9
la x2, scratch
li x3, 0xf43007ad7848973a # load x3 with value 0xf43007ad7848973a
sw x3, 0(x2) # store 0xf43007ad7848973a in memory
flw f29, 0(x2) # load 0xf43007ad7848973a from memory into f29
fmul.s f29, f9, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x27c4b083769113ea # load x3 with value 0x27c4b083769113ea
sw x3, 0(x2) # store 0x27c4b083769113ea in memory
flw f28, 0(x2) # load 0x27c4b083769113ea from memory into f28
la x2, scratch
li x3, 0x8473ef8df8509fa6 # load x3 with value 0x8473ef8df8509fa6
sw x3, 0(x2) # store 0x8473ef8df8509fa6 in memory
flw f30, 0(x2) # load 0x8473ef8df8509fa6 from memory into f30
fmul.s f30, f28, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x3a74797d23dd969a # load x3 with value 0x3a74797d23dd969a
sw x3, 0(x2) # store 0x3a74797d23dd969a in memory
flw f3, 0(x2) # load 0x3a74797d23dd969a from memory into f3
la x2, scratch
li x3, 0x45d6bb41cc4e026 # load x3 with value 0x45d6bb41cc4e026
sw x3, 0(x2) # store 0x45d6bb41cc4e026 in memory
flw f31, 0(x2) # load 0x45d6bb41cc4e026 from memory into f31
fmul.s f31, f3, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xdbfd6004a1174e8c # load x3 with value 0xdbfd6004a1174e8c
sw x3, 0(x2) # store 0xdbfd6004a1174e8c in memory
flw f7, 0(x2) # load 0xdbfd6004a1174e8c from memory into f7
la x2, scratch
li x3, 0x96aca46719de987e # load x3 with value 0x96aca46719de987e
sw x3, 0(x2) # store 0x96aca46719de987e in memory
flw f21, 0(x2) # load 0x96aca46719de987e from memory into f21
fmul.s f29, f7, f21, dyn # perform operation
fmul.s f29, f7, f21, rdn # perform operation
fmul.s f29, f7, f21, rmm # perform operation
fmul.s f29, f7, f21, rne # perform operation
fmul.s f29, f7, f21, rtz # perform operation
fmul.s f29, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fmul.s f9, f13, f1, dyn # perform operation
fmul.s f9, f13, f1, rdn # perform operation
fmul.s f9, f13, f1, rmm # perform operation
fmul.s f9, f13, f1, rne # perform operation
fmul.s f9, f13, f1, rtz # perform operation
fmul.s f9, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fmul.s f25, f17, f8, dyn # perform operation
fmul.s f25, f17, f8, rdn # perform operation
fmul.s f25, f17, f8, rmm # perform operation
fmul.s f25, f17, f8, rne # perform operation
fmul.s f25, f17, f8, rtz # perform operation
fmul.s f25, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmul.s f3, f31, f7, dyn # perform operation
fmul.s f3, f31, f7, rdn # perform operation
fmul.s f3, f31, f7, rmm # perform operation
fmul.s f3, f31, f7, rne # perform operation
fmul.s f3, f31, f7, rtz # perform operation
fmul.s f3, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fmul.s f6, f5, f30, dyn # perform operation
fmul.s f6, f5, f30, rdn # perform operation
fmul.s f6, f5, f30, rmm # perform operation
fmul.s f6, f5, f30, rne # perform operation
fmul.s f6, f5, f30, rtz # perform operation
fmul.s f6, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fmul.s f7, f21, f30, dyn # perform operation
fmul.s f7, f21, f30, rdn # perform operation
fmul.s f7, f21, f30, rmm # perform operation
fmul.s f7, f21, f30, rne # perform operation
fmul.s f7, f21, f30, rtz # perform operation
fmul.s f7, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fmul.s f16, f27, f31, dyn # perform operation
fmul.s f16, f27, f31, rdn # perform operation
fmul.s f16, f27, f31, rmm # perform operation
fmul.s f16, f27, f31, rne # perform operation
fmul.s f16, f27, f31, rtz # perform operation
fmul.s f16, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fmul.s f15, f7, f26, dyn # perform operation
fmul.s f15, f7, f26, rdn # perform operation
fmul.s f15, f7, f26, rmm # perform operation
fmul.s f15, f7, f26, rne # perform operation
fmul.s f15, f7, f26, rtz # perform operation
fmul.s f15, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmul.s f23, f19, f10, dyn # perform operation
fmul.s f23, f19, f10, rdn # perform operation
fmul.s f23, f19, f10, rmm # perform operation
fmul.s f23, f19, f10, rne # perform operation
fmul.s f23, f19, f10, rtz # perform operation
fmul.s f23, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fmul.s f24, f14, f1, dyn # perform operation
fmul.s f24, f14, f1, rdn # perform operation
fmul.s f24, f14, f1, rmm # perform operation
fmul.s f24, f14, f1, rne # perform operation
fmul.s f24, f14, f1, rtz # perform operation
fmul.s f24, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fmul.s f1, f29, f6, dyn # perform operation
fmul.s f1, f29, f6, rdn # perform operation
fmul.s f1, f29, f6, rmm # perform operation
fmul.s f1, f29, f6, rne # perform operation
fmul.s f1, f29, f6, rtz # perform operation
fmul.s f1, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmul.s f24, f30, f9, dyn # perform operation
fmul.s f24, f30, f9, rdn # perform operation
fmul.s f24, f30, f9, rmm # perform operation
fmul.s f24, f30, f9, rne # perform operation
fmul.s f24, f30, f9, rtz # perform operation
fmul.s f24, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fmul.s f12, f22, f10, dyn # perform operation
fmul.s f12, f22, f10, rdn # perform operation
fmul.s f12, f22, f10, rmm # perform operation
fmul.s f12, f22, f10, rne # perform operation
fmul.s f12, f22, f10, rtz # perform operation
fmul.s f12, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmul.s f25, f26, f21, dyn # perform operation
fmul.s f25, f26, f21, rdn # perform operation
fmul.s f25, f26, f21, rmm # perform operation
fmul.s f25, f26, f21, rne # perform operation
fmul.s f25, f26, f21, rtz # perform operation
fmul.s f25, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmul.s f10, f22, f6, dyn # perform operation
fmul.s f10, f22, f6, rdn # perform operation
fmul.s f10, f22, f6, rmm # perform operation
fmul.s f10, f22, f6, rne # perform operation
fmul.s f10, f22, f6, rtz # perform operation
fmul.s f10, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmul.s f7, f25, f9, dyn # perform operation
fmul.s f7, f25, f9, rdn # perform operation
fmul.s f7, f25, f9, rmm # perform operation
fmul.s f7, f25, f9, rne # perform operation
fmul.s f7, f25, f9, rtz # perform operation
fmul.s f7, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fmul.s f26, f3, f25, dyn # perform operation
fmul.s f26, f3, f25, rdn # perform operation
fmul.s f26, f3, f25, rmm # perform operation
fmul.s f26, f3, f25, rne # perform operation
fmul.s f26, f3, f25, rtz # perform operation
fmul.s f26, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f3, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmul.s f15, f20, f17, dyn # perform operation
fmul.s f15, f20, f17, rdn # perform operation
fmul.s f15, f20, f17, rmm # perform operation
fmul.s f15, f20, f17, rne # perform operation
fmul.s f15, f20, f17, rtz # perform operation
fmul.s f15, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fmul.s f1, f22, f16, dyn # perform operation
fmul.s f1, f22, f16, rdn # perform operation
fmul.s f1, f22, f16, rmm # perform operation
fmul.s f1, f22, f16, rne # perform operation
fmul.s f1, f22, f16, rtz # perform operation
fmul.s f1, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fmul.s f8, f20, f31, dyn # perform operation
fmul.s f8, f20, f31, rdn # perform operation
fmul.s f8, f20, f31, rmm # perform operation
fmul.s f8, f20, f31, rne # perform operation
fmul.s f8, f20, f31, rtz # perform operation
fmul.s f8, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fmul.s f26, f9, f28, dyn # perform operation
fmul.s f26, f9, f28, rdn # perform operation
fmul.s f26, f9, f28, rmm # perform operation
fmul.s f26, f9, f28, rne # perform operation
fmul.s f26, f9, f28, rtz # perform operation
fmul.s f26, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fmul.s f2, f3, f10, dyn # perform operation
fmul.s f2, f3, f10, rdn # perform operation
fmul.s f2, f3, f10, rmm # perform operation
fmul.s f2, f3, f10, rne # perform operation
fmul.s f2, f3, f10, rtz # perform operation
fmul.s f2, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fmul.s f13, f2, f18, dyn # perform operation
fmul.s f13, f2, f18, rdn # perform operation
fmul.s f13, f2, f18, rmm # perform operation
fmul.s f13, f2, f18, rne # perform operation
fmul.s f13, f2, f18, rtz # perform operation
fmul.s f13, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fmul.s f9, f5, f22, dyn # perform operation
fmul.s f9, f5, f22, rdn # perform operation
fmul.s f9, f5, f22, rmm # perform operation
fmul.s f9, f5, f22, rne # perform operation
fmul.s f9, f5, f22, rtz # perform operation
fmul.s f9, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fmul.s f18, f7, f6, dyn # perform operation
fmul.s f18, f7, f6, rdn # perform operation
fmul.s f18, f7, f6, rmm # perform operation
fmul.s f18, f7, f6, rne # perform operation
fmul.s f18, f7, f6, rtz # perform operation
fmul.s f18, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fmul.s f1, f3, f26, dyn # perform operation
fmul.s f1, f3, f26, rdn # perform operation
fmul.s f1, f3, f26, rmm # perform operation
fmul.s f1, f3, f26, rne # perform operation
fmul.s f1, f3, f26, rtz # perform operation
fmul.s f1, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fmul.s f29, f25, f15, dyn # perform operation
fmul.s f29, f25, f15, rdn # perform operation
fmul.s f29, f25, f15, rmm # perform operation
fmul.s f29, f25, f15, rne # perform operation
fmul.s f29, f25, f15, rtz # perform operation
fmul.s f29, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fmul.s f11, f17, f23, dyn # perform operation
fmul.s f11, f17, f23, rdn # perform operation
fmul.s f11, f17, f23, rmm # perform operation
fmul.s f11, f17, f23, rne # perform operation
fmul.s f11, f17, f23, rtz # perform operation
fmul.s f11, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fmul.s f7, f28, f16, dyn # perform operation
fmul.s f7, f28, f16, rdn # perform operation
fmul.s f7, f28, f16, rmm # perform operation
fmul.s f7, f28, f16, rne # perform operation
fmul.s f7, f28, f16, rtz # perform operation
fmul.s f7, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fmul.s f17, f25, f15, dyn # perform operation
fmul.s f17, f25, f15, rdn # perform operation
fmul.s f17, f25, f15, rmm # perform operation
fmul.s f17, f25, f15, rne # perform operation
fmul.s f17, f25, f15, rtz # perform operation
fmul.s f17, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fmul.s f3, f17, f21, dyn # perform operation
fmul.s f3, f17, f21, rdn # perform operation
fmul.s f3, f17, f21, rmm # perform operation
fmul.s f3, f17, f21, rne # perform operation
fmul.s f3, f17, f21, rtz # perform operation
fmul.s f3, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f13, f19, f24, dyn # perform operation
fmul.s f13, f19, f24, rdn # perform operation
fmul.s f13, f19, f24, rmm # perform operation
fmul.s f13, f19, f24, rne # perform operation
fmul.s f13, f19, f24, rtz # perform operation
fmul.s f13, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f3, f14, f16, dyn # perform operation
fmul.s f3, f14, f16, rdn # perform operation
fmul.s f3, f14, f16, rmm # perform operation
fmul.s f3, f14, f16, rne # perform operation
fmul.s f3, f14, f16, rtz # perform operation
fmul.s f3, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f7, f23, f25, dyn # perform operation
fmul.s f7, f23, f25, rdn # perform operation
fmul.s f7, f23, f25, rmm # perform operation
fmul.s f7, f23, f25, rne # perform operation
fmul.s f7, f23, f25, rtz # perform operation
fmul.s f7, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fmul.s f12, f28, f26, dyn # perform operation
fmul.s f12, f28, f26, rdn # perform operation
fmul.s f12, f28, f26, rmm # perform operation
fmul.s f12, f28, f26, rne # perform operation
fmul.s f12, f28, f26, rtz # perform operation
fmul.s f12, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fmul.s f3, f17, f13, dyn # perform operation
fmul.s f3, f17, f13, rdn # perform operation
fmul.s f3, f17, f13, rmm # perform operation
fmul.s f3, f17, f13, rne # perform operation
fmul.s f3, f17, f13, rtz # perform operation
fmul.s f3, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fmul.s f30, f8, f11, dyn # perform operation
fmul.s f30, f8, f11, rdn # perform operation
fmul.s f30, f8, f11, rmm # perform operation
fmul.s f30, f8, f11, rne # perform operation
fmul.s f30, f8, f11, rtz # perform operation
fmul.s f30, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fmul.s f9, f19, f27, dyn # perform operation
fmul.s f9, f19, f27, rdn # perform operation
fmul.s f9, f19, f27, rmm # perform operation
fmul.s f9, f19, f27, rne # perform operation
fmul.s f9, f19, f27, rtz # perform operation
fmul.s f9, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f19, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmul.s f31, f16, f13, dyn # perform operation
fmul.s f31, f16, f13, rdn # perform operation
fmul.s f31, f16, f13, rmm # perform operation
fmul.s f31, f16, f13, rne # perform operation
fmul.s f31, f16, f13, rtz # perform operation
fmul.s f31, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f16, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fmul.s f31, f24, f6, dyn # perform operation
fmul.s f31, f24, f6, rdn # perform operation
fmul.s f31, f24, f6, rmm # perform operation
fmul.s f31, f24, f6, rne # perform operation
fmul.s f31, f24, f6, rtz # perform operation
fmul.s f31, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fmul.s f30, f27, f25, dyn # perform operation
fmul.s f30, f27, f25, rdn # perform operation
fmul.s f30, f27, f25, rmm # perform operation
fmul.s f30, f27, f25, rne # perform operation
fmul.s f30, f27, f25, rtz # perform operation
fmul.s f30, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fmul.s f17, f21, f31, dyn # perform operation
fmul.s f17, f21, f31, rdn # perform operation
fmul.s f17, f21, f31, rmm # perform operation
fmul.s f17, f21, f31, rne # perform operation
fmul.s f17, f21, f31, rtz # perform operation
fmul.s f17, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmul.s f14, f28, f15, dyn # perform operation
fmul.s f14, f28, f15, rdn # perform operation
fmul.s f14, f28, f15, rmm # perform operation
fmul.s f14, f28, f15, rne # perform operation
fmul.s f14, f28, f15, rtz # perform operation
fmul.s f14, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fmul.s f19, f22, f10, dyn # perform operation
fmul.s f19, f22, f10, rdn # perform operation
fmul.s f19, f22, f10, rmm # perform operation
fmul.s f19, f22, f10, rne # perform operation
fmul.s f19, f22, f10, rtz # perform operation
fmul.s f19, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fmul.s f21, f29, f15, dyn # perform operation
fmul.s f21, f29, f15, rdn # perform operation
fmul.s f21, f29, f15, rmm # perform operation
fmul.s f21, f29, f15, rne # perform operation
fmul.s f21, f29, f15, rtz # perform operation
fmul.s f21, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmul.s f10, f11, f2, dyn # perform operation
fmul.s f10, f11, f2, rdn # perform operation
fmul.s f10, f11, f2, rmm # perform operation
fmul.s f10, f11, f2, rne # perform operation
fmul.s f10, f11, f2, rtz # perform operation
fmul.s f10, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fmul.s f30, f9, f18, dyn # perform operation
fmul.s f30, f9, f18, rdn # perform operation
fmul.s f30, f9, f18, rmm # perform operation
fmul.s f30, f9, f18, rne # perform operation
fmul.s f30, f9, f18, rtz # perform operation
fmul.s f30, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fmul.s f27, f11, f8, dyn # perform operation
fmul.s f27, f11, f8, rdn # perform operation
fmul.s f27, f11, f8, rmm # perform operation
fmul.s f27, f11, f8, rne # perform operation
fmul.s f27, f11, f8, rtz # perform operation
fmul.s f27, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fmul.s f15, f22, f6, dyn # perform operation
fmul.s f15, f22, f6, rdn # perform operation
fmul.s f15, f22, f6, rmm # perform operation
fmul.s f15, f22, f6, rne # perform operation
fmul.s f15, f22, f6, rtz # perform operation
fmul.s f15, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fmul.s f7, f12, f20, dyn # perform operation
fmul.s f7, f12, f20, rdn # perform operation
fmul.s f7, f12, f20, rmm # perform operation
fmul.s f7, f12, f20, rne # perform operation
fmul.s f7, f12, f20, rtz # perform operation
fmul.s f7, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fmul.s f28, f24, f11, dyn # perform operation
fmul.s f28, f24, f11, rdn # perform operation
fmul.s f28, f24, f11, rmm # perform operation
fmul.s f28, f24, f11, rne # perform operation
fmul.s f28, f24, f11, rtz # perform operation
fmul.s f28, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fmul.s f22, f13, f14, dyn # perform operation
fmul.s f22, f13, f14, rdn # perform operation
fmul.s f22, f13, f14, rmm # perform operation
fmul.s f22, f13, f14, rne # perform operation
fmul.s f22, f13, f14, rtz # perform operation
fmul.s f22, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fmul.s f18, f19, f13, dyn # perform operation
fmul.s f18, f19, f13, rdn # perform operation
fmul.s f18, f19, f13, rmm # perform operation
fmul.s f18, f19, f13, rne # perform operation
fmul.s f18, f19, f13, rtz # perform operation
fmul.s f18, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fmul.s f25, f23, f1, dyn # perform operation
fmul.s f25, f23, f1, rdn # perform operation
fmul.s f25, f23, f1, rmm # perform operation
fmul.s f25, f23, f1, rne # perform operation
fmul.s f25, f23, f1, rtz # perform operation
fmul.s f25, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fmul.s f8, f1, f18, dyn # perform operation
fmul.s f8, f1, f18, rdn # perform operation
fmul.s f8, f1, f18, rmm # perform operation
fmul.s f8, f1, f18, rne # perform operation
fmul.s f8, f1, f18, rtz # perform operation
fmul.s f8, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmul.s f13, f26, f12, dyn # perform operation
fmul.s f13, f26, f12, rdn # perform operation
fmul.s f13, f26, f12, rmm # perform operation
fmul.s f13, f26, f12, rne # perform operation
fmul.s f13, f26, f12, rtz # perform operation
fmul.s f13, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fmul.s f30, f6, f29, dyn # perform operation
fmul.s f30, f6, f29, rdn # perform operation
fmul.s f30, f6, f29, rmm # perform operation
fmul.s f30, f6, f29, rne # perform operation
fmul.s f30, f6, f29, rtz # perform operation
fmul.s f30, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmul.s f11, f23, f3, dyn # perform operation
fmul.s f11, f23, f3, rdn # perform operation
fmul.s f11, f23, f3, rmm # perform operation
fmul.s f11, f23, f3, rne # perform operation
fmul.s f11, f23, f3, rtz # perform operation
fmul.s f11, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fmul.s f5, f6, f16, dyn # perform operation
fmul.s f5, f6, f16, rdn # perform operation
fmul.s f5, f6, f16, rmm # perform operation
fmul.s f5, f6, f16, rne # perform operation
fmul.s f5, f6, f16, rtz # perform operation
fmul.s f5, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fmul.s f27, f26, f30, dyn # perform operation
fmul.s f27, f26, f30, rdn # perform operation
fmul.s f27, f26, f30, rmm # perform operation
fmul.s f27, f26, f30, rne # perform operation
fmul.s f27, f26, f30, rtz # perform operation
fmul.s f27, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fmul.s f3, f2, f29, dyn # perform operation
fmul.s f3, f2, f29, rdn # perform operation
fmul.s f3, f2, f29, rmm # perform operation
fmul.s f3, f2, f29, rne # perform operation
fmul.s f3, f2, f29, rtz # perform operation
fmul.s f3, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fmul.s f24, f1, f17, dyn # perform operation
fmul.s f24, f1, f17, rdn # perform operation
fmul.s f24, f1, f17, rmm # perform operation
fmul.s f24, f1, f17, rne # perform operation
fmul.s f24, f1, f17, rtz # perform operation
fmul.s f24, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fmul.s f14, f25, f24, dyn # perform operation
fmul.s f14, f25, f24, rdn # perform operation
fmul.s f14, f25, f24, rmm # perform operation
fmul.s f14, f25, f24, rne # perform operation
fmul.s f14, f25, f24, rtz # perform operation
fmul.s f14, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fmul.s f31, f25, f5, dyn # perform operation
fmul.s f31, f25, f5, rdn # perform operation
fmul.s f31, f25, f5, rmm # perform operation
fmul.s f31, f25, f5, rne # perform operation
fmul.s f31, f25, f5, rtz # perform operation
fmul.s f31, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fmul.s f7, f11, f28, dyn # perform operation
fmul.s f7, f11, f28, rdn # perform operation
fmul.s f7, f11, f28, rmm # perform operation
fmul.s f7, f11, f28, rne # perform operation
fmul.s f7, f11, f28, rtz # perform operation
fmul.s f7, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmul.s f7, f8, f23, dyn # perform operation
fmul.s f7, f8, f23, rdn # perform operation
fmul.s f7, f8, f23, rmm # perform operation
fmul.s f7, f8, f23, rne # perform operation
fmul.s f7, f8, f23, rtz # perform operation
fmul.s f7, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fmul.s f31, f13, f7, dyn # perform operation
fmul.s f31, f13, f7, rdn # perform operation
fmul.s f31, f13, f7, rmm # perform operation
fmul.s f31, f13, f7, rne # perform operation
fmul.s f31, f13, f7, rtz # perform operation
fmul.s f31, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fmul.s f11, f20, f31, dyn # perform operation
fmul.s f11, f20, f31, rdn # perform operation
fmul.s f11, f20, f31, rmm # perform operation
fmul.s f11, f20, f31, rne # perform operation
fmul.s f11, f20, f31, rtz # perform operation
fmul.s f11, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fmul.s f7, f6, f17, dyn # perform operation
fmul.s f7, f6, f17, rdn # perform operation
fmul.s f7, f6, f17, rmm # perform operation
fmul.s f7, f6, f17, rne # perform operation
fmul.s f7, f6, f17, rtz # perform operation
fmul.s f7, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fmul.s f17, f6, f10, dyn # perform operation
fmul.s f17, f6, f10, rdn # perform operation
fmul.s f17, f6, f10, rmm # perform operation
fmul.s f17, f6, f10, rne # perform operation
fmul.s f17, f6, f10, rtz # perform operation
fmul.s f17, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmul.s f8, f20, f15, dyn # perform operation
fmul.s f8, f20, f15, rdn # perform operation
fmul.s f8, f20, f15, rmm # perform operation
fmul.s f8, f20, f15, rne # perform operation
fmul.s f8, f20, f15, rtz # perform operation
fmul.s f8, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fmul.s f8, f31, f22, dyn # perform operation
fmul.s f8, f31, f22, rdn # perform operation
fmul.s f8, f31, f22, rmm # perform operation
fmul.s f8, f31, f22, rne # perform operation
fmul.s f8, f31, f22, rtz # perform operation
fmul.s f8, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmul.s f10, f16, f17, dyn # perform operation
fmul.s f10, f16, f17, rdn # perform operation
fmul.s f10, f16, f17, rmm # perform operation
fmul.s f10, f16, f17, rne # perform operation
fmul.s f10, f16, f17, rtz # perform operation
fmul.s f10, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fmul.s f20, f16, f9, dyn # perform operation
fmul.s f20, f16, f9, rdn # perform operation
fmul.s f20, f16, f9, rmm # perform operation
fmul.s f20, f16, f9, rne # perform operation
fmul.s f20, f16, f9, rtz # perform operation
fmul.s f20, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fmul.s f15, f28, f16, dyn # perform operation
fmul.s f15, f28, f16, rdn # perform operation
fmul.s f15, f28, f16, rmm # perform operation
fmul.s f15, f28, f16, rne # perform operation
fmul.s f15, f28, f16, rtz # perform operation
fmul.s f15, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fmul.s f18, f17, f16, dyn # perform operation
fmul.s f18, f17, f16, rdn # perform operation
fmul.s f18, f17, f16, rmm # perform operation
fmul.s f18, f17, f16, rne # perform operation
fmul.s f18, f17, f16, rtz # perform operation
fmul.s f18, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmul.s f16, f3, f10, dyn # perform operation
fmul.s f16, f3, f10, rdn # perform operation
fmul.s f16, f3, f10, rmm # perform operation
fmul.s f16, f3, f10, rne # perform operation
fmul.s f16, f3, f10, rtz # perform operation
fmul.s f16, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fmul.s f3, f2, f9, dyn # perform operation
fmul.s f3, f2, f9, rdn # perform operation
fmul.s f3, f2, f9, rmm # perform operation
fmul.s f3, f2, f9, rne # perform operation
fmul.s f3, f2, f9, rtz # perform operation
fmul.s f3, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fmul.s f29, f15, f22, dyn # perform operation
fmul.s f29, f15, f22, rdn # perform operation
fmul.s f29, f15, f22, rmm # perform operation
fmul.s f29, f15, f22, rne # perform operation
fmul.s f29, f15, f22, rtz # perform operation
fmul.s f29, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
fmul.s f6, f22, f15, dyn # perform operation
fmul.s f6, f22, f15, rdn # perform operation
fmul.s f6, f22, f15, rmm # perform operation
fmul.s f6, f22, f15, rne # perform operation
fmul.s f6, f22, f15, rtz # perform operation
fmul.s f6, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmul.s f31, f11, f30, dyn # perform operation
fmul.s f31, f11, f30, rdn # perform operation
fmul.s f31, f11, f30, rmm # perform operation
fmul.s f31, f11, f30, rne # perform operation
fmul.s f31, f11, f30, rtz # perform operation
fmul.s f31, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fmul.s f26, f7, f28, dyn # perform operation
fmul.s f26, f7, f28, rdn # perform operation
fmul.s f26, f7, f28, rmm # perform operation
fmul.s f26, f7, f28, rne # perform operation
fmul.s f26, f7, f28, rtz # perform operation
fmul.s f26, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
fmul.s f1, f10, f6, dyn # perform operation
fmul.s f1, f10, f6, rdn # perform operation
fmul.s f1, f10, f6, rmm # perform operation
fmul.s f1, f10, f6, rne # perform operation
fmul.s f1, f10, f6, rtz # perform operation
fmul.s f1, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmul.s f30, f14, f1, dyn # perform operation
fmul.s f30, f14, f1, rdn # perform operation
fmul.s f30, f14, f1, rmm # perform operation
fmul.s f30, f14, f1, rne # perform operation
fmul.s f30, f14, f1, rtz # perform operation
fmul.s f30, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fmul.s f11, f30, f28, dyn # perform operation
fmul.s f11, f30, f28, rdn # perform operation
fmul.s f11, f30, f28, rmm # perform operation
fmul.s f11, f30, f28, rne # perform operation
fmul.s f11, f30, f28, rtz # perform operation
fmul.s f11, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fmul.s f7, f22, f27, dyn # perform operation
fmul.s f7, f22, f27, rdn # perform operation
fmul.s f7, f22, f27, rmm # perform operation
fmul.s f7, f22, f27, rne # perform operation
fmul.s f7, f22, f27, rtz # perform operation
fmul.s f7, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fmul.s f15, f8, f22, dyn # perform operation
fmul.s f15, f8, f22, rdn # perform operation
fmul.s f15, f8, f22, rmm # perform operation
fmul.s f15, f8, f22, rne # perform operation
fmul.s f15, f8, f22, rtz # perform operation
fmul.s f15, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fmul.s f21, f9, f31, dyn # perform operation
fmul.s f21, f9, f31, rdn # perform operation
fmul.s f21, f9, f31, rmm # perform operation
fmul.s f21, f9, f31, rne # perform operation
fmul.s f21, f9, f31, rtz # perform operation
fmul.s f21, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fmul.s f25, f13, f31, dyn # perform operation
fmul.s f25, f13, f31, rdn # perform operation
fmul.s f25, f13, f31, rmm # perform operation
fmul.s f25, f13, f31, rne # perform operation
fmul.s f25, f13, f31, rtz # perform operation
fmul.s f25, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fmul.s f20, f15, f30, dyn # perform operation
fmul.s f20, f15, f30, rdn # perform operation
fmul.s f20, f15, f30, rmm # perform operation
fmul.s f20, f15, f30, rne # perform operation
fmul.s f20, f15, f30, rtz # perform operation
fmul.s f20, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fmul.s f26, f16, f7, dyn # perform operation
fmul.s f26, f16, f7, rdn # perform operation
fmul.s f26, f16, f7, rmm # perform operation
fmul.s f26, f16, f7, rne # perform operation
fmul.s f26, f16, f7, rtz # perform operation
fmul.s f26, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fmul.s f6, f10, f11, dyn # perform operation
fmul.s f6, f10, f11, rdn # perform operation
fmul.s f6, f10, f11, rmm # perform operation
fmul.s f6, f10, f11, rne # perform operation
fmul.s f6, f10, f11, rtz # perform operation
fmul.s f6, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fmul.s f6, f13, f12, dyn # perform operation
fmul.s f6, f13, f12, rdn # perform operation
fmul.s f6, f13, f12, rmm # perform operation
fmul.s f6, f13, f12, rne # perform operation
fmul.s f6, f13, f12, rtz # perform operation
fmul.s f6, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fmul.s f13, f9, f29, dyn # perform operation
fmul.s f13, f9, f29, rdn # perform operation
fmul.s f13, f9, f29, rmm # perform operation
fmul.s f13, f9, f29, rne # perform operation
fmul.s f13, f9, f29, rtz # perform operation
fmul.s f13, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fmul.s f10, f20, f13, dyn # perform operation
fmul.s f10, f20, f13, rdn # perform operation
fmul.s f10, f20, f13, rmm # perform operation
fmul.s f10, f20, f13, rne # perform operation
fmul.s f10, f20, f13, rtz # perform operation
fmul.s f10, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fmul.s f22, f7, f5, dyn # perform operation
fmul.s f22, f7, f5, rdn # perform operation
fmul.s f22, f7, f5, rmm # perform operation
fmul.s f22, f7, f5, rne # perform operation
fmul.s f22, f7, f5, rtz # perform operation
fmul.s f22, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fmul.s f22, f29, f25, dyn # perform operation
fmul.s f22, f29, f25, rdn # perform operation
fmul.s f22, f29, f25, rmm # perform operation
fmul.s f22, f29, f25, rne # perform operation
fmul.s f22, f29, f25, rtz # perform operation
fmul.s f22, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fmul.s f2, f22, f19, dyn # perform operation
fmul.s f2, f22, f19, rdn # perform operation
fmul.s f2, f22, f19, rmm # perform operation
fmul.s f2, f22, f19, rne # perform operation
fmul.s f2, f22, f19, rtz # perform operation
fmul.s f2, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fmul.s f16, f8, f7, dyn # perform operation
fmul.s f16, f8, f7, rdn # perform operation
fmul.s f16, f8, f7, rmm # perform operation
fmul.s f16, f8, f7, rne # perform operation
fmul.s f16, f8, f7, rtz # perform operation
fmul.s f16, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f27, f16, f20, dyn # perform operation
fmul.s f27, f16, f20, rdn # perform operation
fmul.s f27, f16, f20, rmm # perform operation
fmul.s f27, f16, f20, rne # perform operation
fmul.s f27, f16, f20, rtz # perform operation
fmul.s f27, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fmul.s f23, f25, f26, dyn # perform operation
fmul.s f23, f25, f26, rdn # perform operation
fmul.s f23, f25, f26, rmm # perform operation
fmul.s f23, f25, f26, rne # perform operation
fmul.s f23, f25, f26, rtz # perform operation
fmul.s f23, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fmul.s f29, f16, f14, dyn # perform operation
fmul.s f29, f16, f14, rdn # perform operation
fmul.s f29, f16, f14, rmm # perform operation
fmul.s f29, f16, f14, rne # perform operation
fmul.s f29, f16, f14, rtz # perform operation
fmul.s f29, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f26, f21, f8, dyn # perform operation
fmul.s f26, f21, f8, rdn # perform operation
fmul.s f26, f21, f8, rmm # perform operation
fmul.s f26, f21, f8, rne # perform operation
fmul.s f26, f21, f8, rtz # perform operation
fmul.s f26, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fmul.s f18, f14, f26, dyn # perform operation
fmul.s f18, f14, f26, rdn # perform operation
fmul.s f18, f14, f26, rmm # perform operation
fmul.s f18, f14, f26, rne # perform operation
fmul.s f18, f14, f26, rtz # perform operation
fmul.s f18, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fmul.s f28, f18, f31, dyn # perform operation
fmul.s f28, f18, f31, rdn # perform operation
fmul.s f28, f18, f31, rmm # perform operation
fmul.s f28, f18, f31, rne # perform operation
fmul.s f28, f18, f31, rtz # perform operation
fmul.s f28, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fmul.s f8, f30, f7, dyn # perform operation
fmul.s f8, f30, f7, rdn # perform operation
fmul.s f8, f30, f7, rmm # perform operation
fmul.s f8, f30, f7, rne # perform operation
fmul.s f8, f30, f7, rtz # perform operation
fmul.s f8, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fmul.s f31, f3, f11, dyn # perform operation
fmul.s f31, f3, f11, rdn # perform operation
fmul.s f31, f3, f11, rmm # perform operation
fmul.s f31, f3, f11, rne # perform operation
fmul.s f31, f3, f11, rtz # perform operation
fmul.s f31, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fmul.s f19, f25, f9, dyn # perform operation
fmul.s f19, f25, f9, rdn # perform operation
fmul.s f19, f25, f9, rmm # perform operation
fmul.s f19, f25, f9, rne # perform operation
fmul.s f19, f25, f9, rtz # perform operation
fmul.s f19, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fmul.s f3, f18, f8, dyn # perform operation
fmul.s f3, f18, f8, rdn # perform operation
fmul.s f3, f18, f8, rmm # perform operation
fmul.s f3, f18, f8, rne # perform operation
fmul.s f3, f18, f8, rtz # perform operation
fmul.s f3, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fmul.s f18, f6, f15, dyn # perform operation
fmul.s f18, f6, f15, rdn # perform operation
fmul.s f18, f6, f15, rmm # perform operation
fmul.s f18, f6, f15, rne # perform operation
fmul.s f18, f6, f15, rtz # perform operation
fmul.s f18, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fmul.s f26, f8, f19, dyn # perform operation
fmul.s f26, f8, f19, rdn # perform operation
fmul.s f26, f8, f19, rmm # perform operation
fmul.s f26, f8, f19, rne # perform operation
fmul.s f26, f8, f19, rtz # perform operation
fmul.s f26, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fmul.s f2, f31, f13, dyn # perform operation
fmul.s f2, f31, f13, rdn # perform operation
fmul.s f2, f31, f13, rmm # perform operation
fmul.s f2, f31, f13, rne # perform operation
fmul.s f2, f31, f13, rtz # perform operation
fmul.s f2, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fmul.s f5, f14, f29, dyn # perform operation
fmul.s f5, f14, f29, rdn # perform operation
fmul.s f5, f14, f29, rmm # perform operation
fmul.s f5, f14, f29, rne # perform operation
fmul.s f5, f14, f29, rtz # perform operation
fmul.s f5, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fmul.s f3, f13, f27, dyn # perform operation
fmul.s f3, f13, f27, rdn # perform operation
fmul.s f3, f13, f27, rmm # perform operation
fmul.s f3, f13, f27, rne # perform operation
fmul.s f3, f13, f27, rtz # perform operation
fmul.s f3, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmul.s f27, f9, f26, dyn # perform operation
fmul.s f27, f9, f26, rdn # perform operation
fmul.s f27, f9, f26, rmm # perform operation
fmul.s f27, f9, f26, rne # perform operation
fmul.s f27, f9, f26, rtz # perform operation
fmul.s f27, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fmul.s f17, f16, f5, dyn # perform operation
fmul.s f17, f16, f5, rdn # perform operation
fmul.s f17, f16, f5, rmm # perform operation
fmul.s f17, f16, f5, rne # perform operation
fmul.s f17, f16, f5, rtz # perform operation
fmul.s f17, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fmul.s f15, f22, f25, dyn # perform operation
fmul.s f15, f22, f25, rdn # perform operation
fmul.s f15, f22, f25, rmm # perform operation
fmul.s f15, f22, f25, rne # perform operation
fmul.s f15, f22, f25, rtz # perform operation
fmul.s f15, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f22, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fmul.s f19, f18, f27, dyn # perform operation
fmul.s f19, f18, f27, rdn # perform operation
fmul.s f19, f18, f27, rmm # perform operation
fmul.s f19, f18, f27, rne # perform operation
fmul.s f19, f18, f27, rtz # perform operation
fmul.s f19, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fmul.s f22, f5, f13, dyn # perform operation
fmul.s f22, f5, f13, rdn # perform operation
fmul.s f22, f5, f13, rmm # perform operation
fmul.s f22, f5, f13, rne # perform operation
fmul.s f22, f5, f13, rtz # perform operation
fmul.s f22, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fmul.s f27, f18, f13, dyn # perform operation
fmul.s f27, f18, f13, rdn # perform operation
fmul.s f27, f18, f13, rmm # perform operation
fmul.s f27, f18, f13, rne # perform operation
fmul.s f27, f18, f13, rtz # perform operation
fmul.s f27, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f18, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fmul.s f13, f11, f30, dyn # perform operation
fmul.s f13, f11, f30, rdn # perform operation
fmul.s f13, f11, f30, rmm # perform operation
fmul.s f13, f11, f30, rne # perform operation
fmul.s f13, f11, f30, rtz # perform operation
fmul.s f13, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fmul.s f7, f28, f6, dyn # perform operation
fmul.s f7, f28, f6, rdn # perform operation
fmul.s f7, f28, f6, rmm # perform operation
fmul.s f7, f28, f6, rne # perform operation
fmul.s f7, f28, f6, rtz # perform operation
fmul.s f7, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fmul.s f22, f20, f1, dyn # perform operation
fmul.s f22, f20, f1, rdn # perform operation
fmul.s f22, f20, f1, rmm # perform operation
fmul.s f22, f20, f1, rne # perform operation
fmul.s f22, f20, f1, rtz # perform operation
fmul.s f22, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fmul.s f15, f16, f1, dyn # perform operation
fmul.s f15, f16, f1, rdn # perform operation
fmul.s f15, f16, f1, rmm # perform operation
fmul.s f15, f16, f1, rne # perform operation
fmul.s f15, f16, f1, rtz # perform operation
fmul.s f15, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmul.s f26, f7, f20, dyn # perform operation
fmul.s f26, f7, f20, rdn # perform operation
fmul.s f26, f7, f20, rmm # perform operation
fmul.s f26, f7, f20, rne # perform operation
fmul.s f26, f7, f20, rtz # perform operation
fmul.s f26, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fmul.s f13, f29, f24, dyn # perform operation
fmul.s f13, f29, f24, rdn # perform operation
fmul.s f13, f29, f24, rmm # perform operation
fmul.s f13, f29, f24, rne # perform operation
fmul.s f13, f29, f24, rtz # perform operation
fmul.s f13, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fmul.s f7, f23, f28, dyn # perform operation
fmul.s f7, f23, f28, rdn # perform operation
fmul.s f7, f23, f28, rmm # perform operation
fmul.s f7, f23, f28, rne # perform operation
fmul.s f7, f23, f28, rtz # perform operation
fmul.s f7, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fmul.s f25, f3, f14, dyn # perform operation
fmul.s f25, f3, f14, rdn # perform operation
fmul.s f25, f3, f14, rmm # perform operation
fmul.s f25, f3, f14, rne # perform operation
fmul.s f25, f3, f14, rtz # perform operation
fmul.s f25, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fmul.s f28, f31, f20, dyn # perform operation
fmul.s f28, f31, f20, rdn # perform operation
fmul.s f28, f31, f20, rmm # perform operation
fmul.s f28, f31, f20, rne # perform operation
fmul.s f28, f31, f20, rtz # perform operation
fmul.s f28, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fmul.s f2, f6, f5, dyn # perform operation
fmul.s f2, f6, f5, rdn # perform operation
fmul.s f2, f6, f5, rmm # perform operation
fmul.s f2, f6, f5, rne # perform operation
fmul.s f2, f6, f5, rtz # perform operation
fmul.s f2, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f3, f2, f8, dyn # perform operation
fmul.s f3, f2, f8, rdn # perform operation
fmul.s f3, f2, f8, rmm # perform operation
fmul.s f3, f2, f8, rne # perform operation
fmul.s f3, f2, f8, rtz # perform operation
fmul.s f3, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fmul.s f16, f28, f18, dyn # perform operation
fmul.s f16, f28, f18, rdn # perform operation
fmul.s f16, f28, f18, rmm # perform operation
fmul.s f16, f28, f18, rne # perform operation
fmul.s f16, f28, f18, rtz # perform operation
fmul.s f16, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fmul.s f8, f6, f21, dyn # perform operation
fmul.s f8, f6, f21, rdn # perform operation
fmul.s f8, f6, f21, rmm # perform operation
fmul.s f8, f6, f21, rne # perform operation
fmul.s f8, f6, f21, rtz # perform operation
fmul.s f8, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fmul.s f9, f17, f5, dyn # perform operation
fmul.s f9, f17, f5, rdn # perform operation
fmul.s f9, f17, f5, rmm # perform operation
fmul.s f9, f17, f5, rne # perform operation
fmul.s f9, f17, f5, rtz # perform operation
fmul.s f9, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fmul.s f12, f21, f23, dyn # perform operation
fmul.s f12, f21, f23, rdn # perform operation
fmul.s f12, f21, f23, rmm # perform operation
fmul.s f12, f21, f23, rne # perform operation
fmul.s f12, f21, f23, rtz # perform operation
fmul.s f12, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fmul.s f11, f2, f22, dyn # perform operation
fmul.s f11, f2, f22, rdn # perform operation
fmul.s f11, f2, f22, rmm # perform operation
fmul.s f11, f2, f22, rne # perform operation
fmul.s f11, f2, f22, rtz # perform operation
fmul.s f11, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fmul.s f29, f18, f25, dyn # perform operation
fmul.s f29, f18, f25, rdn # perform operation
fmul.s f29, f18, f25, rmm # perform operation
fmul.s f29, f18, f25, rne # perform operation
fmul.s f29, f18, f25, rtz # perform operation
fmul.s f29, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fmul.s f13, f2, f18, dyn # perform operation
fmul.s f13, f2, f18, rdn # perform operation
fmul.s f13, f2, f18, rmm # perform operation
fmul.s f13, f2, f18, rne # perform operation
fmul.s f13, f2, f18, rtz # perform operation
fmul.s f13, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fmul.s f15, f5, f3, dyn # perform operation
fmul.s f15, f5, f3, rdn # perform operation
fmul.s f15, f5, f3, rmm # perform operation
fmul.s f15, f5, f3, rne # perform operation
fmul.s f15, f5, f3, rtz # perform operation
fmul.s f15, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmul.s f28, f18, f16, dyn # perform operation
fmul.s f28, f18, f16, rdn # perform operation
fmul.s f28, f18, f16, rmm # perform operation
fmul.s f28, f18, f16, rne # perform operation
fmul.s f28, f18, f16, rtz # perform operation
fmul.s f28, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fmul.s f18, f8, f11, dyn # perform operation
fmul.s f18, f8, f11, rdn # perform operation
fmul.s f18, f8, f11, rmm # perform operation
fmul.s f18, f8, f11, rne # perform operation
fmul.s f18, f8, f11, rtz # perform operation
fmul.s f18, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmul.s f10, f21, f18, dyn # perform operation
fmul.s f10, f21, f18, rdn # perform operation
fmul.s f10, f21, f18, rmm # perform operation
fmul.s f10, f21, f18, rne # perform operation
fmul.s f10, f21, f18, rtz # perform operation
fmul.s f10, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f10, f17, f2, dyn # perform operation
fmul.s f10, f17, f2, rdn # perform operation
fmul.s f10, f17, f2, rmm # perform operation
fmul.s f10, f17, f2, rne # perform operation
fmul.s f10, f17, f2, rtz # perform operation
fmul.s f10, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmul.s f30, f11, f10, dyn # perform operation
fmul.s f30, f11, f10, rdn # perform operation
fmul.s f30, f11, f10, rmm # perform operation
fmul.s f30, f11, f10, rne # perform operation
fmul.s f30, f11, f10, rtz # perform operation
fmul.s f30, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fmul.s f25, f12, f17, dyn # perform operation
fmul.s f25, f12, f17, rdn # perform operation
fmul.s f25, f12, f17, rmm # perform operation
fmul.s f25, f12, f17, rne # perform operation
fmul.s f25, f12, f17, rtz # perform operation
fmul.s f25, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fmul.s f13, f29, f31, dyn # perform operation
fmul.s f13, f29, f31, rdn # perform operation
fmul.s f13, f29, f31, rmm # perform operation
fmul.s f13, f29, f31, rne # perform operation
fmul.s f13, f29, f31, rtz # perform operation
fmul.s f13, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fmul.s f24, f6, f12, dyn # perform operation
fmul.s f24, f6, f12, rdn # perform operation
fmul.s f24, f6, f12, rmm # perform operation
fmul.s f24, f6, f12, rne # perform operation
fmul.s f24, f6, f12, rtz # perform operation
fmul.s f24, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fmul.s f23, f29, f17, dyn # perform operation
fmul.s f23, f29, f17, rdn # perform operation
fmul.s f23, f29, f17, rmm # perform operation
fmul.s f23, f29, f17, rne # perform operation
fmul.s f23, f29, f17, rtz # perform operation
fmul.s f23, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fmul.s f28, f3, f21, dyn # perform operation
fmul.s f28, f3, f21, rdn # perform operation
fmul.s f28, f3, f21, rmm # perform operation
fmul.s f28, f3, f21, rne # perform operation
fmul.s f28, f3, f21, rtz # perform operation
fmul.s f28, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fmul.s f2, f21, f26, dyn # perform operation
fmul.s f2, f21, f26, rdn # perform operation
fmul.s f2, f21, f26, rmm # perform operation
fmul.s f2, f21, f26, rne # perform operation
fmul.s f2, f21, f26, rtz # perform operation
fmul.s f2, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fmul.s f17, f13, f18, dyn # perform operation
fmul.s f17, f13, f18, rdn # perform operation
fmul.s f17, f13, f18, rmm # perform operation
fmul.s f17, f13, f18, rne # perform operation
fmul.s f17, f13, f18, rtz # perform operation
fmul.s f17, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fmul.s f21, f28, f17, dyn # perform operation
fmul.s f21, f28, f17, rdn # perform operation
fmul.s f21, f28, f17, rmm # perform operation
fmul.s f21, f28, f17, rne # perform operation
fmul.s f21, f28, f17, rtz # perform operation
fmul.s f21, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fmul.s f27, f25, f16, dyn # perform operation
fmul.s f27, f25, f16, rdn # perform operation
fmul.s f27, f25, f16, rmm # perform operation
fmul.s f27, f25, f16, rne # perform operation
fmul.s f27, f25, f16, rtz # perform operation
fmul.s f27, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fmul.s f22, f10, f17, dyn # perform operation
fmul.s f22, f10, f17, rdn # perform operation
fmul.s f22, f10, f17, rmm # perform operation
fmul.s f22, f10, f17, rne # perform operation
fmul.s f22, f10, f17, rtz # perform operation
fmul.s f22, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmul.s f3, f7, f6, dyn # perform operation
fmul.s f3, f7, f6, rdn # perform operation
fmul.s f3, f7, f6, rmm # perform operation
fmul.s f3, f7, f6, rne # perform operation
fmul.s f3, f7, f6, rtz # perform operation
fmul.s f3, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fmul.s f18, f7, f29, dyn # perform operation
fmul.s f18, f7, f29, rdn # perform operation
fmul.s f18, f7, f29, rmm # perform operation
fmul.s f18, f7, f29, rne # perform operation
fmul.s f18, f7, f29, rtz # perform operation
fmul.s f18, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fmul.s f20, f21, f3, dyn # perform operation
fmul.s f20, f21, f3, rdn # perform operation
fmul.s f20, f21, f3, rmm # perform operation
fmul.s f20, f21, f3, rne # perform operation
fmul.s f20, f21, f3, rtz # perform operation
fmul.s f20, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fmul.s f15, f17, f29, dyn # perform operation
fmul.s f15, f17, f29, rdn # perform operation
fmul.s f15, f17, f29, rmm # perform operation
fmul.s f15, f17, f29, rne # perform operation
fmul.s f15, f17, f29, rtz # perform operation
fmul.s f15, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fmul.s f5, f22, f30, dyn # perform operation
fmul.s f5, f22, f30, rdn # perform operation
fmul.s f5, f22, f30, rmm # perform operation
fmul.s f5, f22, f30, rne # perform operation
fmul.s f5, f22, f30, rtz # perform operation
fmul.s f5, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fmul.s f30, f31, f13, dyn # perform operation
fmul.s f30, f31, f13, rdn # perform operation
fmul.s f30, f31, f13, rmm # perform operation
fmul.s f30, f31, f13, rne # perform operation
fmul.s f30, f31, f13, rtz # perform operation
fmul.s f30, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fmul.s f12, f16, f28, dyn # perform operation
fmul.s f12, f16, f28, rdn # perform operation
fmul.s f12, f16, f28, rmm # perform operation
fmul.s f12, f16, f28, rne # perform operation
fmul.s f12, f16, f28, rtz # perform operation
fmul.s f12, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fmul.s f17, f20, f19, dyn # perform operation
fmul.s f17, f20, f19, rdn # perform operation
fmul.s f17, f20, f19, rmm # perform operation
fmul.s f17, f20, f19, rne # perform operation
fmul.s f17, f20, f19, rtz # perform operation
fmul.s f17, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fmul.s f1, f24, f12, dyn # perform operation
fmul.s f1, f24, f12, rdn # perform operation
fmul.s f1, f24, f12, rmm # perform operation
fmul.s f1, f24, f12, rne # perform operation
fmul.s f1, f24, f12, rtz # perform operation
fmul.s f1, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fmul.s f12, f20, f24, dyn # perform operation
fmul.s f12, f20, f24, rdn # perform operation
fmul.s f12, f20, f24, rmm # perform operation
fmul.s f12, f20, f24, rne # perform operation
fmul.s f12, f20, f24, rtz # perform operation
fmul.s f12, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fmul.s f20, f18, f16, dyn # perform operation
fmul.s f20, f18, f16, rdn # perform operation
fmul.s f20, f18, f16, rmm # perform operation
fmul.s f20, f18, f16, rne # perform operation
fmul.s f20, f18, f16, rtz # perform operation
fmul.s f20, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fmul.s f20, f23, f31, dyn # perform operation
fmul.s f20, f23, f31, rdn # perform operation
fmul.s f20, f23, f31, rmm # perform operation
fmul.s f20, f23, f31, rne # perform operation
fmul.s f20, f23, f31, rtz # perform operation
fmul.s f20, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fmul.s f15, f5, f30, dyn # perform operation
fmul.s f15, f5, f30, rdn # perform operation
fmul.s f15, f5, f30, rmm # perform operation
fmul.s f15, f5, f30, rne # perform operation
fmul.s f15, f5, f30, rtz # perform operation
fmul.s f15, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fmul.s f3, f25, f17, dyn # perform operation
fmul.s f3, f25, f17, rdn # perform operation
fmul.s f3, f25, f17, rmm # perform operation
fmul.s f3, f25, f17, rne # perform operation
fmul.s f3, f25, f17, rtz # perform operation
fmul.s f3, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fmul.s f21, f9, f7, dyn # perform operation
fmul.s f21, f9, f7, rdn # perform operation
fmul.s f21, f9, f7, rmm # perform operation
fmul.s f21, f9, f7, rne # perform operation
fmul.s f21, f9, f7, rtz # perform operation
fmul.s f21, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fmul.s f22, f20, f8, dyn # perform operation
fmul.s f22, f20, f8, rdn # perform operation
fmul.s f22, f20, f8, rmm # perform operation
fmul.s f22, f20, f8, rne # perform operation
fmul.s f22, f20, f8, rtz # perform operation
fmul.s f22, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f20, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fmul.s f8, f13, f5, dyn # perform operation
fmul.s f8, f13, f5, rdn # perform operation
fmul.s f8, f13, f5, rmm # perform operation
fmul.s f8, f13, f5, rne # perform operation
fmul.s f8, f13, f5, rtz # perform operation
fmul.s f8, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fmul.s f25, f14, f26, dyn # perform operation
fmul.s f25, f14, f26, rdn # perform operation
fmul.s f25, f14, f26, rmm # perform operation
fmul.s f25, f14, f26, rne # perform operation
fmul.s f25, f14, f26, rtz # perform operation
fmul.s f25, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fmul.s f30, f27, f25, dyn # perform operation
fmul.s f30, f27, f25, rdn # perform operation
fmul.s f30, f27, f25, rmm # perform operation
fmul.s f30, f27, f25, rne # perform operation
fmul.s f30, f27, f25, rtz # perform operation
fmul.s f30, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fmul.s f27, f16, f21, dyn # perform operation
fmul.s f27, f16, f21, rdn # perform operation
fmul.s f27, f16, f21, rmm # perform operation
fmul.s f27, f16, f21, rne # perform operation
fmul.s f27, f16, f21, rtz # perform operation
fmul.s f27, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f2, f26, f20, dyn # perform operation
fmul.s f2, f26, f20, rdn # perform operation
fmul.s f2, f26, f20, rmm # perform operation
fmul.s f2, f26, f20, rne # perform operation
fmul.s f2, f26, f20, rtz # perform operation
fmul.s f2, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fmul.s f24, f7, f9, dyn # perform operation
fmul.s f24, f7, f9, rdn # perform operation
fmul.s f24, f7, f9, rmm # perform operation
fmul.s f24, f7, f9, rne # perform operation
fmul.s f24, f7, f9, rtz # perform operation
fmul.s f24, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fmul.s f11, f25, f13, dyn # perform operation
fmul.s f11, f25, f13, rdn # perform operation
fmul.s f11, f25, f13, rmm # perform operation
fmul.s f11, f25, f13, rne # perform operation
fmul.s f11, f25, f13, rtz # perform operation
fmul.s f11, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fmul.s f24, f16, f18, dyn # perform operation
fmul.s f24, f16, f18, rdn # perform operation
fmul.s f24, f16, f18, rmm # perform operation
fmul.s f24, f16, f18, rne # perform operation
fmul.s f24, f16, f18, rtz # perform operation
fmul.s f24, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f9, f10, f16, dyn # perform operation
fmul.s f9, f10, f16, rdn # perform operation
fmul.s f9, f10, f16, rmm # perform operation
fmul.s f9, f10, f16, rne # perform operation
fmul.s f9, f10, f16, rtz # perform operation
fmul.s f9, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fmul.s f16, f30, f26, dyn # perform operation
fmul.s f16, f30, f26, rdn # perform operation
fmul.s f16, f30, f26, rmm # perform operation
fmul.s f16, f30, f26, rne # perform operation
fmul.s f16, f30, f26, rtz # perform operation
fmul.s f16, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fmul.s f23, f30, f28, dyn # perform operation
fmul.s f23, f30, f28, rdn # perform operation
fmul.s f23, f30, f28, rmm # perform operation
fmul.s f23, f30, f28, rne # perform operation
fmul.s f23, f30, f28, rtz # perform operation
fmul.s f23, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fmul.s f5, f7, f15, dyn # perform operation
fmul.s f5, f7, f15, rdn # perform operation
fmul.s f5, f7, f15, rmm # perform operation
fmul.s f5, f7, f15, rne # perform operation
fmul.s f5, f7, f15, rtz # perform operation
fmul.s f5, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fmul.s f22, f20, f27, dyn # perform operation
fmul.s f22, f20, f27, rdn # perform operation
fmul.s f22, f20, f27, rmm # perform operation
fmul.s f22, f20, f27, rne # perform operation
fmul.s f22, f20, f27, rtz # perform operation
fmul.s f22, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fmul.s f29, f24, f11, dyn # perform operation
fmul.s f29, f24, f11, rdn # perform operation
fmul.s f29, f24, f11, rmm # perform operation
fmul.s f29, f24, f11, rne # perform operation
fmul.s f29, f24, f11, rtz # perform operation
fmul.s f29, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fmul.s f20, f24, f16, dyn # perform operation
fmul.s f20, f24, f16, rdn # perform operation
fmul.s f20, f24, f16, rmm # perform operation
fmul.s f20, f24, f16, rne # perform operation
fmul.s f20, f24, f16, rtz # perform operation
fmul.s f20, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fmul.s f17, f5, f28, dyn # perform operation
fmul.s f17, f5, f28, rdn # perform operation
fmul.s f17, f5, f28, rmm # perform operation
fmul.s f17, f5, f28, rne # perform operation
fmul.s f17, f5, f28, rtz # perform operation
fmul.s f17, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fmul.s f27, f17, f16, dyn # perform operation
fmul.s f27, f17, f16, rdn # perform operation
fmul.s f27, f17, f16, rmm # perform operation
fmul.s f27, f17, f16, rne # perform operation
fmul.s f27, f17, f16, rtz # perform operation
fmul.s f27, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fmul.s f9, f26, f23, dyn # perform operation
fmul.s f9, f26, f23, rdn # perform operation
fmul.s f9, f26, f23, rmm # perform operation
fmul.s f9, f26, f23, rne # perform operation
fmul.s f9, f26, f23, rtz # perform operation
fmul.s f9, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fmul.s f23, f6, f14, dyn # perform operation
fmul.s f23, f6, f14, rdn # perform operation
fmul.s f23, f6, f14, rmm # perform operation
fmul.s f23, f6, f14, rne # perform operation
fmul.s f23, f6, f14, rtz # perform operation
fmul.s f23, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f13, f1, f22, dyn # perform operation
fmul.s f13, f1, f22, rdn # perform operation
fmul.s f13, f1, f22, rmm # perform operation
fmul.s f13, f1, f22, rne # perform operation
fmul.s f13, f1, f22, rtz # perform operation
fmul.s f13, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmul.s f23, f30, f25, dyn # perform operation
fmul.s f23, f30, f25, rdn # perform operation
fmul.s f23, f30, f25, rmm # perform operation
fmul.s f23, f30, f25, rne # perform operation
fmul.s f23, f30, f25, rtz # perform operation
fmul.s f23, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fmul.s f19, f3, f24, dyn # perform operation
fmul.s f19, f3, f24, rdn # perform operation
fmul.s f19, f3, f24, rmm # perform operation
fmul.s f19, f3, f24, rne # perform operation
fmul.s f19, f3, f24, rtz # perform operation
fmul.s f19, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fmul.s f15, f28, f6, dyn # perform operation
fmul.s f15, f28, f6, rdn # perform operation
fmul.s f15, f28, f6, rmm # perform operation
fmul.s f15, f28, f6, rne # perform operation
fmul.s f15, f28, f6, rtz # perform operation
fmul.s f15, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fmul.s f14, f29, f16, dyn # perform operation
fmul.s f14, f29, f16, rdn # perform operation
fmul.s f14, f29, f16, rmm # perform operation
fmul.s f14, f29, f16, rne # perform operation
fmul.s f14, f29, f16, rtz # perform operation
fmul.s f14, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fmul.s f29, f10, f19, dyn # perform operation
fmul.s f29, f10, f19, rdn # perform operation
fmul.s f29, f10, f19, rmm # perform operation
fmul.s f29, f10, f19, rne # perform operation
fmul.s f29, f10, f19, rtz # perform operation
fmul.s f29, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmul.s f9, f5, f12, dyn # perform operation
fmul.s f9, f5, f12, rdn # perform operation
fmul.s f9, f5, f12, rmm # perform operation
fmul.s f9, f5, f12, rne # perform operation
fmul.s f9, f5, f12, rtz # perform operation
fmul.s f9, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmul.s f26, f16, f20, dyn # perform operation
fmul.s f26, f16, f20, rdn # perform operation
fmul.s f26, f16, f20, rmm # perform operation
fmul.s f26, f16, f20, rne # perform operation
fmul.s f26, f16, f20, rtz # perform operation
fmul.s f26, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fmul.s f5, f21, f26, dyn # perform operation
fmul.s f5, f21, f26, rdn # perform operation
fmul.s f5, f21, f26, rmm # perform operation
fmul.s f5, f21, f26, rne # perform operation
fmul.s f5, f21, f26, rtz # perform operation
fmul.s f5, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fmul.s f23, f29, f21, dyn # perform operation
fmul.s f23, f29, f21, rdn # perform operation
fmul.s f23, f29, f21, rmm # perform operation
fmul.s f23, f29, f21, rne # perform operation
fmul.s f23, f29, f21, rtz # perform operation
fmul.s f23, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fmul.s f5, f1, f18, dyn # perform operation
fmul.s f5, f1, f18, rdn # perform operation
fmul.s f5, f1, f18, rmm # perform operation
fmul.s f5, f1, f18, rne # perform operation
fmul.s f5, f1, f18, rtz # perform operation
fmul.s f5, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fmul.s f16, f2, f29, dyn # perform operation
fmul.s f16, f2, f29, rdn # perform operation
fmul.s f16, f2, f29, rmm # perform operation
fmul.s f16, f2, f29, rne # perform operation
fmul.s f16, f2, f29, rtz # perform operation
fmul.s f16, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fmul.s f24, f25, f16, dyn # perform operation
fmul.s f24, f25, f16, rdn # perform operation
fmul.s f24, f25, f16, rmm # perform operation
fmul.s f24, f25, f16, rne # perform operation
fmul.s f24, f25, f16, rtz # perform operation
fmul.s f24, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fmul.s f16, f26, f31, dyn # perform operation
fmul.s f16, f26, f31, rdn # perform operation
fmul.s f16, f26, f31, rmm # perform operation
fmul.s f16, f26, f31, rne # perform operation
fmul.s f16, f26, f31, rtz # perform operation
fmul.s f16, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fmul.s f8, f2, f12, dyn # perform operation
fmul.s f8, f2, f12, rdn # perform operation
fmul.s f8, f2, f12, rmm # perform operation
fmul.s f8, f2, f12, rne # perform operation
fmul.s f8, f2, f12, rtz # perform operation
fmul.s f8, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fmul.s f12, f13, f27, dyn # perform operation
fmul.s f12, f13, f27, rdn # perform operation
fmul.s f12, f13, f27, rmm # perform operation
fmul.s f12, f13, f27, rne # perform operation
fmul.s f12, f13, f27, rtz # perform operation
fmul.s f12, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fmul.s f24, f14, f25, dyn # perform operation
fmul.s f24, f14, f25, rdn # perform operation
fmul.s f24, f14, f25, rmm # perform operation
fmul.s f24, f14, f25, rne # perform operation
fmul.s f24, f14, f25, rtz # perform operation
fmul.s f24, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fmul.s f14, f31, f23, dyn # perform operation
fmul.s f14, f31, f23, rdn # perform operation
fmul.s f14, f31, f23, rmm # perform operation
fmul.s f14, f31, f23, rne # perform operation
fmul.s f14, f31, f23, rtz # perform operation
fmul.s f14, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fmul.s f28, f2, f5, dyn # perform operation
fmul.s f28, f2, f5, rdn # perform operation
fmul.s f28, f2, f5, rmm # perform operation
fmul.s f28, f2, f5, rne # perform operation
fmul.s f28, f2, f5, rtz # perform operation
fmul.s f28, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fmul.s f30, f9, f26, dyn # perform operation
fmul.s f30, f9, f26, rdn # perform operation
fmul.s f30, f9, f26, rmm # perform operation
fmul.s f30, f9, f26, rne # perform operation
fmul.s f30, f9, f26, rtz # perform operation
fmul.s f30, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fmul.s f18, f3, f28, dyn # perform operation
fmul.s f18, f3, f28, rdn # perform operation
fmul.s f18, f3, f28, rmm # perform operation
fmul.s f18, f3, f28, rne # perform operation
fmul.s f18, f3, f28, rtz # perform operation
fmul.s f18, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fmul.s f5, f18, f28, dyn # perform operation
fmul.s f5, f18, f28, rdn # perform operation
fmul.s f5, f18, f28, rmm # perform operation
fmul.s f5, f18, f28, rne # perform operation
fmul.s f5, f18, f28, rtz # perform operation
fmul.s f5, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fmul.s f10, f14, f21, dyn # perform operation
fmul.s f10, f14, f21, rdn # perform operation
fmul.s f10, f14, f21, rmm # perform operation
fmul.s f10, f14, f21, rne # perform operation
fmul.s f10, f14, f21, rtz # perform operation
fmul.s f10, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmul.s f11, f9, f17, dyn # perform operation
fmul.s f11, f9, f17, rdn # perform operation
fmul.s f11, f9, f17, rmm # perform operation
fmul.s f11, f9, f17, rne # perform operation
fmul.s f11, f9, f17, rtz # perform operation
fmul.s f11, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fmul.s f9, f23, f8, dyn # perform operation
fmul.s f9, f23, f8, rdn # perform operation
fmul.s f9, f23, f8, rmm # perform operation
fmul.s f9, f23, f8, rne # perform operation
fmul.s f9, f23, f8, rtz # perform operation
fmul.s f9, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fmul.s f2, f30, f17, dyn # perform operation
fmul.s f2, f30, f17, rdn # perform operation
fmul.s f2, f30, f17, rmm # perform operation
fmul.s f2, f30, f17, rne # perform operation
fmul.s f2, f30, f17, rtz # perform operation
fmul.s f2, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fmul.s f25, f28, f9, dyn # perform operation
fmul.s f25, f28, f9, rdn # perform operation
fmul.s f25, f28, f9, rmm # perform operation
fmul.s f25, f28, f9, rne # perform operation
fmul.s f25, f28, f9, rtz # perform operation
fmul.s f25, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fmul.s f6, f8, f7, dyn # perform operation
fmul.s f6, f8, f7, rdn # perform operation
fmul.s f6, f8, f7, rmm # perform operation
fmul.s f6, f8, f7, rne # perform operation
fmul.s f6, f8, f7, rtz # perform operation
fmul.s f6, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f16, f6, f22, dyn # perform operation
fmul.s f16, f6, f22, rdn # perform operation
fmul.s f16, f6, f22, rmm # perform operation
fmul.s f16, f6, f22, rne # perform operation
fmul.s f16, f6, f22, rtz # perform operation
fmul.s f16, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fmul.s f30, f16, f14, dyn # perform operation
fmul.s f30, f16, f14, rdn # perform operation
fmul.s f30, f16, f14, rmm # perform operation
fmul.s f30, f16, f14, rne # perform operation
fmul.s f30, f16, f14, rtz # perform operation
fmul.s f30, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fmul.s f23, f9, f5, dyn # perform operation
fmul.s f23, f9, f5, rdn # perform operation
fmul.s f23, f9, f5, rmm # perform operation
fmul.s f23, f9, f5, rne # perform operation
fmul.s f23, f9, f5, rtz # perform operation
fmul.s f23, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fmul.s f20, f25, f3, dyn # perform operation
fmul.s f20, f25, f3, rdn # perform operation
fmul.s f20, f25, f3, rmm # perform operation
fmul.s f20, f25, f3, rne # perform operation
fmul.s f20, f25, f3, rtz # perform operation
fmul.s f20, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fmul.s f13, f10, f19, dyn # perform operation
fmul.s f13, f10, f19, rdn # perform operation
fmul.s f13, f10, f19, rmm # perform operation
fmul.s f13, f10, f19, rne # perform operation
fmul.s f13, f10, f19, rtz # perform operation
fmul.s f13, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fmul.s f29, f9, f10, dyn # perform operation
fmul.s f29, f9, f10, rdn # perform operation
fmul.s f29, f9, f10, rmm # perform operation
fmul.s f29, f9, f10, rne # perform operation
fmul.s f29, f9, f10, rtz # perform operation
fmul.s f29, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fmul.s f19, f22, f25, dyn # perform operation
fmul.s f19, f22, f25, rdn # perform operation
fmul.s f19, f22, f25, rmm # perform operation
fmul.s f19, f22, f25, rne # perform operation
fmul.s f19, f22, f25, rtz # perform operation
fmul.s f19, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f22, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fmul.s f20, f2, f14, dyn # perform operation
fmul.s f20, f2, f14, rdn # perform operation
fmul.s f20, f2, f14, rmm # perform operation
fmul.s f20, f2, f14, rne # perform operation
fmul.s f20, f2, f14, rtz # perform operation
fmul.s f20, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmul.s f2, f30, f16, dyn # perform operation
fmul.s f2, f30, f16, rdn # perform operation
fmul.s f2, f30, f16, rmm # perform operation
fmul.s f2, f30, f16, rne # perform operation
fmul.s f2, f30, f16, rtz # perform operation
fmul.s f2, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fmul.s f25, f22, f23, dyn # perform operation
fmul.s f25, f22, f23, rdn # perform operation
fmul.s f25, f22, f23, rmm # perform operation
fmul.s f25, f22, f23, rne # perform operation
fmul.s f25, f22, f23, rtz # perform operation
fmul.s f25, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fmul.s f31, f17, f8, dyn # perform operation
fmul.s f31, f17, f8, rdn # perform operation
fmul.s f31, f17, f8, rmm # perform operation
fmul.s f31, f17, f8, rne # perform operation
fmul.s f31, f17, f8, rtz # perform operation
fmul.s f31, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fmul.s f29, f9, f12, dyn # perform operation
fmul.s f29, f9, f12, rdn # perform operation
fmul.s f29, f9, f12, rmm # perform operation
fmul.s f29, f9, f12, rne # perform operation
fmul.s f29, f9, f12, rtz # perform operation
fmul.s f29, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fmul.s f14, f5, f16, dyn # perform operation
fmul.s f14, f5, f16, rdn # perform operation
fmul.s f14, f5, f16, rmm # perform operation
fmul.s f14, f5, f16, rne # perform operation
fmul.s f14, f5, f16, rtz # perform operation
fmul.s f14, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fmul.s f29, f11, f19, dyn # perform operation
fmul.s f29, f11, f19, rdn # perform operation
fmul.s f29, f11, f19, rmm # perform operation
fmul.s f29, f11, f19, rne # perform operation
fmul.s f29, f11, f19, rtz # perform operation
fmul.s f29, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fmul.s f18, f19, f28, dyn # perform operation
fmul.s f18, f19, f28, rdn # perform operation
fmul.s f18, f19, f28, rmm # perform operation
fmul.s f18, f19, f28, rne # perform operation
fmul.s f18, f19, f28, rtz # perform operation
fmul.s f18, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fmul.s f13, f28, f19, dyn # perform operation
fmul.s f13, f28, f19, rdn # perform operation
fmul.s f13, f28, f19, rmm # perform operation
fmul.s f13, f28, f19, rne # perform operation
fmul.s f13, f28, f19, rtz # perform operation
fmul.s f13, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fmul.s f11, f10, f5, dyn # perform operation
fmul.s f11, f10, f5, rdn # perform operation
fmul.s f11, f10, f5, rmm # perform operation
fmul.s f11, f10, f5, rne # perform operation
fmul.s f11, f10, f5, rtz # perform operation
fmul.s f11, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f27, f29, f16, dyn # perform operation
fmul.s f27, f29, f16, rdn # perform operation
fmul.s f27, f29, f16, rmm # perform operation
fmul.s f27, f29, f16, rne # perform operation
fmul.s f27, f29, f16, rtz # perform operation
fmul.s f27, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fmul.s f3, f16, f21, dyn # perform operation
fmul.s f3, f16, f21, rdn # perform operation
fmul.s f3, f16, f21, rmm # perform operation
fmul.s f3, f16, f21, rne # perform operation
fmul.s f3, f16, f21, rtz # perform operation
fmul.s f3, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmul.s f23, f17, f20, dyn # perform operation
fmul.s f23, f17, f20, rdn # perform operation
fmul.s f23, f17, f20, rmm # perform operation
fmul.s f23, f17, f20, rne # perform operation
fmul.s f23, f17, f20, rtz # perform operation
fmul.s f23, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f21, f27, f13, dyn # perform operation
fmul.s f21, f27, f13, rdn # perform operation
fmul.s f21, f27, f13, rmm # perform operation
fmul.s f21, f27, f13, rne # perform operation
fmul.s f21, f27, f13, rtz # perform operation
fmul.s f21, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmul.s f6, f1, f15, dyn # perform operation
fmul.s f6, f1, f15, rdn # perform operation
fmul.s f6, f1, f15, rmm # perform operation
fmul.s f6, f1, f15, rne # perform operation
fmul.s f6, f1, f15, rtz # perform operation
fmul.s f6, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmul.s f25, f10, f9, dyn # perform operation
fmul.s f25, f10, f9, rdn # perform operation
fmul.s f25, f10, f9, rmm # perform operation
fmul.s f25, f10, f9, rne # perform operation
fmul.s f25, f10, f9, rtz # perform operation
fmul.s f25, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f10, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fmul.s f20, f18, f27, dyn # perform operation
fmul.s f20, f18, f27, rdn # perform operation
fmul.s f20, f18, f27, rmm # perform operation
fmul.s f20, f18, f27, rne # perform operation
fmul.s f20, f18, f27, rtz # perform operation
fmul.s f20, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fmul.s f19, f17, f16, dyn # perform operation
fmul.s f19, f17, f16, rdn # perform operation
fmul.s f19, f17, f16, rmm # perform operation
fmul.s f19, f17, f16, rne # perform operation
fmul.s f19, f17, f16, rtz # perform operation
fmul.s f19, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fmul.s f21, f7, f13, dyn # perform operation
fmul.s f21, f7, f13, rdn # perform operation
fmul.s f21, f7, f13, rmm # perform operation
fmul.s f21, f7, f13, rne # perform operation
fmul.s f21, f7, f13, rtz # perform operation
fmul.s f21, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fmul.s f8, f16, f9, dyn # perform operation
fmul.s f8, f16, f9, rdn # perform operation
fmul.s f8, f16, f9, rmm # perform operation
fmul.s f8, f16, f9, rne # perform operation
fmul.s f8, f16, f9, rtz # perform operation
fmul.s f8, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fmul.s f12, f31, f17, dyn # perform operation
fmul.s f12, f31, f17, rdn # perform operation
fmul.s f12, f31, f17, rmm # perform operation
fmul.s f12, f31, f17, rne # perform operation
fmul.s f12, f31, f17, rtz # perform operation
fmul.s f12, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fmul.s f10, f5, f3, dyn # perform operation
fmul.s f10, f5, f3, rdn # perform operation
fmul.s f10, f5, f3, rmm # perform operation
fmul.s f10, f5, f3, rne # perform operation
fmul.s f10, f5, f3, rtz # perform operation
fmul.s f10, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fmul.s f25, f5, f24, dyn # perform operation
fmul.s f25, f5, f24, rdn # perform operation
fmul.s f25, f5, f24, rmm # perform operation
fmul.s f25, f5, f24, rne # perform operation
fmul.s f25, f5, f24, rtz # perform operation
fmul.s f25, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fmul.s f14, f15, f17, dyn # perform operation
fmul.s f14, f15, f17, rdn # perform operation
fmul.s f14, f15, f17, rmm # perform operation
fmul.s f14, f15, f17, rne # perform operation
fmul.s f14, f15, f17, rtz # perform operation
fmul.s f14, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fmul.s f17, f30, f24, dyn # perform operation
fmul.s f17, f30, f24, rdn # perform operation
fmul.s f17, f30, f24, rmm # perform operation
fmul.s f17, f30, f24, rne # perform operation
fmul.s f17, f30, f24, rtz # perform operation
fmul.s f17, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f30, f3, f8, dyn # perform operation
fmul.s f30, f3, f8, rdn # perform operation
fmul.s f30, f3, f8, rmm # perform operation
fmul.s f30, f3, f8, rne # perform operation
fmul.s f30, f3, f8, rtz # perform operation
fmul.s f30, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
fmul.s f30, f21, f22, dyn # perform operation
fmul.s f30, f21, f22, rdn # perform operation
fmul.s f30, f21, f22, rmm # perform operation
fmul.s f30, f21, f22, rne # perform operation
fmul.s f30, f21, f22, rtz # perform operation
fmul.s f30, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fmul.s f31, f30, f5, dyn # perform operation
fmul.s f31, f30, f5, rdn # perform operation
fmul.s f31, f30, f5, rmm # perform operation
fmul.s f31, f30, f5, rne # perform operation
fmul.s f31, f30, f5, rtz # perform operation
fmul.s f31, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fmul.s f18, f29, f9, dyn # perform operation
fmul.s f18, f29, f9, rdn # perform operation
fmul.s f18, f29, f9, rmm # perform operation
fmul.s f18, f29, f9, rne # perform operation
fmul.s f18, f29, f9, rtz # perform operation
fmul.s f18, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fmul.s f9, f28, f29, dyn # perform operation
fmul.s f9, f28, f29, rdn # perform operation
fmul.s f9, f28, f29, rmm # perform operation
fmul.s f9, f28, f29, rne # perform operation
fmul.s f9, f28, f29, rtz # perform operation
fmul.s f9, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fmul.s f17, f13, f16, dyn # perform operation
fmul.s f17, f13, f16, rdn # perform operation
fmul.s f17, f13, f16, rmm # perform operation
fmul.s f17, f13, f16, rne # perform operation
fmul.s f17, f13, f16, rtz # perform operation
fmul.s f17, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f1, f30, f24, dyn # perform operation
fmul.s f1, f30, f24, rdn # perform operation
fmul.s f1, f30, f24, rmm # perform operation
fmul.s f1, f30, f24, rne # perform operation
fmul.s f1, f30, f24, rtz # perform operation
fmul.s f1, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f14, f7, f9, dyn # perform operation
fmul.s f14, f7, f9, rdn # perform operation
fmul.s f14, f7, f9, rmm # perform operation
fmul.s f14, f7, f9, rne # perform operation
fmul.s f14, f7, f9, rtz # perform operation
fmul.s f14, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fmul.s f14, f21, f1, dyn # perform operation
fmul.s f14, f21, f1, rdn # perform operation
fmul.s f14, f21, f1, rmm # perform operation
fmul.s f14, f21, f1, rne # perform operation
fmul.s f14, f21, f1, rtz # perform operation
fmul.s f14, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fmul.s f10, f30, f3, dyn # perform operation
fmul.s f10, f30, f3, rdn # perform operation
fmul.s f10, f30, f3, rmm # perform operation
fmul.s f10, f30, f3, rne # perform operation
fmul.s f10, f30, f3, rtz # perform operation
fmul.s f10, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fmul.s f27, f26, f23, dyn # perform operation
fmul.s f27, f26, f23, rdn # perform operation
fmul.s f27, f26, f23, rmm # perform operation
fmul.s f27, f26, f23, rne # perform operation
fmul.s f27, f26, f23, rtz # perform operation
fmul.s f27, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fmul.s f24, f1, f30, dyn # perform operation
fmul.s f24, f1, f30, rdn # perform operation
fmul.s f24, f1, f30, rmm # perform operation
fmul.s f24, f1, f30, rne # perform operation
fmul.s f24, f1, f30, rtz # perform operation
fmul.s f24, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmul.s f16, f3, f7, dyn # perform operation
fmul.s f16, f3, f7, rdn # perform operation
fmul.s f16, f3, f7, rmm # perform operation
fmul.s f16, f3, f7, rne # perform operation
fmul.s f16, f3, f7, rtz # perform operation
fmul.s f16, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fmul.s f29, f11, f9, dyn # perform operation
fmul.s f29, f11, f9, rdn # perform operation
fmul.s f29, f11, f9, rmm # perform operation
fmul.s f29, f11, f9, rne # perform operation
fmul.s f29, f11, f9, rtz # perform operation
fmul.s f29, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f13, f12, f29, dyn # perform operation
fmul.s f13, f12, f29, rdn # perform operation
fmul.s f13, f12, f29, rmm # perform operation
fmul.s f13, f12, f29, rne # perform operation
fmul.s f13, f12, f29, rtz # perform operation
fmul.s f13, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fmul.s f15, f20, f9, dyn # perform operation
fmul.s f15, f20, f9, rdn # perform operation
fmul.s f15, f20, f9, rmm # perform operation
fmul.s f15, f20, f9, rne # perform operation
fmul.s f15, f20, f9, rtz # perform operation
fmul.s f15, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fmul.s f8, f17, f19, dyn # perform operation
fmul.s f8, f17, f19, rdn # perform operation
fmul.s f8, f17, f19, rmm # perform operation
fmul.s f8, f17, f19, rne # perform operation
fmul.s f8, f17, f19, rtz # perform operation
fmul.s f8, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fmul.s f21, f22, f31, dyn # perform operation
fmul.s f21, f22, f31, rdn # perform operation
fmul.s f21, f22, f31, rmm # perform operation
fmul.s f21, f22, f31, rne # perform operation
fmul.s f21, f22, f31, rtz # perform operation
fmul.s f21, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fmul.s f22, f10, f2, dyn # perform operation
fmul.s f22, f10, f2, rdn # perform operation
fmul.s f22, f10, f2, rmm # perform operation
fmul.s f22, f10, f2, rne # perform operation
fmul.s f22, f10, f2, rtz # perform operation
fmul.s f22, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fmul.s f29, f1, f22, dyn # perform operation
fmul.s f29, f1, f22, rdn # perform operation
fmul.s f29, f1, f22, rmm # perform operation
fmul.s f29, f1, f22, rne # perform operation
fmul.s f29, f1, f22, rtz # perform operation
fmul.s f29, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fmul.s f15, f6, f12, dyn # perform operation
fmul.s f15, f6, f12, rdn # perform operation
fmul.s f15, f6, f12, rmm # perform operation
fmul.s f15, f6, f12, rne # perform operation
fmul.s f15, f6, f12, rtz # perform operation
fmul.s f15, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fmul.s f7, f17, f15, dyn # perform operation
fmul.s f7, f17, f15, rdn # perform operation
fmul.s f7, f17, f15, rmm # perform operation
fmul.s f7, f17, f15, rne # perform operation
fmul.s f7, f17, f15, rtz # perform operation
fmul.s f7, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fmul.s f30, f3, f14, dyn # perform operation
fmul.s f30, f3, f14, rdn # perform operation
fmul.s f30, f3, f14, rmm # perform operation
fmul.s f30, f3, f14, rne # perform operation
fmul.s f30, f3, f14, rtz # perform operation
fmul.s f30, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fmul.s f15, f29, f5, dyn # perform operation
fmul.s f15, f29, f5, rdn # perform operation
fmul.s f15, f29, f5, rmm # perform operation
fmul.s f15, f29, f5, rne # perform operation
fmul.s f15, f29, f5, rtz # perform operation
fmul.s f15, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fmul.s f23, f17, f5, dyn # perform operation
fmul.s f23, f17, f5, rdn # perform operation
fmul.s f23, f17, f5, rmm # perform operation
fmul.s f23, f17, f5, rne # perform operation
fmul.s f23, f17, f5, rtz # perform operation
fmul.s f23, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fmul.s f22, f12, f28, dyn # perform operation
fmul.s f22, f12, f28, rdn # perform operation
fmul.s f22, f12, f28, rmm # perform operation
fmul.s f22, f12, f28, rne # perform operation
fmul.s f22, f12, f28, rtz # perform operation
fmul.s f22, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fmul.s f9, f3, f30, dyn # perform operation
fmul.s f9, f3, f30, rdn # perform operation
fmul.s f9, f3, f30, rmm # perform operation
fmul.s f9, f3, f30, rne # perform operation
fmul.s f9, f3, f30, rtz # perform operation
fmul.s f9, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmul.s f16, f31, f20, dyn # perform operation
fmul.s f16, f31, f20, rdn # perform operation
fmul.s f16, f31, f20, rmm # perform operation
fmul.s f16, f31, f20, rne # perform operation
fmul.s f16, f31, f20, rtz # perform operation
fmul.s f16, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fmul.s f8, f5, f11, dyn # perform operation
fmul.s f8, f5, f11, rdn # perform operation
fmul.s f8, f5, f11, rmm # perform operation
fmul.s f8, f5, f11, rne # perform operation
fmul.s f8, f5, f11, rtz # perform operation
fmul.s f8, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fmul.s f14, f2, f10, dyn # perform operation
fmul.s f14, f2, f10, rdn # perform operation
fmul.s f14, f2, f10, rmm # perform operation
fmul.s f14, f2, f10, rne # perform operation
fmul.s f14, f2, f10, rtz # perform operation
fmul.s f14, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fmul.s f26, f20, f15, dyn # perform operation
fmul.s f26, f20, f15, rdn # perform operation
fmul.s f26, f20, f15, rmm # perform operation
fmul.s f26, f20, f15, rne # perform operation
fmul.s f26, f20, f15, rtz # perform operation
fmul.s f26, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fmul.s f25, f24, f2, dyn # perform operation
fmul.s f25, f24, f2, rdn # perform operation
fmul.s f25, f24, f2, rmm # perform operation
fmul.s f25, f24, f2, rne # perform operation
fmul.s f25, f24, f2, rtz # perform operation
fmul.s f25, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fmul.s f30, f10, f24, dyn # perform operation
fmul.s f30, f10, f24, rdn # perform operation
fmul.s f30, f10, f24, rmm # perform operation
fmul.s f30, f10, f24, rne # perform operation
fmul.s f30, f10, f24, rtz # perform operation
fmul.s f30, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fmul.s f3, f25, f27, dyn # perform operation
fmul.s f3, f25, f27, rdn # perform operation
fmul.s f3, f25, f27, rmm # perform operation
fmul.s f3, f25, f27, rne # perform operation
fmul.s f3, f25, f27, rtz # perform operation
fmul.s f3, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fmul.s f6, f11, f2, dyn # perform operation
fmul.s f6, f11, f2, rdn # perform operation
fmul.s f6, f11, f2, rmm # perform operation
fmul.s f6, f11, f2, rne # perform operation
fmul.s f6, f11, f2, rtz # perform operation
fmul.s f6, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fmul.s f27, f16, f7, dyn # perform operation
fmul.s f27, f16, f7, rdn # perform operation
fmul.s f27, f16, f7, rmm # perform operation
fmul.s f27, f16, f7, rne # perform operation
fmul.s f27, f16, f7, rtz # perform operation
fmul.s f27, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fmul.s f28, f9, f31, dyn # perform operation
fmul.s f28, f9, f31, rdn # perform operation
fmul.s f28, f9, f31, rmm # perform operation
fmul.s f28, f9, f31, rne # perform operation
fmul.s f28, f9, f31, rtz # perform operation
fmul.s f28, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fmul.s f28, f16, f24, dyn # perform operation
fmul.s f28, f16, f24, rdn # perform operation
fmul.s f28, f16, f24, rmm # perform operation
fmul.s f28, f16, f24, rne # perform operation
fmul.s f28, f16, f24, rtz # perform operation
fmul.s f28, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fmul.s f8, f19, f7, dyn # perform operation
fmul.s f8, f19, f7, rdn # perform operation
fmul.s f8, f19, f7, rmm # perform operation
fmul.s f8, f19, f7, rne # perform operation
fmul.s f8, f19, f7, rtz # perform operation
fmul.s f8, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fmul.s f28, f7, f24, dyn # perform operation
fmul.s f28, f7, f24, rdn # perform operation
fmul.s f28, f7, f24, rmm # perform operation
fmul.s f28, f7, f24, rne # perform operation
fmul.s f28, f7, f24, rtz # perform operation
fmul.s f28, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fmul.s f15, f29, f30, dyn # perform operation
fmul.s f15, f29, f30, rdn # perform operation
fmul.s f15, f29, f30, rmm # perform operation
fmul.s f15, f29, f30, rne # perform operation
fmul.s f15, f29, f30, rtz # perform operation
fmul.s f15, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fmul.s f31, f19, f22, dyn # perform operation
fmul.s f31, f19, f22, rdn # perform operation
fmul.s f31, f19, f22, rmm # perform operation
fmul.s f31, f19, f22, rne # perform operation
fmul.s f31, f19, f22, rtz # perform operation
fmul.s f31, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fmul.s f30, f29, f22, dyn # perform operation
fmul.s f30, f29, f22, rdn # perform operation
fmul.s f30, f29, f22, rmm # perform operation
fmul.s f30, f29, f22, rne # perform operation
fmul.s f30, f29, f22, rtz # perform operation
fmul.s f30, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmul.s f24, f26, f20, dyn # perform operation
fmul.s f24, f26, f20, rdn # perform operation
fmul.s f24, f26, f20, rmm # perform operation
fmul.s f24, f26, f20, rne # perform operation
fmul.s f24, f26, f20, rtz # perform operation
fmul.s f24, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fmul.s f14, f1, f19, dyn # perform operation
fmul.s f14, f1, f19, rdn # perform operation
fmul.s f14, f1, f19, rmm # perform operation
fmul.s f14, f1, f19, rne # perform operation
fmul.s f14, f1, f19, rtz # perform operation
fmul.s f14, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fmul.s f16, f19, f29, dyn # perform operation
fmul.s f16, f19, f29, rdn # perform operation
fmul.s f16, f19, f29, rmm # perform operation
fmul.s f16, f19, f29, rne # perform operation
fmul.s f16, f19, f29, rtz # perform operation
fmul.s f16, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fmul.s f5, f25, f30, dyn # perform operation
fmul.s f5, f25, f30, rdn # perform operation
fmul.s f5, f25, f30, rmm # perform operation
fmul.s f5, f25, f30, rne # perform operation
fmul.s f5, f25, f30, rtz # perform operation
fmul.s f5, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f22, f14, f1, dyn # perform operation
fmul.s f22, f14, f1, rdn # perform operation
fmul.s f22, f14, f1, rmm # perform operation
fmul.s f22, f14, f1, rne # perform operation
fmul.s f22, f14, f1, rtz # perform operation
fmul.s f22, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fmul.s f24, f20, f1, dyn # perform operation
fmul.s f24, f20, f1, rdn # perform operation
fmul.s f24, f20, f1, rmm # perform operation
fmul.s f24, f20, f1, rne # perform operation
fmul.s f24, f20, f1, rtz # perform operation
fmul.s f24, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fmul.s f6, f5, f12, dyn # perform operation
fmul.s f6, f5, f12, rdn # perform operation
fmul.s f6, f5, f12, rmm # perform operation
fmul.s f6, f5, f12, rne # perform operation
fmul.s f6, f5, f12, rtz # perform operation
fmul.s f6, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fmul.s f25, f9, f27, dyn # perform operation
fmul.s f25, f9, f27, rdn # perform operation
fmul.s f25, f9, f27, rmm # perform operation
fmul.s f25, f9, f27, rne # perform operation
fmul.s f25, f9, f27, rtz # perform operation
fmul.s f25, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fmul.s f11, f16, f27, dyn # perform operation
fmul.s f11, f16, f27, rdn # perform operation
fmul.s f11, f16, f27, rmm # perform operation
fmul.s f11, f16, f27, rne # perform operation
fmul.s f11, f16, f27, rtz # perform operation
fmul.s f11, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fmul.s f31, f24, f2, dyn # perform operation
fmul.s f31, f24, f2, rdn # perform operation
fmul.s f31, f24, f2, rmm # perform operation
fmul.s f31, f24, f2, rne # perform operation
fmul.s f31, f24, f2, rtz # perform operation
fmul.s f31, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmul.s f10, f27, f5, dyn # perform operation
fmul.s f10, f27, f5, rdn # perform operation
fmul.s f10, f27, f5, rmm # perform operation
fmul.s f10, f27, f5, rne # perform operation
fmul.s f10, f27, f5, rtz # perform operation
fmul.s f10, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
fmul.s f31, f22, f15, dyn # perform operation
fmul.s f31, f22, f15, rdn # perform operation
fmul.s f31, f22, f15, rmm # perform operation
fmul.s f31, f22, f15, rne # perform operation
fmul.s f31, f22, f15, rtz # perform operation
fmul.s f31, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fmul.s f30, f31, f15, dyn # perform operation
fmul.s f30, f31, f15, rdn # perform operation
fmul.s f30, f31, f15, rmm # perform operation
fmul.s f30, f31, f15, rne # perform operation
fmul.s f30, f31, f15, rtz # perform operation
fmul.s f30, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fmul.s f6, f9, f11, dyn # perform operation
fmul.s f6, f9, f11, rdn # perform operation
fmul.s f6, f9, f11, rmm # perform operation
fmul.s f6, f9, f11, rne # perform operation
fmul.s f6, f9, f11, rtz # perform operation
fmul.s f6, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fmul.s f23, f6, f12, dyn # perform operation
fmul.s f23, f6, f12, rdn # perform operation
fmul.s f23, f6, f12, rmm # perform operation
fmul.s f23, f6, f12, rne # perform operation
fmul.s f23, f6, f12, rtz # perform operation
fmul.s f23, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fmul.s f21, f27, f2, dyn # perform operation
fmul.s f21, f27, f2, rdn # perform operation
fmul.s f21, f27, f2, rmm # perform operation
fmul.s f21, f27, f2, rne # perform operation
fmul.s f21, f27, f2, rtz # perform operation
fmul.s f21, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fmul.s f23, f10, f24, dyn # perform operation
fmul.s f23, f10, f24, rdn # perform operation
fmul.s f23, f10, f24, rmm # perform operation
fmul.s f23, f10, f24, rne # perform operation
fmul.s f23, f10, f24, rtz # perform operation
fmul.s f23, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fmul.s f19, f3, f29, dyn # perform operation
fmul.s f19, f3, f29, rdn # perform operation
fmul.s f19, f3, f29, rmm # perform operation
fmul.s f19, f3, f29, rne # perform operation
fmul.s f19, f3, f29, rtz # perform operation
fmul.s f19, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fmul.s f14, f7, f5, dyn # perform operation
fmul.s f14, f7, f5, rdn # perform operation
fmul.s f14, f7, f5, rmm # perform operation
fmul.s f14, f7, f5, rne # perform operation
fmul.s f14, f7, f5, rtz # perform operation
fmul.s f14, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fmul.s f7, f31, f22, dyn # perform operation
fmul.s f7, f31, f22, rdn # perform operation
fmul.s f7, f31, f22, rmm # perform operation
fmul.s f7, f31, f22, rne # perform operation
fmul.s f7, f31, f22, rtz # perform operation
fmul.s f7, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fmul.s f30, f12, f20, dyn # perform operation
fmul.s f30, f12, f20, rdn # perform operation
fmul.s f30, f12, f20, rmm # perform operation
fmul.s f30, f12, f20, rne # perform operation
fmul.s f30, f12, f20, rtz # perform operation
fmul.s f30, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f12, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fmul.s f26, f28, f6, dyn # perform operation
fmul.s f26, f28, f6, rdn # perform operation
fmul.s f26, f28, f6, rmm # perform operation
fmul.s f26, f28, f6, rne # perform operation
fmul.s f26, f28, f6, rtz # perform operation
fmul.s f26, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fmul.s f21, f16, f27, dyn # perform operation
fmul.s f21, f16, f27, rdn # perform operation
fmul.s f21, f16, f27, rmm # perform operation
fmul.s f21, f16, f27, rne # perform operation
fmul.s f21, f16, f27, rtz # perform operation
fmul.s f21, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fmul.s f25, f12, f27, dyn # perform operation
fmul.s f25, f12, f27, rdn # perform operation
fmul.s f25, f12, f27, rmm # perform operation
fmul.s f25, f12, f27, rne # perform operation
fmul.s f25, f12, f27, rtz # perform operation
fmul.s f25, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fmul.s f25, f23, f18, dyn # perform operation
fmul.s f25, f23, f18, rdn # perform operation
fmul.s f25, f23, f18, rmm # perform operation
fmul.s f25, f23, f18, rne # perform operation
fmul.s f25, f23, f18, rtz # perform operation
fmul.s f25, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fmul.s f1, f3, f22, dyn # perform operation
fmul.s f1, f3, f22, rdn # perform operation
fmul.s f1, f3, f22, rmm # perform operation
fmul.s f1, f3, f22, rne # perform operation
fmul.s f1, f3, f22, rtz # perform operation
fmul.s f1, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fmul.s f14, f12, f21, dyn # perform operation
fmul.s f14, f12, f21, rdn # perform operation
fmul.s f14, f12, f21, rmm # perform operation
fmul.s f14, f12, f21, rne # perform operation
fmul.s f14, f12, f21, rtz # perform operation
fmul.s f14, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f30, f28, f29, dyn # perform operation
fmul.s f30, f28, f29, rdn # perform operation
fmul.s f30, f28, f29, rmm # perform operation
fmul.s f30, f28, f29, rne # perform operation
fmul.s f30, f28, f29, rtz # perform operation
fmul.s f30, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fmul.s f14, f5, f23, dyn # perform operation
fmul.s f14, f5, f23, rdn # perform operation
fmul.s f14, f5, f23, rmm # perform operation
fmul.s f14, f5, f23, rne # perform operation
fmul.s f14, f5, f23, rtz # perform operation
fmul.s f14, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fmul.s f7, f1, f10, dyn # perform operation
fmul.s f7, f1, f10, rdn # perform operation
fmul.s f7, f1, f10, rmm # perform operation
fmul.s f7, f1, f10, rne # perform operation
fmul.s f7, f1, f10, rtz # perform operation
fmul.s f7, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmul.s f24, f23, f10, dyn # perform operation
fmul.s f24, f23, f10, rdn # perform operation
fmul.s f24, f23, f10, rmm # perform operation
fmul.s f24, f23, f10, rne # perform operation
fmul.s f24, f23, f10, rtz # perform operation
fmul.s f24, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fmul.s f1, f7, f13, dyn # perform operation
fmul.s f1, f7, f13, rdn # perform operation
fmul.s f1, f7, f13, rmm # perform operation
fmul.s f1, f7, f13, rne # perform operation
fmul.s f1, f7, f13, rtz # perform operation
fmul.s f1, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fmul.s f25, f30, f23, dyn # perform operation
fmul.s f25, f30, f23, rdn # perform operation
fmul.s f25, f30, f23, rmm # perform operation
fmul.s f25, f30, f23, rne # perform operation
fmul.s f25, f30, f23, rtz # perform operation
fmul.s f25, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f13, f30, f11, dyn # perform operation
fmul.s f13, f30, f11, rdn # perform operation
fmul.s f13, f30, f11, rmm # perform operation
fmul.s f13, f30, f11, rne # perform operation
fmul.s f13, f30, f11, rtz # perform operation
fmul.s f13, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fmul.s f28, f24, f11, dyn # perform operation
fmul.s f28, f24, f11, rdn # perform operation
fmul.s f28, f24, f11, rmm # perform operation
fmul.s f28, f24, f11, rne # perform operation
fmul.s f28, f24, f11, rtz # perform operation
fmul.s f28, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fmul.s f12, f13, f6, dyn # perform operation
fmul.s f12, f13, f6, rdn # perform operation
fmul.s f12, f13, f6, rmm # perform operation
fmul.s f12, f13, f6, rne # perform operation
fmul.s f12, f13, f6, rtz # perform operation
fmul.s f12, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fmul.s f11, f16, f21, dyn # perform operation
fmul.s f11, f16, f21, rdn # perform operation
fmul.s f11, f16, f21, rmm # perform operation
fmul.s f11, f16, f21, rne # perform operation
fmul.s f11, f16, f21, rtz # perform operation
fmul.s f11, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fmul.s f20, f2, f19, dyn # perform operation
fmul.s f20, f2, f19, rdn # perform operation
fmul.s f20, f2, f19, rmm # perform operation
fmul.s f20, f2, f19, rne # perform operation
fmul.s f20, f2, f19, rtz # perform operation
fmul.s f20, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fmul.s f6, f9, f21, dyn # perform operation
fmul.s f6, f9, f21, rdn # perform operation
fmul.s f6, f9, f21, rmm # perform operation
fmul.s f6, f9, f21, rne # perform operation
fmul.s f6, f9, f21, rtz # perform operation
fmul.s f6, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fmul.s f10, f2, f3, dyn # perform operation
fmul.s f10, f2, f3, rdn # perform operation
fmul.s f10, f2, f3, rmm # perform operation
fmul.s f10, f2, f3, rne # perform operation
fmul.s f10, f2, f3, rtz # perform operation
fmul.s f10, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fmul.s f17, f15, f30, dyn # perform operation
fmul.s f17, f15, f30, rdn # perform operation
fmul.s f17, f15, f30, rmm # perform operation
fmul.s f17, f15, f30, rne # perform operation
fmul.s f17, f15, f30, rtz # perform operation
fmul.s f17, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fmul.s f5, f24, f11, dyn # perform operation
fmul.s f5, f24, f11, rdn # perform operation
fmul.s f5, f24, f11, rmm # perform operation
fmul.s f5, f24, f11, rne # perform operation
fmul.s f5, f24, f11, rtz # perform operation
fmul.s f5, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fmul.s f10, f24, f1, dyn # perform operation
fmul.s f10, f24, f1, rdn # perform operation
fmul.s f10, f24, f1, rmm # perform operation
fmul.s f10, f24, f1, rne # perform operation
fmul.s f10, f24, f1, rtz # perform operation
fmul.s f10, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fmul.s f14, f9, f31, dyn # perform operation
fmul.s f14, f9, f31, rdn # perform operation
fmul.s f14, f9, f31, rmm # perform operation
fmul.s f14, f9, f31, rne # perform operation
fmul.s f14, f9, f31, rtz # perform operation
fmul.s f14, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fmul.s f10, f3, f27, dyn # perform operation
fmul.s f10, f3, f27, rdn # perform operation
fmul.s f10, f3, f27, rmm # perform operation
fmul.s f10, f3, f27, rne # perform operation
fmul.s f10, f3, f27, rtz # perform operation
fmul.s f10, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fmul.s f18, f13, f24, dyn # perform operation
fmul.s f18, f13, f24, rdn # perform operation
fmul.s f18, f13, f24, rmm # perform operation
fmul.s f18, f13, f24, rne # perform operation
fmul.s f18, f13, f24, rtz # perform operation
fmul.s f18, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fmul.s f27, f11, f17, dyn # perform operation
fmul.s f27, f11, f17, rdn # perform operation
fmul.s f27, f11, f17, rmm # perform operation
fmul.s f27, f11, f17, rne # perform operation
fmul.s f27, f11, f17, rtz # perform operation
fmul.s f27, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fmul.s f1, f6, f13, dyn # perform operation
fmul.s f1, f6, f13, rdn # perform operation
fmul.s f1, f6, f13, rmm # perform operation
fmul.s f1, f6, f13, rne # perform operation
fmul.s f1, f6, f13, rtz # perform operation
fmul.s f1, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fmul.s f16, f20, f5, dyn # perform operation
fmul.s f16, f20, f5, rdn # perform operation
fmul.s f16, f20, f5, rmm # perform operation
fmul.s f16, f20, f5, rne # perform operation
fmul.s f16, f20, f5, rtz # perform operation
fmul.s f16, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fmul.s f14, f19, f24, dyn # perform operation
fmul.s f14, f19, f24, rdn # perform operation
fmul.s f14, f19, f24, rmm # perform operation
fmul.s f14, f19, f24, rne # perform operation
fmul.s f14, f19, f24, rtz # perform operation
fmul.s f14, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fmul.s f20, f14, f8, dyn # perform operation
fmul.s f20, f14, f8, rdn # perform operation
fmul.s f20, f14, f8, rmm # perform operation
fmul.s f20, f14, f8, rne # perform operation
fmul.s f20, f14, f8, rtz # perform operation
fmul.s f20, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fmul.s f12, f18, f17, dyn # perform operation
fmul.s f12, f18, f17, rdn # perform operation
fmul.s f12, f18, f17, rmm # perform operation
fmul.s f12, f18, f17, rne # perform operation
fmul.s f12, f18, f17, rtz # perform operation
fmul.s f12, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fmul.s f16, f28, f8, dyn # perform operation
fmul.s f16, f28, f8, rdn # perform operation
fmul.s f16, f28, f8, rmm # perform operation
fmul.s f16, f28, f8, rne # perform operation
fmul.s f16, f28, f8, rtz # perform operation
fmul.s f16, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fmul.s f2, f27, f15, dyn # perform operation
fmul.s f2, f27, f15, rdn # perform operation
fmul.s f2, f27, f15, rmm # perform operation
fmul.s f2, f27, f15, rne # perform operation
fmul.s f2, f27, f15, rtz # perform operation
fmul.s f2, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fmul.s f19, f22, f30, dyn # perform operation
fmul.s f19, f22, f30, rdn # perform operation
fmul.s f19, f22, f30, rmm # perform operation
fmul.s f19, f22, f30, rne # perform operation
fmul.s f19, f22, f30, rtz # perform operation
fmul.s f19, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmul.s f26, f3, f23, dyn # perform operation
fmul.s f26, f3, f23, rdn # perform operation
fmul.s f26, f3, f23, rmm # perform operation
fmul.s f26, f3, f23, rne # perform operation
fmul.s f26, f3, f23, rtz # perform operation
fmul.s f26, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fmul.s f13, f17, f11, dyn # perform operation
fmul.s f13, f17, f11, rdn # perform operation
fmul.s f13, f17, f11, rmm # perform operation
fmul.s f13, f17, f11, rne # perform operation
fmul.s f13, f17, f11, rtz # perform operation
fmul.s f13, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fmul.s f20, f5, f14, dyn # perform operation
fmul.s f20, f5, f14, rdn # perform operation
fmul.s f20, f5, f14, rmm # perform operation
fmul.s f20, f5, f14, rne # perform operation
fmul.s f20, f5, f14, rtz # perform operation
fmul.s f20, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fmul.s f10, f21, f23, dyn # perform operation
fmul.s f10, f21, f23, rdn # perform operation
fmul.s f10, f21, f23, rmm # perform operation
fmul.s f10, f21, f23, rne # perform operation
fmul.s f10, f21, f23, rtz # perform operation
fmul.s f10, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fmul.s f2, f18, f8, dyn # perform operation
fmul.s f2, f18, f8, rdn # perform operation
fmul.s f2, f18, f8, rmm # perform operation
fmul.s f2, f18, f8, rne # perform operation
fmul.s f2, f18, f8, rtz # perform operation
fmul.s f2, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fmul.s f29, f13, f5, dyn # perform operation
fmul.s f29, f13, f5, rdn # perform operation
fmul.s f29, f13, f5, rmm # perform operation
fmul.s f29, f13, f5, rne # perform operation
fmul.s f29, f13, f5, rtz # perform operation
fmul.s f29, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fmul.s f19, f16, f25, dyn # perform operation
fmul.s f19, f16, f25, rdn # perform operation
fmul.s f19, f16, f25, rmm # perform operation
fmul.s f19, f16, f25, rne # perform operation
fmul.s f19, f16, f25, rtz # perform operation
fmul.s f19, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fmul.s f23, f17, f30, dyn # perform operation
fmul.s f23, f17, f30, rdn # perform operation
fmul.s f23, f17, f30, rmm # perform operation
fmul.s f23, f17, f30, rne # perform operation
fmul.s f23, f17, f30, rtz # perform operation
fmul.s f23, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fmul.s f23, f11, f21, dyn # perform operation
fmul.s f23, f11, f21, rdn # perform operation
fmul.s f23, f11, f21, rmm # perform operation
fmul.s f23, f11, f21, rne # perform operation
fmul.s f23, f11, f21, rtz # perform operation
fmul.s f23, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fmul.s f23, f25, f21, dyn # perform operation
fmul.s f23, f25, f21, rdn # perform operation
fmul.s f23, f25, f21, rmm # perform operation
fmul.s f23, f25, f21, rne # perform operation
fmul.s f23, f25, f21, rtz # perform operation
fmul.s f23, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fmul.s f16, f26, f10, dyn # perform operation
fmul.s f16, f26, f10, rdn # perform operation
fmul.s f16, f26, f10, rmm # perform operation
fmul.s f16, f26, f10, rne # perform operation
fmul.s f16, f26, f10, rtz # perform operation
fmul.s f16, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fmul.s f8, f5, f22, dyn # perform operation
fmul.s f8, f5, f22, rdn # perform operation
fmul.s f8, f5, f22, rmm # perform operation
fmul.s f8, f5, f22, rne # perform operation
fmul.s f8, f5, f22, rtz # perform operation
fmul.s f8, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fmul.s f26, f11, f7, dyn # perform operation
fmul.s f26, f11, f7, rdn # perform operation
fmul.s f26, f11, f7, rmm # perform operation
fmul.s f26, f11, f7, rne # perform operation
fmul.s f26, f11, f7, rtz # perform operation
fmul.s f26, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fmul.s f27, f16, f24, dyn # perform operation
fmul.s f27, f16, f24, rdn # perform operation
fmul.s f27, f16, f24, rmm # perform operation
fmul.s f27, f16, f24, rne # perform operation
fmul.s f27, f16, f24, rtz # perform operation
fmul.s f27, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fmul.s f13, f29, f1, dyn # perform operation
fmul.s f13, f29, f1, rdn # perform operation
fmul.s f13, f29, f1, rmm # perform operation
fmul.s f13, f29, f1, rne # perform operation
fmul.s f13, f29, f1, rtz # perform operation
fmul.s f13, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fmul.s f14, f3, f10, dyn # perform operation
fmul.s f14, f3, f10, rdn # perform operation
fmul.s f14, f3, f10, rmm # perform operation
fmul.s f14, f3, f10, rne # perform operation
fmul.s f14, f3, f10, rtz # perform operation
fmul.s f14, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fmul.s f17, f24, f21, dyn # perform operation
fmul.s f17, f24, f21, rdn # perform operation
fmul.s f17, f24, f21, rmm # perform operation
fmul.s f17, f24, f21, rne # perform operation
fmul.s f17, f24, f21, rtz # perform operation
fmul.s f17, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fmul.s f27, f10, f31, dyn # perform operation
fmul.s f27, f10, f31, rdn # perform operation
fmul.s f27, f10, f31, rmm # perform operation
fmul.s f27, f10, f31, rne # perform operation
fmul.s f27, f10, f31, rtz # perform operation
fmul.s f27, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fmul.s f21, f28, f25, dyn # perform operation
fmul.s f21, f28, f25, rdn # perform operation
fmul.s f21, f28, f25, rmm # perform operation
fmul.s f21, f28, f25, rne # perform operation
fmul.s f21, f28, f25, rtz # perform operation
fmul.s f21, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fmul.s f1, f10, f25, dyn # perform operation
fmul.s f1, f10, f25, rdn # perform operation
fmul.s f1, f10, f25, rmm # perform operation
fmul.s f1, f10, f25, rne # perform operation
fmul.s f1, f10, f25, rtz # perform operation
fmul.s f1, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fmul.s f27, f8, f17, dyn # perform operation
fmul.s f27, f8, f17, rdn # perform operation
fmul.s f27, f8, f17, rmm # perform operation
fmul.s f27, f8, f17, rne # perform operation
fmul.s f27, f8, f17, rtz # perform operation
fmul.s f27, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f15, f22, f9, dyn # perform operation
fmul.s f15, f22, f9, rdn # perform operation
fmul.s f15, f22, f9, rmm # perform operation
fmul.s f15, f22, f9, rne # perform operation
fmul.s f15, f22, f9, rtz # perform operation
fmul.s f15, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fmul.s f10, f5, f13, dyn # perform operation
fmul.s f10, f5, f13, rdn # perform operation
fmul.s f10, f5, f13, rmm # perform operation
fmul.s f10, f5, f13, rne # perform operation
fmul.s f10, f5, f13, rtz # perform operation
fmul.s f10, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fmul.s f11, f5, f8, dyn # perform operation
fmul.s f11, f5, f8, rdn # perform operation
fmul.s f11, f5, f8, rmm # perform operation
fmul.s f11, f5, f8, rne # perform operation
fmul.s f11, f5, f8, rtz # perform operation
fmul.s f11, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fmul.s f13, f31, f20, dyn # perform operation
fmul.s f13, f31, f20, rdn # perform operation
fmul.s f13, f31, f20, rmm # perform operation
fmul.s f13, f31, f20, rne # perform operation
fmul.s f13, f31, f20, rtz # perform operation
fmul.s f13, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fmul.s f21, f23, f18, dyn # perform operation
fmul.s f21, f23, f18, rdn # perform operation
fmul.s f21, f23, f18, rmm # perform operation
fmul.s f21, f23, f18, rne # perform operation
fmul.s f21, f23, f18, rtz # perform operation
fmul.s f21, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fmul.s f24, f23, f27, dyn # perform operation
fmul.s f24, f23, f27, rdn # perform operation
fmul.s f24, f23, f27, rmm # perform operation
fmul.s f24, f23, f27, rne # perform operation
fmul.s f24, f23, f27, rtz # perform operation
fmul.s f24, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fmul.s f13, f7, f3, dyn # perform operation
fmul.s f13, f7, f3, rdn # perform operation
fmul.s f13, f7, f3, rmm # perform operation
fmul.s f13, f7, f3, rne # perform operation
fmul.s f13, f7, f3, rtz # perform operation
fmul.s f13, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fmul.s f8, f18, f25, dyn # perform operation
fmul.s f8, f18, f25, rdn # perform operation
fmul.s f8, f18, f25, rmm # perform operation
fmul.s f8, f18, f25, rne # perform operation
fmul.s f8, f18, f25, rtz # perform operation
fmul.s f8, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fmul.s f1, f3, f15, dyn # perform operation
fmul.s f1, f3, f15, rdn # perform operation
fmul.s f1, f3, f15, rmm # perform operation
fmul.s f1, f3, f15, rne # perform operation
fmul.s f1, f3, f15, rtz # perform operation
fmul.s f1, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmul.s f29, f10, f21, dyn # perform operation
fmul.s f29, f10, f21, rdn # perform operation
fmul.s f29, f10, f21, rmm # perform operation
fmul.s f29, f10, f21, rne # perform operation
fmul.s f29, f10, f21, rtz # perform operation
fmul.s f29, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fmul.s f18, f20, f23, dyn # perform operation
fmul.s f18, f20, f23, rdn # perform operation
fmul.s f18, f20, f23, rmm # perform operation
fmul.s f18, f20, f23, rne # perform operation
fmul.s f18, f20, f23, rtz # perform operation
fmul.s f18, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fmul.s f6, f26, f30, dyn # perform operation
fmul.s f6, f26, f30, rdn # perform operation
fmul.s f6, f26, f30, rmm # perform operation
fmul.s f6, f26, f30, rne # perform operation
fmul.s f6, f26, f30, rtz # perform operation
fmul.s f6, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fmul.s f5, f9, f12, dyn # perform operation
fmul.s f5, f9, f12, rdn # perform operation
fmul.s f5, f9, f12, rmm # perform operation
fmul.s f5, f9, f12, rne # perform operation
fmul.s f5, f9, f12, rtz # perform operation
fmul.s f5, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fmul.s f8, f13, f26, dyn # perform operation
fmul.s f8, f13, f26, rdn # perform operation
fmul.s f8, f13, f26, rmm # perform operation
fmul.s f8, f13, f26, rne # perform operation
fmul.s f8, f13, f26, rtz # perform operation
fmul.s f8, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fmul.s f18, f10, f1, dyn # perform operation
fmul.s f18, f10, f1, rdn # perform operation
fmul.s f18, f10, f1, rmm # perform operation
fmul.s f18, f10, f1, rne # perform operation
fmul.s f18, f10, f1, rtz # perform operation
fmul.s f18, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fmul.s f22, f28, f5, dyn # perform operation
fmul.s f22, f28, f5, rdn # perform operation
fmul.s f22, f28, f5, rmm # perform operation
fmul.s f22, f28, f5, rne # perform operation
fmul.s f22, f28, f5, rtz # perform operation
fmul.s f22, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f24, f31, f13, dyn # perform operation
fmul.s f24, f31, f13, rdn # perform operation
fmul.s f24, f31, f13, rmm # perform operation
fmul.s f24, f31, f13, rne # perform operation
fmul.s f24, f31, f13, rtz # perform operation
fmul.s f24, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fmul.s f13, f23, f5, dyn # perform operation
fmul.s f13, f23, f5, rdn # perform operation
fmul.s f13, f23, f5, rmm # perform operation
fmul.s f13, f23, f5, rne # perform operation
fmul.s f13, f23, f5, rtz # perform operation
fmul.s f13, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fmul.s f9, f23, f11, dyn # perform operation
fmul.s f9, f23, f11, rdn # perform operation
fmul.s f9, f23, f11, rmm # perform operation
fmul.s f9, f23, f11, rne # perform operation
fmul.s f9, f23, f11, rtz # perform operation
fmul.s f9, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
fmul.s f23, f20, f15, dyn # perform operation
fmul.s f23, f20, f15, rdn # perform operation
fmul.s f23, f20, f15, rmm # perform operation
fmul.s f23, f20, f15, rne # perform operation
fmul.s f23, f20, f15, rtz # perform operation
fmul.s f23, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fmul.s f3, f24, f15, dyn # perform operation
fmul.s f3, f24, f15, rdn # perform operation
fmul.s f3, f24, f15, rmm # perform operation
fmul.s f3, f24, f15, rne # perform operation
fmul.s f3, f24, f15, rtz # perform operation
fmul.s f3, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fmul.s f16, f29, f2, dyn # perform operation
fmul.s f16, f29, f2, rdn # perform operation
fmul.s f16, f29, f2, rmm # perform operation
fmul.s f16, f29, f2, rne # perform operation
fmul.s f16, f29, f2, rtz # perform operation
fmul.s f16, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fmul.s f23, f16, f29, dyn # perform operation
fmul.s f23, f16, f29, rdn # perform operation
fmul.s f23, f16, f29, rmm # perform operation
fmul.s f23, f16, f29, rne # perform operation
fmul.s f23, f16, f29, rtz # perform operation
fmul.s f23, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fmul.s f5, f29, f10, dyn # perform operation
fmul.s f5, f29, f10, rdn # perform operation
fmul.s f5, f29, f10, rmm # perform operation
fmul.s f5, f29, f10, rne # perform operation
fmul.s f5, f29, f10, rtz # perform operation
fmul.s f5, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fmul.s f6, f31, f29, dyn # perform operation
fmul.s f6, f31, f29, rdn # perform operation
fmul.s f6, f31, f29, rmm # perform operation
fmul.s f6, f31, f29, rne # perform operation
fmul.s f6, f31, f29, rtz # perform operation
fmul.s f6, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fmul.s f12, f17, f26, dyn # perform operation
fmul.s f12, f17, f26, rdn # perform operation
fmul.s f12, f17, f26, rmm # perform operation
fmul.s f12, f17, f26, rne # perform operation
fmul.s f12, f17, f26, rtz # perform operation
fmul.s f12, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fmul.s f16, f22, f11, dyn # perform operation
fmul.s f16, f22, f11, rdn # perform operation
fmul.s f16, f22, f11, rmm # perform operation
fmul.s f16, f22, f11, rne # perform operation
fmul.s f16, f22, f11, rtz # perform operation
fmul.s f16, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fmul.s f19, f16, f1, dyn # perform operation
fmul.s f19, f16, f1, rdn # perform operation
fmul.s f19, f16, f1, rmm # perform operation
fmul.s f19, f16, f1, rne # perform operation
fmul.s f19, f16, f1, rtz # perform operation
fmul.s f19, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmul.s f27, f23, f19, dyn # perform operation
fmul.s f27, f23, f19, rdn # perform operation
fmul.s f27, f23, f19, rmm # perform operation
fmul.s f27, f23, f19, rne # perform operation
fmul.s f27, f23, f19, rtz # perform operation
fmul.s f27, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fmul.s f12, f5, f3, dyn # perform operation
fmul.s f12, f5, f3, rdn # perform operation
fmul.s f12, f5, f3, rmm # perform operation
fmul.s f12, f5, f3, rne # perform operation
fmul.s f12, f5, f3, rtz # perform operation
fmul.s f12, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fmul.s f20, f29, f23, dyn # perform operation
fmul.s f20, f29, f23, rdn # perform operation
fmul.s f20, f29, f23, rmm # perform operation
fmul.s f20, f29, f23, rne # perform operation
fmul.s f20, f29, f23, rtz # perform operation
fmul.s f20, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fmul.s f6, f17, f11, dyn # perform operation
fmul.s f6, f17, f11, rdn # perform operation
fmul.s f6, f17, f11, rmm # perform operation
fmul.s f6, f17, f11, rne # perform operation
fmul.s f6, f17, f11, rtz # perform operation
fmul.s f6, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fmul.s f1, f21, f24, dyn # perform operation
fmul.s f1, f21, f24, rdn # perform operation
fmul.s f1, f21, f24, rmm # perform operation
fmul.s f1, f21, f24, rne # perform operation
fmul.s f1, f21, f24, rtz # perform operation
fmul.s f1, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fmul.s f14, f23, f26, dyn # perform operation
fmul.s f14, f23, f26, rdn # perform operation
fmul.s f14, f23, f26, rmm # perform operation
fmul.s f14, f23, f26, rne # perform operation
fmul.s f14, f23, f26, rtz # perform operation
fmul.s f14, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fmul.s f20, f22, f11, dyn # perform operation
fmul.s f20, f22, f11, rdn # perform operation
fmul.s f20, f22, f11, rmm # perform operation
fmul.s f20, f22, f11, rne # perform operation
fmul.s f20, f22, f11, rtz # perform operation
fmul.s f20, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fmul.s f8, f22, f28, dyn # perform operation
fmul.s f8, f22, f28, rdn # perform operation
fmul.s f8, f22, f28, rmm # perform operation
fmul.s f8, f22, f28, rne # perform operation
fmul.s f8, f22, f28, rtz # perform operation
fmul.s f8, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fmul.s f26, f11, f13, dyn # perform operation
fmul.s f26, f11, f13, rdn # perform operation
fmul.s f26, f11, f13, rmm # perform operation
fmul.s f26, f11, f13, rne # perform operation
fmul.s f26, f11, f13, rtz # perform operation
fmul.s f26, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fmul.s f21, f13, f28, dyn # perform operation
fmul.s f21, f13, f28, rdn # perform operation
fmul.s f21, f13, f28, rmm # perform operation
fmul.s f21, f13, f28, rne # perform operation
fmul.s f21, f13, f28, rtz # perform operation
fmul.s f21, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fmul.s f14, f3, f13, dyn # perform operation
fmul.s f14, f3, f13, rdn # perform operation
fmul.s f14, f3, f13, rmm # perform operation
fmul.s f14, f3, f13, rne # perform operation
fmul.s f14, f3, f13, rtz # perform operation
fmul.s f14, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fmul.s f11, f2, f14, dyn # perform operation
fmul.s f11, f2, f14, rdn # perform operation
fmul.s f11, f2, f14, rmm # perform operation
fmul.s f11, f2, f14, rne # perform operation
fmul.s f11, f2, f14, rtz # perform operation
fmul.s f11, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fmul.s f11, f16, f17, dyn # perform operation
fmul.s f11, f16, f17, rdn # perform operation
fmul.s f11, f16, f17, rmm # perform operation
fmul.s f11, f16, f17, rne # perform operation
fmul.s f11, f16, f17, rtz # perform operation
fmul.s f11, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fmul.s f29, f24, f18, dyn # perform operation
fmul.s f29, f24, f18, rdn # perform operation
fmul.s f29, f24, f18, rmm # perform operation
fmul.s f29, f24, f18, rne # perform operation
fmul.s f29, f24, f18, rtz # perform operation
fmul.s f29, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fmul.s f17, f14, f15, dyn # perform operation
fmul.s f17, f14, f15, rdn # perform operation
fmul.s f17, f14, f15, rmm # perform operation
fmul.s f17, f14, f15, rne # perform operation
fmul.s f17, f14, f15, rtz # perform operation
fmul.s f17, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fmul.s f17, f20, f12, dyn # perform operation
fmul.s f17, f20, f12, rdn # perform operation
fmul.s f17, f20, f12, rmm # perform operation
fmul.s f17, f20, f12, rne # perform operation
fmul.s f17, f20, f12, rtz # perform operation
fmul.s f17, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fmul.s f22, f18, f21, dyn # perform operation
fmul.s f22, f18, f21, rdn # perform operation
fmul.s f22, f18, f21, rmm # perform operation
fmul.s f22, f18, f21, rne # perform operation
fmul.s f22, f18, f21, rtz # perform operation
fmul.s f22, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fmul.s f30, f18, f8, dyn # perform operation
fmul.s f30, f18, f8, rdn # perform operation
fmul.s f30, f18, f8, rmm # perform operation
fmul.s f30, f18, f8, rne # perform operation
fmul.s f30, f18, f8, rtz # perform operation
fmul.s f30, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fmul.s f3, f5, f26, dyn # perform operation
fmul.s f3, f5, f26, rdn # perform operation
fmul.s f3, f5, f26, rmm # perform operation
fmul.s f3, f5, f26, rne # perform operation
fmul.s f3, f5, f26, rtz # perform operation
fmul.s f3, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f5, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fmul.s f1, f13, f31, dyn # perform operation
fmul.s f1, f13, f31, rdn # perform operation
fmul.s f1, f13, f31, rmm # perform operation
fmul.s f1, f13, f31, rne # perform operation
fmul.s f1, f13, f31, rtz # perform operation
fmul.s f1, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fmul.s f6, f7, f25, dyn # perform operation
fmul.s f6, f7, f25, rdn # perform operation
fmul.s f6, f7, f25, rmm # perform operation
fmul.s f6, f7, f25, rne # perform operation
fmul.s f6, f7, f25, rtz # perform operation
fmul.s f6, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fmul.s f18, f23, f20, dyn # perform operation
fmul.s f18, f23, f20, rdn # perform operation
fmul.s f18, f23, f20, rmm # perform operation
fmul.s f18, f23, f20, rne # perform operation
fmul.s f18, f23, f20, rtz # perform operation
fmul.s f18, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fmul.s f3, f9, f14, dyn # perform operation
fmul.s f3, f9, f14, rdn # perform operation
fmul.s f3, f9, f14, rmm # perform operation
fmul.s f3, f9, f14, rne # perform operation
fmul.s f3, f9, f14, rtz # perform operation
fmul.s f3, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fmul.s f3, f2, f6, dyn # perform operation
fmul.s f3, f2, f6, rdn # perform operation
fmul.s f3, f2, f6, rmm # perform operation
fmul.s f3, f2, f6, rne # perform operation
fmul.s f3, f2, f6, rtz # perform operation
fmul.s f3, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fmul.s f3, f23, f21, dyn # perform operation
fmul.s f3, f23, f21, rdn # perform operation
fmul.s f3, f23, f21, rmm # perform operation
fmul.s f3, f23, f21, rne # perform operation
fmul.s f3, f23, f21, rtz # perform operation
fmul.s f3, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fmul.s f5, f8, f9, dyn # perform operation
fmul.s f5, f8, f9, rdn # perform operation
fmul.s f5, f8, f9, rmm # perform operation
fmul.s f5, f8, f9, rne # perform operation
fmul.s f5, f8, f9, rtz # perform operation
fmul.s f5, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fmul.s f18, f31, f7, dyn # perform operation
fmul.s f18, f31, f7, rdn # perform operation
fmul.s f18, f31, f7, rmm # perform operation
fmul.s f18, f31, f7, rne # perform operation
fmul.s f18, f31, f7, rtz # perform operation
fmul.s f18, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fmul.s f5, f16, f30, dyn # perform operation
fmul.s f5, f16, f30, rdn # perform operation
fmul.s f5, f16, f30, rmm # perform operation
fmul.s f5, f16, f30, rne # perform operation
fmul.s f5, f16, f30, rtz # perform operation
fmul.s f5, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fmul.s f23, f30, f12, dyn # perform operation
fmul.s f23, f30, f12, rdn # perform operation
fmul.s f23, f30, f12, rmm # perform operation
fmul.s f23, f30, f12, rne # perform operation
fmul.s f23, f30, f12, rtz # perform operation
fmul.s f23, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fmul.s f23, f14, f26, dyn # perform operation
fmul.s f23, f14, f26, rdn # perform operation
fmul.s f23, f14, f26, rmm # perform operation
fmul.s f23, f14, f26, rne # perform operation
fmul.s f23, f14, f26, rtz # perform operation
fmul.s f23, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fmul.s f19, f5, f31, dyn # perform operation
fmul.s f19, f5, f31, rdn # perform operation
fmul.s f19, f5, f31, rmm # perform operation
fmul.s f19, f5, f31, rne # perform operation
fmul.s f19, f5, f31, rtz # perform operation
fmul.s f19, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fmul.s f27, f8, f23, dyn # perform operation
fmul.s f27, f8, f23, rdn # perform operation
fmul.s f27, f8, f23, rmm # perform operation
fmul.s f27, f8, f23, rne # perform operation
fmul.s f27, f8, f23, rtz # perform operation
fmul.s f27, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fmul.s f1, f25, f13, dyn # perform operation
fmul.s f1, f25, f13, rdn # perform operation
fmul.s f1, f25, f13, rmm # perform operation
fmul.s f1, f25, f13, rne # perform operation
fmul.s f1, f25, f13, rtz # perform operation
fmul.s f1, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fmul.s f26, f29, f15, dyn # perform operation
fmul.s f26, f29, f15, rdn # perform operation
fmul.s f26, f29, f15, rmm # perform operation
fmul.s f26, f29, f15, rne # perform operation
fmul.s f26, f29, f15, rtz # perform operation
fmul.s f26, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fmul.s f28, f12, f26, dyn # perform operation
fmul.s f28, f12, f26, rdn # perform operation
fmul.s f28, f12, f26, rmm # perform operation
fmul.s f28, f12, f26, rne # perform operation
fmul.s f28, f12, f26, rtz # perform operation
fmul.s f28, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fmul.s f22, f29, f17, dyn # perform operation
fmul.s f22, f29, f17, rdn # perform operation
fmul.s f22, f29, f17, rmm # perform operation
fmul.s f22, f29, f17, rne # perform operation
fmul.s f22, f29, f17, rtz # perform operation
fmul.s f22, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fmul.s f11, f2, f8, dyn # perform operation
fmul.s f11, f2, f8, rdn # perform operation
fmul.s f11, f2, f8, rmm # perform operation
fmul.s f11, f2, f8, rne # perform operation
fmul.s f11, f2, f8, rtz # perform operation
fmul.s f11, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fmul.s f31, f21, f27, dyn # perform operation
fmul.s f31, f21, f27, rdn # perform operation
fmul.s f31, f21, f27, rmm # perform operation
fmul.s f31, f21, f27, rne # perform operation
fmul.s f31, f21, f27, rtz # perform operation
fmul.s f31, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fmul.s f17, f7, f28, dyn # perform operation
fmul.s f17, f7, f28, rdn # perform operation
fmul.s f17, f7, f28, rmm # perform operation
fmul.s f17, f7, f28, rne # perform operation
fmul.s f17, f7, f28, rtz # perform operation
fmul.s f17, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fmul.s f29, f13, f27, dyn # perform operation
fmul.s f29, f13, f27, rdn # perform operation
fmul.s f29, f13, f27, rmm # perform operation
fmul.s f29, f13, f27, rne # perform operation
fmul.s f29, f13, f27, rtz # perform operation
fmul.s f29, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fmul.s f29, f28, f10, dyn # perform operation
fmul.s f29, f28, f10, rdn # perform operation
fmul.s f29, f28, f10, rmm # perform operation
fmul.s f29, f28, f10, rne # perform operation
fmul.s f29, f28, f10, rtz # perform operation
fmul.s f29, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f1, f10, f11, dyn # perform operation
fmul.s f1, f10, f11, rdn # perform operation
fmul.s f1, f10, f11, rmm # perform operation
fmul.s f1, f10, f11, rne # perform operation
fmul.s f1, f10, f11, rtz # perform operation
fmul.s f1, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fmul.s f12, f14, f26, dyn # perform operation
fmul.s f12, f14, f26, rdn # perform operation
fmul.s f12, f14, f26, rmm # perform operation
fmul.s f12, f14, f26, rne # perform operation
fmul.s f12, f14, f26, rtz # perform operation
fmul.s f12, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fmul.s f25, f29, f31, dyn # perform operation
fmul.s f25, f29, f31, rdn # perform operation
fmul.s f25, f29, f31, rmm # perform operation
fmul.s f25, f29, f31, rne # perform operation
fmul.s f25, f29, f31, rtz # perform operation
fmul.s f25, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f23, f27, f13, dyn # perform operation
fmul.s f23, f27, f13, rdn # perform operation
fmul.s f23, f27, f13, rmm # perform operation
fmul.s f23, f27, f13, rne # perform operation
fmul.s f23, f27, f13, rtz # perform operation
fmul.s f23, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fmul.s f15, f30, f29, dyn # perform operation
fmul.s f15, f30, f29, rdn # perform operation
fmul.s f15, f30, f29, rmm # perform operation
fmul.s f15, f30, f29, rne # perform operation
fmul.s f15, f30, f29, rtz # perform operation
fmul.s f15, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f5, f18, f10, dyn # perform operation
fmul.s f5, f18, f10, rdn # perform operation
fmul.s f5, f18, f10, rmm # perform operation
fmul.s f5, f18, f10, rne # perform operation
fmul.s f5, f18, f10, rtz # perform operation
fmul.s f5, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fmul.s f14, f13, f12, dyn # perform operation
fmul.s f14, f13, f12, rdn # perform operation
fmul.s f14, f13, f12, rmm # perform operation
fmul.s f14, f13, f12, rne # perform operation
fmul.s f14, f13, f12, rtz # perform operation
fmul.s f14, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fmul.s f23, f20, f24, dyn # perform operation
fmul.s f23, f20, f24, rdn # perform operation
fmul.s f23, f20, f24, rmm # perform operation
fmul.s f23, f20, f24, rne # perform operation
fmul.s f23, f20, f24, rtz # perform operation
fmul.s f23, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fmul.s f5, f19, f2, dyn # perform operation
fmul.s f5, f19, f2, rdn # perform operation
fmul.s f5, f19, f2, rmm # perform operation
fmul.s f5, f19, f2, rne # perform operation
fmul.s f5, f19, f2, rtz # perform operation
fmul.s f5, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
fmul.s f25, f12, f13, dyn # perform operation
fmul.s f25, f12, f13, rdn # perform operation
fmul.s f25, f12, f13, rmm # perform operation
fmul.s f25, f12, f13, rne # perform operation
fmul.s f25, f12, f13, rtz # perform operation
fmul.s f25, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f12, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fmul.s f16, f29, f11, dyn # perform operation
fmul.s f16, f29, f11, rdn # perform operation
fmul.s f16, f29, f11, rmm # perform operation
fmul.s f16, f29, f11, rne # perform operation
fmul.s f16, f29, f11, rtz # perform operation
fmul.s f16, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fmul.s f11, f19, f13, dyn # perform operation
fmul.s f11, f19, f13, rdn # perform operation
fmul.s f11, f19, f13, rmm # perform operation
fmul.s f11, f19, f13, rne # perform operation
fmul.s f11, f19, f13, rtz # perform operation
fmul.s f11, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fmul.s f7, f6, f21, dyn # perform operation
fmul.s f7, f6, f21, rdn # perform operation
fmul.s f7, f6, f21, rmm # perform operation
fmul.s f7, f6, f21, rne # perform operation
fmul.s f7, f6, f21, rtz # perform operation
fmul.s f7, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f20, f15, f2, dyn # perform operation
fmul.s f20, f15, f2, rdn # perform operation
fmul.s f20, f15, f2, rmm # perform operation
fmul.s f20, f15, f2, rne # perform operation
fmul.s f20, f15, f2, rtz # perform operation
fmul.s f20, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fmul.s f19, f15, f8, dyn # perform operation
fmul.s f19, f15, f8, rdn # perform operation
fmul.s f19, f15, f8, rmm # perform operation
fmul.s f19, f15, f8, rne # perform operation
fmul.s f19, f15, f8, rtz # perform operation
fmul.s f19, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fmul.s f13, f28, f18, dyn # perform operation
fmul.s f13, f28, f18, rdn # perform operation
fmul.s f13, f28, f18, rmm # perform operation
fmul.s f13, f28, f18, rne # perform operation
fmul.s f13, f28, f18, rtz # perform operation
fmul.s f13, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fmul.s f1, f31, f28, dyn # perform operation
fmul.s f1, f31, f28, rdn # perform operation
fmul.s f1, f31, f28, rmm # perform operation
fmul.s f1, f31, f28, rne # perform operation
fmul.s f1, f31, f28, rtz # perform operation
fmul.s f1, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fmul.s f6, f29, f16, dyn # perform operation
fmul.s f6, f29, f16, rdn # perform operation
fmul.s f6, f29, f16, rmm # perform operation
fmul.s f6, f29, f16, rne # perform operation
fmul.s f6, f29, f16, rtz # perform operation
fmul.s f6, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fmul.s f14, f5, f22, dyn # perform operation
fmul.s f14, f5, f22, rdn # perform operation
fmul.s f14, f5, f22, rmm # perform operation
fmul.s f14, f5, f22, rne # perform operation
fmul.s f14, f5, f22, rtz # perform operation
fmul.s f14, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fmul.s f24, f27, f30, dyn # perform operation
fmul.s f24, f27, f30, rdn # perform operation
fmul.s f24, f27, f30, rmm # perform operation
fmul.s f24, f27, f30, rne # perform operation
fmul.s f24, f27, f30, rtz # perform operation
fmul.s f24, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fmul.s f22, f5, f14, dyn # perform operation
fmul.s f22, f5, f14, rdn # perform operation
fmul.s f22, f5, f14, rmm # perform operation
fmul.s f22, f5, f14, rne # perform operation
fmul.s f22, f5, f14, rtz # perform operation
fmul.s f22, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmul.s f19, f23, f17, dyn # perform operation
fmul.s f19, f23, f17, rdn # perform operation
fmul.s f19, f23, f17, rmm # perform operation
fmul.s f19, f23, f17, rne # perform operation
fmul.s f19, f23, f17, rtz # perform operation
fmul.s f19, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fmul.s f6, f21, f31, dyn # perform operation
fmul.s f6, f21, f31, rdn # perform operation
fmul.s f6, f21, f31, rmm # perform operation
fmul.s f6, f21, f31, rne # perform operation
fmul.s f6, f21, f31, rtz # perform operation
fmul.s f6, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmul.s f19, f15, f20, dyn # perform operation
fmul.s f19, f15, f20, rdn # perform operation
fmul.s f19, f15, f20, rmm # perform operation
fmul.s f19, f15, f20, rne # perform operation
fmul.s f19, f15, f20, rtz # perform operation
fmul.s f19, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fmul.s f13, f7, f21, dyn # perform operation
fmul.s f13, f7, f21, rdn # perform operation
fmul.s f13, f7, f21, rmm # perform operation
fmul.s f13, f7, f21, rne # perform operation
fmul.s f13, f7, f21, rtz # perform operation
fmul.s f13, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fmul.s f18, f2, f8, dyn # perform operation
fmul.s f18, f2, f8, rdn # perform operation
fmul.s f18, f2, f8, rmm # perform operation
fmul.s f18, f2, f8, rne # perform operation
fmul.s f18, f2, f8, rtz # perform operation
fmul.s f18, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fmul.s f11, f29, f31, dyn # perform operation
fmul.s f11, f29, f31, rdn # perform operation
fmul.s f11, f29, f31, rmm # perform operation
fmul.s f11, f29, f31, rne # perform operation
fmul.s f11, f29, f31, rtz # perform operation
fmul.s f11, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fmul.s f5, f3, f8, dyn # perform operation
fmul.s f5, f3, f8, rdn # perform operation
fmul.s f5, f3, f8, rmm # perform operation
fmul.s f5, f3, f8, rne # perform operation
fmul.s f5, f3, f8, rtz # perform operation
fmul.s f5, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fmul.s f29, f14, f30, dyn # perform operation
fmul.s f29, f14, f30, rdn # perform operation
fmul.s f29, f14, f30, rmm # perform operation
fmul.s f29, f14, f30, rne # perform operation
fmul.s f29, f14, f30, rtz # perform operation
fmul.s f29, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fmul.s f7, f19, f23, dyn # perform operation
fmul.s f7, f19, f23, rdn # perform operation
fmul.s f7, f19, f23, rmm # perform operation
fmul.s f7, f19, f23, rne # perform operation
fmul.s f7, f19, f23, rtz # perform operation
fmul.s f7, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fmul.s f10, f26, f19, dyn # perform operation
fmul.s f10, f26, f19, rdn # perform operation
fmul.s f10, f26, f19, rmm # perform operation
fmul.s f10, f26, f19, rne # perform operation
fmul.s f10, f26, f19, rtz # perform operation
fmul.s f10, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fmul.s f6, f30, f3, dyn # perform operation
fmul.s f6, f30, f3, rdn # perform operation
fmul.s f6, f30, f3, rmm # perform operation
fmul.s f6, f30, f3, rne # perform operation
fmul.s f6, f30, f3, rtz # perform operation
fmul.s f6, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fmul.s f20, f24, f17, dyn # perform operation
fmul.s f20, f24, f17, rdn # perform operation
fmul.s f20, f24, f17, rmm # perform operation
fmul.s f20, f24, f17, rne # perform operation
fmul.s f20, f24, f17, rtz # perform operation
fmul.s f20, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmul.s f28, f9, f25, dyn # perform operation
fmul.s f28, f9, f25, rdn # perform operation
fmul.s f28, f9, f25, rmm # perform operation
fmul.s f28, f9, f25, rne # perform operation
fmul.s f28, f9, f25, rtz # perform operation
fmul.s f28, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fmul.s f14, f28, f27, dyn # perform operation
fmul.s f14, f28, f27, rdn # perform operation
fmul.s f14, f28, f27, rmm # perform operation
fmul.s f14, f28, f27, rne # perform operation
fmul.s f14, f28, f27, rtz # perform operation
fmul.s f14, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fmul.s f5, f16, f24, dyn # perform operation
fmul.s f5, f16, f24, rdn # perform operation
fmul.s f5, f16, f24, rmm # perform operation
fmul.s f5, f16, f24, rne # perform operation
fmul.s f5, f16, f24, rtz # perform operation
fmul.s f5, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fmul.s f1, f10, f6, dyn # perform operation
fmul.s f1, f10, f6, rdn # perform operation
fmul.s f1, f10, f6, rmm # perform operation
fmul.s f1, f10, f6, rne # perform operation
fmul.s f1, f10, f6, rtz # perform operation
fmul.s f1, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fmul.s f17, f23, f12, dyn # perform operation
fmul.s f17, f23, f12, rdn # perform operation
fmul.s f17, f23, f12, rmm # perform operation
fmul.s f17, f23, f12, rne # perform operation
fmul.s f17, f23, f12, rtz # perform operation
fmul.s f17, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fmul.s f7, f9, f21, dyn # perform operation
fmul.s f7, f9, f21, rdn # perform operation
fmul.s f7, f9, f21, rmm # perform operation
fmul.s f7, f9, f21, rne # perform operation
fmul.s f7, f9, f21, rtz # perform operation
fmul.s f7, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fmul.s f8, f16, f12, dyn # perform operation
fmul.s f8, f16, f12, rdn # perform operation
fmul.s f8, f16, f12, rmm # perform operation
fmul.s f8, f16, f12, rne # perform operation
fmul.s f8, f16, f12, rtz # perform operation
fmul.s f8, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fmul.s f21, f3, f17, dyn # perform operation
fmul.s f21, f3, f17, rdn # perform operation
fmul.s f21, f3, f17, rmm # perform operation
fmul.s f21, f3, f17, rne # perform operation
fmul.s f21, f3, f17, rtz # perform operation
fmul.s f21, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f3, f24, f2, dyn # perform operation
fmul.s f3, f24, f2, rdn # perform operation
fmul.s f3, f24, f2, rmm # perform operation
fmul.s f3, f24, f2, rne # perform operation
fmul.s f3, f24, f2, rtz # perform operation
fmul.s f3, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmul.s f21, f17, f7, dyn # perform operation
fmul.s f21, f17, f7, rdn # perform operation
fmul.s f21, f17, f7, rmm # perform operation
fmul.s f21, f17, f7, rne # perform operation
fmul.s f21, f17, f7, rtz # perform operation
fmul.s f21, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f13, f23, f9, dyn # perform operation
fmul.s f13, f23, f9, rdn # perform operation
fmul.s f13, f23, f9, rmm # perform operation
fmul.s f13, f23, f9, rne # perform operation
fmul.s f13, f23, f9, rtz # perform operation
fmul.s f13, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fmul.s f6, f14, f30, dyn # perform operation
fmul.s f6, f14, f30, rdn # perform operation
fmul.s f6, f14, f30, rmm # perform operation
fmul.s f6, f14, f30, rne # perform operation
fmul.s f6, f14, f30, rtz # perform operation
fmul.s f6, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fmul.s f12, f20, f23, dyn # perform operation
fmul.s f12, f20, f23, rdn # perform operation
fmul.s f12, f20, f23, rmm # perform operation
fmul.s f12, f20, f23, rne # perform operation
fmul.s f12, f20, f23, rtz # perform operation
fmul.s f12, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fmul.s f22, f16, f26, dyn # perform operation
fmul.s f22, f16, f26, rdn # perform operation
fmul.s f22, f16, f26, rmm # perform operation
fmul.s f22, f16, f26, rne # perform operation
fmul.s f22, f16, f26, rtz # perform operation
fmul.s f22, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fmul.s f29, f25, f16, dyn # perform operation
fmul.s f29, f25, f16, rdn # perform operation
fmul.s f29, f25, f16, rmm # perform operation
fmul.s f29, f25, f16, rne # perform operation
fmul.s f29, f25, f16, rtz # perform operation
fmul.s f29, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fmul.s f17, f6, f1, dyn # perform operation
fmul.s f17, f6, f1, rdn # perform operation
fmul.s f17, f6, f1, rmm # perform operation
fmul.s f17, f6, f1, rne # perform operation
fmul.s f17, f6, f1, rtz # perform operation
fmul.s f17, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fmul.s f17, f29, f31, dyn # perform operation
fmul.s f17, f29, f31, rdn # perform operation
fmul.s f17, f29, f31, rmm # perform operation
fmul.s f17, f29, f31, rne # perform operation
fmul.s f17, f29, f31, rtz # perform operation
fmul.s f17, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fmul.s f12, f27, f30, dyn # perform operation
fmul.s f12, f27, f30, rdn # perform operation
fmul.s f12, f27, f30, rmm # perform operation
fmul.s f12, f27, f30, rne # perform operation
fmul.s f12, f27, f30, rtz # perform operation
fmul.s f12, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fmul.s f1, f26, f18, dyn # perform operation
fmul.s f1, f26, f18, rdn # perform operation
fmul.s f1, f26, f18, rmm # perform operation
fmul.s f1, f26, f18, rne # perform operation
fmul.s f1, f26, f18, rtz # perform operation
fmul.s f1, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fmul.s f2, f14, f9, dyn # perform operation
fmul.s f2, f14, f9, rdn # perform operation
fmul.s f2, f14, f9, rmm # perform operation
fmul.s f2, f14, f9, rne # perform operation
fmul.s f2, f14, f9, rtz # perform operation
fmul.s f2, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fmul.s f23, f16, f12, dyn # perform operation
fmul.s f23, f16, f12, rdn # perform operation
fmul.s f23, f16, f12, rmm # perform operation
fmul.s f23, f16, f12, rne # perform operation
fmul.s f23, f16, f12, rtz # perform operation
fmul.s f23, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fmul.s f16, f6, f7, dyn # perform operation
fmul.s f16, f6, f7, rdn # perform operation
fmul.s f16, f6, f7, rmm # perform operation
fmul.s f16, f6, f7, rne # perform operation
fmul.s f16, f6, f7, rtz # perform operation
fmul.s f16, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fmul.s f27, f23, f24, dyn # perform operation
fmul.s f27, f23, f24, rdn # perform operation
fmul.s f27, f23, f24, rmm # perform operation
fmul.s f27, f23, f24, rne # perform operation
fmul.s f27, f23, f24, rtz # perform operation
fmul.s f27, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fmul.s f9, f11, f7, dyn # perform operation
fmul.s f9, f11, f7, rdn # perform operation
fmul.s f9, f11, f7, rmm # perform operation
fmul.s f9, f11, f7, rne # perform operation
fmul.s f9, f11, f7, rtz # perform operation
fmul.s f9, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fmul.s f22, f13, f29, dyn # perform operation
fmul.s f22, f13, f29, rdn # perform operation
fmul.s f22, f13, f29, rmm # perform operation
fmul.s f22, f13, f29, rne # perform operation
fmul.s f22, f13, f29, rtz # perform operation
fmul.s f22, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fmul.s f20, f19, f2, dyn # perform operation
fmul.s f20, f19, f2, rdn # perform operation
fmul.s f20, f19, f2, rmm # perform operation
fmul.s f20, f19, f2, rne # perform operation
fmul.s f20, f19, f2, rtz # perform operation
fmul.s f20, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fmul.s f16, f27, f8, dyn # perform operation
fmul.s f16, f27, f8, rdn # perform operation
fmul.s f16, f27, f8, rmm # perform operation
fmul.s f16, f27, f8, rne # perform operation
fmul.s f16, f27, f8, rtz # perform operation
fmul.s f16, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fmul.s f2, f21, f12, dyn # perform operation
fmul.s f2, f21, f12, rdn # perform operation
fmul.s f2, f21, f12, rmm # perform operation
fmul.s f2, f21, f12, rne # perform operation
fmul.s f2, f21, f12, rtz # perform operation
fmul.s f2, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fmul.s f31, f3, f27, dyn # perform operation
fmul.s f31, f3, f27, rdn # perform operation
fmul.s f31, f3, f27, rmm # perform operation
fmul.s f31, f3, f27, rne # perform operation
fmul.s f31, f3, f27, rtz # perform operation
fmul.s f31, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fmul.s f20, f18, f14, dyn # perform operation
fmul.s f20, f18, f14, rdn # perform operation
fmul.s f20, f18, f14, rmm # perform operation
fmul.s f20, f18, f14, rne # perform operation
fmul.s f20, f18, f14, rtz # perform operation
fmul.s f20, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fmul.s f16, f21, f23, dyn # perform operation
fmul.s f16, f21, f23, rdn # perform operation
fmul.s f16, f21, f23, rmm # perform operation
fmul.s f16, f21, f23, rne # perform operation
fmul.s f16, f21, f23, rtz # perform operation
fmul.s f16, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fmul.s f30, f7, f26, dyn # perform operation
fmul.s f30, f7, f26, rdn # perform operation
fmul.s f30, f7, f26, rmm # perform operation
fmul.s f30, f7, f26, rne # perform operation
fmul.s f30, f7, f26, rtz # perform operation
fmul.s f30, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
fmul.s f8, f28, f27, dyn # perform operation
fmul.s f8, f28, f27, rdn # perform operation
fmul.s f8, f28, f27, rmm # perform operation
fmul.s f8, f28, f27, rne # perform operation
fmul.s f8, f28, f27, rtz # perform operation
fmul.s f8, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fmul.s f13, f15, f25, dyn # perform operation
fmul.s f13, f15, f25, rdn # perform operation
fmul.s f13, f15, f25, rmm # perform operation
fmul.s f13, f15, f25, rne # perform operation
fmul.s f13, f15, f25, rtz # perform operation
fmul.s f13, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fmul.s f7, f6, f27, dyn # perform operation
fmul.s f7, f6, f27, rdn # perform operation
fmul.s f7, f6, f27, rmm # perform operation
fmul.s f7, f6, f27, rne # perform operation
fmul.s f7, f6, f27, rtz # perform operation
fmul.s f7, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmul.s f9, f18, f3, dyn # perform operation
fmul.s f9, f18, f3, rdn # perform operation
fmul.s f9, f18, f3, rmm # perform operation
fmul.s f9, f18, f3, rne # perform operation
fmul.s f9, f18, f3, rtz # perform operation
fmul.s f9, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fmul.s f9, f6, f12, dyn # perform operation
fmul.s f9, f6, f12, rdn # perform operation
fmul.s f9, f6, f12, rmm # perform operation
fmul.s f9, f6, f12, rne # perform operation
fmul.s f9, f6, f12, rtz # perform operation
fmul.s f9, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fmul.s f16, f3, f12, dyn # perform operation
fmul.s f16, f3, f12, rdn # perform operation
fmul.s f16, f3, f12, rmm # perform operation
fmul.s f16, f3, f12, rne # perform operation
fmul.s f16, f3, f12, rtz # perform operation
fmul.s f16, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fmul.s f17, f31, f18, dyn # perform operation
fmul.s f17, f31, f18, rdn # perform operation
fmul.s f17, f31, f18, rmm # perform operation
fmul.s f17, f31, f18, rne # perform operation
fmul.s f17, f31, f18, rtz # perform operation
fmul.s f17, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fmul.s f17, f28, f27, dyn # perform operation
fmul.s f17, f28, f27, rdn # perform operation
fmul.s f17, f28, f27, rmm # perform operation
fmul.s f17, f28, f27, rne # perform operation
fmul.s f17, f28, f27, rtz # perform operation
fmul.s f17, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fmul.s f15, f24, f11, dyn # perform operation
fmul.s f15, f24, f11, rdn # perform operation
fmul.s f15, f24, f11, rmm # perform operation
fmul.s f15, f24, f11, rne # perform operation
fmul.s f15, f24, f11, rtz # perform operation
fmul.s f15, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fmul.s f21, f20, f9, dyn # perform operation
fmul.s f21, f20, f9, rdn # perform operation
fmul.s f21, f20, f9, rmm # perform operation
fmul.s f21, f20, f9, rne # perform operation
fmul.s f21, f20, f9, rtz # perform operation
fmul.s f21, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fmul.s f2, f27, f20, dyn # perform operation
fmul.s f2, f27, f20, rdn # perform operation
fmul.s f2, f27, f20, rmm # perform operation
fmul.s f2, f27, f20, rne # perform operation
fmul.s f2, f27, f20, rtz # perform operation
fmul.s f2, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fmul.s f18, f31, f11, dyn # perform operation
fmul.s f18, f31, f11, rdn # perform operation
fmul.s f18, f31, f11, rmm # perform operation
fmul.s f18, f31, f11, rne # perform operation
fmul.s f18, f31, f11, rtz # perform operation
fmul.s f18, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fmul.s f18, f9, f11, dyn # perform operation
fmul.s f18, f9, f11, rdn # perform operation
fmul.s f18, f9, f11, rmm # perform operation
fmul.s f18, f9, f11, rne # perform operation
fmul.s f18, f9, f11, rtz # perform operation
fmul.s f18, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fmul.s f8, f28, f22, dyn # perform operation
fmul.s f8, f28, f22, rdn # perform operation
fmul.s f8, f28, f22, rmm # perform operation
fmul.s f8, f28, f22, rne # perform operation
fmul.s f8, f28, f22, rtz # perform operation
fmul.s f8, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fmul.s f2, f6, f1, dyn # perform operation
fmul.s f2, f6, f1, rdn # perform operation
fmul.s f2, f6, f1, rmm # perform operation
fmul.s f2, f6, f1, rne # perform operation
fmul.s f2, f6, f1, rtz # perform operation
fmul.s f2, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fmul.s f21, f19, f7, dyn # perform operation
fmul.s f21, f19, f7, rdn # perform operation
fmul.s f21, f19, f7, rmm # perform operation
fmul.s f21, f19, f7, rne # perform operation
fmul.s f21, f19, f7, rtz # perform operation
fmul.s f21, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fmul.s f8, f1, f21, dyn # perform operation
fmul.s f8, f1, f21, rdn # perform operation
fmul.s f8, f1, f21, rmm # perform operation
fmul.s f8, f1, f21, rne # perform operation
fmul.s f8, f1, f21, rtz # perform operation
fmul.s f8, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fmul.s f24, f1, f8, dyn # perform operation
fmul.s f24, f1, f8, rdn # perform operation
fmul.s f24, f1, f8, rmm # perform operation
fmul.s f24, f1, f8, rne # perform operation
fmul.s f24, f1, f8, rtz # perform operation
fmul.s f24, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f31, f15, f1, dyn # perform operation
fmul.s f31, f15, f1, rdn # perform operation
fmul.s f31, f15, f1, rmm # perform operation
fmul.s f31, f15, f1, rne # perform operation
fmul.s f31, f15, f1, rtz # perform operation
fmul.s f31, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f24, f8, f11, dyn # perform operation
fmul.s f24, f8, f11, rdn # perform operation
fmul.s f24, f8, f11, rmm # perform operation
fmul.s f24, f8, f11, rne # perform operation
fmul.s f24, f8, f11, rtz # perform operation
fmul.s f24, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fmul.s f26, f27, f12, dyn # perform operation
fmul.s f26, f27, f12, rdn # perform operation
fmul.s f26, f27, f12, rmm # perform operation
fmul.s f26, f27, f12, rne # perform operation
fmul.s f26, f27, f12, rtz # perform operation
fmul.s f26, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fmul.s f19, f28, f29, dyn # perform operation
fmul.s f19, f28, f29, rdn # perform operation
fmul.s f19, f28, f29, rmm # perform operation
fmul.s f19, f28, f29, rne # perform operation
fmul.s f19, f28, f29, rtz # perform operation
fmul.s f19, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fmul.s f19, f29, f2, dyn # perform operation
fmul.s f19, f29, f2, rdn # perform operation
fmul.s f19, f29, f2, rmm # perform operation
fmul.s f19, f29, f2, rne # perform operation
fmul.s f19, f29, f2, rtz # perform operation
fmul.s f19, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fmul.s f9, f25, f30, dyn # perform operation
fmul.s f9, f25, f30, rdn # perform operation
fmul.s f9, f25, f30, rmm # perform operation
fmul.s f9, f25, f30, rne # perform operation
fmul.s f9, f25, f30, rtz # perform operation
fmul.s f9, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fmul.s f8, f27, f11, dyn # perform operation
fmul.s f8, f27, f11, rdn # perform operation
fmul.s f8, f27, f11, rmm # perform operation
fmul.s f8, f27, f11, rne # perform operation
fmul.s f8, f27, f11, rtz # perform operation
fmul.s f8, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fmul.s f6, f14, f12, dyn # perform operation
fmul.s f6, f14, f12, rdn # perform operation
fmul.s f6, f14, f12, rmm # perform operation
fmul.s f6, f14, f12, rne # perform operation
fmul.s f6, f14, f12, rtz # perform operation
fmul.s f6, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fmul.s f30, f19, f15, dyn # perform operation
fmul.s f30, f19, f15, rdn # perform operation
fmul.s f30, f19, f15, rmm # perform operation
fmul.s f30, f19, f15, rne # perform operation
fmul.s f30, f19, f15, rtz # perform operation
fmul.s f30, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fmul.s f16, f2, f31, dyn # perform operation
fmul.s f16, f2, f31, rdn # perform operation
fmul.s f16, f2, f31, rmm # perform operation
fmul.s f16, f2, f31, rne # perform operation
fmul.s f16, f2, f31, rtz # perform operation
fmul.s f16, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f2, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fmul.s f11, f31, f9, dyn # perform operation
fmul.s f11, f31, f9, rdn # perform operation
fmul.s f11, f31, f9, rmm # perform operation
fmul.s f11, f31, f9, rne # perform operation
fmul.s f11, f31, f9, rtz # perform operation
fmul.s f11, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fmul.s f21, f23, f31, dyn # perform operation
fmul.s f21, f23, f31, rdn # perform operation
fmul.s f21, f23, f31, rmm # perform operation
fmul.s f21, f23, f31, rne # perform operation
fmul.s f21, f23, f31, rtz # perform operation
fmul.s f21, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fmul.s f3, f25, f11, dyn # perform operation
fmul.s f3, f25, f11, rdn # perform operation
fmul.s f3, f25, f11, rmm # perform operation
fmul.s f3, f25, f11, rne # perform operation
fmul.s f3, f25, f11, rtz # perform operation
fmul.s f3, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fmul.s f3, f22, f24, dyn # perform operation
fmul.s f3, f22, f24, rdn # perform operation
fmul.s f3, f22, f24, rmm # perform operation
fmul.s f3, f22, f24, rne # perform operation
fmul.s f3, f22, f24, rtz # perform operation
fmul.s f3, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fmul.s f22, f10, f1, dyn # perform operation
fmul.s f22, f10, f1, rdn # perform operation
fmul.s f22, f10, f1, rmm # perform operation
fmul.s f22, f10, f1, rne # perform operation
fmul.s f22, f10, f1, rtz # perform operation
fmul.s f22, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f7, f29, f24, dyn # perform operation
fmul.s f7, f29, f24, rdn # perform operation
fmul.s f7, f29, f24, rmm # perform operation
fmul.s f7, f29, f24, rne # perform operation
fmul.s f7, f29, f24, rtz # perform operation
fmul.s f7, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmul.s f3, f29, f19, dyn # perform operation
fmul.s f3, f29, f19, rdn # perform operation
fmul.s f3, f29, f19, rmm # perform operation
fmul.s f3, f29, f19, rne # perform operation
fmul.s f3, f29, f19, rtz # perform operation
fmul.s f3, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fmul.s f3, f18, f6, dyn # perform operation
fmul.s f3, f18, f6, rdn # perform operation
fmul.s f3, f18, f6, rmm # perform operation
fmul.s f3, f18, f6, rne # perform operation
fmul.s f3, f18, f6, rtz # perform operation
fmul.s f3, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fmul.s f31, f20, f1, dyn # perform operation
fmul.s f31, f20, f1, rdn # perform operation
fmul.s f31, f20, f1, rmm # perform operation
fmul.s f31, f20, f1, rne # perform operation
fmul.s f31, f20, f1, rtz # perform operation
fmul.s f31, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fmul.s f26, f3, f23, dyn # perform operation
fmul.s f26, f3, f23, rdn # perform operation
fmul.s f26, f3, f23, rmm # perform operation
fmul.s f26, f3, f23, rne # perform operation
fmul.s f26, f3, f23, rtz # perform operation
fmul.s f26, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fmul.s f14, f17, f24, dyn # perform operation
fmul.s f14, f17, f24, rdn # perform operation
fmul.s f14, f17, f24, rmm # perform operation
fmul.s f14, f17, f24, rne # perform operation
fmul.s f14, f17, f24, rtz # perform operation
fmul.s f14, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmul.s f5, f29, f23, dyn # perform operation
fmul.s f5, f29, f23, rdn # perform operation
fmul.s f5, f29, f23, rmm # perform operation
fmul.s f5, f29, f23, rne # perform operation
fmul.s f5, f29, f23, rtz # perform operation
fmul.s f5, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fmul.s f29, f20, f9, dyn # perform operation
fmul.s f29, f20, f9, rdn # perform operation
fmul.s f29, f20, f9, rmm # perform operation
fmul.s f29, f20, f9, rne # perform operation
fmul.s f29, f20, f9, rtz # perform operation
fmul.s f29, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fmul.s f14, f24, f3, dyn # perform operation
fmul.s f14, f24, f3, rdn # perform operation
fmul.s f14, f24, f3, rmm # perform operation
fmul.s f14, f24, f3, rne # perform operation
fmul.s f14, f24, f3, rtz # perform operation
fmul.s f14, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fmul.s f21, f8, f12, dyn # perform operation
fmul.s f21, f8, f12, rdn # perform operation
fmul.s f21, f8, f12, rmm # perform operation
fmul.s f21, f8, f12, rne # perform operation
fmul.s f21, f8, f12, rtz # perform operation
fmul.s f21, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fmul.s f16, f13, f17, dyn # perform operation
fmul.s f16, f13, f17, rdn # perform operation
fmul.s f16, f13, f17, rmm # perform operation
fmul.s f16, f13, f17, rne # perform operation
fmul.s f16, f13, f17, rtz # perform operation
fmul.s f16, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fmul.s f16, f6, f7, dyn # perform operation
fmul.s f16, f6, f7, rdn # perform operation
fmul.s f16, f6, f7, rmm # perform operation
fmul.s f16, f6, f7, rne # perform operation
fmul.s f16, f6, f7, rtz # perform operation
fmul.s f16, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fmul.s f25, f10, f3, dyn # perform operation
fmul.s f25, f10, f3, rdn # perform operation
fmul.s f25, f10, f3, rmm # perform operation
fmul.s f25, f10, f3, rne # perform operation
fmul.s f25, f10, f3, rtz # perform operation
fmul.s f25, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fmul.s f11, f29, f30, dyn # perform operation
fmul.s f11, f29, f30, rdn # perform operation
fmul.s f11, f29, f30, rmm # perform operation
fmul.s f11, f29, f30, rne # perform operation
fmul.s f11, f29, f30, rtz # perform operation
fmul.s f11, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmul.s f27, f15, f17, dyn # perform operation
fmul.s f27, f15, f17, rdn # perform operation
fmul.s f27, f15, f17, rmm # perform operation
fmul.s f27, f15, f17, rne # perform operation
fmul.s f27, f15, f17, rtz # perform operation
fmul.s f27, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fmul.s f12, f3, f11, dyn # perform operation
fmul.s f12, f3, f11, rdn # perform operation
fmul.s f12, f3, f11, rmm # perform operation
fmul.s f12, f3, f11, rne # perform operation
fmul.s f12, f3, f11, rtz # perform operation
fmul.s f12, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fmul.s f27, f14, f21, dyn # perform operation
fmul.s f27, f14, f21, rdn # perform operation
fmul.s f27, f14, f21, rmm # perform operation
fmul.s f27, f14, f21, rne # perform operation
fmul.s f27, f14, f21, rtz # perform operation
fmul.s f27, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fmul.s f20, f11, f24, dyn # perform operation
fmul.s f20, f11, f24, rdn # perform operation
fmul.s f20, f11, f24, rmm # perform operation
fmul.s f20, f11, f24, rne # perform operation
fmul.s f20, f11, f24, rtz # perform operation
fmul.s f20, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fmul.s f29, f27, f9, dyn # perform operation
fmul.s f29, f27, f9, rdn # perform operation
fmul.s f29, f27, f9, rmm # perform operation
fmul.s f29, f27, f9, rne # perform operation
fmul.s f29, f27, f9, rtz # perform operation
fmul.s f29, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fmul.s f30, f27, f2, dyn # perform operation
fmul.s f30, f27, f2, rdn # perform operation
fmul.s f30, f27, f2, rmm # perform operation
fmul.s f30, f27, f2, rne # perform operation
fmul.s f30, f27, f2, rtz # perform operation
fmul.s f30, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fmul.s f28, f19, f5, dyn # perform operation
fmul.s f28, f19, f5, rdn # perform operation
fmul.s f28, f19, f5, rmm # perform operation
fmul.s f28, f19, f5, rne # perform operation
fmul.s f28, f19, f5, rtz # perform operation
fmul.s f28, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fmul.s f8, f18, f24, dyn # perform operation
fmul.s f8, f18, f24, rdn # perform operation
fmul.s f8, f18, f24, rmm # perform operation
fmul.s f8, f18, f24, rne # perform operation
fmul.s f8, f18, f24, rtz # perform operation
fmul.s f8, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fmul.s f24, f15, f16, dyn # perform operation
fmul.s f24, f15, f16, rdn # perform operation
fmul.s f24, f15, f16, rmm # perform operation
fmul.s f24, f15, f16, rne # perform operation
fmul.s f24, f15, f16, rtz # perform operation
fmul.s f24, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fmul.s f21, f31, f23, dyn # perform operation
fmul.s f21, f31, f23, rdn # perform operation
fmul.s f21, f31, f23, rmm # perform operation
fmul.s f21, f31, f23, rne # perform operation
fmul.s f21, f31, f23, rtz # perform operation
fmul.s f21, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fmul.s f19, f23, f6, dyn # perform operation
fmul.s f19, f23, f6, rdn # perform operation
fmul.s f19, f23, f6, rmm # perform operation
fmul.s f19, f23, f6, rne # perform operation
fmul.s f19, f23, f6, rtz # perform operation
fmul.s f19, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fmul.s f20, f11, f9, dyn # perform operation
fmul.s f20, f11, f9, rdn # perform operation
fmul.s f20, f11, f9, rmm # perform operation
fmul.s f20, f11, f9, rne # perform operation
fmul.s f20, f11, f9, rtz # perform operation
fmul.s f20, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fmul.s f13, f14, f2, dyn # perform operation
fmul.s f13, f14, f2, rdn # perform operation
fmul.s f13, f14, f2, rmm # perform operation
fmul.s f13, f14, f2, rne # perform operation
fmul.s f13, f14, f2, rtz # perform operation
fmul.s f13, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fmul.s f15, f19, f14, dyn # perform operation
fmul.s f15, f19, f14, rdn # perform operation
fmul.s f15, f19, f14, rmm # perform operation
fmul.s f15, f19, f14, rne # perform operation
fmul.s f15, f19, f14, rtz # perform operation
fmul.s f15, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fmul.s f29, f25, f30, dyn # perform operation
fmul.s f29, f25, f30, rdn # perform operation
fmul.s f29, f25, f30, rmm # perform operation
fmul.s f29, f25, f30, rne # perform operation
fmul.s f29, f25, f30, rtz # perform operation
fmul.s f29, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fmul.s f2, f21, f27, dyn # perform operation
fmul.s f2, f21, f27, rdn # perform operation
fmul.s f2, f21, f27, rmm # perform operation
fmul.s f2, f21, f27, rne # perform operation
fmul.s f2, f21, f27, rtz # perform operation
fmul.s f2, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fmul.s f8, f23, f14, dyn # perform operation
fmul.s f8, f23, f14, rdn # perform operation
fmul.s f8, f23, f14, rmm # perform operation
fmul.s f8, f23, f14, rne # perform operation
fmul.s f8, f23, f14, rtz # perform operation
fmul.s f8, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fmul.s f8, f11, f16, dyn # perform operation
fmul.s f8, f11, f16, rdn # perform operation
fmul.s f8, f11, f16, rmm # perform operation
fmul.s f8, f11, f16, rne # perform operation
fmul.s f8, f11, f16, rtz # perform operation
fmul.s f8, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fmul.s f19, f24, f9, dyn # perform operation
fmul.s f19, f24, f9, rdn # perform operation
fmul.s f19, f24, f9, rmm # perform operation
fmul.s f19, f24, f9, rne # perform operation
fmul.s f19, f24, f9, rtz # perform operation
fmul.s f19, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fmul.s f6, f18, f12, dyn # perform operation
fmul.s f6, f18, f12, rdn # perform operation
fmul.s f6, f18, f12, rmm # perform operation
fmul.s f6, f18, f12, rne # perform operation
fmul.s f6, f18, f12, rtz # perform operation
fmul.s f6, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fmul.s f14, f18, f8, dyn # perform operation
fmul.s f14, f18, f8, rdn # perform operation
fmul.s f14, f18, f8, rmm # perform operation
fmul.s f14, f18, f8, rne # perform operation
fmul.s f14, f18, f8, rtz # perform operation
fmul.s f14, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fmul.s f1, f18, f19, dyn # perform operation
fmul.s f1, f18, f19, rdn # perform operation
fmul.s f1, f18, f19, rmm # perform operation
fmul.s f1, f18, f19, rne # perform operation
fmul.s f1, f18, f19, rtz # perform operation
fmul.s f1, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f18, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fmul.s f26, f27, f20, dyn # perform operation
fmul.s f26, f27, f20, rdn # perform operation
fmul.s f26, f27, f20, rmm # perform operation
fmul.s f26, f27, f20, rne # perform operation
fmul.s f26, f27, f20, rtz # perform operation
fmul.s f26, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fmul.s f30, f12, f6, dyn # perform operation
fmul.s f30, f12, f6, rdn # perform operation
fmul.s f30, f12, f6, rmm # perform operation
fmul.s f30, f12, f6, rne # perform operation
fmul.s f30, f12, f6, rtz # perform operation
fmul.s f30, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f12, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f28, f7, f13, dyn # perform operation
fmul.s f28, f7, f13, rdn # perform operation
fmul.s f28, f7, f13, rmm # perform operation
fmul.s f28, f7, f13, rne # perform operation
fmul.s f28, f7, f13, rtz # perform operation
fmul.s f28, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fmul.s f16, f18, f24, dyn # perform operation
fmul.s f16, f18, f24, rdn # perform operation
fmul.s f16, f18, f24, rmm # perform operation
fmul.s f16, f18, f24, rne # perform operation
fmul.s f16, f18, f24, rtz # perform operation
fmul.s f16, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fmul.s f9, f29, f26, dyn # perform operation
fmul.s f9, f29, f26, rdn # perform operation
fmul.s f9, f29, f26, rmm # perform operation
fmul.s f9, f29, f26, rne # perform operation
fmul.s f9, f29, f26, rtz # perform operation
fmul.s f9, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fmul.s f17, f24, f22, dyn # perform operation
fmul.s f17, f24, f22, rdn # perform operation
fmul.s f17, f24, f22, rmm # perform operation
fmul.s f17, f24, f22, rne # perform operation
fmul.s f17, f24, f22, rtz # perform operation
fmul.s f17, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fmul.s f3, f23, f26, dyn # perform operation
fmul.s f3, f23, f26, rdn # perform operation
fmul.s f3, f23, f26, rmm # perform operation
fmul.s f3, f23, f26, rne # perform operation
fmul.s f3, f23, f26, rtz # perform operation
fmul.s f3, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fmul.s f18, f27, f15, dyn # perform operation
fmul.s f18, f27, f15, rdn # perform operation
fmul.s f18, f27, f15, rmm # perform operation
fmul.s f18, f27, f15, rne # perform operation
fmul.s f18, f27, f15, rtz # perform operation
fmul.s f18, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fmul.s f26, f21, f5, dyn # perform operation
fmul.s f26, f21, f5, rdn # perform operation
fmul.s f26, f21, f5, rmm # perform operation
fmul.s f26, f21, f5, rne # perform operation
fmul.s f26, f21, f5, rtz # perform operation
fmul.s f26, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fmul.s f14, f23, f27, dyn # perform operation
fmul.s f14, f23, f27, rdn # perform operation
fmul.s f14, f23, f27, rmm # perform operation
fmul.s f14, f23, f27, rne # perform operation
fmul.s f14, f23, f27, rtz # perform operation
fmul.s f14, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fmul.s f19, f14, f29, dyn # perform operation
fmul.s f19, f14, f29, rdn # perform operation
fmul.s f19, f14, f29, rmm # perform operation
fmul.s f19, f14, f29, rne # perform operation
fmul.s f19, f14, f29, rtz # perform operation
fmul.s f19, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fmul.s f15, f7, f26, dyn # perform operation
fmul.s f15, f7, f26, rdn # perform operation
fmul.s f15, f7, f26, rmm # perform operation
fmul.s f15, f7, f26, rne # perform operation
fmul.s f15, f7, f26, rtz # perform operation
fmul.s f15, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fmul.s f11, f12, f9, dyn # perform operation
fmul.s f11, f12, f9, rdn # perform operation
fmul.s f11, f12, f9, rmm # perform operation
fmul.s f11, f12, f9, rne # perform operation
fmul.s f11, f12, f9, rtz # perform operation
fmul.s f11, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fmul.s f23, f11, f5, dyn # perform operation
fmul.s f23, f11, f5, rdn # perform operation
fmul.s f23, f11, f5, rmm # perform operation
fmul.s f23, f11, f5, rne # perform operation
fmul.s f23, f11, f5, rtz # perform operation
fmul.s f23, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fmul.s f29, f7, f2, dyn # perform operation
fmul.s f29, f7, f2, rdn # perform operation
fmul.s f29, f7, f2, rmm # perform operation
fmul.s f29, f7, f2, rne # perform operation
fmul.s f29, f7, f2, rtz # perform operation
fmul.s f29, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
fmul.s f20, f2, f9, dyn # perform operation
fmul.s f20, f2, f9, rdn # perform operation
fmul.s f20, f2, f9, rmm # perform operation
fmul.s f20, f2, f9, rne # perform operation
fmul.s f20, f2, f9, rtz # perform operation
fmul.s f20, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fmul.s f9, f10, f18, dyn # perform operation
fmul.s f9, f10, f18, rdn # perform operation
fmul.s f9, f10, f18, rmm # perform operation
fmul.s f9, f10, f18, rne # perform operation
fmul.s f9, f10, f18, rtz # perform operation
fmul.s f9, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fmul.s f2, f9, f27, dyn # perform operation
fmul.s f2, f9, f27, rdn # perform operation
fmul.s f2, f9, f27, rmm # perform operation
fmul.s f2, f9, f27, rne # perform operation
fmul.s f2, f9, f27, rtz # perform operation
fmul.s f2, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fmul.s f23, f10, f7, dyn # perform operation
fmul.s f23, f10, f7, rdn # perform operation
fmul.s f23, f10, f7, rmm # perform operation
fmul.s f23, f10, f7, rne # perform operation
fmul.s f23, f10, f7, rtz # perform operation
fmul.s f23, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fmul.s f26, f23, f16, dyn # perform operation
fmul.s f26, f23, f16, rdn # perform operation
fmul.s f26, f23, f16, rmm # perform operation
fmul.s f26, f23, f16, rne # perform operation
fmul.s f26, f23, f16, rtz # perform operation
fmul.s f26, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fmul.s f5, f25, f26, dyn # perform operation
fmul.s f5, f25, f26, rdn # perform operation
fmul.s f5, f25, f26, rmm # perform operation
fmul.s f5, f25, f26, rne # perform operation
fmul.s f5, f25, f26, rtz # perform operation
fmul.s f5, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fmul.s f19, f23, f30, dyn # perform operation
fmul.s f19, f23, f30, rdn # perform operation
fmul.s f19, f23, f30, rmm # perform operation
fmul.s f19, f23, f30, rne # perform operation
fmul.s f19, f23, f30, rtz # perform operation
fmul.s f19, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fmul.s f20, f3, f15, dyn # perform operation
fmul.s f20, f3, f15, rdn # perform operation
fmul.s f20, f3, f15, rmm # perform operation
fmul.s f20, f3, f15, rne # perform operation
fmul.s f20, f3, f15, rtz # perform operation
fmul.s f20, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fmul.s f5, f23, f22, dyn # perform operation
fmul.s f5, f23, f22, rdn # perform operation
fmul.s f5, f23, f22, rmm # perform operation
fmul.s f5, f23, f22, rne # perform operation
fmul.s f5, f23, f22, rtz # perform operation
fmul.s f5, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fmul.s f3, f13, f21, dyn # perform operation
fmul.s f3, f13, f21, rdn # perform operation
fmul.s f3, f13, f21, rmm # perform operation
fmul.s f3, f13, f21, rne # perform operation
fmul.s f3, f13, f21, rtz # perform operation
fmul.s f3, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fmul.s f5, f24, f1, dyn # perform operation
fmul.s f5, f24, f1, rdn # perform operation
fmul.s f5, f24, f1, rmm # perform operation
fmul.s f5, f24, f1, rne # perform operation
fmul.s f5, f24, f1, rtz # perform operation
fmul.s f5, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fmul.s f6, f22, f30, dyn # perform operation
fmul.s f6, f22, f30, rdn # perform operation
fmul.s f6, f22, f30, rmm # perform operation
fmul.s f6, f22, f30, rne # perform operation
fmul.s f6, f22, f30, rtz # perform operation
fmul.s f6, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fmul.s f22, f6, f24, dyn # perform operation
fmul.s f22, f6, f24, rdn # perform operation
fmul.s f22, f6, f24, rmm # perform operation
fmul.s f22, f6, f24, rne # perform operation
fmul.s f22, f6, f24, rtz # perform operation
fmul.s f22, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fmul.s f9, f30, f12, dyn # perform operation
fmul.s f9, f30, f12, rdn # perform operation
fmul.s f9, f30, f12, rmm # perform operation
fmul.s f9, f30, f12, rne # perform operation
fmul.s f9, f30, f12, rtz # perform operation
fmul.s f9, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fmul.s f10, f20, f14, dyn # perform operation
fmul.s f10, f20, f14, rdn # perform operation
fmul.s f10, f20, f14, rmm # perform operation
fmul.s f10, f20, f14, rne # perform operation
fmul.s f10, f20, f14, rtz # perform operation
fmul.s f10, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fmul.s f27, f3, f17, dyn # perform operation
fmul.s f27, f3, f17, rdn # perform operation
fmul.s f27, f3, f17, rmm # perform operation
fmul.s f27, f3, f17, rne # perform operation
fmul.s f27, f3, f17, rtz # perform operation
fmul.s f27, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fmul.s f23, f5, f30, dyn # perform operation
fmul.s f23, f5, f30, rdn # perform operation
fmul.s f23, f5, f30, rmm # perform operation
fmul.s f23, f5, f30, rne # perform operation
fmul.s f23, f5, f30, rtz # perform operation
fmul.s f23, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmul.s f26, f25, f15, dyn # perform operation
fmul.s f26, f25, f15, rdn # perform operation
fmul.s f26, f25, f15, rmm # perform operation
fmul.s f26, f25, f15, rne # perform operation
fmul.s f26, f25, f15, rtz # perform operation
fmul.s f26, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fmul.s f9, f30, f11, dyn # perform operation
fmul.s f9, f30, f11, rdn # perform operation
fmul.s f9, f30, f11, rmm # perform operation
fmul.s f9, f30, f11, rne # perform operation
fmul.s f9, f30, f11, rtz # perform operation
fmul.s f9, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fmul.s f27, f1, f8, dyn # perform operation
fmul.s f27, f1, f8, rdn # perform operation
fmul.s f27, f1, f8, rmm # perform operation
fmul.s f27, f1, f8, rne # perform operation
fmul.s f27, f1, f8, rtz # perform operation
fmul.s f27, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f17, f7, f8, dyn # perform operation
fmul.s f17, f7, f8, rdn # perform operation
fmul.s f17, f7, f8, rmm # perform operation
fmul.s f17, f7, f8, rne # perform operation
fmul.s f17, f7, f8, rtz # perform operation
fmul.s f17, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fmul.s f8, f25, f29, dyn # perform operation
fmul.s f8, f25, f29, rdn # perform operation
fmul.s f8, f25, f29, rmm # perform operation
fmul.s f8, f25, f29, rne # perform operation
fmul.s f8, f25, f29, rtz # perform operation
fmul.s f8, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fmul.s f10, f2, f25, dyn # perform operation
fmul.s f10, f2, f25, rdn # perform operation
fmul.s f10, f2, f25, rmm # perform operation
fmul.s f10, f2, f25, rne # perform operation
fmul.s f10, f2, f25, rtz # perform operation
fmul.s f10, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fmul.s f25, f2, f27, dyn # perform operation
fmul.s f25, f2, f27, rdn # perform operation
fmul.s f25, f2, f27, rmm # perform operation
fmul.s f25, f2, f27, rne # perform operation
fmul.s f25, f2, f27, rtz # perform operation
fmul.s f25, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fmul.s f7, f8, f14, dyn # perform operation
fmul.s f7, f8, f14, rdn # perform operation
fmul.s f7, f8, f14, rmm # perform operation
fmul.s f7, f8, f14, rne # perform operation
fmul.s f7, f8, f14, rtz # perform operation
fmul.s f7, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fmul.s f18, f12, f2, dyn # perform operation
fmul.s f18, f12, f2, rdn # perform operation
fmul.s f18, f12, f2, rmm # perform operation
fmul.s f18, f12, f2, rne # perform operation
fmul.s f18, f12, f2, rtz # perform operation
fmul.s f18, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fmul.s f14, f23, f11, dyn # perform operation
fmul.s f14, f23, f11, rdn # perform operation
fmul.s f14, f23, f11, rmm # perform operation
fmul.s f14, f23, f11, rne # perform operation
fmul.s f14, f23, f11, rtz # perform operation
fmul.s f14, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fmul.s f20, f2, f13, dyn # perform operation
fmul.s f20, f2, f13, rdn # perform operation
fmul.s f20, f2, f13, rmm # perform operation
fmul.s f20, f2, f13, rne # perform operation
fmul.s f20, f2, f13, rtz # perform operation
fmul.s f20, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fmul.s f3, f24, f10, dyn # perform operation
fmul.s f3, f24, f10, rdn # perform operation
fmul.s f3, f24, f10, rmm # perform operation
fmul.s f3, f24, f10, rne # perform operation
fmul.s f3, f24, f10, rtz # perform operation
fmul.s f3, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fmul.s f22, f29, f23, dyn # perform operation
fmul.s f22, f29, f23, rdn # perform operation
fmul.s f22, f29, f23, rmm # perform operation
fmul.s f22, f29, f23, rne # perform operation
fmul.s f22, f29, f23, rtz # perform operation
fmul.s f22, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fmul.s f1, f10, f15, dyn # perform operation
fmul.s f1, f10, f15, rdn # perform operation
fmul.s f1, f10, f15, rmm # perform operation
fmul.s f1, f10, f15, rne # perform operation
fmul.s f1, f10, f15, rtz # perform operation
fmul.s f1, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fmul.s f6, f23, f9, dyn # perform operation
fmul.s f6, f23, f9, rdn # perform operation
fmul.s f6, f23, f9, rmm # perform operation
fmul.s f6, f23, f9, rne # perform operation
fmul.s f6, f23, f9, rtz # perform operation
fmul.s f6, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fmul.s f29, f14, f25, dyn # perform operation
fmul.s f29, f14, f25, rdn # perform operation
fmul.s f29, f14, f25, rmm # perform operation
fmul.s f29, f14, f25, rne # perform operation
fmul.s f29, f14, f25, rtz # perform operation
fmul.s f29, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f2, f14, f24, dyn # perform operation
fmul.s f2, f14, f24, rdn # perform operation
fmul.s f2, f14, f24, rmm # perform operation
fmul.s f2, f14, f24, rne # perform operation
fmul.s f2, f14, f24, rtz # perform operation
fmul.s f2, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fmul.s f1, f11, f8, dyn # perform operation
fmul.s f1, f11, f8, rdn # perform operation
fmul.s f1, f11, f8, rmm # perform operation
fmul.s f1, f11, f8, rne # perform operation
fmul.s f1, f11, f8, rtz # perform operation
fmul.s f1, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fmul.s f23, f28, f1, dyn # perform operation
fmul.s f23, f28, f1, rdn # perform operation
fmul.s f23, f28, f1, rmm # perform operation
fmul.s f23, f28, f1, rne # perform operation
fmul.s f23, f28, f1, rtz # perform operation
fmul.s f23, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fmul.s f7, f26, f3, dyn # perform operation
fmul.s f7, f26, f3, rdn # perform operation
fmul.s f7, f26, f3, rmm # perform operation
fmul.s f7, f26, f3, rne # perform operation
fmul.s f7, f26, f3, rtz # perform operation
fmul.s f7, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fmul.s f24, f9, f25, dyn # perform operation
fmul.s f24, f9, f25, rdn # perform operation
fmul.s f24, f9, f25, rmm # perform operation
fmul.s f24, f9, f25, rne # perform operation
fmul.s f24, f9, f25, rtz # perform operation
fmul.s f24, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fmul.s f19, f25, f10, dyn # perform operation
fmul.s f19, f25, f10, rdn # perform operation
fmul.s f19, f25, f10, rmm # perform operation
fmul.s f19, f25, f10, rne # perform operation
fmul.s f19, f25, f10, rtz # perform operation
fmul.s f19, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fmul.s f22, f3, f30, dyn # perform operation
fmul.s f22, f3, f30, rdn # perform operation
fmul.s f22, f3, f30, rmm # perform operation
fmul.s f22, f3, f30, rne # perform operation
fmul.s f22, f3, f30, rtz # perform operation
fmul.s f22, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmul.s f2, f13, f17, dyn # perform operation
fmul.s f2, f13, f17, rdn # perform operation
fmul.s f2, f13, f17, rmm # perform operation
fmul.s f2, f13, f17, rne # perform operation
fmul.s f2, f13, f17, rtz # perform operation
fmul.s f2, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmul.s f8, f13, f9, dyn # perform operation
fmul.s f8, f13, f9, rdn # perform operation
fmul.s f8, f13, f9, rmm # perform operation
fmul.s f8, f13, f9, rne # perform operation
fmul.s f8, f13, f9, rtz # perform operation
fmul.s f8, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fmul.s f1, f9, f16, dyn # perform operation
fmul.s f1, f9, f16, rdn # perform operation
fmul.s f1, f9, f16, rmm # perform operation
fmul.s f1, f9, f16, rne # perform operation
fmul.s f1, f9, f16, rtz # perform operation
fmul.s f1, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fmul.s f7, f23, f3, dyn # perform operation
fmul.s f7, f23, f3, rdn # perform operation
fmul.s f7, f23, f3, rmm # perform operation
fmul.s f7, f23, f3, rne # perform operation
fmul.s f7, f23, f3, rtz # perform operation
fmul.s f7, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fmul.s f3, f26, f21, dyn # perform operation
fmul.s f3, f26, f21, rdn # perform operation
fmul.s f3, f26, f21, rmm # perform operation
fmul.s f3, f26, f21, rne # perform operation
fmul.s f3, f26, f21, rtz # perform operation
fmul.s f3, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fmul.s f2, f22, f11, dyn # perform operation
fmul.s f2, f22, f11, rdn # perform operation
fmul.s f2, f22, f11, rmm # perform operation
fmul.s f2, f22, f11, rne # perform operation
fmul.s f2, f22, f11, rtz # perform operation
fmul.s f2, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fmul.s f13, f6, f27, dyn # perform operation
fmul.s f13, f6, f27, rdn # perform operation
fmul.s f13, f6, f27, rmm # perform operation
fmul.s f13, f6, f27, rne # perform operation
fmul.s f13, f6, f27, rtz # perform operation
fmul.s f13, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f9, f14, f11, dyn # perform operation
fmul.s f9, f14, f11, rdn # perform operation
fmul.s f9, f14, f11, rmm # perform operation
fmul.s f9, f14, f11, rne # perform operation
fmul.s f9, f14, f11, rtz # perform operation
fmul.s f9, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fmul.s f12, f31, f14, dyn # perform operation
fmul.s f12, f31, f14, rdn # perform operation
fmul.s f12, f31, f14, rmm # perform operation
fmul.s f12, f31, f14, rne # perform operation
fmul.s f12, f31, f14, rtz # perform operation
fmul.s f12, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fmul.s f12, f27, f17, dyn # perform operation
fmul.s f12, f27, f17, rdn # perform operation
fmul.s f12, f27, f17, rmm # perform operation
fmul.s f12, f27, f17, rne # perform operation
fmul.s f12, f27, f17, rtz # perform operation
fmul.s f12, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fmul.s f22, f30, f11, dyn # perform operation
fmul.s f22, f30, f11, rdn # perform operation
fmul.s f22, f30, f11, rmm # perform operation
fmul.s f22, f30, f11, rne # perform operation
fmul.s f22, f30, f11, rtz # perform operation
fmul.s f22, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fmul.s f20, f21, f16, dyn # perform operation
fmul.s f20, f21, f16, rdn # perform operation
fmul.s f20, f21, f16, rmm # perform operation
fmul.s f20, f21, f16, rne # perform operation
fmul.s f20, f21, f16, rtz # perform operation
fmul.s f20, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fmul.s f30, f5, f17, dyn # perform operation
fmul.s f30, f5, f17, rdn # perform operation
fmul.s f30, f5, f17, rmm # perform operation
fmul.s f30, f5, f17, rne # perform operation
fmul.s f30, f5, f17, rtz # perform operation
fmul.s f30, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fmul.s f10, f18, f16, dyn # perform operation
fmul.s f10, f18, f16, rdn # perform operation
fmul.s f10, f18, f16, rmm # perform operation
fmul.s f10, f18, f16, rne # perform operation
fmul.s f10, f18, f16, rtz # perform operation
fmul.s f10, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fmul.s f20, f11, f12, dyn # perform operation
fmul.s f20, f11, f12, rdn # perform operation
fmul.s f20, f11, f12, rmm # perform operation
fmul.s f20, f11, f12, rne # perform operation
fmul.s f20, f11, f12, rtz # perform operation
fmul.s f20, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmul.s f7, f2, f22, dyn # perform operation
fmul.s f7, f2, f22, rdn # perform operation
fmul.s f7, f2, f22, rmm # perform operation
fmul.s f7, f2, f22, rne # perform operation
fmul.s f7, f2, f22, rtz # perform operation
fmul.s f7, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f29, 0(x2) # load 0xffffffff from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fmul.s f18, f29, f24, dyn # perform operation
fmul.s f18, f29, f24, rdn # perform operation
fmul.s f18, f29, f24, rmm # perform operation
fmul.s f18, f29, f24, rne # perform operation
fmul.s f18, f29, f24, rtz # perform operation
fmul.s f18, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fmul.s f10, f1, f19, dyn # perform operation
fmul.s f10, f1, f19, rdn # perform operation
fmul.s f10, f1, f19, rmm # perform operation
fmul.s f10, f1, f19, rne # perform operation
fmul.s f10, f1, f19, rtz # perform operation
fmul.s f10, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fmul.s f1, f25, f14, dyn # perform operation
fmul.s f1, f25, f14, rdn # perform operation
fmul.s f1, f25, f14, rmm # perform operation
fmul.s f1, f25, f14, rne # perform operation
fmul.s f1, f25, f14, rtz # perform operation
fmul.s f1, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fmul.s f13, f16, f23, dyn # perform operation
fmul.s f13, f16, f23, rdn # perform operation
fmul.s f13, f16, f23, rmm # perform operation
fmul.s f13, f16, f23, rne # perform operation
fmul.s f13, f16, f23, rtz # perform operation
fmul.s f13, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fmul.s f15, f25, f28, dyn # perform operation
fmul.s f15, f25, f28, rdn # perform operation
fmul.s f15, f25, f28, rmm # perform operation
fmul.s f15, f25, f28, rne # perform operation
fmul.s f15, f25, f28, rtz # perform operation
fmul.s f15, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fmul.s f17, f12, f22, dyn # perform operation
fmul.s f17, f12, f22, rdn # perform operation
fmul.s f17, f12, f22, rmm # perform operation
fmul.s f17, f12, f22, rne # perform operation
fmul.s f17, f12, f22, rtz # perform operation
fmul.s f17, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fmul.s f17, f28, f13, dyn # perform operation
fmul.s f17, f28, f13, rdn # perform operation
fmul.s f17, f28, f13, rmm # perform operation
fmul.s f17, f28, f13, rne # perform operation
fmul.s f17, f28, f13, rtz # perform operation
fmul.s f17, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fmul.s f27, f5, f19, dyn # perform operation
fmul.s f27, f5, f19, rdn # perform operation
fmul.s f27, f5, f19, rmm # perform operation
fmul.s f27, f5, f19, rne # perform operation
fmul.s f27, f5, f19, rtz # perform operation
fmul.s f27, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f5, f19, f20, dyn # perform operation
fmul.s f5, f19, f20, rdn # perform operation
fmul.s f5, f19, f20, rmm # perform operation
fmul.s f5, f19, f20, rne # perform operation
fmul.s f5, f19, f20, rtz # perform operation
fmul.s f5, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fmul.s f24, f19, f30, dyn # perform operation
fmul.s f24, f19, f30, rdn # perform operation
fmul.s f24, f19, f30, rmm # perform operation
fmul.s f24, f19, f30, rne # perform operation
fmul.s f24, f19, f30, rtz # perform operation
fmul.s f24, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fmul.s f11, f10, f18, dyn # perform operation
fmul.s f11, f10, f18, rdn # perform operation
fmul.s f11, f10, f18, rmm # perform operation
fmul.s f11, f10, f18, rne # perform operation
fmul.s f11, f10, f18, rtz # perform operation
fmul.s f11, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fmul.s f25, f18, f5, dyn # perform operation
fmul.s f25, f18, f5, rdn # perform operation
fmul.s f25, f18, f5, rmm # perform operation
fmul.s f25, f18, f5, rne # perform operation
fmul.s f25, f18, f5, rtz # perform operation
fmul.s f25, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f3, f22, f16, dyn # perform operation
fmul.s f3, f22, f16, rdn # perform operation
fmul.s f3, f22, f16, rmm # perform operation
fmul.s f3, f22, f16, rne # perform operation
fmul.s f3, f22, f16, rtz # perform operation
fmul.s f3, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fmul.s f3, f17, f2, dyn # perform operation
fmul.s f3, f17, f2, rdn # perform operation
fmul.s f3, f17, f2, rmm # perform operation
fmul.s f3, f17, f2, rne # perform operation
fmul.s f3, f17, f2, rtz # perform operation
fmul.s f3, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fmul.s f14, f23, f29, dyn # perform operation
fmul.s f14, f23, f29, rdn # perform operation
fmul.s f14, f23, f29, rmm # perform operation
fmul.s f14, f23, f29, rne # perform operation
fmul.s f14, f23, f29, rtz # perform operation
fmul.s f14, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fmul.s f15, f19, f5, dyn # perform operation
fmul.s f15, f19, f5, rdn # perform operation
fmul.s f15, f19, f5, rmm # perform operation
fmul.s f15, f19, f5, rne # perform operation
fmul.s f15, f19, f5, rtz # perform operation
fmul.s f15, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fmul.s f29, f20, f24, dyn # perform operation
fmul.s f29, f20, f24, rdn # perform operation
fmul.s f29, f20, f24, rmm # perform operation
fmul.s f29, f20, f24, rne # perform operation
fmul.s f29, f20, f24, rtz # perform operation
fmul.s f29, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fmul.s f6, f7, f16, dyn # perform operation
fmul.s f6, f7, f16, rdn # perform operation
fmul.s f6, f7, f16, rmm # perform operation
fmul.s f6, f7, f16, rne # perform operation
fmul.s f6, f7, f16, rtz # perform operation
fmul.s f6, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fmul.s f23, f5, f10, dyn # perform operation
fmul.s f23, f5, f10, rdn # perform operation
fmul.s f23, f5, f10, rmm # perform operation
fmul.s f23, f5, f10, rne # perform operation
fmul.s f23, f5, f10, rtz # perform operation
fmul.s f23, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f3, f28, f19, dyn # perform operation
fmul.s f3, f28, f19, rdn # perform operation
fmul.s f3, f28, f19, rmm # perform operation
fmul.s f3, f28, f19, rne # perform operation
fmul.s f3, f28, f19, rtz # perform operation
fmul.s f3, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fmul.s f9, f26, f23, dyn # perform operation
fmul.s f9, f26, f23, rdn # perform operation
fmul.s f9, f26, f23, rmm # perform operation
fmul.s f9, f26, f23, rne # perform operation
fmul.s f9, f26, f23, rtz # perform operation
fmul.s f9, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fmul.s f26, f7, f9, dyn # perform operation
fmul.s f26, f7, f9, rdn # perform operation
fmul.s f26, f7, f9, rmm # perform operation
fmul.s f26, f7, f9, rne # perform operation
fmul.s f26, f7, f9, rtz # perform operation
fmul.s f26, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmul.s f9, f31, f15, dyn # perform operation
fmul.s f9, f31, f15, rdn # perform operation
fmul.s f9, f31, f15, rmm # perform operation
fmul.s f9, f31, f15, rne # perform operation
fmul.s f9, f31, f15, rtz # perform operation
fmul.s f9, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f27, f23, f1, dyn # perform operation
fmul.s f27, f23, f1, rdn # perform operation
fmul.s f27, f23, f1, rmm # perform operation
fmul.s f27, f23, f1, rne # perform operation
fmul.s f27, f23, f1, rtz # perform operation
fmul.s f27, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmul.s f20, f8, f25, dyn # perform operation
fmul.s f20, f8, f25, rdn # perform operation
fmul.s f20, f8, f25, rmm # perform operation
fmul.s f20, f8, f25, rne # perform operation
fmul.s f20, f8, f25, rtz # perform operation
fmul.s f20, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fmul.s f25, f18, f7, dyn # perform operation
fmul.s f25, f18, f7, rdn # perform operation
fmul.s f25, f18, f7, rmm # perform operation
fmul.s f25, f18, f7, rne # perform operation
fmul.s f25, f18, f7, rtz # perform operation
fmul.s f25, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fmul.s f5, f2, f12, dyn # perform operation
fmul.s f5, f2, f12, rdn # perform operation
fmul.s f5, f2, f12, rmm # perform operation
fmul.s f5, f2, f12, rne # perform operation
fmul.s f5, f2, f12, rtz # perform operation
fmul.s f5, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fmul.s f20, f30, f19, dyn # perform operation
fmul.s f20, f30, f19, rdn # perform operation
fmul.s f20, f30, f19, rmm # perform operation
fmul.s f20, f30, f19, rne # perform operation
fmul.s f20, f30, f19, rtz # perform operation
fmul.s f20, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
fmul.s f20, f6, f13, dyn # perform operation
fmul.s f20, f6, f13, rdn # perform operation
fmul.s f20, f6, f13, rmm # perform operation
fmul.s f20, f6, f13, rne # perform operation
fmul.s f20, f6, f13, rtz # perform operation
fmul.s f20, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fmul.s f6, f2, f10, dyn # perform operation
fmul.s f6, f2, f10, rdn # perform operation
fmul.s f6, f2, f10, rmm # perform operation
fmul.s f6, f2, f10, rne # perform operation
fmul.s f6, f2, f10, rtz # perform operation
fmul.s f6, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fmul.s f16, f12, f31, dyn # perform operation
fmul.s f16, f12, f31, rdn # perform operation
fmul.s f16, f12, f31, rmm # perform operation
fmul.s f16, f12, f31, rne # perform operation
fmul.s f16, f12, f31, rtz # perform operation
fmul.s f16, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fmul.s f5, f16, f18, dyn # perform operation
fmul.s f5, f16, f18, rdn # perform operation
fmul.s f5, f16, f18, rmm # perform operation
fmul.s f5, f16, f18, rne # perform operation
fmul.s f5, f16, f18, rtz # perform operation
fmul.s f5, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fmul.s f5, f21, f12, dyn # perform operation
fmul.s f5, f21, f12, rdn # perform operation
fmul.s f5, f21, f12, rmm # perform operation
fmul.s f5, f21, f12, rne # perform operation
fmul.s f5, f21, f12, rtz # perform operation
fmul.s f5, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f3, f16, f24, dyn # perform operation
fmul.s f3, f16, f24, rdn # perform operation
fmul.s f3, f16, f24, rmm # perform operation
fmul.s f3, f16, f24, rne # perform operation
fmul.s f3, f16, f24, rtz # perform operation
fmul.s f3, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fmul.s f20, f5, f13, dyn # perform operation
fmul.s f20, f5, f13, rdn # perform operation
fmul.s f20, f5, f13, rmm # perform operation
fmul.s f20, f5, f13, rne # perform operation
fmul.s f20, f5, f13, rtz # perform operation
fmul.s f20, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fmul.s f29, f16, f26, dyn # perform operation
fmul.s f29, f16, f26, rdn # perform operation
fmul.s f29, f16, f26, rmm # perform operation
fmul.s f29, f16, f26, rne # perform operation
fmul.s f29, f16, f26, rtz # perform operation
fmul.s f29, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fmul.s f22, f15, f14, dyn # perform operation
fmul.s f22, f15, f14, rdn # perform operation
fmul.s f22, f15, f14, rmm # perform operation
fmul.s f22, f15, f14, rne # perform operation
fmul.s f22, f15, f14, rtz # perform operation
fmul.s f22, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fmul.s f14, f19, f23, dyn # perform operation
fmul.s f14, f19, f23, rdn # perform operation
fmul.s f14, f19, f23, rmm # perform operation
fmul.s f14, f19, f23, rne # perform operation
fmul.s f14, f19, f23, rtz # perform operation
fmul.s f14, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fmul.s f26, f2, f3, dyn # perform operation
fmul.s f26, f2, f3, rdn # perform operation
fmul.s f26, f2, f3, rmm # perform operation
fmul.s f26, f2, f3, rne # perform operation
fmul.s f26, f2, f3, rtz # perform operation
fmul.s f26, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fmul.s f26, f8, f27, dyn # perform operation
fmul.s f26, f8, f27, rdn # perform operation
fmul.s f26, f8, f27, rmm # perform operation
fmul.s f26, f8, f27, rne # perform operation
fmul.s f26, f8, f27, rtz # perform operation
fmul.s f26, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fmul.s f12, f3, f28, dyn # perform operation
fmul.s f12, f3, f28, rdn # perform operation
fmul.s f12, f3, f28, rmm # perform operation
fmul.s f12, f3, f28, rne # perform operation
fmul.s f12, f3, f28, rtz # perform operation
fmul.s f12, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fmul.s f28, f23, f26, dyn # perform operation
fmul.s f28, f23, f26, rdn # perform operation
fmul.s f28, f23, f26, rmm # perform operation
fmul.s f28, f23, f26, rne # perform operation
fmul.s f28, f23, f26, rtz # perform operation
fmul.s f28, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fmul.s f24, f12, f23, dyn # perform operation
fmul.s f24, f12, f23, rdn # perform operation
fmul.s f24, f12, f23, rmm # perform operation
fmul.s f24, f12, f23, rne # perform operation
fmul.s f24, f12, f23, rtz # perform operation
fmul.s f24, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fmul.s f18, f6, f20, dyn # perform operation
fmul.s f18, f6, f20, rdn # perform operation
fmul.s f18, f6, f20, rmm # perform operation
fmul.s f18, f6, f20, rne # perform operation
fmul.s f18, f6, f20, rtz # perform operation
fmul.s f18, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fmul.s f15, f25, f19, dyn # perform operation
fmul.s f15, f25, f19, rdn # perform operation
fmul.s f15, f25, f19, rmm # perform operation
fmul.s f15, f25, f19, rne # perform operation
fmul.s f15, f25, f19, rtz # perform operation
fmul.s f15, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fmul.s f28, f15, f18, dyn # perform operation
fmul.s f28, f15, f18, rdn # perform operation
fmul.s f28, f15, f18, rmm # perform operation
fmul.s f28, f15, f18, rne # perform operation
fmul.s f28, f15, f18, rtz # perform operation
fmul.s f28, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fmul.s f19, f30, f29, dyn # perform operation
fmul.s f19, f30, f29, rdn # perform operation
fmul.s f19, f30, f29, rmm # perform operation
fmul.s f19, f30, f29, rne # perform operation
fmul.s f19, f30, f29, rtz # perform operation
fmul.s f19, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmul.s f11, f16, f2, dyn # perform operation
fmul.s f11, f16, f2, rdn # perform operation
fmul.s f11, f16, f2, rmm # perform operation
fmul.s f11, f16, f2, rne # perform operation
fmul.s f11, f16, f2, rtz # perform operation
fmul.s f11, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmul.s f8, f24, f5, dyn # perform operation
fmul.s f8, f24, f5, rdn # perform operation
fmul.s f8, f24, f5, rmm # perform operation
fmul.s f8, f24, f5, rne # perform operation
fmul.s f8, f24, f5, rtz # perform operation
fmul.s f8, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fmul.s f27, f15, f9, dyn # perform operation
fmul.s f27, f15, f9, rdn # perform operation
fmul.s f27, f15, f9, rmm # perform operation
fmul.s f27, f15, f9, rne # perform operation
fmul.s f27, f15, f9, rtz # perform operation
fmul.s f27, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fmul.s f6, f18, f5, dyn # perform operation
fmul.s f6, f18, f5, rdn # perform operation
fmul.s f6, f18, f5, rmm # perform operation
fmul.s f6, f18, f5, rne # perform operation
fmul.s f6, f18, f5, rtz # perform operation
fmul.s f6, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fmul.s f9, f6, f23, dyn # perform operation
fmul.s f9, f6, f23, rdn # perform operation
fmul.s f9, f6, f23, rmm # perform operation
fmul.s f9, f6, f23, rne # perform operation
fmul.s f9, f6, f23, rtz # perform operation
fmul.s f9, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fmul.s f6, f28, f23, dyn # perform operation
fmul.s f6, f28, f23, rdn # perform operation
fmul.s f6, f28, f23, rmm # perform operation
fmul.s f6, f28, f23, rne # perform operation
fmul.s f6, f28, f23, rtz # perform operation
fmul.s f6, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fmul.s f31, f14, f5, dyn # perform operation
fmul.s f31, f14, f5, rdn # perform operation
fmul.s f31, f14, f5, rmm # perform operation
fmul.s f31, f14, f5, rne # perform operation
fmul.s f31, f14, f5, rtz # perform operation
fmul.s f31, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fmul.s f27, f26, f8, dyn # perform operation
fmul.s f27, f26, f8, rdn # perform operation
fmul.s f27, f26, f8, rmm # perform operation
fmul.s f27, f26, f8, rne # perform operation
fmul.s f27, f26, f8, rtz # perform operation
fmul.s f27, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f26, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fmul.s f7, f27, f30, dyn # perform operation
fmul.s f7, f27, f30, rdn # perform operation
fmul.s f7, f27, f30, rmm # perform operation
fmul.s f7, f27, f30, rne # perform operation
fmul.s f7, f27, f30, rtz # perform operation
fmul.s f7, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fmul.s f27, f31, f23, dyn # perform operation
fmul.s f27, f31, f23, rdn # perform operation
fmul.s f27, f31, f23, rmm # perform operation
fmul.s f27, f31, f23, rne # perform operation
fmul.s f27, f31, f23, rtz # perform operation
fmul.s f27, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fmul.s f31, f28, f29, dyn # perform operation
fmul.s f31, f28, f29, rdn # perform operation
fmul.s f31, f28, f29, rmm # perform operation
fmul.s f31, f28, f29, rne # perform operation
fmul.s f31, f28, f29, rtz # perform operation
fmul.s f31, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fmul.s f25, f24, f30, dyn # perform operation
fmul.s f25, f24, f30, rdn # perform operation
fmul.s f25, f24, f30, rmm # perform operation
fmul.s f25, f24, f30, rne # perform operation
fmul.s f25, f24, f30, rtz # perform operation
fmul.s f25, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fmul.s f7, f5, f29, dyn # perform operation
fmul.s f7, f5, f29, rdn # perform operation
fmul.s f7, f5, f29, rmm # perform operation
fmul.s f7, f5, f29, rne # perform operation
fmul.s f7, f5, f29, rtz # perform operation
fmul.s f7, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmul.s f9, f24, f26, dyn # perform operation
fmul.s f9, f24, f26, rdn # perform operation
fmul.s f9, f24, f26, rmm # perform operation
fmul.s f9, f24, f26, rne # perform operation
fmul.s f9, f24, f26, rtz # perform operation
fmul.s f9, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fmul.s f19, f23, f14, dyn # perform operation
fmul.s f19, f23, f14, rdn # perform operation
fmul.s f19, f23, f14, rmm # perform operation
fmul.s f19, f23, f14, rne # perform operation
fmul.s f19, f23, f14, rtz # perform operation
fmul.s f19, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fmul.s f14, f30, f21, dyn # perform operation
fmul.s f14, f30, f21, rdn # perform operation
fmul.s f14, f30, f21, rmm # perform operation
fmul.s f14, f30, f21, rne # perform operation
fmul.s f14, f30, f21, rtz # perform operation
fmul.s f14, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fmul.s f16, f9, f26, dyn # perform operation
fmul.s f16, f9, f26, rdn # perform operation
fmul.s f16, f9, f26, rmm # perform operation
fmul.s f16, f9, f26, rne # perform operation
fmul.s f16, f9, f26, rtz # perform operation
fmul.s f16, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fmul.s f2, f9, f28, dyn # perform operation
fmul.s f2, f9, f28, rdn # perform operation
fmul.s f2, f9, f28, rmm # perform operation
fmul.s f2, f9, f28, rne # perform operation
fmul.s f2, f9, f28, rtz # perform operation
fmul.s f2, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fmul.s f1, f10, f26, dyn # perform operation
fmul.s f1, f10, f26, rdn # perform operation
fmul.s f1, f10, f26, rmm # perform operation
fmul.s f1, f10, f26, rne # perform operation
fmul.s f1, f10, f26, rtz # perform operation
fmul.s f1, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fmul.s f3, f17, f8, dyn # perform operation
fmul.s f3, f17, f8, rdn # perform operation
fmul.s f3, f17, f8, rmm # perform operation
fmul.s f3, f17, f8, rne # perform operation
fmul.s f3, f17, f8, rtz # perform operation
fmul.s f3, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fmul.s f24, f17, f27, dyn # perform operation
fmul.s f24, f17, f27, rdn # perform operation
fmul.s f24, f17, f27, rmm # perform operation
fmul.s f24, f17, f27, rne # perform operation
fmul.s f24, f17, f27, rtz # perform operation
fmul.s f24, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fmul.s f27, f15, f31, dyn # perform operation
fmul.s f27, f15, f31, rdn # perform operation
fmul.s f27, f15, f31, rmm # perform operation
fmul.s f27, f15, f31, rne # perform operation
fmul.s f27, f15, f31, rtz # perform operation
fmul.s f27, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f20, f13, f29, dyn # perform operation
fmul.s f20, f13, f29, rdn # perform operation
fmul.s f20, f13, f29, rmm # perform operation
fmul.s f20, f13, f29, rne # perform operation
fmul.s f20, f13, f29, rtz # perform operation
fmul.s f20, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fmul.s f24, f31, f13, dyn # perform operation
fmul.s f24, f31, f13, rdn # perform operation
fmul.s f24, f31, f13, rmm # perform operation
fmul.s f24, f31, f13, rne # perform operation
fmul.s f24, f31, f13, rtz # perform operation
fmul.s f24, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fmul.s f26, f30, f18, dyn # perform operation
fmul.s f26, f30, f18, rdn # perform operation
fmul.s f26, f30, f18, rmm # perform operation
fmul.s f26, f30, f18, rne # perform operation
fmul.s f26, f30, f18, rtz # perform operation
fmul.s f26, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fmul.s f10, f9, f27, dyn # perform operation
fmul.s f10, f9, f27, rdn # perform operation
fmul.s f10, f9, f27, rmm # perform operation
fmul.s f10, f9, f27, rne # perform operation
fmul.s f10, f9, f27, rtz # perform operation
fmul.s f10, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fmul.s f29, f8, f30, dyn # perform operation
fmul.s f29, f8, f30, rdn # perform operation
fmul.s f29, f8, f30, rmm # perform operation
fmul.s f29, f8, f30, rne # perform operation
fmul.s f29, f8, f30, rtz # perform operation
fmul.s f29, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fmul.s f24, f30, f15, dyn # perform operation
fmul.s f24, f30, f15, rdn # perform operation
fmul.s f24, f30, f15, rmm # perform operation
fmul.s f24, f30, f15, rne # perform operation
fmul.s f24, f30, f15, rtz # perform operation
fmul.s f24, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fmul.s f1, f14, f27, dyn # perform operation
fmul.s f1, f14, f27, rdn # perform operation
fmul.s f1, f14, f27, rmm # perform operation
fmul.s f1, f14, f27, rne # perform operation
fmul.s f1, f14, f27, rtz # perform operation
fmul.s f1, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmul.s f2, f8, f24, dyn # perform operation
fmul.s f2, f8, f24, rdn # perform operation
fmul.s f2, f8, f24, rmm # perform operation
fmul.s f2, f8, f24, rne # perform operation
fmul.s f2, f8, f24, rtz # perform operation
fmul.s f2, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fmul.s f13, f29, f28, dyn # perform operation
fmul.s f13, f29, f28, rdn # perform operation
fmul.s f13, f29, f28, rmm # perform operation
fmul.s f13, f29, f28, rne # perform operation
fmul.s f13, f29, f28, rtz # perform operation
fmul.s f13, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmul.s f21, f30, f10, dyn # perform operation
fmul.s f21, f30, f10, rdn # perform operation
fmul.s f21, f30, f10, rmm # perform operation
fmul.s f21, f30, f10, rne # perform operation
fmul.s f21, f30, f10, rtz # perform operation
fmul.s f21, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fmul.s f2, f8, f18, dyn # perform operation
fmul.s f2, f8, f18, rdn # perform operation
fmul.s f2, f8, f18, rmm # perform operation
fmul.s f2, f8, f18, rne # perform operation
fmul.s f2, f8, f18, rtz # perform operation
fmul.s f2, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fmul.s f7, f29, f12, dyn # perform operation
fmul.s f7, f29, f12, rdn # perform operation
fmul.s f7, f29, f12, rmm # perform operation
fmul.s f7, f29, f12, rne # perform operation
fmul.s f7, f29, f12, rtz # perform operation
fmul.s f7, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
fmul.s f5, f7, f1, dyn # perform operation
fmul.s f5, f7, f1, rdn # perform operation
fmul.s f5, f7, f1, rmm # perform operation
fmul.s f5, f7, f1, rne # perform operation
fmul.s f5, f7, f1, rtz # perform operation
fmul.s f5, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmul.s f21, f3, f20, dyn # perform operation
fmul.s f21, f3, f20, rdn # perform operation
fmul.s f21, f3, f20, rmm # perform operation
fmul.s f21, f3, f20, rne # perform operation
fmul.s f21, f3, f20, rtz # perform operation
fmul.s f21, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fmul.s f15, f27, f23, dyn # perform operation
fmul.s f15, f27, f23, rdn # perform operation
fmul.s f15, f27, f23, rmm # perform operation
fmul.s f15, f27, f23, rne # perform operation
fmul.s f15, f27, f23, rtz # perform operation
fmul.s f15, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
fmul.s f22, f20, f13, dyn # perform operation
fmul.s f22, f20, f13, rdn # perform operation
fmul.s f22, f20, f13, rmm # perform operation
fmul.s f22, f20, f13, rne # perform operation
fmul.s f22, f20, f13, rtz # perform operation
fmul.s f22, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f13, f7, f20, dyn # perform operation
fmul.s f13, f7, f20, rdn # perform operation
fmul.s f13, f7, f20, rmm # perform operation
fmul.s f13, f7, f20, rne # perform operation
fmul.s f13, f7, f20, rtz # perform operation
fmul.s f13, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fmul.s f19, f21, f14, dyn # perform operation
fmul.s f19, f21, f14, rdn # perform operation
fmul.s f19, f21, f14, rmm # perform operation
fmul.s f19, f21, f14, rne # perform operation
fmul.s f19, f21, f14, rtz # perform operation
fmul.s f19, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fmul.s f23, f20, f30, dyn # perform operation
fmul.s f23, f20, f30, rdn # perform operation
fmul.s f23, f20, f30, rmm # perform operation
fmul.s f23, f20, f30, rne # perform operation
fmul.s f23, f20, f30, rtz # perform operation
fmul.s f23, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fmul.s f16, f27, f5, dyn # perform operation
fmul.s f16, f27, f5, rdn # perform operation
fmul.s f16, f27, f5, rmm # perform operation
fmul.s f16, f27, f5, rne # perform operation
fmul.s f16, f27, f5, rtz # perform operation
fmul.s f16, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmul.s f3, f12, f10, dyn # perform operation
fmul.s f3, f12, f10, rdn # perform operation
fmul.s f3, f12, f10, rmm # perform operation
fmul.s f3, f12, f10, rne # perform operation
fmul.s f3, f12, f10, rtz # perform operation
fmul.s f3, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fmul.s f8, f13, f22, dyn # perform operation
fmul.s f8, f13, f22, rdn # perform operation
fmul.s f8, f13, f22, rmm # perform operation
fmul.s f8, f13, f22, rne # perform operation
fmul.s f8, f13, f22, rtz # perform operation
fmul.s f8, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f13, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f22, f27, f12, dyn # perform operation
fmul.s f22, f27, f12, rdn # perform operation
fmul.s f22, f27, f12, rmm # perform operation
fmul.s f22, f27, f12, rne # perform operation
fmul.s f22, f27, f12, rtz # perform operation
fmul.s f22, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fmul.s f27, f7, f26, dyn # perform operation
fmul.s f27, f7, f26, rdn # perform operation
fmul.s f27, f7, f26, rmm # perform operation
fmul.s f27, f7, f26, rne # perform operation
fmul.s f27, f7, f26, rtz # perform operation
fmul.s f27, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fmul.s f14, f7, f3, dyn # perform operation
fmul.s f14, f7, f3, rdn # perform operation
fmul.s f14, f7, f3, rmm # perform operation
fmul.s f14, f7, f3, rne # perform operation
fmul.s f14, f7, f3, rtz # perform operation
fmul.s f14, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fmul.s f17, f28, f23, dyn # perform operation
fmul.s f17, f28, f23, rdn # perform operation
fmul.s f17, f28, f23, rmm # perform operation
fmul.s f17, f28, f23, rne # perform operation
fmul.s f17, f28, f23, rtz # perform operation
fmul.s f17, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fmul.s f13, f19, f6, dyn # perform operation
fmul.s f13, f19, f6, rdn # perform operation
fmul.s f13, f19, f6, rmm # perform operation
fmul.s f13, f19, f6, rne # perform operation
fmul.s f13, f19, f6, rtz # perform operation
fmul.s f13, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmul.s f29, f13, f10, dyn # perform operation
fmul.s f29, f13, f10, rdn # perform operation
fmul.s f29, f13, f10, rmm # perform operation
fmul.s f29, f13, f10, rne # perform operation
fmul.s f29, f13, f10, rtz # perform operation
fmul.s f29, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fmul.s f24, f30, f19, dyn # perform operation
fmul.s f24, f30, f19, rdn # perform operation
fmul.s f24, f30, f19, rmm # perform operation
fmul.s f24, f30, f19, rne # perform operation
fmul.s f24, f30, f19, rtz # perform operation
fmul.s f24, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fmul.s f30, f28, f25, dyn # perform operation
fmul.s f30, f28, f25, rdn # perform operation
fmul.s f30, f28, f25, rmm # perform operation
fmul.s f30, f28, f25, rne # perform operation
fmul.s f30, f28, f25, rtz # perform operation
fmul.s f30, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fmul.s f20, f31, f12, dyn # perform operation
fmul.s f20, f31, f12, rdn # perform operation
fmul.s f20, f31, f12, rmm # perform operation
fmul.s f20, f31, f12, rne # perform operation
fmul.s f20, f31, f12, rtz # perform operation
fmul.s f20, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fmul.s f10, f3, f22, dyn # perform operation
fmul.s f10, f3, f22, rdn # perform operation
fmul.s f10, f3, f22, rmm # perform operation
fmul.s f10, f3, f22, rne # perform operation
fmul.s f10, f3, f22, rtz # perform operation
fmul.s f10, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmul.s f23, f16, f9, dyn # perform operation
fmul.s f23, f16, f9, rdn # perform operation
fmul.s f23, f16, f9, rmm # perform operation
fmul.s f23, f16, f9, rne # perform operation
fmul.s f23, f16, f9, rtz # perform operation
fmul.s f23, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f16, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fmul.s f15, f22, f24, dyn # perform operation
fmul.s f15, f22, f24, rdn # perform operation
fmul.s f15, f22, f24, rmm # perform operation
fmul.s f15, f22, f24, rne # perform operation
fmul.s f15, f22, f24, rtz # perform operation
fmul.s f15, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmul.s f15, f12, f17, dyn # perform operation
fmul.s f15, f12, f17, rdn # perform operation
fmul.s f15, f12, f17, rmm # perform operation
fmul.s f15, f12, f17, rne # perform operation
fmul.s f15, f12, f17, rtz # perform operation
fmul.s f15, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmul.s f16, f22, f5, dyn # perform operation
fmul.s f16, f22, f5, rdn # perform operation
fmul.s f16, f22, f5, rmm # perform operation
fmul.s f16, f22, f5, rne # perform operation
fmul.s f16, f22, f5, rtz # perform operation
fmul.s f16, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fmul.s f24, f16, f8, dyn # perform operation
fmul.s f24, f16, f8, rdn # perform operation
fmul.s f24, f16, f8, rmm # perform operation
fmul.s f24, f16, f8, rne # perform operation
fmul.s f24, f16, f8, rtz # perform operation
fmul.s f24, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fmul.s f2, f30, f1, dyn # perform operation
fmul.s f2, f30, f1, rdn # perform operation
fmul.s f2, f30, f1, rmm # perform operation
fmul.s f2, f30, f1, rne # perform operation
fmul.s f2, f30, f1, rtz # perform operation
fmul.s f2, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fmul.s f18, f5, f8, dyn # perform operation
fmul.s f18, f5, f8, rdn # perform operation
fmul.s f18, f5, f8, rmm # perform operation
fmul.s f18, f5, f8, rne # perform operation
fmul.s f18, f5, f8, rtz # perform operation
fmul.s f18, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fmul.s f15, f31, f28, dyn # perform operation
fmul.s f15, f31, f28, rdn # perform operation
fmul.s f15, f31, f28, rmm # perform operation
fmul.s f15, f31, f28, rne # perform operation
fmul.s f15, f31, f28, rtz # perform operation
fmul.s f15, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
fmul.s f16, f1, f13, dyn # perform operation
fmul.s f16, f1, f13, rdn # perform operation
fmul.s f16, f1, f13, rmm # perform operation
fmul.s f16, f1, f13, rne # perform operation
fmul.s f16, f1, f13, rtz # perform operation
fmul.s f16, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fmul.s f6, f14, f21, dyn # perform operation
fmul.s f6, f14, f21, rdn # perform operation
fmul.s f6, f14, f21, rmm # perform operation
fmul.s f6, f14, f21, rne # perform operation
fmul.s f6, f14, f21, rtz # perform operation
fmul.s f6, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fmul.s f11, f13, f12, dyn # perform operation
fmul.s f11, f13, f12, rdn # perform operation
fmul.s f11, f13, f12, rmm # perform operation
fmul.s f11, f13, f12, rne # perform operation
fmul.s f11, f13, f12, rtz # perform operation
fmul.s f11, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fmul.s f27, f3, f15, dyn # perform operation
fmul.s f27, f3, f15, rdn # perform operation
fmul.s f27, f3, f15, rmm # perform operation
fmul.s f27, f3, f15, rne # perform operation
fmul.s f27, f3, f15, rtz # perform operation
fmul.s f27, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fmul.s f15, f25, f7, dyn # perform operation
fmul.s f15, f25, f7, rdn # perform operation
fmul.s f15, f25, f7, rmm # perform operation
fmul.s f15, f25, f7, rne # perform operation
fmul.s f15, f25, f7, rtz # perform operation
fmul.s f15, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f25, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fmul.s f20, f8, f26, dyn # perform operation
fmul.s f20, f8, f26, rdn # perform operation
fmul.s f20, f8, f26, rmm # perform operation
fmul.s f20, f8, f26, rne # perform operation
fmul.s f20, f8, f26, rtz # perform operation
fmul.s f20, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fmul.s f31, f25, f21, dyn # perform operation
fmul.s f31, f25, f21, rdn # perform operation
fmul.s f31, f25, f21, rmm # perform operation
fmul.s f31, f25, f21, rne # perform operation
fmul.s f31, f25, f21, rtz # perform operation
fmul.s f31, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fmul.s f12, f14, f18, dyn # perform operation
fmul.s f12, f14, f18, rdn # perform operation
fmul.s f12, f14, f18, rmm # perform operation
fmul.s f12, f14, f18, rne # perform operation
fmul.s f12, f14, f18, rtz # perform operation
fmul.s f12, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fmul.s f3, f20, f11, dyn # perform operation
fmul.s f3, f20, f11, rdn # perform operation
fmul.s f3, f20, f11, rmm # perform operation
fmul.s f3, f20, f11, rne # perform operation
fmul.s f3, f20, f11, rtz # perform operation
fmul.s f3, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fmul.s f24, f3, f21, dyn # perform operation
fmul.s f24, f3, f21, rdn # perform operation
fmul.s f24, f3, f21, rmm # perform operation
fmul.s f24, f3, f21, rne # perform operation
fmul.s f24, f3, f21, rtz # perform operation
fmul.s f24, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fmul.s f31, f18, f3, dyn # perform operation
fmul.s f31, f18, f3, rdn # perform operation
fmul.s f31, f18, f3, rmm # perform operation
fmul.s f31, f18, f3, rne # perform operation
fmul.s f31, f18, f3, rtz # perform operation
fmul.s f31, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fmul.s f30, f6, f19, dyn # perform operation
fmul.s f30, f6, f19, rdn # perform operation
fmul.s f30, f6, f19, rmm # perform operation
fmul.s f30, f6, f19, rne # perform operation
fmul.s f30, f6, f19, rtz # perform operation
fmul.s f30, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fmul.s f7, f26, f9, dyn # perform operation
fmul.s f7, f26, f9, rdn # perform operation
fmul.s f7, f26, f9, rmm # perform operation
fmul.s f7, f26, f9, rne # perform operation
fmul.s f7, f26, f9, rtz # perform operation
fmul.s f7, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fmul.s f25, f2, f11, dyn # perform operation
fmul.s f25, f2, f11, rdn # perform operation
fmul.s f25, f2, f11, rmm # perform operation
fmul.s f25, f2, f11, rne # perform operation
fmul.s f25, f2, f11, rtz # perform operation
fmul.s f25, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fmul.s f6, f20, f27, dyn # perform operation
fmul.s f6, f20, f27, rdn # perform operation
fmul.s f6, f20, f27, rmm # perform operation
fmul.s f6, f20, f27, rne # perform operation
fmul.s f6, f20, f27, rtz # perform operation
fmul.s f6, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fmul.s f1, f21, f18, dyn # perform operation
fmul.s f1, f21, f18, rdn # perform operation
fmul.s f1, f21, f18, rmm # perform operation
fmul.s f1, f21, f18, rne # perform operation
fmul.s f1, f21, f18, rtz # perform operation
fmul.s f1, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fmul.s f27, f16, f22, dyn # perform operation
fmul.s f27, f16, f22, rdn # perform operation
fmul.s f27, f16, f22, rmm # perform operation
fmul.s f27, f16, f22, rne # perform operation
fmul.s f27, f16, f22, rtz # perform operation
fmul.s f27, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fmul.s f13, f21, f9, dyn # perform operation
fmul.s f13, f21, f9, rdn # perform operation
fmul.s f13, f21, f9, rmm # perform operation
fmul.s f13, f21, f9, rne # perform operation
fmul.s f13, f21, f9, rtz # perform operation
fmul.s f13, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fmul.s f27, f21, f2, dyn # perform operation
fmul.s f27, f21, f2, rdn # perform operation
fmul.s f27, f21, f2, rmm # perform operation
fmul.s f27, f21, f2, rne # perform operation
fmul.s f27, f21, f2, rtz # perform operation
fmul.s f27, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fmul.s f17, f28, f16, dyn # perform operation
fmul.s f17, f28, f16, rdn # perform operation
fmul.s f17, f28, f16, rmm # perform operation
fmul.s f17, f28, f16, rne # perform operation
fmul.s f17, f28, f16, rtz # perform operation
fmul.s f17, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fmul.s f20, f5, f21, dyn # perform operation
fmul.s f20, f5, f21, rdn # perform operation
fmul.s f20, f5, f21, rmm # perform operation
fmul.s f20, f5, f21, rne # perform operation
fmul.s f20, f5, f21, rtz # perform operation
fmul.s f20, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fmul.s f30, f28, f1, dyn # perform operation
fmul.s f30, f28, f1, rdn # perform operation
fmul.s f30, f28, f1, rmm # perform operation
fmul.s f30, f28, f1, rne # perform operation
fmul.s f30, f28, f1, rtz # perform operation
fmul.s f30, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fmul.s f30, f29, f12, dyn # perform operation
fmul.s f30, f29, f12, rdn # perform operation
fmul.s f30, f29, f12, rmm # perform operation
fmul.s f30, f29, f12, rne # perform operation
fmul.s f30, f29, f12, rtz # perform operation
fmul.s f30, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fmul.s f7, f19, f25, dyn # perform operation
fmul.s f7, f19, f25, rdn # perform operation
fmul.s f7, f19, f25, rmm # perform operation
fmul.s f7, f19, f25, rne # perform operation
fmul.s f7, f19, f25, rtz # perform operation
fmul.s f7, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fmul.s f1, f5, f7, dyn # perform operation
fmul.s f1, f5, f7, rdn # perform operation
fmul.s f1, f5, f7, rmm # perform operation
fmul.s f1, f5, f7, rne # perform operation
fmul.s f1, f5, f7, rtz # perform operation
fmul.s f1, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fmul.s f1, f16, f28, dyn # perform operation
fmul.s f1, f16, f28, rdn # perform operation
fmul.s f1, f16, f28, rmm # perform operation
fmul.s f1, f16, f28, rne # perform operation
fmul.s f1, f16, f28, rtz # perform operation
fmul.s f1, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fmul.s f30, f25, f10, dyn # perform operation
fmul.s f30, f25, f10, rdn # perform operation
fmul.s f30, f25, f10, rmm # perform operation
fmul.s f30, f25, f10, rne # perform operation
fmul.s f30, f25, f10, rtz # perform operation
fmul.s f30, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fmul.s f13, f15, f20, dyn # perform operation
fmul.s f13, f15, f20, rdn # perform operation
fmul.s f13, f15, f20, rmm # perform operation
fmul.s f13, f15, f20, rne # perform operation
fmul.s f13, f15, f20, rtz # perform operation
fmul.s f13, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
fmul.s f1, f12, f23, dyn # perform operation
fmul.s f1, f12, f23, rdn # perform operation
fmul.s f1, f12, f23, rmm # perform operation
fmul.s f1, f12, f23, rne # perform operation
fmul.s f1, f12, f23, rtz # perform operation
fmul.s f1, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fmul.s f14, f9, f15, dyn # perform operation
fmul.s f14, f9, f15, rdn # perform operation
fmul.s f14, f9, f15, rmm # perform operation
fmul.s f14, f9, f15, rne # perform operation
fmul.s f14, f9, f15, rtz # perform operation
fmul.s f14, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fmul.s f5, f30, f24, dyn # perform operation
fmul.s f5, f30, f24, rdn # perform operation
fmul.s f5, f30, f24, rmm # perform operation
fmul.s f5, f30, f24, rne # perform operation
fmul.s f5, f30, f24, rtz # perform operation
fmul.s f5, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
fmul.s f26, f17, f30, dyn # perform operation
fmul.s f26, f17, f30, rdn # perform operation
fmul.s f26, f17, f30, rmm # perform operation
fmul.s f26, f17, f30, rne # perform operation
fmul.s f26, f17, f30, rtz # perform operation
fmul.s f26, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fmul.s f22, f1, f8, dyn # perform operation
fmul.s f22, f1, f8, rdn # perform operation
fmul.s f22, f1, f8, rmm # perform operation
fmul.s f22, f1, f8, rne # perform operation
fmul.s f22, f1, f8, rtz # perform operation
fmul.s f22, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fmul.s f25, f26, f9, dyn # perform operation
fmul.s f25, f26, f9, rdn # perform operation
fmul.s f25, f26, f9, rmm # perform operation
fmul.s f25, f26, f9, rne # perform operation
fmul.s f25, f26, f9, rtz # perform operation
fmul.s f25, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f26, f9 # perform operation


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
