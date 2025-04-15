///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoor.d.S
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
li x7, 0x5dcfec513cc293aa # load random value
la x1, scratch # base address
sd x7, 0(x1) # store in memory
li x7, 0x5be2841691b0d5b7 # load another value into integer register
amoor.d x26, x7, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0x18eca5e0391f0239 # load random value
la x2, scratch # base address
sd x17, 0(x2) # store in memory
li x17, 0xda3794f248408236 # load another value into integer register
amoor.d x26, x17, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x279b40e72ba085d5 # load random value
la x3, scratch # base address
sd x1, 0(x3) # store in memory
li x1, 0xeb59f2a7086c7b74 # load another value into integer register
amoor.d x9, x1, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xb25496559be09808 # load random value
la x4, scratch # base address
sd x27, 0(x4) # store in memory
li x27, 0xf2a385906cd0873a # load another value into integer register
amoor.d x8, x27, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xca7f8135a684fdac # load random value
la x5, scratch # base address
sd x9, 0(x5) # store in memory
li x9, 0x8137130206a8bcf2 # load another value into integer register
amoor.d x10, x9, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x509f30c25e8cd030 # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0x0e4be173a8ea3e2a # load another value into integer register
amoor.d x19, x15, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x609d81945c8c23f4 # load random value
la x7, scratch # base address
sd x31, 0(x7) # store in memory
li x31, 0xc31ca444941fa7ab # load another value into integer register
amoor.d x2, x31, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0xa4a2354da9695e5e # load random value
la x8, scratch # base address
sd x1, 0(x8) # store in memory
li x1, 0x89535ddfb15f2bc1 # load another value into integer register
amoor.d x2, x1, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x5f0417bd11667bf9 # load random value
la x9, scratch # base address
sd x30, 0(x9) # store in memory
li x30, 0x63d776b261e1b2ac # load another value into integer register
amoor.d x18, x30, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0x85b1f2c88ba315ee # load random value
la x10, scratch # base address
sd x24, 0(x10) # store in memory
li x24, 0x647094243d18b56c # load another value into integer register
amoor.d x11, x24, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x4f07b41b96fbcfe8 # load random value
la x11, scratch # base address
sd x15, 0(x11) # store in memory
li x15, 0x5f328726afa55797 # load another value into integer register
amoor.d x21, x15, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x3c2cd67faa37ed7c # load random value
la x12, scratch # base address
sd x1, 0(x12) # store in memory
li x1, 0x4e7aa9383639169c # load another value into integer register
amoor.d x16, x1, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x0e25d9fc5439a01c # load random value
la x13, scratch # base address
sd x23, 0(x13) # store in memory
li x23, 0x627689af407abf69 # load another value into integer register
amoor.d x15, x23, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xff2cc31be212c535 # load random value
la x14, scratch # base address
sd x13, 0(x14) # store in memory
li x13, 0xf85542550a3b92b0 # load another value into integer register
amoor.d x9, x13, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0x2e8fbd6248f63a08 # load random value
la x15, scratch # base address
sd x27, 0(x15) # store in memory
li x27, 0x20e3a0ec78a05dfe # load another value into integer register
amoor.d x21, x27, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x3, 0x40d7299d692b19c8 # load random value
la x16, scratch # base address
sd x3, 0(x16) # store in memory
li x3, 0x91e0a9640de8b0d4 # load another value into integer register
amoor.d x20, x3, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0xd0b12918d50b18f1 # load random value
la x17, scratch # base address
sd x3, 0(x17) # store in memory
li x3, 0x0089f9cb71d5655b # load another value into integer register
amoor.d x12, x3, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x17, 0x7d18ea0b84221ed3 # load random value
la x18, scratch # base address
sd x17, 0(x18) # store in memory
li x17, 0xa729b01467fba1ca # load another value into integer register
amoor.d x3, x17, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0x7725511e64959e46 # load random value
la x19, scratch # base address
sd x13, 0(x19) # store in memory
li x13, 0x9f980bc84b143d25 # load another value into integer register
amoor.d x16, x13, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0x3fa4ffd805ee26a5 # load random value
la x20, scratch # base address
sd x30, 0(x20) # store in memory
li x30, 0x6c5e89da543a0b6e # load another value into integer register
amoor.d x13, x30, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x54b33c4c77cbcf76 # load random value
la x21, scratch # base address
sd x5, 0(x21) # store in memory
li x5, 0x990a5e290e5ebb25 # load another value into integer register
amoor.d x14, x5, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0xd4dc1a6a55c087f4 # load random value
la x22, scratch # base address
sd x3, 0(x22) # store in memory
li x3, 0x487dd5410f5c1165 # load another value into integer register
amoor.d x30, x3, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0x667853355e727914 # load random value
la x23, scratch # base address
sd x26, 0(x23) # store in memory
li x26, 0xb352d2184d2b9d4b # load another value into integer register
amoor.d x25, x26, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0xa43f3c285bedb6ea # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0xbe2f840cebd45f93 # load another value into integer register
amoor.d x17, x12, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x18, 0x2619722b94481820 # load random value
la x25, scratch # base address
sd x18, 0(x25) # store in memory
li x18, 0xa4630ed7dd020e96 # load another value into integer register
amoor.d x7, x18, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x6, 0x14ca5b4c557c4712 # load random value
la x26, scratch # base address
sd x6, 0(x26) # store in memory
li x6, 0x96147bd5a362b23a # load another value into integer register
amoor.d x25, x6, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0x40e6862af6198690 # load random value
la x27, scratch # base address
sd x12, 0(x27) # store in memory
li x12, 0x2a2364085574e935 # load another value into integer register
amoor.d x28, x12, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x5, 0x4a1d13fef72843c7 # load random value
la x28, scratch # base address
sd x5, 0(x28) # store in memory
li x5, 0x239a8f14e512d205 # load another value into integer register
amoor.d x10, x5, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x6, 0x88361b97973970a4 # load random value
la x29, scratch # base address
sd x6, 0(x29) # store in memory
li x6, 0x9c290d3ee294122f # load another value into integer register
amoor.d x22, x6, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0xb83869e22188eab2 # load random value
la x30, scratch # base address
sd x13, 0(x30) # store in memory
li x13, 0x181378c5b39d4077 # load another value into integer register
amoor.d x27, x13, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0xe1a29f4dc486a43d # load random value
la x31, scratch # base address
sd x11, 0(x31) # store in memory
li x11, 0x5a8ddc7fe5799787 # load another value into integer register
amoor.d x8, x11, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xebd73478ac2676c2 # load random value
la x8, scratch # base address
sd x0, 0(x8) # store in memory
li x0, 0x57af6323bc2b1435 # load another value into integer register
amoor.d x27, x0, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x0f5b0dfe8e8acfba # load random value
la x15, scratch # base address
sd x1, 0(x15) # store in memory
li x1, 0x48fe25d51faeb6c2 # load another value into integer register
amoor.d x21, x1, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xfc1137e9af5ee78c # load random value
la x23, scratch # base address
sd x2, 0(x23) # store in memory
li x2, 0x472b8967dc030812 # load another value into integer register
amoor.d x13, x2, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x5daf9810ed698ec5 # load random value
la x7, scratch # base address
sd x3, 0(x7) # store in memory
li x3, 0xdce5284c07768b31 # load another value into integer register
amoor.d x26, x3, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdcc15e81d5406db0 # load random value
la x14, scratch # base address
sd x4, 0(x14) # store in memory
li x4, 0xaa76e34c31d4f467 # load another value into integer register
amoor.d x25, x4, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2d55871475bd0379 # load random value
la x13, scratch # base address
sd x5, 0(x13) # store in memory
li x5, 0xf4d582250d05aa9a # load another value into integer register
amoor.d x14, x5, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x562ea75d20be31b1 # load random value
la x30, scratch # base address
sd x6, 0(x30) # store in memory
li x6, 0x5374857014c4bc15 # load another value into integer register
amoor.d x8, x6, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4d06700b10816048 # load random value
la x5, scratch # base address
sd x7, 0(x5) # store in memory
li x7, 0x857fa8139e002900 # load another value into integer register
amoor.d x2, x7, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xa7f9df5d15cbc7e0 # load random value
la x28, scratch # base address
sd x8, 0(x28) # store in memory
li x8, 0x1aa912fddcf8d3bd # load another value into integer register
amoor.d x22, x8, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x68d377138c2ff1ee # load random value
la x5, scratch # base address
sd x9, 0(x5) # store in memory
li x9, 0x552b552608f55df9 # load another value into integer register
amoor.d x29, x9, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x83257602b4f62206 # load random value
la x28, scratch # base address
sd x10, 0(x28) # store in memory
li x10, 0xfcd3505cbe724c4d # load another value into integer register
amoor.d x24, x10, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xf30dbdc7fd916c6a # load random value
la x28, scratch # base address
sd x11, 0(x28) # store in memory
li x11, 0x9686c6c7393ab208 # load another value into integer register
amoor.d x16, x11, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xeff2196efab8ba3e # load random value
la x23, scratch # base address
sd x12, 0(x23) # store in memory
li x12, 0x9d5f6c246360ebb3 # load another value into integer register
amoor.d x10, x12, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x3a6b040ec8eca1b9 # load random value
la x2, scratch # base address
sd x13, 0(x2) # store in memory
li x13, 0xf9145fd552a44e3d # load another value into integer register
amoor.d x12, x13, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x9db807d6f3b6fdba # load random value
la x13, scratch # base address
sd x14, 0(x13) # store in memory
li x14, 0xacef5a817d69ecbe # load another value into integer register
amoor.d x25, x14, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x6385d91ac5fb261f # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0x8eb00d515bcdec9a # load another value into integer register
amoor.d x19, x15, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xb207201930c537e4 # load random value
la x25, scratch # base address
sd x16, 0(x25) # store in memory
li x16, 0xb8db3167b06fda0c # load another value into integer register
amoor.d x11, x16, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xae454ca92cbeb46c # load random value
la x5, scratch # base address
sd x17, 0(x5) # store in memory
li x17, 0xaeced3c4c35024f4 # load another value into integer register
amoor.d x3, x17, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x125d4397f888fcca # load random value
la x23, scratch # base address
sd x18, 0(x23) # store in memory
li x18, 0x1acec322ef869e76 # load another value into integer register
amoor.d x19, x18, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xa0e8818c2e904af9 # load random value
la x29, scratch # base address
sd x19, 0(x29) # store in memory
li x19, 0x3379d7c41df7cf38 # load another value into integer register
amoor.d x14, x19, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x34328b0fb1c213fc # load random value
la x10, scratch # base address
sd x20, 0(x10) # store in memory
li x20, 0xc436d432d2d37c11 # load another value into integer register
amoor.d x1, x20, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x205c9a669b871955 # load random value
la x20, scratch # base address
sd x21, 0(x20) # store in memory
li x21, 0x6c947f607478ba41 # load another value into integer register
amoor.d x8, x21, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x245b282ad932bf97 # load random value
la x11, scratch # base address
sd x22, 0(x11) # store in memory
li x22, 0x264f1c7b523dc4bf # load another value into integer register
amoor.d x8, x22, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xa1494d6ecbb7a074 # load random value
la x9, scratch # base address
sd x23, 0(x9) # store in memory
li x23, 0x9fab9ad94c5eb9dd # load another value into integer register
amoor.d x20, x23, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x21a1968c54bf0440 # load random value
la x27, scratch # base address
sd x24, 0(x27) # store in memory
li x24, 0x5f522829d74c07dd # load another value into integer register
amoor.d x20, x24, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xf4745e041eac1f5d # load random value
la x17, scratch # base address
sd x25, 0(x17) # store in memory
li x25, 0xf711896bcbcac36c # load another value into integer register
amoor.d x24, x25, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x0890e6b8b1d80308 # load random value
la x8, scratch # base address
sd x26, 0(x8) # store in memory
li x26, 0x5d68bd84740d87f8 # load another value into integer register
amoor.d x29, x26, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xf5d96ef081d7e9ff # load random value
la x15, scratch # base address
sd x27, 0(x15) # store in memory
li x27, 0x2aec6fd528960993 # load another value into integer register
amoor.d x29, x27, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xaf39b0d4f33a182f # load random value
la x23, scratch # base address
sd x28, 0(x23) # store in memory
li x28, 0x6cf3fc30987422a4 # load another value into integer register
amoor.d x20, x28, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xac80bef2be1029ca # load random value
la x26, scratch # base address
sd x29, 0(x26) # store in memory
li x29, 0x68be2435e2f3e5dd # load another value into integer register
amoor.d x19, x29, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x162d5ce6724f1ba2 # load random value
la x28, scratch # base address
sd x30, 0(x28) # store in memory
li x30, 0x20633474b4aa19bd # load another value into integer register
amoor.d x25, x30, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x232542a865e94501 # load random value
la x6, scratch # base address
sd x31, 0(x6) # store in memory
li x31, 0x70972270712cba08 # load another value into integer register
amoor.d x26, x31, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x5, 0x0c5815856be5c8ab # load random value
la x31, scratch # base address
sd x5, 0(x31) # store in memory
li x5, 0xcda9fd99741c7849 # load another value into integer register
amoor.d x0, x5, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x28, 0xe671da8912ab3c23 # load random value
la x18, scratch # base address
sd x28, 0(x18) # store in memory
li x28, 0xfff58c5bdc1629a3 # load another value into integer register
amoor.d x1, x28, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x19, 0x8ea5937d9e8e62e0 # load random value
la x30, scratch # base address
sd x19, 0(x30) # store in memory
li x19, 0x1ea42a8154c3bca7 # load another value into integer register
amoor.d x2, x19, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x29, 0x5984a3e5e20a7569 # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0x1faf9033787b990d # load another value into integer register
amoor.d x3, x29, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0xaad73eff9fc8fd98 # load random value
la x21, scratch # base address
sd x5, 0(x21) # store in memory
li x5, 0xfe98f148e4cd5035 # load another value into integer register
amoor.d x4, x5, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x1, 0xeedbcad773353638 # load random value
la x30, scratch # base address
sd x1, 0(x30) # store in memory
li x1, 0xbb98ee69f070fe51 # load another value into integer register
amoor.d x5, x1, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x39b76a4562506ca7 # load random value
la x21, scratch # base address
sd x10, 0(x21) # store in memory
li x10, 0xc1b0a23ff5c3bd5e # load another value into integer register
amoor.d x6, x10, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xc8ff652a0ad7999e # load random value
la x30, scratch # base address
sd x8, 0(x30) # store in memory
li x8, 0xee290c05ab19375f # load another value into integer register
amoor.d x7, x8, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x25, 0xbb42cace39376ab7 # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0xe2af73d4215c9466 # load another value into integer register
amoor.d x8, x25, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x20, 0x311b8ae144592b9f # load random value
la x8, scratch # base address
sd x20, 0(x8) # store in memory
li x20, 0x5d942f0727735a34 # load another value into integer register
amoor.d x9, x20, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x29, 0xfff1807b4083f4ea # load random value
la x11, scratch # base address
sd x29, 0(x11) # store in memory
li x29, 0x4dcc9bab8d7363f9 # load another value into integer register
amoor.d x10, x29, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x10, 0x3754615c603ee6ea # load random value
la x16, scratch # base address
sd x10, 0(x16) # store in memory
li x10, 0xfbf5ae0d75be751b # load another value into integer register
amoor.d x11, x10, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x14, 0xdd8a87975f6a1f09 # load random value
la x1, scratch # base address
sd x14, 0(x1) # store in memory
li x14, 0xd1d7f80a0f5184ad # load another value into integer register
amoor.d x12, x14, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc6600e646a2648fe # load random value
la x7, scratch # base address
sd x13, 0(x7) # store in memory
li x13, 0x6df67090c073942b # load another value into integer register
amoor.d x13, x13, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x30, 0x90a0c075592a170f # load random value
la x17, scratch # base address
sd x30, 0(x17) # store in memory
li x30, 0xb1a5216d3858c70f # load another value into integer register
amoor.d x14, x30, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x2, 0x36b0593fd0b74313 # load random value
la x3, scratch # base address
sd x2, 0(x3) # store in memory
li x2, 0xd7a6f7f10b326d8d # load another value into integer register
amoor.d x15, x2, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xfd7343620818129b # load random value
la x29, scratch # base address
sd x10, 0(x29) # store in memory
li x10, 0x44340d8969fc0742 # load another value into integer register
amoor.d x16, x10, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x10, 0x8d86ee39a22292ed # load random value
la x29, scratch # base address
sd x10, 0(x29) # store in memory
li x10, 0xaf7362c28b42b804 # load another value into integer register
amoor.d x17, x10, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x7cc2854516e02821 # load random value
la x6, scratch # base address
sd x30, 0(x6) # store in memory
li x30, 0x68be353ef76bb371 # load another value into integer register
amoor.d x18, x30, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x4dc11c48e396ee69 # load random value
la x12, scratch # base address
sd x27, 0(x12) # store in memory
li x27, 0x464a9edb8f370c2b # load another value into integer register
amoor.d x19, x27, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x28, 0x0d9d9668c76d31c9 # load random value
la x8, scratch # base address
sd x28, 0(x8) # store in memory
li x28, 0x4174e213b6df232d # load another value into integer register
amoor.d x20, x28, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x1, 0x3c36de8198169072 # load random value
la x17, scratch # base address
sd x1, 0(x17) # store in memory
li x1, 0xe3941a80581254b1 # load another value into integer register
amoor.d x21, x1, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x11, 0x00c5cd636f120f70 # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0xbc9e5ca12ca04cd5 # load another value into integer register
amoor.d x22, x11, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x5, 0x7f80b2a211860f11 # load random value
la x20, scratch # base address
sd x5, 0(x20) # store in memory
li x5, 0x0097261f16788a24 # load another value into integer register
amoor.d x23, x5, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xfc46430dd8543065 # load random value
la x12, scratch # base address
sd x13, 0(x12) # store in memory
li x13, 0x855301ae66c53156 # load another value into integer register
amoor.d x24, x13, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xf4d1c04c223b576f # load random value
la x22, scratch # base address
sd x5, 0(x22) # store in memory
li x5, 0xb62286515c1da3f5 # load another value into integer register
amoor.d x25, x5, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x5c0f1201b74bcb1a # load random value
la x12, scratch # base address
sd x3, 0(x12) # store in memory
li x3, 0x54821fba4205fe74 # load another value into integer register
amoor.d x26, x3, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x857b0504723c0fe3 # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0xfafa16f437721248 # load another value into integer register
amoor.d x27, x7, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x21d8f593093a21a0 # load random value
la x1, scratch # base address
sd x20, 0(x1) # store in memory
li x20, 0xea728eb3860b6f09 # load another value into integer register
amoor.d x28, x20, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x27, 0x7f6b0e8743713bc1 # load random value
la x17, scratch # base address
sd x27, 0(x17) # store in memory
li x27, 0xe7ac3ba8720d06cd # load another value into integer register
amoor.d x29, x27, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x10, 0xa2b7d807b86dd028 # load random value
la x22, scratch # base address
sd x10, 0(x22) # store in memory
li x10, 0x1d8d7ebea9e02bbe # load another value into integer register
amoor.d x30, x10, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x3, 0xeef36731febc0d67 # load random value
la x13, scratch # base address
sd x3, 0(x13) # store in memory
li x3, 0xb00b1d8666d723b3 # load another value into integer register
amoor.d x31, x3, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x21, 0x82f115efdf88da73 # load random value
la x13, scratch # base address
sd x21, 0(x13) # store in memory
li x21, 0x0000000000000000 # load another value into integer register
amoor.d x17, x21, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0xf602815ef8500eb5 # load random value
la x15, scratch # base address
sd x19, 0(x15) # store in memory
li x19, 0x0000000000000001 # load another value into integer register
amoor.d x6, x19, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x19, 0xc6f5f035b1ea8887 # load random value
la x30, scratch # base address
sd x19, 0(x30) # store in memory
li x19, 0x0000000000000002 # load another value into integer register
amoor.d x8, x19, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x20, 0xe229aedc1b8968fa # load random value
la x19, scratch # base address
sd x20, 0(x19) # store in memory
li x20, 0x8000000000000000 # load another value into integer register
amoor.d x14, x20, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0xaf4978e5f577d0f7 # load random value
la x11, scratch # base address
sd x1, 0(x11) # store in memory
li x1, 0x8000000000000001 # load another value into integer register
amoor.d x17, x1, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x88b466844778c64d # load random value
la x30, scratch # base address
sd x2, 0(x30) # store in memory
li x2, 0x7fffffffffffffff # load another value into integer register
amoor.d x15, x2, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x22, 0xcca90be6dd57be85 # load random value
la x2, scratch # base address
sd x22, 0(x2) # store in memory
li x22, 0x7ffffffffffffffe # load another value into integer register
amoor.d x6, x22, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xd5d26b6a8414769a # load random value
la x30, scratch # base address
sd x9, 0(x30) # store in memory
li x9, 0xffffffffffffffff # load another value into integer register
amoor.d x22, x9, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x11, 0x146bfe1580b88892 # load random value
la x21, scratch # base address
sd x11, 0(x21) # store in memory
li x11, 0xfffffffffffffffe # load another value into integer register
amoor.d x10, x11, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x7, 0x96d08a87018dc90c # load random value
la x30, scratch # base address
sd x7, 0(x30) # store in memory
li x7, 0x5bbc887763ae86f2 # load another value into integer register
amoor.d x2, x7, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0x30c52774cb2b18a6 # load random value
la x12, scratch # base address
sd x18, 0(x12) # store in memory
li x18, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoor.d x24, x18, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x5, 0xfd92d7bf0c753ce9 # load random value
la x23, scratch # base address
sd x5, 0(x23) # store in memory
li x5, 0x5555555555555555 # load another value into integer register
amoor.d x12, x5, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x200d6b3186140648 # load random value
la x22, scratch # base address
sd x25, 0(x22) # store in memory
li x25, 0x00000000ffffffff # load another value into integer register
amoor.d x11, x25, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x291bc567eb3d9805 # load random value
la x8, scratch # base address
sd x20, 0(x8) # store in memory
li x20, 0x00000000fffffffe # load another value into integer register
amoor.d x18, x20, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0x799da09ce19b9bb4 # load random value
la x11, scratch # base address
sd x6, 0(x11) # store in memory
li x6, 0x0000000100000000 # load another value into integer register
amoor.d x5, x6, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x22, 0x0e532722646ff324 # load random value
la x26, scratch # base address
sd x22, 0(x26) # store in memory
li x22, 0x0000000100000001 # load another value into integer register
amoor.d x19, x22, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x7b72cee50a1ef230 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoor.d x14, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xa222c2f08a505cbc # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoor.d x24, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x7b11cd91ac19f3c5 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoor.d x27, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdaec7ca5dc01962e # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoor.d x7, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd2787b8fa2066633 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoor.d x27, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9226670e0c0ce897 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoor.d x28, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa3db8f75a818b76f # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoor.d x29, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xce2c0b460ea5f7db # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoor.d x2, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x009654b2f9ad3099 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoor.d x24, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf6f7d91940268c1a # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoor.d x31, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb0c54eda18fc8209 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoor.d x26, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x76f8dc127246e897 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoor.d x3, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x9d918a19cf2e1e9a # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoor.d x31, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe35d7e7b9e52a9c5 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoor.d x26, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf1d37a513f460fab # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoor.d x6, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xf8e8a4687668235c # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoor.d x19, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xec1e8442009a00eb # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoor.d x10, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa52aff92cefd423c # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoor.d x28, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x7dcb9af69291e251 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoor.d x13, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xba65a9b6fd03a842 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoor.d x11, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4664659ae203ad5c # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoor.d x8, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xdfaf130ca13f0f5e # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoor.d x11, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x23a36cbf67e9cc87 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoor.d x9, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xf81fe73cda692988 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoor.d x14, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x92ceb1b47a775e53 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoor.d x29, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe8d5775bc196f2ee # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoor.d x30, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1f60269f134788fe # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoor.d x31, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xee949b079af7a3de # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoor.d x22, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x95a105553ca658ea # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoor.d x14, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x224dda83f7b9d3f7 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoor.d x30, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd77ad4e0639a3696 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoor.d x16, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x18, 0x1ad12f5730940c3f # load random value
la x1, scratch # base address
sd x18, 0(x1) # store in memory
li x18, 0xd2841d70dd8cb036 # load another value into integer register
amoor.d x1, x18, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x14, 0x4112f7cca17e43bc # load random value
la x2, scratch # base address
sd x14, 0(x2) # store in memory
li x14, 0xfe1978074526d676 # load another value into integer register
amoor.d x2, x14, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x12, 0xd85f38f97bd2b31e # load random value
la x3, scratch # base address
sd x12, 0(x3) # store in memory
li x12, 0x89c5046e873dba1e # load another value into integer register
amoor.d x3, x12, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x87ce3c1656c3705b # load random value
la x4, scratch # base address
sd x6, 0(x4) # store in memory
li x6, 0xe792de1f7ee367d0 # load another value into integer register
amoor.d x4, x6, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x2ec93732daacaa2a # load random value
la x5, scratch # base address
sd x3, 0(x5) # store in memory
li x3, 0x676a8963242da344 # load another value into integer register
amoor.d x5, x3, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x57e7f232a0c90581 # load random value
la x6, scratch # base address
sd x21, 0(x6) # store in memory
li x21, 0xf782e69caff2ac7c # load another value into integer register
amoor.d x6, x21, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0xba9a4b769f8672e0 # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0x5e3b957c17a55c78 # load another value into integer register
amoor.d x7, x27, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x30, 0x0a6f4526086fcbdd # load random value
la x8, scratch # base address
sd x30, 0(x8) # store in memory
li x30, 0x319e64e33f7668d9 # load another value into integer register
amoor.d x8, x30, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x1, 0xc70da03d9e51c756 # load random value
la x9, scratch # base address
sd x1, 0(x9) # store in memory
li x1, 0x1e2e2df60b643535 # load another value into integer register
amoor.d x9, x1, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x1, 0x3928170c67756de3 # load random value
la x10, scratch # base address
sd x1, 0(x10) # store in memory
li x1, 0x4c0dbc333c751241 # load another value into integer register
amoor.d x10, x1, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x30, 0x79ad5e743c37ea70 # load random value
la x11, scratch # base address
sd x30, 0(x11) # store in memory
li x30, 0x442154e04267f0d5 # load another value into integer register
amoor.d x11, x30, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x14, 0x0d42c1167c414572 # load random value
la x12, scratch # base address
sd x14, 0(x12) # store in memory
li x14, 0x8c141e01478ef739 # load another value into integer register
amoor.d x12, x14, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x15, 0x1d40aca22aa9c2f6 # load random value
la x13, scratch # base address
sd x15, 0(x13) # store in memory
li x15, 0x89bf83229a8e137c # load another value into integer register
amoor.d x13, x15, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x1, 0xe4abae103d69960e # load random value
la x14, scratch # base address
sd x1, 0(x14) # store in memory
li x1, 0x935e9378b5e8c71a # load another value into integer register
amoor.d x14, x1, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x2, 0xf126eb6f97e5f4d5 # load random value
la x15, scratch # base address
sd x2, 0(x15) # store in memory
li x2, 0xc60d44b0f6e9a68d # load another value into integer register
amoor.d x15, x2, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x13, 0x0a6c0f843b3dca7c # load random value
la x16, scratch # base address
sd x13, 0(x16) # store in memory
li x13, 0xa96a80d2e99ed77b # load another value into integer register
amoor.d x16, x13, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x6, 0x5336f8796df33cce # load random value
la x17, scratch # base address
sd x6, 0(x17) # store in memory
li x6, 0x940df091ffb0711b # load another value into integer register
amoor.d x17, x6, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x5, 0x70aefbe24cedde8f # load random value
la x18, scratch # base address
sd x5, 0(x18) # store in memory
li x5, 0x492d335ad756b8f1 # load another value into integer register
amoor.d x18, x5, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x12, 0xceada748bdf72284 # load random value
la x19, scratch # base address
sd x12, 0(x19) # store in memory
li x12, 0x98340c87739c23d0 # load another value into integer register
amoor.d x19, x12, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x8, 0xf13a580f1e16826e # load random value
la x20, scratch # base address
sd x8, 0(x20) # store in memory
li x8, 0x093e48589d43ef73 # load another value into integer register
amoor.d x20, x8, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x6, 0x74b4933ca0023002 # load random value
la x21, scratch # base address
sd x6, 0(x21) # store in memory
li x6, 0x07c54dc0a31a284b # load another value into integer register
amoor.d x21, x6, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x17, 0x336b0977b77bb47e # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0xcffed6e009834d6e # load another value into integer register
amoor.d x22, x17, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x27, 0xec5d1f3d5fab4e36 # load random value
la x23, scratch # base address
sd x27, 0(x23) # store in memory
li x27, 0x86743bdd47420dc2 # load another value into integer register
amoor.d x23, x27, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x12, 0xe0126fe6d52b3d3f # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0x9aa7a8d3bf0b2fff # load another value into integer register
amoor.d x24, x12, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x21, 0xf874889d4657dadf # load random value
la x25, scratch # base address
sd x21, 0(x25) # store in memory
li x21, 0x9451e4d1d1f17888 # load another value into integer register
amoor.d x25, x21, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x10, 0x5c032a5481453e0b # load random value
la x26, scratch # base address
sd x10, 0(x26) # store in memory
li x10, 0xea2e9404078ae0c5 # load another value into integer register
amoor.d x26, x10, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x21, 0x5db3d6af088f69e7 # load random value
la x27, scratch # base address
sd x21, 0(x27) # store in memory
li x21, 0xd70d5233b8b9d340 # load another value into integer register
amoor.d x27, x21, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x2, 0x4432ec26dd2e3971 # load random value
la x28, scratch # base address
sd x2, 0(x28) # store in memory
li x2, 0x719599f427a32ab5 # load another value into integer register
amoor.d x28, x2, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x28, 0x1e248d3d07748aaa # load random value
la x29, scratch # base address
sd x28, 0(x29) # store in memory
li x28, 0xbe8c10e07c491b9f # load another value into integer register
amoor.d x29, x28, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x31, 0x64ca691385172975 # load random value
la x30, scratch # base address
sd x31, 0(x30) # store in memory
li x31, 0x0021ef1c0277c71c # load another value into integer register
amoor.d x30, x31, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x25, 0x0670ab6499ddeaae # load random value
la x31, scratch # base address
sd x25, 0(x31) # store in memory
li x25, 0xf17ea0fcd208f4a0 # load another value into integer register
amoor.d x31, x25, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x516fc26d301f0e1e # load random value
la x9, scratch # base address
sd x0, 0(x9) # store in memory
li x0, 0xcc81815324aa9801 # load another value into integer register
amoor.d x0, x0, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x0cd103b573da14b7 # load random value
la x16, scratch # base address
sd x1, 0(x16) # store in memory
li x1, 0xb4f451ee560fadc7 # load another value into integer register
amoor.d x1, x1, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x51237dfb44b470d4 # load random value
la x13, scratch # base address
sd x2, 0(x13) # store in memory
li x2, 0x5c727b36f1bec159 # load another value into integer register
amoor.d x2, x2, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xda502de6699a7079 # load random value
la x2, scratch # base address
sd x3, 0(x2) # store in memory
li x3, 0xf84c767166ded752 # load another value into integer register
amoor.d x3, x3, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6d7d36fe3b821476 # load random value
la x1, scratch # base address
sd x4, 0(x1) # store in memory
li x4, 0x01820332a79b9dbb # load another value into integer register
amoor.d x4, x4, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa05157ba71c6ae40 # load random value
la x10, scratch # base address
sd x5, 0(x10) # store in memory
li x5, 0xd08233f161f9a41b # load another value into integer register
amoor.d x5, x5, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x85078284d27a7147 # load random value
la x21, scratch # base address
sd x6, 0(x21) # store in memory
li x6, 0x3135531e7893c868 # load another value into integer register
amoor.d x6, x6, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa626fed9f4264d5c # load random value
la x15, scratch # base address
sd x7, 0(x15) # store in memory
li x7, 0x21a2c57e24ef0753 # load another value into integer register
amoor.d x7, x7, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xe9c24a486df0cae3 # load random value
la x29, scratch # base address
sd x8, 0(x29) # store in memory
li x8, 0x68895f1b0de6cfe0 # load another value into integer register
amoor.d x8, x8, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x8292e96c0e361434 # load random value
la x8, scratch # base address
sd x9, 0(x8) # store in memory
li x9, 0xbf13764ad28073c9 # load another value into integer register
amoor.d x9, x9, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x1590d788274e1538 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoor.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xb89a388b392c6a32 # load random value
la x28, scratch # base address
sd x11, 0(x28) # store in memory
li x11, 0xb117419458ede280 # load another value into integer register
amoor.d x11, x11, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x60f8c48db51c1c3a # load random value
la x11, scratch # base address
sd x12, 0(x11) # store in memory
li x12, 0xe14acee07450afb7 # load another value into integer register
amoor.d x12, x12, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xa1ec0fc3c58d53d2 # load random value
la x22, scratch # base address
sd x13, 0(x22) # store in memory
li x13, 0x4b43a3b7975e2cdf # load another value into integer register
amoor.d x13, x13, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x6cb75e8596e57e2b # load random value
la x12, scratch # base address
sd x14, 0(x12) # store in memory
li x14, 0x379e36590e29e449 # load another value into integer register
amoor.d x14, x14, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xcf7c627c98e5f720 # load random value
la x5, scratch # base address
sd x15, 0(x5) # store in memory
li x15, 0x707e548ce5278442 # load another value into integer register
amoor.d x15, x15, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xbec2dc140e4ecb85 # load random value
la x2, scratch # base address
sd x16, 0(x2) # store in memory
li x16, 0x756e7f17dd461357 # load another value into integer register
amoor.d x16, x16, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x8fc2cf9866869180 # load random value
la x24, scratch # base address
sd x17, 0(x24) # store in memory
li x17, 0xd816f1f1a33a4a24 # load another value into integer register
amoor.d x17, x17, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x926617f809f9358a # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0x9710c40cd4d6acc8 # load another value into integer register
amoor.d x18, x18, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x4d7517cbdd9a2629 # load random value
la x3, scratch # base address
sd x19, 0(x3) # store in memory
li x19, 0x62dc68a2cc6e3d1e # load another value into integer register
amoor.d x19, x19, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x9cf5b6cfd94c4a19 # load random value
la x12, scratch # base address
sd x20, 0(x12) # store in memory
li x20, 0xdb7ae687fa945d95 # load another value into integer register
amoor.d x20, x20, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x663f9d1a6a5a4194 # load random value
la x10, scratch # base address
sd x21, 0(x10) # store in memory
li x21, 0xed5ebd69511280f1 # load another value into integer register
amoor.d x21, x21, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xc52fe19a4d3510ad # load random value
la x11, scratch # base address
sd x22, 0(x11) # store in memory
li x22, 0x6f68c1e776569c1e # load another value into integer register
amoor.d x22, x22, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xb6995fa0ae714ef5 # load random value
la x28, scratch # base address
sd x23, 0(x28) # store in memory
li x23, 0x5ee111379417aa2c # load another value into integer register
amoor.d x23, x23, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x6a033ddc5655c093 # load random value
la x16, scratch # base address
sd x24, 0(x16) # store in memory
li x24, 0xccd309999f959e1e # load another value into integer register
amoor.d x24, x24, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xc297734c4769da8c # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0x97042a7c9166d86f # load another value into integer register
amoor.d x25, x25, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x3e6538f657ab616a # load random value
la x20, scratch # base address
sd x26, 0(x20) # store in memory
li x26, 0x96fe89d45e2cd972 # load another value into integer register
amoor.d x26, x26, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xb232b20a1ec98090 # load random value
la x28, scratch # base address
sd x27, 0(x28) # store in memory
li x27, 0x90f0f7bdc0eed1a0 # load another value into integer register
amoor.d x27, x27, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x6f5ad3b3c59d5208 # load random value
la x15, scratch # base address
sd x28, 0(x15) # store in memory
li x28, 0x714880fc87f683e1 # load another value into integer register
amoor.d x28, x28, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x0efb1c15e931889c # load random value
la x13, scratch # base address
sd x29, 0(x13) # store in memory
li x29, 0xe93c7aad0362a04a # load another value into integer register
amoor.d x29, x29, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xc9c1cbb64015d62a # load random value
la x11, scratch # base address
sd x30, 0(x11) # store in memory
li x30, 0x94c4b3702902f90e # load another value into integer register
amoor.d x30, x30, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x1d3c726d73cd3ef0 # load random value
la x16, scratch # base address
sd x31, 0(x16) # store in memory
li x31, 0x8e958b9e605b5246 # load another value into integer register
amoor.d x31, x31, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x717f675b22a48773 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoor.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x66b8e79f9263d295 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoor.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x4b18954f38b86d7c # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoor.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x632670e958a49d6f # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoor.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3784ae4379050aa6 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoor.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb82781a5365539ff # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoor.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5d1927202a11f9ee # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoor.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xeb5f480ec4a5c8a8 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoor.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3f9e381b4240d6f3 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoor.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf27dc94e87cfd133 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoor.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf5dff6da62576092 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoor.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf34f03325a78b4a0 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoor.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x009f277ebb520668 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoor.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd6b3e8d810f07cae # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoor.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xa600a993f2299d66 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoor.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1b7ca51c82025bb4 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoor.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe81bff30dd722ceb # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoor.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x4f7cbb50afdd4436 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoor.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd90e39f8180279b1 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoor.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x27957de5640bdbb1 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoor.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc51951f124b692e4 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoor.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x5966f5646a25d9ed # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoor.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x88b86d7f2329fbea # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoor.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x53dd0ed75dec6efe # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoor.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x6ae2dae04fec5776 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoor.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8e1a79e7724636fc # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoor.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x6161e675745be2e0 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoor.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc3a893553ccf8492 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoor.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x648dfbca0c6aef6d # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoor.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x917ddd1c39177a49 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoor.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x46dee62402af1722 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoor.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x28, scratch
add x16, x6, x23 # perform first operation
amoor.d x20, x31, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
add x26, x15, x17 # perform first operation
amoor.d x6, x8, (x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x27, x16, x17 # perform first operation
amoor.d x8, x3, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
add x17, x17, x0 # perform first operation
amoor.d x14, x29, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
add x7, x7, x0 # perform first operation
amoor.d x7, x24, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
add x19, x19, x0 # perform first operation
amoor.d x20, x14, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x15, scratch
add x30, x12, x2 # perform first operation
amoor.d x30, x3, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x20, scratch
add x27, x13, x7 # perform first operation
amoor.d x27, x21, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x31, scratch
add x30, x9, x18 # perform first operation
amoor.d x30, x21, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x1, scratch
add x15, x25, x9 # perform first operation
amoor.d x25, x8, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x27, scratch
add x25, x7, x13 # perform first operation
amoor.d x13, x11, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
add x16, x13, x17 # perform first operation
amoor.d x6, x11, (x24) # perform second (triggering) operation

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
