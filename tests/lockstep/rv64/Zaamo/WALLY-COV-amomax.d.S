///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amomax.d.S
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
li x22, 0x99f936f8472695ce # load random value
la x1, scratch # base address
sd x22, 0(x1) # store in memory
li x22, 0x2c30e02adee985f3 # load another value into integer register
amomax.d x9, x22, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x31, 0x9bbf75c1d520a51f # load random value
la x2, scratch # base address
sd x31, 0(x2) # store in memory
li x31, 0xdff182ed5424f9eb # load another value into integer register
amomax.d x28, x31, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0x06851f2290104cc1 # load random value
la x3, scratch # base address
sd x16, 0(x3) # store in memory
li x16, 0x875ffcf095fa1ec6 # load another value into integer register
amomax.d x31, x16, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xe7d1b24e982b8f11 # load random value
la x4, scratch # base address
sd x6, 0(x4) # store in memory
li x6, 0x501891e01e174e24 # load another value into integer register
amomax.d x11, x6, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x03ff177d8f456dc2 # load random value
la x5, scratch # base address
sd x15, 0(x5) # store in memory
li x15, 0xa8685bcf67d8aec8 # load another value into integer register
amomax.d x9, x15, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xd1a6b7eaf26f393c # load random value
la x6, scratch # base address
sd x30, 0(x6) # store in memory
li x30, 0xdd8a356bcf205790 # load another value into integer register
amomax.d x9, x30, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xf1bc78cac18c45c2 # load random value
la x7, scratch # base address
sd x22, 0(x7) # store in memory
li x22, 0x6e67feef30a3d224 # load another value into integer register
amomax.d x13, x22, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0xf1902709d9044896 # load random value
la x8, scratch # base address
sd x22, 0(x8) # store in memory
li x22, 0xc07d54e3880dd7e6 # load another value into integer register
amomax.d x15, x22, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0xb3810e54fede66e7 # load random value
la x9, scratch # base address
sd x3, 0(x9) # store in memory
li x3, 0x48278dde21a296b0 # load another value into integer register
amomax.d x6, x3, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0xe0228e807a0a4325 # load random value
la x10, scratch # base address
sd x13, 0(x10) # store in memory
li x13, 0x8d1751cd8db1c142 # load another value into integer register
amomax.d x12, x13, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x85d34268a1e8dda3 # load random value
la x11, scratch # base address
sd x31, 0(x11) # store in memory
li x31, 0x7d0af20f18b4dc40 # load another value into integer register
amomax.d x20, x31, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x14, 0x9d991316c553baa7 # load random value
la x12, scratch # base address
sd x14, 0(x12) # store in memory
li x14, 0xef1be1e1284cf108 # load another value into integer register
amomax.d x1, x14, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x02310bb5c842b32d # load random value
la x13, scratch # base address
sd x12, 0(x13) # store in memory
li x12, 0x94ac44afbd691a60 # load another value into integer register
amomax.d x24, x12, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x2, 0xb7a4315b9498e5c3 # load random value
la x14, scratch # base address
sd x2, 0(x14) # store in memory
li x2, 0x89f5687f456c44e2 # load another value into integer register
amomax.d x20, x2, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0xbc03e826706d51d4 # load random value
la x15, scratch # base address
sd x28, 0(x15) # store in memory
li x28, 0x47d14f6073a20878 # load another value into integer register
amomax.d x31, x28, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0x3b9ae4e8b79e8c90 # load random value
la x16, scratch # base address
sd x28, 0(x16) # store in memory
li x28, 0x55e89d66d1d881e9 # load another value into integer register
amomax.d x18, x28, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x22, 0x592562788b71e09d # load random value
la x17, scratch # base address
sd x22, 0(x17) # store in memory
li x22, 0xdc223abc06e9393b # load another value into integer register
amomax.d x29, x22, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0xff27ff1e5600a967 # load random value
la x18, scratch # base address
sd x10, 0(x18) # store in memory
li x10, 0x441c5d5b2a5d7777 # load another value into integer register
amomax.d x27, x10, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x27, 0x8bca981a6f23e9a0 # load random value
la x19, scratch # base address
sd x27, 0(x19) # store in memory
li x27, 0xaa300b59c0c2b559 # load another value into integer register
amomax.d x30, x27, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0xe0902ed1fbfbefe5 # load random value
la x20, scratch # base address
sd x14, 0(x20) # store in memory
li x14, 0x4e6fcbb47a73c933 # load another value into integer register
amomax.d x6, x14, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0x102cd506a8d990d3 # load random value
la x21, scratch # base address
sd x8, 0(x21) # store in memory
li x8, 0x0409d37de4245235 # load another value into integer register
amomax.d x14, x8, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x26, 0x4fdf1fa7b599a901 # load random value
la x22, scratch # base address
sd x26, 0(x22) # store in memory
li x26, 0x2b042559dda178bf # load another value into integer register
amomax.d x5, x26, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0x7494908534a9fbf6 # load random value
la x23, scratch # base address
sd x28, 0(x23) # store in memory
li x28, 0x9a8ea13c87157384 # load another value into integer register
amomax.d x9, x28, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x2, 0x81e86679dbe82782 # load random value
la x24, scratch # base address
sd x2, 0(x24) # store in memory
li x2, 0x6daba609c2015006 # load another value into integer register
amomax.d x28, x2, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0x6a2f9e6ca67a8c38 # load random value
la x25, scratch # base address
sd x1, 0(x25) # store in memory
li x1, 0x7780ace9bcc876c7 # load another value into integer register
amomax.d x14, x1, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x18, 0xbc1b2a681e78818e # load random value
la x26, scratch # base address
sd x18, 0(x26) # store in memory
li x18, 0x5ae69d8dcaf6dd1c # load another value into integer register
amomax.d x31, x18, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x14, 0x4ee0846420fbf50d # load random value
la x27, scratch # base address
sd x14, 0(x27) # store in memory
li x14, 0x36cfd58b1d075e35 # load another value into integer register
amomax.d x5, x14, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0x4207b20365eb2972 # load random value
la x28, scratch # base address
sd x12, 0(x28) # store in memory
li x12, 0x698f7b209be97313 # load another value into integer register
amomax.d x18, x12, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x25, 0x1bda469e7ab3538d # load random value
la x29, scratch # base address
sd x25, 0(x29) # store in memory
li x25, 0x1eef4ce40a49c072 # load another value into integer register
amomax.d x14, x25, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x28, 0x2b39232f633764a4 # load random value
la x30, scratch # base address
sd x28, 0(x30) # store in memory
li x28, 0x4ceeee7569d941e9 # load another value into integer register
amomax.d x5, x28, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0xd9b049f77e9434fc # load random value
la x31, scratch # base address
sd x14, 0(x31) # store in memory
li x14, 0x91b4aee6b11007b0 # load another value into integer register
amomax.d x28, x14, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x3f57c4648bbb296a # load random value
la x2, scratch # base address
sd x0, 0(x2) # store in memory
li x0, 0x4a210f4572238a8b # load another value into integer register
amomax.d x21, x0, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x9a4a36817caed7c3 # load random value
la x24, scratch # base address
sd x1, 0(x24) # store in memory
li x1, 0xebd76d7690a5a81f # load another value into integer register
amomax.d x3, x1, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x93d954bacabd8540 # load random value
la x26, scratch # base address
sd x2, 0(x26) # store in memory
li x2, 0x8648c17e4de101fa # load another value into integer register
amomax.d x10, x2, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x73f8a6061aa96afb # load random value
la x7, scratch # base address
sd x3, 0(x7) # store in memory
li x3, 0xcf6f0c761da35d0e # load another value into integer register
amomax.d x15, x3, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9b5102edca4e3ebf # load random value
la x20, scratch # base address
sd x4, 0(x20) # store in memory
li x4, 0x5af93c3c93ff9141 # load another value into integer register
amomax.d x27, x4, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x87d082ce021f8d6b # load random value
la x31, scratch # base address
sd x5, 0(x31) # store in memory
li x5, 0x8199c287177d73ff # load another value into integer register
amomax.d x19, x5, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x82f42343cda7e040 # load random value
la x16, scratch # base address
sd x6, 0(x16) # store in memory
li x6, 0x7f3ce2b4b66c15c9 # load another value into integer register
amomax.d x9, x6, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdcca6a4c63be13af # load random value
la x22, scratch # base address
sd x7, 0(x22) # store in memory
li x7, 0x0fef35f0c6230f11 # load another value into integer register
amomax.d x6, x7, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x51701256e3e8b0ce # load random value
la x7, scratch # base address
sd x8, 0(x7) # store in memory
li x8, 0x62846d047597eabf # load another value into integer register
amomax.d x15, x8, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x979322addaac064c # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0xa4ce0ffc397e8545 # load another value into integer register
amomax.d x5, x9, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x7c1b2ffeb45b2d32 # load random value
la x27, scratch # base address
sd x10, 0(x27) # store in memory
li x10, 0x12babaa2f0c16474 # load another value into integer register
amomax.d x3, x10, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xc7d399f24d80f15a # load random value
la x17, scratch # base address
sd x11, 0(x17) # store in memory
li x11, 0xbc56e166019b042c # load another value into integer register
amomax.d x5, x11, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x534b38ab501099dd # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0xe19f4137a1de8c31 # load another value into integer register
amomax.d x22, x12, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x8aba338b77908369 # load random value
la x17, scratch # base address
sd x13, 0(x17) # store in memory
li x13, 0xed9354616d459d3a # load another value into integer register
amomax.d x19, x13, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x6972ff55f18e5612 # load random value
la x3, scratch # base address
sd x14, 0(x3) # store in memory
li x14, 0x050070361c904b68 # load another value into integer register
amomax.d x11, x14, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xaf504dfe0c42b07a # load random value
la x23, scratch # base address
sd x15, 0(x23) # store in memory
li x15, 0x917d232673d2a63d # load another value into integer register
amomax.d x29, x15, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x44efabce717bf493 # load random value
la x29, scratch # base address
sd x16, 0(x29) # store in memory
li x16, 0xd824a130a0e51119 # load another value into integer register
amomax.d x31, x16, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x7dd772341075b82b # load random value
la x23, scratch # base address
sd x17, 0(x23) # store in memory
li x17, 0xb89432315721ae2f # load another value into integer register
amomax.d x20, x17, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xab8cb31f71c3f425 # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0xf9dec4f0a9f286b8 # load another value into integer register
amomax.d x2, x18, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x171d29aab05951b7 # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0x6092be503d037687 # load another value into integer register
amomax.d x17, x19, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xacf842fadedcac6f # load random value
la x12, scratch # base address
sd x20, 0(x12) # store in memory
li x20, 0x21c2fffc71f29bf1 # load another value into integer register
amomax.d x15, x20, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x2225020cb02a5bc3 # load random value
la x9, scratch # base address
sd x21, 0(x9) # store in memory
li x21, 0xe1bcc6fa5f697046 # load another value into integer register
amomax.d x11, x21, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xc47aa789717e082d # load random value
la x1, scratch # base address
sd x22, 0(x1) # store in memory
li x22, 0xa0d8e5639416cef8 # load another value into integer register
amomax.d x17, x22, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xa978df7764afd76a # load random value
la x10, scratch # base address
sd x23, 0(x10) # store in memory
li x23, 0xb0934546613ddf9f # load another value into integer register
amomax.d x2, x23, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x4cb616abb516ba36 # load random value
la x6, scratch # base address
sd x24, 0(x6) # store in memory
li x24, 0xa220db971de228b0 # load another value into integer register
amomax.d x28, x24, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xbf542dce43158e19 # load random value
la x11, scratch # base address
sd x25, 0(x11) # store in memory
li x25, 0x1575de60ffb2c639 # load another value into integer register
amomax.d x13, x25, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xe890fae4bd181e46 # load random value
la x29, scratch # base address
sd x26, 0(x29) # store in memory
li x26, 0xb4a10e21c255e709 # load another value into integer register
amomax.d x18, x26, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xd53edc300eea8e2c # load random value
la x21, scratch # base address
sd x27, 0(x21) # store in memory
li x27, 0x6ed577739574401c # load another value into integer register
amomax.d x11, x27, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x8b3b77f8e16f519d # load random value
la x18, scratch # base address
sd x28, 0(x18) # store in memory
li x28, 0xe960350412b30adc # load another value into integer register
amomax.d x1, x28, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xd9beb3220827a93f # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0x01c9de1fc026f50f # load another value into integer register
amomax.d x6, x29, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x32afb7b9897a362a # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0x61cbf0f35cf80ba6 # load another value into integer register
amomax.d x29, x30, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xe5935cc03c3eb7f3 # load random value
la x3, scratch # base address
sd x31, 0(x3) # store in memory
li x31, 0x01da2b607d24919b # load another value into integer register
amomax.d x22, x31, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x5b1c92593f692ddf # load random value
la x29, scratch # base address
sd x15, 0(x29) # store in memory
li x15, 0x16f0ce67b814348b # load another value into integer register
amomax.d x0, x15, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x04557f8dc76af9ac # load random value
la x17, scratch # base address
sd x20, 0(x17) # store in memory
li x20, 0x09e382a425f8a4eb # load another value into integer register
amomax.d x1, x20, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x6bbd8865e6cc0063 # load random value
la x30, scratch # base address
sd x9, 0(x30) # store in memory
li x9, 0x7358254539071a60 # load another value into integer register
amomax.d x2, x9, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x9af7c7105bebee6f # load random value
la x28, scratch # base address
sd x31, 0(x28) # store in memory
li x31, 0xfb0ce38ed85a2ce9 # load another value into integer register
amomax.d x3, x31, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x6c3ea3c89d96c66c # load random value
la x1, scratch # base address
sd x26, 0(x1) # store in memory
li x26, 0xf0bee4f8988f42e0 # load another value into integer register
amomax.d x4, x26, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x9e347b34ec85e1ff # load random value
la x22, scratch # base address
sd x8, 0(x22) # store in memory
li x8, 0xfdbf1fb3a7515cef # load another value into integer register
amomax.d x5, x8, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x5491a828352b0f29 # load random value
la x12, scratch # base address
sd x23, 0(x12) # store in memory
li x23, 0x7e528777f80549c8 # load another value into integer register
amomax.d x6, x23, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x00f7c34d8bc6d7c1 # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0x9301b1558126db82 # load another value into integer register
amomax.d x7, x9, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x24, 0xfe7aa808a6911165 # load random value
la x9, scratch # base address
sd x24, 0(x9) # store in memory
li x24, 0x2ad0c0f5f96a7028 # load another value into integer register
amomax.d x8, x24, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x679f56e1bc49bae5 # load random value
la x29, scratch # base address
sd x2, 0(x29) # store in memory
li x2, 0xc9bfb92a918b94d5 # load another value into integer register
amomax.d x9, x2, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x02b81100c4dda632 # load random value
la x29, scratch # base address
sd x13, 0(x29) # store in memory
li x13, 0x2ec3f308c232fbfa # load another value into integer register
amomax.d x10, x13, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xbcce62ce487d627b # load random value
la x3, scratch # base address
sd x8, 0(x3) # store in memory
li x8, 0x56b077b061f6f017 # load another value into integer register
amomax.d x11, x8, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x25, 0xa37e75b42736e880 # load random value
la x6, scratch # base address
sd x25, 0(x6) # store in memory
li x25, 0x742d53d703874cfb # load another value into integer register
amomax.d x12, x25, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x16, 0xd7d1b25d32487183 # load random value
la x20, scratch # base address
sd x16, 0(x20) # store in memory
li x16, 0x04114ba074b8005d # load another value into integer register
amomax.d x13, x16, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x77fd1f07c0d98c75 # load random value
la x28, scratch # base address
sd x15, 0(x28) # store in memory
li x15, 0xe1de8249b1dbae1e # load another value into integer register
amomax.d x14, x15, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x31, 0x64fc43b2d75f8537 # load random value
la x18, scratch # base address
sd x31, 0(x18) # store in memory
li x31, 0x49f0190f112eb56b # load another value into integer register
amomax.d x15, x31, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x26, 0x2b04bebb313157cc # load random value
la x22, scratch # base address
sd x26, 0(x22) # store in memory
li x26, 0x0384a90ef7fab9d2 # load another value into integer register
amomax.d x16, x26, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x471c67370322c2fb # load random value
la x6, scratch # base address
sd x16, 0(x6) # store in memory
li x16, 0x316bc0974810bd2c # load another value into integer register
amomax.d x17, x16, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x852d1ba9046879ab # load random value
la x14, scratch # base address
sd x24, 0(x14) # store in memory
li x24, 0x725c363578315fa6 # load another value into integer register
amomax.d x18, x24, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x11, 0x3060744ae9fc857a # load random value
la x25, scratch # base address
sd x11, 0(x25) # store in memory
li x11, 0x35d16087b8e02a07 # load another value into integer register
amomax.d x19, x11, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa999e6e3562a8bb5 # load random value
la x19, scratch # base address
sd x20, 0(x19) # store in memory
li x20, 0x6a73997d9bca8d0b # load another value into integer register
amomax.d x20, x20, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc19e0d2babd784a2 # load random value
la x11, scratch # base address
sd x21, 0(x11) # store in memory
li x21, 0x422bd16835a4e5bf # load another value into integer register
amomax.d x21, x21, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x0dce550982ec87be # load random value
la x8, scratch # base address
sd x26, 0(x8) # store in memory
li x26, 0x6db9d232cf2c26e6 # load another value into integer register
amomax.d x22, x26, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x0d89770172c352c7 # load random value
la x1, scratch # base address
sd x16, 0(x1) # store in memory
li x16, 0xc62e1a6839aeedf9 # load another value into integer register
amomax.d x23, x16, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x3045abc776c09e1d # load random value
la x29, scratch # base address
sd x30, 0(x29) # store in memory
li x30, 0xdab84bc4cdfe6c3d # load another value into integer register
amomax.d x24, x30, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x22, 0x85790c8ce3bff94f # load random value
la x29, scratch # base address
sd x22, 0(x29) # store in memory
li x22, 0xbdfd5add1a81543b # load another value into integer register
amomax.d x25, x22, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x22, 0x868d2b34293095fa # load random value
la x14, scratch # base address
sd x22, 0(x14) # store in memory
li x22, 0xa0beb8c9af38eb16 # load another value into integer register
amomax.d x26, x22, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x22, 0x9996b63e50565c88 # load random value
la x8, scratch # base address
sd x22, 0(x8) # store in memory
li x22, 0x63d63b37f4ab7f6d # load another value into integer register
amomax.d x27, x22, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xdffe2375e9f03601 # load random value
la x2, scratch # base address
sd x28, 0(x2) # store in memory
li x28, 0x6a05e2439687fe16 # load another value into integer register
amomax.d x28, x28, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xe4f9e55d4264029f # load random value
la x6, scratch # base address
sd x19, 0(x6) # store in memory
li x19, 0x747b4a1921f2485e # load another value into integer register
amomax.d x29, x19, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x29, 0xad0bd019d045d14b # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0x6867301ddc85f74e # load another value into integer register
amomax.d x30, x29, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x16, 0x3bbc0c26f454a797 # load random value
la x10, scratch # base address
sd x16, 0(x10) # store in memory
li x16, 0x48b5583c2fa84070 # load another value into integer register
amomax.d x31, x16, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0xd984c192a1594150 # load random value
la x14, scratch # base address
sd x24, 0(x14) # store in memory
li x24, 0x0000000000000000 # load another value into integer register
amomax.d x21, x24, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x0596f063d5f3737d # load random value
la x24, scratch # base address
sd x16, 0(x24) # store in memory
li x16, 0x0000000000000001 # load another value into integer register
amomax.d x11, x16, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0x00405762bc8936c9 # load random value
la x17, scratch # base address
sd x1, 0(x17) # store in memory
li x1, 0x0000000000000002 # load another value into integer register
amomax.d x22, x1, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x6, 0x1cc6ddfd2aa4a291 # load random value
la x10, scratch # base address
sd x6, 0(x10) # store in memory
li x6, 0x8000000000000000 # load another value into integer register
amomax.d x27, x6, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0xe0a4dae43366a41d # load random value
la x17, scratch # base address
sd x6, 0(x17) # store in memory
li x6, 0x8000000000000001 # load another value into integer register
amomax.d x14, x6, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x20, 0x91f60cf822e2e532 # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x7fffffffffffffff # load another value into integer register
amomax.d x23, x20, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0x036e5a1cbae0282b # load random value
la x1, scratch # base address
sd x17, 0(x1) # store in memory
li x17, 0x7ffffffffffffffe # load another value into integer register
amomax.d x12, x17, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0xb075c9430a6fd215 # load random value
la x12, scratch # base address
sd x20, 0(x12) # store in memory
li x20, 0xffffffffffffffff # load another value into integer register
amomax.d x24, x20, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0xd9d8bf43aa43edf0 # load random value
la x14, scratch # base address
sd x15, 0(x14) # store in memory
li x15, 0xfffffffffffffffe # load another value into integer register
amomax.d x24, x15, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x6, 0xc26b1feddb8b43a1 # load random value
la x5, scratch # base address
sd x6, 0(x5) # store in memory
li x6, 0x5bbc887763ae86f2 # load another value into integer register
amomax.d x3, x6, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x3cda450db81f59d6 # load random value
la x5, scratch # base address
sd x29, 0(x5) # store in memory
li x29, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amomax.d x11, x29, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x0fb3f7555a991f07 # load random value
la x14, scratch # base address
sd x7, 0(x14) # store in memory
li x7, 0x5555555555555555 # load another value into integer register
amomax.d x27, x7, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x7918f865e2760dbb # load random value
la x6, scratch # base address
sd x13, 0(x6) # store in memory
li x13, 0x00000000ffffffff # load another value into integer register
amomax.d x3, x13, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x3f738efe6b52c67b # load random value
la x12, scratch # base address
sd x19, 0(x12) # store in memory
li x19, 0x00000000fffffffe # load another value into integer register
amomax.d x14, x19, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0x10ec6aeaaec19a5b # load random value
la x14, scratch # base address
sd x25, 0(x14) # store in memory
li x25, 0x0000000100000000 # load another value into integer register
amomax.d x23, x25, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0x3ab6c1879cba5129 # load random value
la x25, scratch # base address
sd x17, 0(x25) # store in memory
li x17, 0x0000000100000001 # load another value into integer register
amomax.d x11, x17, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x7f62a6750617b561 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomax.d x1, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc04bebe617155979 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomax.d x9, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x5b5670863cc029e5 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomax.d x20, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x01e72f3bcd024c57 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomax.d x6, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb1bdec588e1b2f7b # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomax.d x23, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x464e88aac093a5da # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomax.d x11, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1b07492fa57efabd # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomax.d x20, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x20053e937e500410 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomax.d x15, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x3128b44e85bbd943 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomax.d x29, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x4e4affc6a9b08b08 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomax.d x18, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x65ebab1314d8a5d7 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomax.d x6, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x6c2c971a5c0327c8 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomax.d x30, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfb678825fa14e9a7 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomax.d x18, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf249031e5647ca8a # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomax.d x27, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2e08455b2aecea33 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomax.d x8, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x953d185de24adbff # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomax.d x6, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x67389ce7876e52b9 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomax.d x2, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x618de14bbeaadfb6 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomax.d x23, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xefe201c9463b0896 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomax.d x30, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x19d57df58dca7394 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomax.d x22, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7ce029d445783180 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomax.d x10, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x5c5251a07d1bdcc2 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomax.d x17, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2f76b8b914a9c2dc # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomax.d x8, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xb9dde6d94f35ca87 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomax.d x16, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe06602eb7fb48e68 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomax.d x5, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb0aeacdbea170ea6 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomax.d x26, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x723c07fb71c36f61 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomax.d x14, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x74bac6fc049967cb # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomax.d x8, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x104c22741c4d04b6 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomax.d x17, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2afb8d4cf2527389 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomax.d x3, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x02802c777c55618c # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomax.d x20, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x30, 0x67af85e074745777 # load random value
la x1, scratch # base address
sd x30, 0(x1) # store in memory
li x30, 0x9735846411d502f0 # load another value into integer register
amomax.d x1, x30, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x16, 0x467398135c310086 # load random value
la x2, scratch # base address
sd x16, 0(x2) # store in memory
li x16, 0x93486d156b0dbe25 # load another value into integer register
amomax.d x2, x16, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x10, 0x7af4a6e079f32c45 # load random value
la x3, scratch # base address
sd x10, 0(x3) # store in memory
li x10, 0x484da801e1094c54 # load another value into integer register
amomax.d x3, x10, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x7d8ee7fed97165cf # load random value
la x4, scratch # base address
sd x31, 0(x4) # store in memory
li x31, 0xb6cdf7ad3b7eb149 # load another value into integer register
amomax.d x4, x31, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xb869c0b7dceaa237 # load random value
la x5, scratch # base address
sd x11, 0(x5) # store in memory
li x11, 0x8fde2493b8a2a831 # load another value into integer register
amomax.d x5, x11, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xb3fa5f6485bf2b39 # load random value
la x6, scratch # base address
sd x13, 0(x6) # store in memory
li x13, 0xecbd74cb6d65d4c5 # load another value into integer register
amomax.d x6, x13, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x46d1111a66789cb9 # load random value
la x7, scratch # base address
sd x22, 0(x7) # store in memory
li x22, 0x05c531ef7d46c80d # load another value into integer register
amomax.d x7, x22, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x1, 0x1645436f150633c6 # load random value
la x8, scratch # base address
sd x1, 0(x8) # store in memory
li x1, 0xfee1c18ad1100778 # load another value into integer register
amomax.d x8, x1, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x68f6fe7383841226 # load random value
la x9, scratch # base address
sd x13, 0(x9) # store in memory
li x13, 0x94dadfa9b47f2a1f # load another value into integer register
amomax.d x9, x13, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x29, 0xf4a17ebdf83b864b # load random value
la x10, scratch # base address
sd x29, 0(x10) # store in memory
li x29, 0xbd7a6dd4255245e7 # load another value into integer register
amomax.d x10, x29, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x16, 0x97598c45b473b9db # load random value
la x11, scratch # base address
sd x16, 0(x11) # store in memory
li x16, 0x8d733aced3c829dc # load another value into integer register
amomax.d x11, x16, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x20, 0x073223c8eced1582 # load random value
la x12, scratch # base address
sd x20, 0(x12) # store in memory
li x20, 0xf11be940875cda8b # load another value into integer register
amomax.d x12, x20, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x8, 0x05355d2ba4b1a99a # load random value
la x13, scratch # base address
sd x8, 0(x13) # store in memory
li x8, 0x32feae5a931ea03b # load another value into integer register
amomax.d x13, x8, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x9, 0xad29c32dcd3e88bd # load random value
la x14, scratch # base address
sd x9, 0(x14) # store in memory
li x9, 0x8e5ac7ac000b1a71 # load another value into integer register
amomax.d x14, x9, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x20, 0xdf36274b9cc739ad # load random value
la x15, scratch # base address
sd x20, 0(x15) # store in memory
li x20, 0xcd1a50b0c40fd91c # load another value into integer register
amomax.d x15, x20, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x17, 0x7ac953d1eb755000 # load random value
la x16, scratch # base address
sd x17, 0(x16) # store in memory
li x17, 0xdeca78ccfa083e34 # load another value into integer register
amomax.d x16, x17, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x1, 0x2f43f1952842e78b # load random value
la x17, scratch # base address
sd x1, 0(x17) # store in memory
li x1, 0x963b8c79ee2c9d0c # load another value into integer register
amomax.d x17, x1, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x8, 0xaab621353e4a5da5 # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0x75482ab79688d03e # load another value into integer register
amomax.d x18, x8, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x1, 0x29ac5e6842e549e2 # load random value
la x19, scratch # base address
sd x1, 0(x19) # store in memory
li x1, 0x379a7eb936d0ff4e # load another value into integer register
amomax.d x19, x1, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x21, 0xd89a0509adfdd553 # load random value
la x20, scratch # base address
sd x21, 0(x20) # store in memory
li x21, 0x28dad75e3a8c6dec # load another value into integer register
amomax.d x20, x21, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x30, 0x725c795a38b309c9 # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0xca076332b3ebc61e # load another value into integer register
amomax.d x21, x30, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x30, 0x598b36adfdc7c112 # load random value
la x22, scratch # base address
sd x30, 0(x22) # store in memory
li x30, 0xcc2214e4db5faba6 # load another value into integer register
amomax.d x22, x30, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x5, 0x90b145a36aedb9bb # load random value
la x23, scratch # base address
sd x5, 0(x23) # store in memory
li x5, 0xb3daade62c655416 # load another value into integer register
amomax.d x23, x5, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x14, 0xc9a48f4405adce59 # load random value
la x24, scratch # base address
sd x14, 0(x24) # store in memory
li x14, 0xd16a92b4bef6e15e # load another value into integer register
amomax.d x24, x14, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x15, 0x3fcbd5168908f224 # load random value
la x25, scratch # base address
sd x15, 0(x25) # store in memory
li x15, 0xf41f843464db5b56 # load another value into integer register
amomax.d x25, x15, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x22, 0x151b8d47f8a45b4b # load random value
la x26, scratch # base address
sd x22, 0(x26) # store in memory
li x22, 0xbaef76d22bc28a48 # load another value into integer register
amomax.d x26, x22, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x11, 0x87f5d28596fe3317 # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0xf4852a64b939720b # load another value into integer register
amomax.d x27, x11, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x18, 0x73ae49d812ae953a # load random value
la x28, scratch # base address
sd x18, 0(x28) # store in memory
li x18, 0x377a07ccc6560197 # load another value into integer register
amomax.d x28, x18, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x27, 0x497ef9c2374ef398 # load random value
la x29, scratch # base address
sd x27, 0(x29) # store in memory
li x27, 0xa35e2f64a96668ae # load another value into integer register
amomax.d x29, x27, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x8, 0xef0bd25bdcd6225a # load random value
la x30, scratch # base address
sd x8, 0(x30) # store in memory
li x8, 0x9b7dd892bf117eb7 # load another value into integer register
amomax.d x30, x8, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x21, 0x5d6cd36ab433a028 # load random value
la x31, scratch # base address
sd x21, 0(x31) # store in memory
li x21, 0x677fe15ed7294308 # load another value into integer register
amomax.d x31, x21, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xb262683f8b729de4 # load random value
la x18, scratch # base address
sd x0, 0(x18) # store in memory
li x0, 0x2563f72d61a06ba7 # load another value into integer register
amomax.d x0, x0, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xfae5262283bf6409 # load random value
la x3, scratch # base address
sd x1, 0(x3) # store in memory
li x1, 0xc0fd18352d926434 # load another value into integer register
amomax.d x1, x1, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x11c277f84049c253 # load random value
la x21, scratch # base address
sd x2, 0(x21) # store in memory
li x2, 0x87501e992dcfb660 # load another value into integer register
amomax.d x2, x2, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x307d1772b63d8f54 # load random value
la x16, scratch # base address
sd x3, 0(x16) # store in memory
li x3, 0x64f84d640c833896 # load another value into integer register
amomax.d x3, x3, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdf0c04553add7d1f # load random value
la x23, scratch # base address
sd x4, 0(x23) # store in memory
li x4, 0xa9541dec31d3d373 # load another value into integer register
amomax.d x4, x4, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7d9ea032ec297a05 # load random value
la x12, scratch # base address
sd x5, 0(x12) # store in memory
li x5, 0xecbae920b5f9aa88 # load another value into integer register
amomax.d x5, x5, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa4d52753b2365d8f # load random value
la x9, scratch # base address
sd x6, 0(x9) # store in memory
li x6, 0x7c7b7ea0267660b0 # load another value into integer register
amomax.d x6, x6, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe9e07b40796949c7 # load random value
la x19, scratch # base address
sd x7, 0(x19) # store in memory
li x7, 0xf2fb883ab5add902 # load another value into integer register
amomax.d x7, x7, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xdc35f12df3ffcaf6 # load random value
la x10, scratch # base address
sd x8, 0(x10) # store in memory
li x8, 0x71b59ec0869a5092 # load another value into integer register
amomax.d x8, x8, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x660cd44210583a90 # load random value
la x14, scratch # base address
sd x9, 0(x14) # store in memory
li x9, 0x0d0472ad3a48f0b2 # load another value into integer register
amomax.d x9, x9, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x36114180c2666522 # load random value
la x6, scratch # base address
sd x10, 0(x6) # store in memory
li x10, 0x9d3da4468b265354 # load another value into integer register
amomax.d x10, x10, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x86b2488c2997c723 # load random value
la x6, scratch # base address
sd x11, 0(x6) # store in memory
li x11, 0x16b20d841d1ad218 # load another value into integer register
amomax.d x11, x11, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x7f8b608b88483aa4 # load random value
la x29, scratch # base address
sd x12, 0(x29) # store in memory
li x12, 0x34c551a3e7b53eba # load another value into integer register
amomax.d x12, x12, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xb8ee2dea449d0cce # load random value
la x26, scratch # base address
sd x13, 0(x26) # store in memory
li x13, 0x8c4be3d0916dd417 # load another value into integer register
amomax.d x13, x13, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x43512980d88da537 # load random value
la x2, scratch # base address
sd x14, 0(x2) # store in memory
li x14, 0x2e44424332cb789c # load another value into integer register
amomax.d x14, x14, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x56d49810a116ca1a # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomax.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xa7e1c41411880c2a # load random value
la x11, scratch # base address
sd x16, 0(x11) # store in memory
li x16, 0x319bab1135d63073 # load another value into integer register
amomax.d x16, x16, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xbff5fd22f54d1445 # load random value
la x25, scratch # base address
sd x17, 0(x25) # store in memory
li x17, 0x2f8fa5219ce317a1 # load another value into integer register
amomax.d x17, x17, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xcf0f6a40d05606ac # load random value
la x31, scratch # base address
sd x18, 0(x31) # store in memory
li x18, 0x39784ac68149b9db # load another value into integer register
amomax.d x18, x18, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x2a9319533722cb6e # load random value
la x20, scratch # base address
sd x19, 0(x20) # store in memory
li x19, 0x42cbb0b8ce54b266 # load another value into integer register
amomax.d x19, x19, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xe030b9b7601c465a # load random value
la x13, scratch # base address
sd x20, 0(x13) # store in memory
li x20, 0x4c4238809e8e1c82 # load another value into integer register
amomax.d x20, x20, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x601d37e89c052d90 # load random value
la x15, scratch # base address
sd x21, 0(x15) # store in memory
li x21, 0x8a7eb1f958e302cf # load another value into integer register
amomax.d x21, x21, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x6827c4792c44144a # load random value
la x28, scratch # base address
sd x22, 0(x28) # store in memory
li x22, 0x35ff9fa707f325e3 # load another value into integer register
amomax.d x22, x22, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xff560b7c96ced13c # load random value
la x13, scratch # base address
sd x23, 0(x13) # store in memory
li x23, 0x83ca5c0e480537db # load another value into integer register
amomax.d x23, x23, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x5abfae0f0b6660de # load random value
la x15, scratch # base address
sd x24, 0(x15) # store in memory
li x24, 0xe5d288d60b45ddec # load another value into integer register
amomax.d x24, x24, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x599373f981435c9f # load random value
la x14, scratch # base address
sd x25, 0(x14) # store in memory
li x25, 0xab432092857490cb # load another value into integer register
amomax.d x25, x25, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x554b0e79ef8b0ce8 # load random value
la x15, scratch # base address
sd x26, 0(x15) # store in memory
li x26, 0x56b839cb563b6104 # load another value into integer register
amomax.d x26, x26, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xa8cdc9086d33c739 # load random value
la x13, scratch # base address
sd x27, 0(x13) # store in memory
li x27, 0xdf93a6e3a023f39c # load another value into integer register
amomax.d x27, x27, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x08cca39335e77234 # load random value
la x8, scratch # base address
sd x28, 0(x8) # store in memory
li x28, 0x05c2d4f3f36c5201 # load another value into integer register
amomax.d x28, x28, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x5e7b3566a6d85631 # load random value
la x27, scratch # base address
sd x29, 0(x27) # store in memory
li x29, 0x32695b2a0b0c7808 # load another value into integer register
amomax.d x29, x29, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xaa5abeabd6d7326d # load random value
la x27, scratch # base address
sd x30, 0(x27) # store in memory
li x30, 0xcbad4c1de01dbdfa # load another value into integer register
amomax.d x30, x30, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x8cae520cedc3836c # load random value
la x10, scratch # base address
sd x31, 0(x10) # store in memory
li x31, 0x1480daa8ed8ee01e # load another value into integer register
amomax.d x31, x31, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9727d7f08c657851 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomax.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xf78542d8fc7da69e # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomax.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x13130b3d5a78fb58 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomax.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8fb53504a5f6bca9 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomax.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x729a6bee3b3a019f # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomax.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7f5c3c7668e7ea25 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomax.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf90141e994ef2f3a # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomax.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x1201217abdb684be # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomax.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x066db3215c8e1b2c # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomax.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x27f24a6ad1d7673d # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomax.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x49231fbae8ab462c # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomax.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xcaf75d241556a5ab # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomax.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1f89c23d099cc4c6 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomax.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xdb3505b6b731a658 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomax.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x58031824a4df7aad # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomax.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x12975e938a87f9d6 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomax.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x73624a319ba067e4 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomax.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x423c5e54c9060319 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomax.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8e9ece76a0ede146 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomax.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6eba2b2bf3c73753 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomax.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x48e65ecb5ac71b09 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomax.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xd0406441b98f2b62 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomax.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x5111b95e1772475c # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomax.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xff012fa9575dfdc2 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomax.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x8e9fa2e5ecbcd751 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomax.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe85d9d8258e695fd # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomax.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5e607fad468cd497 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomax.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xa7c2b80f765f4928 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomax.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4c05fcfb3683370f # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomax.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd1cf73a42aa16370 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomax.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x099795e3d9b97732 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomax.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
add x19, x1, x20 # perform first operation
amomax.d x14, x3, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x10, scratch
add x9, x24, x23 # perform first operation
amomax.d x15, x7, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
add x17, x28, x6 # perform first operation
amomax.d x16, x13, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
add x5, x5, x0 # perform first operation
amomax.d x25, x5, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x18, scratch
add x18, x18, x0 # perform first operation
amomax.d x7, x12, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x14, scratch
add x17, x17, x0 # perform first operation
amomax.d x2, x11, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x9, scratch
add x14, x25, x30 # perform first operation
amomax.d x14, x3, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
add x9, x3, x15 # perform first operation
amomax.d x9, x21, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x24, scratch
add x26, x5, x22 # perform first operation
amomax.d x26, x31, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x10, scratch
add x19, x5, x27 # perform first operation
amomax.d x5, x22, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x16, x19, x17 # perform first operation
amomax.d x17, x10, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x20, scratch
add x21, x15, x25 # perform first operation
amomax.d x18, x22, (x20) # perform second (triggering) operation

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
