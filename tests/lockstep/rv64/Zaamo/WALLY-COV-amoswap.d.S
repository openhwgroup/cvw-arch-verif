///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoswap.d.S
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

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x6, 0x55fbecc4d87409e4 # load random value
la x1, scratch # base address
sd x6, 0(x1) # store in memory
li x6, 0xb563fe4622d6594e # load another value into integer register
amoswap.d x28, x6, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0x4a02a7339905695a # load random value
la x2, scratch # base address
sd x19, 0(x2) # store in memory
li x19, 0xfea7c6422f245027 # load another value into integer register
amoswap.d x31, x19, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x24, 0xb9a6be13c25e58c1 # load random value
la x3, scratch # base address
sd x24, 0(x3) # store in memory
li x24, 0x13d98baa8beda5e3 # load another value into integer register
amoswap.d x15, x24, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0xed55d89e0908ed35 # load random value
la x4, scratch # base address
sd x17, 0(x4) # store in memory
li x17, 0xb5ce8c1b8188cf9a # load another value into integer register
amoswap.d x10, x17, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xc101c8fc4aad8f84 # load random value
la x5, scratch # base address
sd x16, 0(x5) # store in memory
li x16, 0x10dfe45e8b1da48f # load another value into integer register
amoswap.d x21, x16, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x623d21af4bcab583 # load random value
la x6, scratch # base address
sd x14, 0(x6) # store in memory
li x14, 0x78ef947d44839ca5 # load another value into integer register
amoswap.d x15, x14, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x476e04a7d04ff434 # load random value
la x7, scratch # base address
sd x13, 0(x7) # store in memory
li x13, 0x34e6c536bbeca081 # load another value into integer register
amoswap.d x28, x13, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0xd41c39e9c8545a4b # load random value
la x8, scratch # base address
sd x23, 0(x8) # store in memory
li x23, 0x172dd75e72b16a0c # load another value into integer register
amoswap.d x28, x23, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x261d81e4391c70d3 # load random value
la x9, scratch # base address
sd x14, 0(x9) # store in memory
li x14, 0xc03d82eff9f38e15 # load another value into integer register
amoswap.d x11, x14, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x90355ab94841ffbe # load random value
la x10, scratch # base address
sd x11, 0(x10) # store in memory
li x11, 0x10217ace8a3f666a # load another value into integer register
amoswap.d x16, x11, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x6a93003963414f4c # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0xacbe46cec385969b # load another value into integer register
amoswap.d x3, x9, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0x60d159eab1e30da2 # load random value
la x12, scratch # base address
sd x24, 0(x12) # store in memory
li x24, 0x63824a3a2c42ad3d # load another value into integer register
amoswap.d x28, x24, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0xc7334eedd59cd0ca # load random value
la x13, scratch # base address
sd x10, 0(x13) # store in memory
li x10, 0x24b956fd5f60db6e # load another value into integer register
amoswap.d x23, x10, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x6fe631aaa52b4885 # load random value
la x14, scratch # base address
sd x9, 0(x14) # store in memory
li x9, 0x8107123092fd1205 # load another value into integer register
amoswap.d x10, x9, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0xd3f89f4b0fb2981f # load random value
la x15, scratch # base address
sd x30, 0(x15) # store in memory
li x30, 0x88011bea23e99998 # load another value into integer register
amoswap.d x3, x30, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0xa16b4d3e00574220 # load random value
la x16, scratch # base address
sd x1, 0(x16) # store in memory
li x1, 0xe5508a08d6d358c1 # load another value into integer register
amoswap.d x8, x1, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x29, 0xd9865575f3b096d3 # load random value
la x17, scratch # base address
sd x29, 0(x17) # store in memory
li x29, 0x3905d08af5e5da2e # load another value into integer register
amoswap.d x5, x29, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0xc0fe895dd2f5680f # load random value
la x18, scratch # base address
sd x30, 0(x18) # store in memory
li x30, 0xe38a812e6033b6d1 # load another value into integer register
amoswap.d x31, x30, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0x1aeb4ec703f50c7e # load random value
la x19, scratch # base address
sd x16, 0(x19) # store in memory
li x16, 0x750017d6c51eca3b # load another value into integer register
amoswap.d x17, x16, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0x8217d04c995a048a # load random value
la x20, scratch # base address
sd x3, 0(x20) # store in memory
li x3, 0x398574132494b6eb # load another value into integer register
amoswap.d x28, x3, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0xfe67d92c21c4f523 # load random value
la x21, scratch # base address
sd x14, 0(x21) # store in memory
li x14, 0xbffa849a64bd8e0d # load another value into integer register
amoswap.d x5, x14, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x6, 0xd5adeb35739f6634 # load random value
la x22, scratch # base address
sd x6, 0(x22) # store in memory
li x6, 0xc65bd1724701f229 # load another value into integer register
amoswap.d x9, x6, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0x40a7b7740183e3ac # load random value
la x23, scratch # base address
sd x7, 0(x23) # store in memory
li x7, 0xb63180fe7749aeee # load another value into integer register
amoswap.d x10, x7, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x1, 0x2677caa1bd2e30c9 # load random value
la x24, scratch # base address
sd x1, 0(x24) # store in memory
li x1, 0x58d1fe74c73a0dba # load another value into integer register
amoswap.d x8, x1, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x15, 0x09ad96a57334a951 # load random value
la x25, scratch # base address
sd x15, 0(x25) # store in memory
li x15, 0x1660684b5282a456 # load another value into integer register
amoswap.d x1, x15, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x23, 0x978b699106650622 # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0x2d41a3d5474d6824 # load another value into integer register
amoswap.d x6, x23, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x13, 0x56c2f4891eef23e3 # load random value
la x27, scratch # base address
sd x13, 0(x27) # store in memory
li x13, 0xdad98a8c67a52fb9 # load another value into integer register
amoswap.d x16, x13, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x3, 0xb1b882b9621879e8 # load random value
la x28, scratch # base address
sd x3, 0(x28) # store in memory
li x3, 0xd6c766a8b3266cff # load another value into integer register
amoswap.d x9, x3, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0x62b07203793ba0e9 # load random value
la x29, scratch # base address
sd x18, 0(x29) # store in memory
li x18, 0xb10117040ccd8b43 # load another value into integer register
amoswap.d x25, x18, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x28, 0x9ffd446e2efbbfe0 # load random value
la x30, scratch # base address
sd x28, 0(x30) # store in memory
li x28, 0x1f95d9469c97b511 # load another value into integer register
amoswap.d x21, x28, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x8, 0xafd7a93004033895 # load random value
la x31, scratch # base address
sd x8, 0(x31) # store in memory
li x8, 0xeb0a8ec45fb6a12c # load another value into integer register
amoswap.d x2, x8, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x6720c07d1c927c21 # load random value
la x2, scratch # base address
sd x0, 0(x2) # store in memory
li x0, 0x440abdd6b9cf6801 # load another value into integer register
amoswap.d x29, x0, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x757bfff55b9ab1c5 # load random value
la x13, scratch # base address
sd x1, 0(x13) # store in memory
li x1, 0x4363175932b9b954 # load another value into integer register
amoswap.d x6, x1, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x71901c0cf747a200 # load random value
la x7, scratch # base address
sd x2, 0(x7) # store in memory
li x2, 0x5f576cadb8eb09e9 # load another value into integer register
amoswap.d x11, x2, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xd96e515fd15288f4 # load random value
la x11, scratch # base address
sd x3, 0(x11) # store in memory
li x3, 0x31a0ef5aca7638cb # load another value into integer register
amoswap.d x15, x3, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcc79734cdff9a279 # load random value
la x10, scratch # base address
sd x4, 0(x10) # store in memory
li x4, 0x8cc469cb5c26b752 # load another value into integer register
amoswap.d x12, x4, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xafb92e0ef014cbc1 # load random value
la x28, scratch # base address
sd x5, 0(x28) # store in memory
li x5, 0x76e8e83c203edd73 # load another value into integer register
amoswap.d x30, x5, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7a01ff66f6f54401 # load random value
la x23, scratch # base address
sd x6, 0(x23) # store in memory
li x6, 0xf7ba897c489ca1ff # load another value into integer register
amoswap.d x24, x6, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfd2668b2e21106b2 # load random value
la x3, scratch # base address
sd x7, 0(x3) # store in memory
li x7, 0xcc645417c3fa5a48 # load another value into integer register
amoswap.d x18, x7, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x8078a171b6f90988 # load random value
la x31, scratch # base address
sd x8, 0(x31) # store in memory
li x8, 0xc6cb2045ffbb42da # load another value into integer register
amoswap.d x28, x8, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x0e859147930e73c9 # load random value
la x7, scratch # base address
sd x9, 0(x7) # store in memory
li x9, 0x1c9feb93e0dd7024 # load another value into integer register
amoswap.d x1, x9, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x3b2c6326272f0c57 # load random value
la x11, scratch # base address
sd x10, 0(x11) # store in memory
li x10, 0xb3a8ce3c71c460cf # load another value into integer register
amoswap.d x2, x10, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x53003f4bc6129357 # load random value
la x3, scratch # base address
sd x11, 0(x3) # store in memory
li x11, 0xe8a977c42c3299a9 # load another value into integer register
amoswap.d x1, x11, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x16df034adbf7167e # load random value
la x8, scratch # base address
sd x12, 0(x8) # store in memory
li x12, 0x4c11d35a6408e3ed # load another value into integer register
amoswap.d x17, x12, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xe2f4c2e2e6944536 # load random value
la x24, scratch # base address
sd x13, 0(x24) # store in memory
li x13, 0x7abe8ef4db93e899 # load another value into integer register
amoswap.d x18, x13, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xa476bd137bd7d0b1 # load random value
la x24, scratch # base address
sd x14, 0(x24) # store in memory
li x14, 0x48d1ab633da154e7 # load another value into integer register
amoswap.d x31, x14, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x0ac55e381683301c # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0xc0ca4fd3dea35c79 # load another value into integer register
amoswap.d x23, x15, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x61a2a9578d316afb # load random value
la x25, scratch # base address
sd x16, 0(x25) # store in memory
li x16, 0x743a373c77eb8ab5 # load another value into integer register
amoswap.d x2, x16, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x6b595846a1dbfe96 # load random value
la x9, scratch # base address
sd x17, 0(x9) # store in memory
li x17, 0x074ca852ee6e21e3 # load another value into integer register
amoswap.d x16, x17, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x444a1dcd30f82b81 # load random value
la x20, scratch # base address
sd x18, 0(x20) # store in memory
li x18, 0x2012168b0540887f # load another value into integer register
amoswap.d x29, x18, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xc4aeacda4784a688 # load random value
la x9, scratch # base address
sd x19, 0(x9) # store in memory
li x19, 0xee9c7fa831d32b18 # load another value into integer register
amoswap.d x5, x19, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x7a303757286c51d4 # load random value
la x14, scratch # base address
sd x20, 0(x14) # store in memory
li x20, 0xf173936ccc07935e # load another value into integer register
amoswap.d x21, x20, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x0c9e2ca0b1777e06 # load random value
la x30, scratch # base address
sd x21, 0(x30) # store in memory
li x21, 0x769be368b5ba24a9 # load another value into integer register
amoswap.d x6, x21, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x09f4731fdcf544eb # load random value
la x19, scratch # base address
sd x22, 0(x19) # store in memory
li x22, 0x0abe58968057cd68 # load another value into integer register
amoswap.d x7, x22, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x0b399ba10c44ae78 # load random value
la x16, scratch # base address
sd x23, 0(x16) # store in memory
li x23, 0x95892934dc2f443c # load another value into integer register
amoswap.d x31, x23, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x8a3d5d68b6dd9080 # load random value
la x27, scratch # base address
sd x24, 0(x27) # store in memory
li x24, 0xd78e030ac2265eca # load another value into integer register
amoswap.d x3, x24, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xfe2f4de9b246feb1 # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0xf078fcdd1d5190b4 # load another value into integer register
amoswap.d x22, x25, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x7c0e35f8a0076e5e # load random value
la x20, scratch # base address
sd x26, 0(x20) # store in memory
li x26, 0x9d5657f8ce89aa1a # load another value into integer register
amoswap.d x30, x26, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xdf5448c2121b7288 # load random value
la x24, scratch # base address
sd x27, 0(x24) # store in memory
li x27, 0xa0f3fe475da2ddc0 # load another value into integer register
amoswap.d x9, x27, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x2c88bc07d3682187 # load random value
la x16, scratch # base address
sd x28, 0(x16) # store in memory
li x28, 0xfda0f3d3a8ba782a # load another value into integer register
amoswap.d x3, x28, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xff7dbcbd4b737ef7 # load random value
la x24, scratch # base address
sd x29, 0(x24) # store in memory
li x29, 0x23177a6359de11cf # load another value into integer register
amoswap.d x22, x29, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xb17fcc3d9e51b2a5 # load random value
la x23, scratch # base address
sd x30, 0(x23) # store in memory
li x30, 0x421e39fa3fc70354 # load another value into integer register
amoswap.d x16, x30, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x9fd6185b6b8537e4 # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0x5db7d20bad43af73 # load another value into integer register
amoswap.d x25, x31, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x18, 0x03fb945e62ebe9df # load random value
la x2, scratch # base address
sd x18, 0(x2) # store in memory
li x18, 0xd417dde7b4b203e2 # load another value into integer register
amoswap.d x0, x18, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x8d82e2d1ba95d217 # load random value
la x9, scratch # base address
sd x28, 0(x9) # store in memory
li x28, 0x14a6e5ca74e1691b # load another value into integer register
amoswap.d x1, x28, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x1, 0xdd89aa897d94b0bc # load random value
la x20, scratch # base address
sd x1, 0(x20) # store in memory
li x1, 0x74c7e7c18fdafae9 # load another value into integer register
amoswap.d x2, x1, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x28eb834fd8b9948f # load random value
la x30, scratch # base address
sd x13, 0(x30) # store in memory
li x13, 0x6f02c5f83794b177 # load another value into integer register
amoswap.d x3, x13, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x2e5023d405399e58 # load random value
la x16, scratch # base address
sd x21, 0(x16) # store in memory
li x21, 0x24d84e5917d8669f # load another value into integer register
amoswap.d x4, x21, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x3405e6fcb0989aaa # load random value
la x9, scratch # base address
sd x3, 0(x9) # store in memory
li x3, 0xf1f0d96480b6f4e8 # load another value into integer register
amoswap.d x5, x3, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x76386dc86735f4eb # load random value
la x12, scratch # base address
sd x1, 0(x12) # store in memory
li x1, 0x6fbb768a274f5496 # load another value into integer register
amoswap.d x6, x1, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0xe40b24561008f5d8 # load random value
la x3, scratch # base address
sd x1, 0(x3) # store in memory
li x1, 0xf912a4cc0e716a59 # load another value into integer register
amoswap.d x7, x1, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x6319b48e7e85b9f8 # load random value
la x24, scratch # base address
sd x26, 0(x24) # store in memory
li x26, 0xb3e8d1ab3286995b # load another value into integer register
amoswap.d x8, x26, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa102c2a60127763e # load random value
la x2, scratch # base address
sd x9, 0(x2) # store in memory
li x9, 0x9f15044c441f0631 # load another value into integer register
amoswap.d x9, x9, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x8dfbfed77387ec64 # load random value
la x14, scratch # base address
sd x8, 0(x14) # store in memory
li x8, 0x46fe7c07d9f19dc3 # load another value into integer register
amoswap.d x10, x8, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x22, 0xbc23f39d9d162e7a # load random value
la x28, scratch # base address
sd x22, 0(x28) # store in memory
li x22, 0x5532364d5379da5a # load another value into integer register
amoswap.d x11, x22, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x2, 0x21853bfd9e8f125a # load random value
la x23, scratch # base address
sd x2, 0(x23) # store in memory
li x2, 0x8522f400ef2a2c29 # load another value into integer register
amoswap.d x12, x2, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x21b61bf977beb6b8 # load random value
la x30, scratch # base address
sd x14, 0(x30) # store in memory
li x14, 0x8a820a995acdca69 # load another value into integer register
amoswap.d x13, x14, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x2c630ec19714e160 # load random value
la x21, scratch # base address
sd x26, 0(x21) # store in memory
li x26, 0x6ae7ed7e44b51667 # load another value into integer register
amoswap.d x14, x26, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x23, 0xb2e3284ad611af27 # load random value
la x14, scratch # base address
sd x23, 0(x14) # store in memory
li x23, 0xbfb2b9b243a40234 # load another value into integer register
amoswap.d x15, x23, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x505cf0aaad66659d # load random value
la x1, scratch # base address
sd x30, 0(x1) # store in memory
li x30, 0xbf17d5ea603e0955 # load another value into integer register
amoswap.d x16, x30, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x089d982379a4fca2 # load random value
la x20, scratch # base address
sd x7, 0(x20) # store in memory
li x7, 0x9369004d149c6fb5 # load another value into integer register
amoswap.d x17, x7, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x7, 0x0c17e51310c53dd9 # load random value
la x11, scratch # base address
sd x7, 0(x11) # store in memory
li x7, 0x0c7faf63c49061ab # load another value into integer register
amoswap.d x18, x7, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x30, 0x9eb4778cd2365158 # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0xb5cef8a409ff8ab2 # load another value into integer register
amoswap.d x19, x30, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x12, 0xc2277c30f72b80fa # load random value
la x17, scratch # base address
sd x12, 0(x17) # store in memory
li x12, 0x55750eaec429e646 # load another value into integer register
amoswap.d x20, x12, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x14, 0x4704734f7aad5c94 # load random value
la x23, scratch # base address
sd x14, 0(x23) # store in memory
li x14, 0x3c3d529a264d6049 # load another value into integer register
amoswap.d x21, x14, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x8, 0xcd09e7ec4088a461 # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0x70d48393f2f2aabb # load another value into integer register
amoswap.d x22, x8, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x20, 0xbd7db1d1902a3eb7 # load random value
la x9, scratch # base address
sd x20, 0(x9) # store in memory
li x20, 0x52951a06890604f4 # load another value into integer register
amoswap.d x23, x20, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x2bec62c6fbef7535 # load random value
la x8, scratch # base address
sd x31, 0(x8) # store in memory
li x31, 0x65d924dbe8276a55 # load another value into integer register
amoswap.d x24, x31, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x15, 0x828b17e18dcd5236 # load random value
la x13, scratch # base address
sd x15, 0(x13) # store in memory
li x15, 0xab147151e2200017 # load another value into integer register
amoswap.d x25, x15, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x15, 0x1cb460300b0c4c79 # load random value
la x30, scratch # base address
sd x15, 0(x30) # store in memory
li x15, 0xc7428d55aca267ec # load another value into integer register
amoswap.d x26, x15, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x9, 0xb35593d424a53f2b # load random value
la x24, scratch # base address
sd x9, 0(x24) # store in memory
li x9, 0x3c4ed908028baacb # load another value into integer register
amoswap.d x27, x9, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x27b57f89e731e7ec # load random value
la x23, scratch # base address
sd x14, 0(x23) # store in memory
li x14, 0x26accf31aa534c28 # load another value into integer register
amoswap.d x28, x14, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x061c81b6bf5a70bf # load random value
la x21, scratch # base address
sd x12, 0(x21) # store in memory
li x12, 0x4ab91772b55c074f # load another value into integer register
amoswap.d x29, x12, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x28, 0x0f2c6a31d5483a55 # load random value
la x3, scratch # base address
sd x28, 0(x3) # store in memory
li x28, 0xa7335e24a1e9ffb4 # load another value into integer register
amoswap.d x30, x28, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x6, 0x5e6830449e255714 # load random value
la x2, scratch # base address
sd x6, 0(x2) # store in memory
li x6, 0x00c07eaae8443100 # load another value into integer register
amoswap.d x31, x6, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x71d5887dcae3c57d # load random value
la x25, scratch # base address
sd x26, 0(x25) # store in memory
li x26, 0x0000000000000000 # load another value into integer register
amoswap.d x9, x26, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x3e2262f15d588cd7 # load random value
la x27, scratch # base address
sd x8, 0(x27) # store in memory
li x8, 0x0000000000000001 # load another value into integer register
amoswap.d x9, x8, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0x7d4d183655d2e6f3 # load random value
la x3, scratch # base address
sd x30, 0(x3) # store in memory
li x30, 0x0000000000000002 # load another value into integer register
amoswap.d x5, x30, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x27, 0xd387c14b39eb6302 # load random value
la x26, scratch # base address
sd x27, 0(x26) # store in memory
li x27, 0x8000000000000000 # load another value into integer register
amoswap.d x21, x27, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0x8b77354c1b1a351b # load random value
la x28, scratch # base address
sd x27, 0(x28) # store in memory
li x27, 0x8000000000000001 # load another value into integer register
amoswap.d x11, x27, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0x120767287a216047 # load random value
la x20, scratch # base address
sd x26, 0(x20) # store in memory
li x26, 0x7fffffffffffffff # load another value into integer register
amoswap.d x5, x26, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x15, 0x88cc26e4a8698ac3 # load random value
la x28, scratch # base address
sd x15, 0(x28) # store in memory
li x15, 0x7ffffffffffffffe # load another value into integer register
amoswap.d x25, x15, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x18, 0x9b78f09b3039b390 # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0xffffffffffffffff # load another value into integer register
amoswap.d x31, x18, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x17, 0xf189a45b8737254e # load random value
la x21, scratch # base address
sd x17, 0(x21) # store in memory
li x17, 0xfffffffffffffffe # load another value into integer register
amoswap.d x30, x17, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x18, 0x8e810bd4a6bd7495 # load random value
la x17, scratch # base address
sd x18, 0(x17) # store in memory
li x18, 0x5bbc887763ae86f2 # load another value into integer register
amoswap.d x22, x18, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x2cd2708ddac1dfeb # load random value
la x6, scratch # base address
sd x16, 0(x6) # store in memory
li x16, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoswap.d x14, x16, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x28bd5eacdf8ccfc7 # load random value
la x17, scratch # base address
sd x12, 0(x17) # store in memory
li x12, 0x5555555555555555 # load another value into integer register
amoswap.d x27, x12, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0xbd864d84e4e84732 # load random value
la x2, scratch # base address
sd x28, 0(x2) # store in memory
li x28, 0x00000000ffffffff # load another value into integer register
amoswap.d x19, x28, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x5fef062f2c24fbec # load random value
la x22, scratch # base address
sd x19, 0(x22) # store in memory
li x19, 0x00000000fffffffe # load another value into integer register
amoswap.d x17, x19, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x19, 0xea9f4971253805e0 # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0x0000000100000000 # load another value into integer register
amoswap.d x26, x19, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x28, 0xcf7d2a837f7b2006 # load random value
la x1, scratch # base address
sd x28, 0(x1) # store in memory
li x28, 0x0000000100000001 # load another value into integer register
amoswap.d x11, x28, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0b94a59c3cae201f # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoswap.d x21, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe715d8d893eca07f # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoswap.d x9, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x9d01b7b8f08528d3 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoswap.d x5, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfdfc6aa7627d8ae0 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoswap.d x3, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa6d0b9569221d2f8 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoswap.d x24, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3661a4004a539dea # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoswap.d x17, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x457b09f47615e6f0 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoswap.d x27, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x612900ed369a6823 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoswap.d x6, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc20e82f942b8b7dc # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoswap.d x11, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb2ca5a6940e59d95 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoswap.d x9, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa2fbea24b16a80c2 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoswap.d x6, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4ef050afe45aefd9 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoswap.d x25, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x738ddba948b7244f # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoswap.d x23, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xb1d519442e50b5d7 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoswap.d x29, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x53cdb13652417c6b # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoswap.d x7, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x630e306da11c6273 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoswap.d x20, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4079dbbec9c23a3c # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoswap.d x23, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa4c7e27a482fa914 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoswap.d x3, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x51686eaba9cb4dd2 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoswap.d x18, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xfb44dafca30226bf # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoswap.d x7, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x8d7d9730420f562a # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoswap.d x7, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x81384070a5b8a778 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoswap.d x2, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8377917d1b333017 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoswap.d x18, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xf2c0021f93c6144b # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoswap.d x27, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe5150e802f6df759 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoswap.d x30, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x6009fb820e3ee73f # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoswap.d x26, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x8262ccb2b6a1e244 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoswap.d x11, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x056fd6fc8e340bf4 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoswap.d x7, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xde947e5e3a3c8c92 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoswap.d x16, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x8e21deb4544a783f # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoswap.d x28, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x7d52cb2f496077e0 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoswap.d x2, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xcc54910ce9b855cf # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoswap.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x39245bf552903279 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoswap.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x30, 0x412a0b2006d82240 # load random value
la x3, scratch # base address
sd x30, 0(x3) # store in memory
li x30, 0x1718e44a5038138e # load another value into integer register
amoswap.d x3, x30, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x9d5de7d653dc1328 # load random value
la x4, scratch # base address
sd x16, 0(x4) # store in memory
li x16, 0x9cbc491df59ca4d4 # load another value into integer register
amoswap.d x4, x16, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x7bf2208ef0f28764 # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0xb3e3fa950d580bc3 # load another value into integer register
amoswap.d x5, x18, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x6ca1797f37d1921e # load random value
la x6, scratch # base address
sd x11, 0(x6) # store in memory
li x11, 0xb7cf80943499f8f2 # load another value into integer register
amoswap.d x6, x11, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x4363d3e695ad0715 # load random value
la x7, scratch # base address
sd x12, 0(x7) # store in memory
li x12, 0x5b06dfc07c8352c1 # load another value into integer register
amoswap.d x7, x12, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x2, 0x03285b5e4f5abe0c # load random value
la x8, scratch # base address
sd x2, 0(x8) # store in memory
li x2, 0xcd8cd45008339e56 # load another value into integer register
amoswap.d x8, x2, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x5, 0xd2ebdda8251f2a6b # load random value
la x9, scratch # base address
sd x5, 0(x9) # store in memory
li x5, 0x1cabd39b3a2437a8 # load another value into integer register
amoswap.d x9, x5, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x28, 0x5199479470aab91e # load random value
la x10, scratch # base address
sd x28, 0(x10) # store in memory
li x28, 0xd8657e953eb2dc34 # load another value into integer register
amoswap.d x10, x28, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x10, 0xdaa2a39cd81fdab0 # load random value
la x11, scratch # base address
sd x10, 0(x11) # store in memory
li x10, 0xef8bbf657fe4f00e # load another value into integer register
amoswap.d x11, x10, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x351f30751e0317ad # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoswap.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x28, 0x6e6db788ae4d40f0 # load random value
la x13, scratch # base address
sd x28, 0(x13) # store in memory
li x28, 0xb3911aac98165ec1 # load another value into integer register
amoswap.d x13, x28, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x3, 0xd47407cb5877b0e6 # load random value
la x14, scratch # base address
sd x3, 0(x14) # store in memory
li x3, 0xceab2c92c6661eb5 # load another value into integer register
amoswap.d x14, x3, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x19, 0x714be62dc83b2587 # load random value
la x15, scratch # base address
sd x19, 0(x15) # store in memory
li x19, 0xb5603d01bf4a6d25 # load another value into integer register
amoswap.d x15, x19, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x13, 0xc63559cfbad24340 # load random value
la x16, scratch # base address
sd x13, 0(x16) # store in memory
li x13, 0x1e20e2bec1ae3839 # load another value into integer register
amoswap.d x16, x13, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x8, 0xf9051191dbf3cac2 # load random value
la x17, scratch # base address
sd x8, 0(x17) # store in memory
li x8, 0x8598f190e17b54f7 # load another value into integer register
amoswap.d x17, x8, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x28, 0xd444307a07914380 # load random value
la x18, scratch # base address
sd x28, 0(x18) # store in memory
li x28, 0x96f0b45e37f5fdfb # load another value into integer register
amoswap.d x18, x28, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x14, 0x4885a9669a627184 # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0x2a1f8479faa5787a # load another value into integer register
amoswap.d x19, x14, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x31, 0x383ae60cf1a23ee7 # load random value
la x20, scratch # base address
sd x31, 0(x20) # store in memory
li x31, 0x32cfb36ffe81ee52 # load another value into integer register
amoswap.d x20, x31, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x17, 0x110c0a0950f6b37f # load random value
la x21, scratch # base address
sd x17, 0(x21) # store in memory
li x17, 0x1d99a293b6ae02da # load another value into integer register
amoswap.d x21, x17, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x27, 0x9b5cc67d9530fa12 # load random value
la x22, scratch # base address
sd x27, 0(x22) # store in memory
li x27, 0xe025e181d916b6f4 # load another value into integer register
amoswap.d x22, x27, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x18, 0xd9cf616907e61887 # load random value
la x23, scratch # base address
sd x18, 0(x23) # store in memory
li x18, 0x5e4ae1a8873d1a07 # load another value into integer register
amoswap.d x23, x18, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x8, 0x132bf2a65ed52b28 # load random value
la x24, scratch # base address
sd x8, 0(x24) # store in memory
li x8, 0x9a809cf089c55147 # load another value into integer register
amoswap.d x24, x8, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x29, 0xf679129bf4d4e638 # load random value
la x25, scratch # base address
sd x29, 0(x25) # store in memory
li x29, 0x91d1ef737e7fe162 # load another value into integer register
amoswap.d x25, x29, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x18, 0x9106349fa7c52f34 # load random value
la x26, scratch # base address
sd x18, 0(x26) # store in memory
li x18, 0xff0e5487fc853605 # load another value into integer register
amoswap.d x26, x18, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x31, 0x43abfda4f74e67ae # load random value
la x27, scratch # base address
sd x31, 0(x27) # store in memory
li x31, 0xf4f584f13bd993d7 # load another value into integer register
amoswap.d x27, x31, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x6, 0x086c189af5ce27c0 # load random value
la x28, scratch # base address
sd x6, 0(x28) # store in memory
li x6, 0x246087e7b0068a8b # load another value into integer register
amoswap.d x28, x6, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x12, 0xe7e5196c9074e60f # load random value
la x29, scratch # base address
sd x12, 0(x29) # store in memory
li x12, 0xe69f3248da744208 # load another value into integer register
amoswap.d x29, x12, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x7, 0x42700efbe4f405ed # load random value
la x30, scratch # base address
sd x7, 0(x30) # store in memory
li x7, 0xb0b3cae0877b3a35 # load another value into integer register
amoswap.d x30, x7, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x9, 0x76591f5ff6fbbd35 # load random value
la x31, scratch # base address
sd x9, 0(x31) # store in memory
li x9, 0x7b4f3bc59cd36185 # load another value into integer register
amoswap.d x31, x9, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xdb33950bf12eb53f # load random value
la x10, scratch # base address
sd x0, 0(x10) # store in memory
li x0, 0xb089d29e7bf0f97e # load another value into integer register
amoswap.d x0, x0, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x408ead388552da58 # load random value
la x11, scratch # base address
sd x1, 0(x11) # store in memory
li x1, 0xf3f0629764809f6a # load another value into integer register
amoswap.d x1, x1, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x8c786af24fa227ef # load random value
la x26, scratch # base address
sd x2, 0(x26) # store in memory
li x2, 0x92bab55ad56b4851 # load another value into integer register
amoswap.d x2, x2, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xf40867247f6b89f3 # load random value
la x9, scratch # base address
sd x3, 0(x9) # store in memory
li x3, 0x073a68db9bb8345f # load another value into integer register
amoswap.d x3, x3, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbacf296da7c72f21 # load random value
la x18, scratch # base address
sd x4, 0(x18) # store in memory
li x4, 0x97f72324594ffdf0 # load another value into integer register
amoswap.d x4, x4, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8fae51cace707d0b # load random value
la x6, scratch # base address
sd x5, 0(x6) # store in memory
li x5, 0xee44dfa856e65a2d # load another value into integer register
amoswap.d x5, x5, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x6, 0x95cfcecba9538e9a # load random value
la x4, scratch # base address
sd x6, 0(x4) # store in memory
li x6, 0x8c7aea7ff7ab166c # load another value into integer register
amoswap.d x6, x6, (x4) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2ea29f9deb2b9508 # load random value
la x18, scratch # base address
sd x7, 0(x18) # store in memory
li x7, 0xad352a3a711547b7 # load another value into integer register
amoswap.d x7, x7, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x2f0a2ca550478761 # load random value
la x21, scratch # base address
sd x8, 0(x21) # store in memory
li x8, 0xd04fcabdbeed5ae2 # load another value into integer register
amoswap.d x8, x8, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x14b38f63c6e389c5 # load random value
la x26, scratch # base address
sd x9, 0(x26) # store in memory
li x9, 0xb38d809bf2197891 # load another value into integer register
amoswap.d x9, x9, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x631391b916443f50 # load random value
la x27, scratch # base address
sd x10, 0(x27) # store in memory
li x10, 0xf90c25f04c5f824a # load another value into integer register
amoswap.d x10, x10, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x92c1cde992a234b8 # load random value
la x10, scratch # base address
sd x11, 0(x10) # store in memory
li x11, 0xc8b21eab7e9757c0 # load another value into integer register
amoswap.d x11, x11, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xa7f473b0dbc6d6c8 # load random value
la x25, scratch # base address
sd x12, 0(x25) # store in memory
li x12, 0xcfb34921be1706eb # load another value into integer register
amoswap.d x12, x12, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x216b688dcd4c5ef8 # load random value
la x30, scratch # base address
sd x13, 0(x30) # store in memory
li x13, 0x0628108d50fcdefb # load another value into integer register
amoswap.d x13, x13, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xa2aa2fa7a7bd3a88 # load random value
la x9, scratch # base address
sd x14, 0(x9) # store in memory
li x14, 0x3db8cd1845ac7d19 # load another value into integer register
amoswap.d x14, x14, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xd5fe8d714c2f8d12 # load random value
la x28, scratch # base address
sd x15, 0(x28) # store in memory
li x15, 0x3ec63f2977ad7996 # load another value into integer register
amoswap.d x15, x15, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xacca9535c76e015a # load random value
la x30, scratch # base address
sd x16, 0(x30) # store in memory
li x16, 0xb56a36bf7ad0e8ca # load another value into integer register
amoswap.d x16, x16, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x4f1b139f9836d9ff # load random value
la x31, scratch # base address
sd x17, 0(x31) # store in memory
li x17, 0x6b6b889fda5ad9fa # load another value into integer register
amoswap.d x17, x17, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x7585e4b4fc84944a # load random value
la x28, scratch # base address
sd x18, 0(x28) # store in memory
li x18, 0x864dbda819044fef # load another value into integer register
amoswap.d x18, x18, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x5433f19ada1ec95d # load random value
la x3, scratch # base address
sd x19, 0(x3) # store in memory
li x19, 0xc4e4974ee2833766 # load another value into integer register
amoswap.d x19, x19, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x2731a7063535731a # load random value
la x2, scratch # base address
sd x20, 0(x2) # store in memory
li x20, 0xaa00a520961daec6 # load another value into integer register
amoswap.d x20, x20, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xe0755f03880e4718 # load random value
la x9, scratch # base address
sd x21, 0(x9) # store in memory
li x21, 0x440e946ea615336d # load another value into integer register
amoswap.d x21, x21, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xe9196a97755a2ead # load random value
la x9, scratch # base address
sd x22, 0(x9) # store in memory
li x22, 0x8244762d5d2de57a # load another value into integer register
amoswap.d x22, x22, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x801c9a9c3ecfe837 # load random value
la x10, scratch # base address
sd x23, 0(x10) # store in memory
li x23, 0xfb937a3b7caae182 # load another value into integer register
amoswap.d x23, x23, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x71b23f41201b3cb3 # load random value
la x18, scratch # base address
sd x24, 0(x18) # store in memory
li x24, 0xc46c1c91b9398a06 # load another value into integer register
amoswap.d x24, x24, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xadc653be6e1b1b95 # load random value
la x26, scratch # base address
sd x25, 0(x26) # store in memory
li x25, 0x9415b9c942d8d220 # load another value into integer register
amoswap.d x25, x25, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xfefa63a1e2182515 # load random value
la x10, scratch # base address
sd x26, 0(x10) # store in memory
li x26, 0x8ee26d0a79acf291 # load another value into integer register
amoswap.d x26, x26, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x82d9c8660129fe34 # load random value
la x3, scratch # base address
sd x27, 0(x3) # store in memory
li x27, 0xd57a194ae2e55ac0 # load another value into integer register
amoswap.d x27, x27, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xc504ac1517e0e8d0 # load random value
la x5, scratch # base address
sd x28, 0(x5) # store in memory
li x28, 0x23bcbcd2900330ba # load another value into integer register
amoswap.d x28, x28, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x0a3e4074d6a22059 # load random value
la x12, scratch # base address
sd x29, 0(x12) # store in memory
li x29, 0xf1fcec6253d3c507 # load another value into integer register
amoswap.d x29, x29, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x8b2a7bdd13cce9e1 # load random value
la x14, scratch # base address
sd x30, 0(x14) # store in memory
li x30, 0x65390e7ce1c868a0 # load another value into integer register
amoswap.d x30, x30, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x591abad3fa903665 # load random value
la x14, scratch # base address
sd x31, 0(x14) # store in memory
li x31, 0x2e671627d97258d8 # load another value into integer register
amoswap.d x31, x31, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x1ad7f9a4f3da5f22 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoswap.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x268f505bd4c3c8b5 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoswap.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xcf2c2811a0e536f6 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoswap.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xedaa49a5fac055d1 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoswap.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5ae87bccc8bad484 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoswap.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdea5b4b9f59022b3 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoswap.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc414eba96e46ffe4 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoswap.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2b86b1f4f2ab8a3e # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoswap.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x31251fecc44cfe74 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoswap.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x74bc1c64b29d946d # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoswap.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xeea53c72a84a214b # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoswap.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xdbc4114acfeb6f50 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoswap.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x40675c6674bc5551 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoswap.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x3682b4a7b21ef628 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoswap.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3dab6a3fd8e8805b # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoswap.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x27ba62b1fe85c002 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoswap.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc7dd37b189f74dd2 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoswap.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x268e3a2b70970862 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoswap.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x85e2596d0c394678 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoswap.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa410920d2242d754 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoswap.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc20c38f60cab8308 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoswap.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3fcd871b03aab92f # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoswap.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x367080ff5b19eae7 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoswap.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x182d842e6b0af8f9 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoswap.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3575c5afc1ba7bb1 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoswap.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb64e27f897c70ed0 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoswap.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xba1b54a5895fdb24 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoswap.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4663ec3e5b83a744 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoswap.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xfb60df1d67849da3 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoswap.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcc13e3ed42fa6837 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoswap.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1a0618cdaa840c5e # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoswap.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x26, scratch
add x7, x8, x15 # perform first operation
amoswap.d x23, x1, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, scratch
add x3, x7, x9 # perform first operation
amoswap.d x27, x10, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x31, scratch
add x13, x5, x9 # perform first operation
amoswap.d x22, x3, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
add x19, x19, x0 # perform first operation
amoswap.d x10, x19, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
add x23, x23, x0 # perform first operation
amoswap.d x2, x24, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
add x17, x17, x0 # perform first operation
amoswap.d x17, x27, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x20, scratch
add x29, x8, x12 # perform first operation
amoswap.d x29, x15, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x7, scratch
add x2, x25, x23 # perform first operation
amoswap.d x2, x15, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x15, scratch
add x9, x8, x10 # perform first operation
amoswap.d x9, x28, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x9, scratch
add x25, x27, x20 # perform first operation
amoswap.d x27, x22, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x12, scratch
add x1, x16, x17 # perform first operation
amoswap.d x17, x2, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x22, scratch
add x24, x7, x23 # perform first operation
amoswap.d x17, x3, (x22) # perform second (triggering) operation

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
