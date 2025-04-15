///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amominu.d.S
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
li x25, 0x6c645d9f5cf00a11 # load random value
la x1, scratch # base address
sd x25, 0(x1) # store in memory
li x25, 0x36caaea9e65d95a5 # load another value into integer register
amominu.d x12, x25, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0xd4e837ee97612427 # load random value
la x2, scratch # base address
sd x11, 0(x2) # store in memory
li x11, 0xa526ad79ad9ef0f8 # load another value into integer register
amominu.d x27, x11, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x13, 0xefd48c24deabf719 # load random value
la x3, scratch # base address
sd x13, 0(x3) # store in memory
li x13, 0xbed0d4b634e86feb # load another value into integer register
amominu.d x7, x13, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xe5c833002ed997b6 # load random value
la x4, scratch # base address
sd x19, 0(x4) # store in memory
li x19, 0x6966ff62515d7d64 # load another value into integer register
amominu.d x21, x19, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x35b063637037fac5 # load random value
la x5, scratch # base address
sd x22, 0(x5) # store in memory
li x22, 0xa800b9af77884189 # load another value into integer register
amominu.d x26, x22, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xd49383a7463881ba # load random value
la x6, scratch # base address
sd x8, 0(x6) # store in memory
li x8, 0x15f71b6fc3206ad8 # load another value into integer register
amominu.d x30, x8, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xa01351745fc66d8d # load random value
la x7, scratch # base address
sd x22, 0(x7) # store in memory
li x22, 0x5ab516a2b7c7b5f2 # load another value into integer register
amominu.d x1, x22, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0x422572a2c7292721 # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0x6e370f3d2015ef53 # load another value into integer register
amominu.d x7, x19, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x22, 0x83026326843e5a48 # load random value
la x9, scratch # base address
sd x22, 0(x9) # store in memory
li x22, 0x1bacb7115c7d938f # load another value into integer register
amominu.d x20, x22, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0x443739919943bdfb # load random value
la x10, scratch # base address
sd x7, 0(x10) # store in memory
li x7, 0x9d7951ab71b2bf9e # load another value into integer register
amominu.d x28, x7, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0x4be234f2153a2206 # load random value
la x11, scratch # base address
sd x24, 0(x11) # store in memory
li x24, 0x8e056d34faf90472 # load another value into integer register
amominu.d x30, x24, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x2, 0x913d39caec4d4e76 # load random value
la x12, scratch # base address
sd x2, 0(x12) # store in memory
li x2, 0x8c013d001444a2c4 # load another value into integer register
amominu.d x1, x2, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0x734baa4a0648bf63 # load random value
la x13, scratch # base address
sd x31, 0(x13) # store in memory
li x31, 0xbbad6b52778b1390 # load another value into integer register
amominu.d x12, x31, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x131ad8d08365f254 # load random value
la x14, scratch # base address
sd x9, 0(x14) # store in memory
li x9, 0x0072105e0abe3a3c # load another value into integer register
amominu.d x25, x9, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0x7faf847196b30319 # load random value
la x15, scratch # base address
sd x22, 0(x15) # store in memory
li x22, 0x431c8eb68cf1f6ec # load another value into integer register
amominu.d x27, x22, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0xcf6f5100162e0ec5 # load random value
la x16, scratch # base address
sd x5, 0(x16) # store in memory
li x5, 0xa8a8c31d28c53365 # load another value into integer register
amominu.d x11, x5, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0xe507536861dfe61d # load random value
la x17, scratch # base address
sd x26, 0(x17) # store in memory
li x26, 0x1490da7dc405ff7d # load another value into integer register
amominu.d x7, x26, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0x772cc7768759a4df # load random value
la x18, scratch # base address
sd x14, 0(x18) # store in memory
li x14, 0xa4b275f858d0974a # load another value into integer register
amominu.d x16, x14, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0x0c9743f9ee78611f # load random value
la x19, scratch # base address
sd x16, 0(x19) # store in memory
li x16, 0x3755c3016e23f1fb # load another value into integer register
amominu.d x15, x16, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0xe852f7f45359460f # load random value
la x20, scratch # base address
sd x12, 0(x20) # store in memory
li x12, 0x82832523bef381ae # load another value into integer register
amominu.d x19, x12, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x9, 0x09d5abc65a013179 # load random value
la x21, scratch # base address
sd x9, 0(x21) # store in memory
li x9, 0xedab4f5d73ce7f1b # load another value into integer register
amominu.d x30, x9, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0x87d4c2e32cca2f89 # load random value
la x22, scratch # base address
sd x7, 0(x22) # store in memory
li x7, 0x7dd68b881bfbadc3 # load another value into integer register
amominu.d x14, x7, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0x20645060f35890ac # load random value
la x23, scratch # base address
sd x26, 0(x23) # store in memory
li x26, 0xfd9f51489d8bd86d # load another value into integer register
amominu.d x7, x26, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x17, 0x8ea9ade1d9fd3654 # load random value
la x24, scratch # base address
sd x17, 0(x24) # store in memory
li x17, 0x201b9ca30cd67b7a # load another value into integer register
amominu.d x27, x17, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x9, 0x6a3f1d44ab9bfb9b # load random value
la x25, scratch # base address
sd x9, 0(x25) # store in memory
li x9, 0x405fc1ec007663f0 # load another value into integer register
amominu.d x27, x9, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x5, 0x2edd025fdbfe127e # load random value
la x26, scratch # base address
sd x5, 0(x26) # store in memory
li x5, 0xf002b9679edc95fc # load another value into integer register
amominu.d x22, x5, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x13, 0x4858256470236de0 # load random value
la x27, scratch # base address
sd x13, 0(x27) # store in memory
li x13, 0xd2ff62c975478f34 # load another value into integer register
amominu.d x30, x13, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x6, 0xb0ec068f388038b6 # load random value
la x28, scratch # base address
sd x6, 0(x28) # store in memory
li x6, 0x1414073750f7f002 # load another value into integer register
amominu.d x1, x6, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0x9b4403ca5226244f # load random value
la x29, scratch # base address
sd x16, 0(x29) # store in memory
li x16, 0x7af1ccb77096ba0c # load another value into integer register
amominu.d x7, x16, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0x325034ff57a0cd05 # load random value
la x30, scratch # base address
sd x9, 0(x30) # store in memory
li x9, 0x087693bf686c360a # load another value into integer register
amominu.d x11, x9, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0xa0365afd1d8f5d54 # load random value
la x31, scratch # base address
sd x11, 0(x31) # store in memory
li x11, 0xbcfc64862e885250 # load another value into integer register
amominu.d x14, x11, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x2fd998d7cd74f009 # load random value
la x22, scratch # base address
sd x0, 0(x22) # store in memory
li x0, 0x31c7009ad3571e3f # load another value into integer register
amominu.d x28, x0, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x8de2378e2c7cbbee # load random value
la x24, scratch # base address
sd x1, 0(x24) # store in memory
li x1, 0xb542b6e5ca7ec10e # load another value into integer register
amominu.d x23, x1, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x9467ccebb14e5d8c # load random value
la x19, scratch # base address
sd x2, 0(x19) # store in memory
li x2, 0x0b64d1092d1ffba8 # load another value into integer register
amominu.d x24, x2, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x8ed7af81182d7d5b # load random value
la x11, scratch # base address
sd x3, 0(x11) # store in memory
li x3, 0xed426f6b7943ab69 # load another value into integer register
amominu.d x1, x3, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0480a17eafed7c41 # load random value
la x29, scratch # base address
sd x4, 0(x29) # store in memory
li x4, 0x1249551c423d6d53 # load another value into integer register
amominu.d x23, x4, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1586193e43e95a52 # load random value
la x20, scratch # base address
sd x5, 0(x20) # store in memory
li x5, 0x837c85b004595e0a # load another value into integer register
amominu.d x8, x5, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0d6009e3bb341f49 # load random value
la x24, scratch # base address
sd x6, 0(x24) # store in memory
li x6, 0x3364ea960eeaa745 # load another value into integer register
amominu.d x16, x6, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x05f0cc234dc0a466 # load random value
la x17, scratch # base address
sd x7, 0(x17) # store in memory
li x7, 0x4410b153367165bb # load another value into integer register
amominu.d x22, x7, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x6d02e5555032b55d # load random value
la x14, scratch # base address
sd x8, 0(x14) # store in memory
li x8, 0x0f6b440768a7eba1 # load another value into integer register
amominu.d x2, x8, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x11ae7fb9688f6ec7 # load random value
la x30, scratch # base address
sd x9, 0(x30) # store in memory
li x9, 0x40cd581c7cb3d6c9 # load another value into integer register
amominu.d x26, x9, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x100e310b0892873a # load random value
la x16, scratch # base address
sd x10, 0(x16) # store in memory
li x10, 0xd50214e608f2143a # load another value into integer register
amominu.d x25, x10, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x5eb84b1fb6aab5fd # load random value
la x3, scratch # base address
sd x11, 0(x3) # store in memory
li x11, 0xd8225fbca63bcfc3 # load another value into integer register
amominu.d x9, x11, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x8568aefafdff5bcb # load random value
la x1, scratch # base address
sd x12, 0(x1) # store in memory
li x12, 0x5a153b9ce75c9f5d # load another value into integer register
amominu.d x29, x12, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x93fe70738feaa03c # load random value
la x30, scratch # base address
sd x13, 0(x30) # store in memory
li x13, 0xd3a483aa98d3ec84 # load another value into integer register
amominu.d x19, x13, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x8733c4a0aac8636c # load random value
la x27, scratch # base address
sd x14, 0(x27) # store in memory
li x14, 0xc11f18e5408ce89f # load another value into integer register
amominu.d x2, x14, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x96f5cdc033b8295e # load random value
la x30, scratch # base address
sd x15, 0(x30) # store in memory
li x15, 0x5f60cd0d02adb281 # load another value into integer register
amominu.d x6, x15, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x1f141dc3deb4d7a7 # load random value
la x25, scratch # base address
sd x16, 0(x25) # store in memory
li x16, 0x3d59540915d96b60 # load another value into integer register
amominu.d x26, x16, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x5edf93ba6f2b0c52 # load random value
la x28, scratch # base address
sd x17, 0(x28) # store in memory
li x17, 0xa0cf43c2d2e8fcba # load another value into integer register
amominu.d x8, x17, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x0f4eee6fc169d9f1 # load random value
la x3, scratch # base address
sd x18, 0(x3) # store in memory
li x18, 0x0c3eb1665aaa214a # load another value into integer register
amominu.d x25, x18, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xd17bf2e5db39c783 # load random value
la x3, scratch # base address
sd x19, 0(x3) # store in memory
li x19, 0xb2b88ad090293fb0 # load another value into integer register
amominu.d x30, x19, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xb4314b3488a670f0 # load random value
la x3, scratch # base address
sd x20, 0(x3) # store in memory
li x20, 0x512852fdf463f6b7 # load another value into integer register
amominu.d x25, x20, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x169227e717a22e10 # load random value
la x23, scratch # base address
sd x21, 0(x23) # store in memory
li x21, 0x0715c4324362f111 # load another value into integer register
amominu.d x5, x21, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xc645f5cc1c1ac044 # load random value
la x13, scratch # base address
sd x22, 0(x13) # store in memory
li x22, 0x5c647db13762d3b2 # load another value into integer register
amominu.d x9, x22, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x3791a69486e422d5 # load random value
la x13, scratch # base address
sd x23, 0(x13) # store in memory
li x23, 0xad24b6f1db09778c # load another value into integer register
amominu.d x15, x23, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x234ff64f941c2971 # load random value
la x3, scratch # base address
sd x24, 0(x3) # store in memory
li x24, 0xa2538443b53e475c # load another value into integer register
amominu.d x8, x24, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x5e5de89fc7b15b40 # load random value
la x23, scratch # base address
sd x25, 0(x23) # store in memory
li x25, 0x8525911caf8942e0 # load another value into integer register
amominu.d x29, x25, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x945b48a957003cc4 # load random value
la x5, scratch # base address
sd x26, 0(x5) # store in memory
li x26, 0x0d439ed2d68aa092 # load another value into integer register
amominu.d x25, x26, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x8acdfb9360341cf6 # load random value
la x2, scratch # base address
sd x27, 0(x2) # store in memory
li x27, 0x087ddfe4c7caad27 # load another value into integer register
amominu.d x5, x27, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x3cfd0dd93a1e602d # load random value
la x16, scratch # base address
sd x28, 0(x16) # store in memory
li x28, 0x84c9c0e4dbd32e9a # load another value into integer register
amominu.d x2, x28, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x6bc4cdb7bef4f1c8 # load random value
la x27, scratch # base address
sd x29, 0(x27) # store in memory
li x29, 0xacfd4b208dd216a0 # load another value into integer register
amominu.d x8, x29, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x5b9ee93dfa4f611f # load random value
la x27, scratch # base address
sd x30, 0(x27) # store in memory
li x30, 0xa9dcc9be0541ef89 # load another value into integer register
amominu.d x8, x30, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x0f4b0308db295fb6 # load random value
la x28, scratch # base address
sd x31, 0(x28) # store in memory
li x31, 0xee0b8ba91b664b3f # load another value into integer register
amominu.d x12, x31, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x12, 0xaefa2bec5865ded7 # load random value
la x17, scratch # base address
sd x12, 0(x17) # store in memory
li x12, 0x9ad23b6577c06cb3 # load another value into integer register
amominu.d x0, x12, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x142805126d81f800 # load random value
la x30, scratch # base address
sd x9, 0(x30) # store in memory
li x9, 0x43f2073810d5cac1 # load another value into integer register
amominu.d x1, x9, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x25, 0xe3719a06268d0f9d # load random value
la x12, scratch # base address
sd x25, 0(x12) # store in memory
li x25, 0x1cafac958a239590 # load another value into integer register
amominu.d x2, x25, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x3331a2b156e82763 # load random value
la x21, scratch # base address
sd x15, 0(x21) # store in memory
li x15, 0xc20a67dd65ed7f14 # load another value into integer register
amominu.d x3, x15, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xb6113eb6636b26aa # load random value
la x1, scratch # base address
sd x15, 0(x1) # store in memory
li x15, 0x535e313bb79e645b # load another value into integer register
amominu.d x4, x15, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x33f8b9a8312c0454 # load random value
la x4, scratch # base address
sd x14, 0(x4) # store in memory
li x14, 0x055da0bb911f052f # load another value into integer register
amominu.d x5, x14, (x4) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xf7b45a2d12239ac0 # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0x800c9d22a6fefb67 # load another value into integer register
amominu.d x6, x29, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x294c48bb2f1be489 # load random value
la x6, scratch # base address
sd x19, 0(x6) # store in memory
li x19, 0x50d5093e0bf6643b # load another value into integer register
amominu.d x7, x19, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x28, 0x87c596bb26ff8506 # load random value
la x25, scratch # base address
sd x28, 0(x25) # store in memory
li x28, 0x3901ccb1b45be1ab # load another value into integer register
amominu.d x8, x28, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x20, 0xfe247473a8c70ed1 # load random value
la x24, scratch # base address
sd x20, 0(x24) # store in memory
li x20, 0xd5f5eb7fd4aaef11 # load another value into integer register
amominu.d x9, x20, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x6663788dbd3d8d8e # load random value
la x23, scratch # base address
sd x13, 0(x23) # store in memory
li x13, 0x57a06e49d82ee3b1 # load another value into integer register
amominu.d x10, x13, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x3, 0xc366c65630ee4845 # load random value
la x30, scratch # base address
sd x3, 0(x30) # store in memory
li x3, 0xc6da022a05520f51 # load another value into integer register
amominu.d x11, x3, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x28, 0x2dc2583779662e87 # load random value
la x12, scratch # base address
sd x28, 0(x12) # store in memory
li x28, 0x6e34e90c3b644988 # load another value into integer register
amominu.d x12, x28, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x31, 0x522810f88c4248ab # load random value
la x3, scratch # base address
sd x31, 0(x3) # store in memory
li x31, 0x63472749ddc56bb8 # load another value into integer register
amominu.d x13, x31, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x17, 0xff5e07a1db28ef78 # load random value
la x24, scratch # base address
sd x17, 0(x24) # store in memory
li x17, 0xc6d69af4006e7e50 # load another value into integer register
amominu.d x14, x17, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xee2bc18e659070f9 # load random value
la x29, scratch # base address
sd x26, 0(x29) # store in memory
li x26, 0x7c236119cf44614a # load another value into integer register
amominu.d x15, x26, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x21, 0x5fedb920aaf94f6e # load random value
la x28, scratch # base address
sd x21, 0(x28) # store in memory
li x21, 0x90f42e29d7978ef4 # load another value into integer register
amominu.d x16, x21, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x19, 0xaca2bf03df67c132 # load random value
la x2, scratch # base address
sd x19, 0(x2) # store in memory
li x19, 0xd122263459ab2779 # load another value into integer register
amominu.d x17, x19, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x3, 0xa0bbc83f900e9b6b # load random value
la x16, scratch # base address
sd x3, 0(x16) # store in memory
li x3, 0x7da923b60d79465c # load another value into integer register
amominu.d x18, x3, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x1d1f06fa4c09ca2d # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0x55b2d144ef8c6fda # load another value into integer register
amominu.d x19, x8, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x21, 0xabf10b45211c8126 # load random value
la x23, scratch # base address
sd x21, 0(x23) # store in memory
li x21, 0x9e9126d6ba5ec08f # load another value into integer register
amominu.d x20, x21, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x27, 0x5370730cc504d2f4 # load random value
la x16, scratch # base address
sd x27, 0(x16) # store in memory
li x27, 0x8598dfc7031df7db # load another value into integer register
amominu.d x21, x27, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x17, 0x36706d68cc05ae04 # load random value
la x19, scratch # base address
sd x17, 0(x19) # store in memory
li x17, 0x2010fc1f5d522ddd # load another value into integer register
amominu.d x22, x17, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xaa6825fca9cbcdd2 # load random value
la x1, scratch # base address
sd x28, 0(x1) # store in memory
li x28, 0xebeb280033be5185 # load another value into integer register
amominu.d x23, x28, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x25, 0x48260aa9b1c30446 # load random value
la x6, scratch # base address
sd x25, 0(x6) # store in memory
li x25, 0x8f39537c967a5b9a # load another value into integer register
amominu.d x24, x25, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x08352a8ebed69032 # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0xcd672b903f88edec # load another value into integer register
amominu.d x25, x12, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x2, 0x023ac56815c78fe8 # load random value
la x22, scratch # base address
sd x2, 0(x22) # store in memory
li x2, 0xb3af4ab00ef97758 # load another value into integer register
amominu.d x26, x2, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x1203ea22d605fa0f # load random value
la x16, scratch # base address
sd x6, 0(x16) # store in memory
li x6, 0xcbb31bb9cd3a15e7 # load another value into integer register
amominu.d x27, x6, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x12cc48d0f72a8d78 # load random value
la x25, scratch # base address
sd x18, 0(x25) # store in memory
li x18, 0x354b4ee43b75b02c # load another value into integer register
amominu.d x28, x18, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x18, 0x6b08d47737f5892b # load random value
la x21, scratch # base address
sd x18, 0(x21) # store in memory
li x18, 0x5d7db56f99913ae0 # load another value into integer register
amominu.d x29, x18, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xff24a3653fed1b43 # load random value
la x16, scratch # base address
sd x18, 0(x16) # store in memory
li x18, 0x176a06ff826e0916 # load another value into integer register
amominu.d x30, x18, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x30, 0xd2ff2168d0b32e18 # load random value
la x22, scratch # base address
sd x30, 0(x22) # store in memory
li x30, 0x640fcd49e4826bde # load another value into integer register
amominu.d x31, x30, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x5dfac5e7a6ad041e # load random value
la x24, scratch # base address
sd x19, 0(x24) # store in memory
li x19, 0x0000000000000000 # load another value into integer register
amominu.d x9, x19, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x21, 0xa6508c92362294eb # load random value
la x25, scratch # base address
sd x21, 0(x25) # store in memory
li x21, 0x0000000000000001 # load another value into integer register
amominu.d x1, x21, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x1a5cf6be4a0bd640 # load random value
la x7, scratch # base address
sd x5, 0(x7) # store in memory
li x5, 0x0000000000000002 # load another value into integer register
amominu.d x30, x5, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x27, 0xf3dac63aee155b6f # load random value
la x20, scratch # base address
sd x27, 0(x20) # store in memory
li x27, 0x8000000000000000 # load another value into integer register
amominu.d x31, x27, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0xe3e03692804378cb # load random value
la x2, scratch # base address
sd x27, 0(x2) # store in memory
li x27, 0x8000000000000001 # load another value into integer register
amominu.d x23, x27, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x0193f8479a414bd1 # load random value
la x5, scratch # base address
sd x2, 0(x5) # store in memory
li x2, 0x7fffffffffffffff # load another value into integer register
amominu.d x30, x2, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x18, 0x474692e748d8825a # load random value
la x30, scratch # base address
sd x18, 0(x30) # store in memory
li x18, 0x7ffffffffffffffe # load another value into integer register
amominu.d x9, x18, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0xdfa8ddaf63588c6b # load random value
la x28, scratch # base address
sd x15, 0(x28) # store in memory
li x15, 0xffffffffffffffff # load another value into integer register
amominu.d x2, x15, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x11, 0x54bd9de110841519 # load random value
la x20, scratch # base address
sd x11, 0(x20) # store in memory
li x11, 0xfffffffffffffffe # load another value into integer register
amominu.d x18, x11, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x9, 0xfe9a6c99321b7019 # load random value
la x15, scratch # base address
sd x9, 0(x15) # store in memory
li x9, 0x5bbc887763ae86f2 # load another value into integer register
amominu.d x13, x9, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0x54db5ed6c621ac49 # load random value
la x12, scratch # base address
sd x31, 0(x12) # store in memory
li x31, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amominu.d x20, x31, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x23, 0x71db252c157a1085 # load random value
la x24, scratch # base address
sd x23, 0(x24) # store in memory
li x23, 0x5555555555555555 # load another value into integer register
amominu.d x30, x23, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0xd8a1ec49f6d78226 # load random value
la x7, scratch # base address
sd x20, 0(x7) # store in memory
li x20, 0x00000000ffffffff # load another value into integer register
amominu.d x10, x20, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x044ac7dd149e9ca0 # load random value
la x24, scratch # base address
sd x17, 0(x24) # store in memory
li x17, 0x00000000fffffffe # load another value into integer register
amominu.d x11, x17, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x27, 0xdbadabc6b438b25d # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0x0000000100000000 # load another value into integer register
amominu.d x20, x27, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x2, 0xdf9aff68f728075b # load random value
la x24, scratch # base address
sd x2, 0(x24) # store in memory
li x2, 0x0000000100000001 # load another value into integer register
amominu.d x17, x2, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xfaa3c477b01a74eb # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amominu.d x22, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x63fc9f3b53e10fd2 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amominu.d x20, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdd335bcca713d8b4 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amominu.d x10, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf6191ae1e6809519 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amominu.d x20, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x41d09411696e209a # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amominu.d x2, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9c463791e2202123 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amominu.d x4, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2b3d9af15dc186e8 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amominu.d x30, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xf63eaab1e5e5b470 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amominu.d x29, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xab63f66b169cb900 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amominu.d x30, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x983777cae7cd5444 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amominu.d x14, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x2ecc7879c10f40fc # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amominu.d x1, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x31c2ed3690fdce14 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amominu.d x23, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe284fda9bcb290f5 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amominu.d x19, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xb5d06dc5cd26f207 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amominu.d x14, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf9911726ae8f5722 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amominu.d x18, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x500daee1b44c8dc7 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amominu.d x19, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x611c520f8775a0de # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amominu.d x2, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x4039636aba94e582 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amominu.d x23, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9d4f033afdd7703f # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amominu.d x11, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x709061f5c52fb5b4 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amominu.d x1, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1840c568ef3ac885 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amominu.d x1, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x6a4f00ff113f0874 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amominu.d x21, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xd72109675a2ae147 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amominu.d x29, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xb215b04db6a8ab36 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amominu.d x15, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xa36a0e2e16f7a58d # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amominu.d x19, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc98488ee4cdfbf16 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amominu.d x28, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xee32cb6f9be56151 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amominu.d x14, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3663f0c93594a48f # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amominu.d x13, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x96039677cf991f64 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amominu.d x16, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x7f7fe1ea6cc54909 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amominu.d x15, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc89bfa375c753e4d # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amominu.d x2, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x9, 0xdf450a406d22ff76 # load random value
la x1, scratch # base address
sd x9, 0(x1) # store in memory
li x9, 0x247b644cfdc73218 # load another value into integer register
amominu.d x1, x9, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x15, 0xb2d09b1d1a7b7d6f # load random value
la x2, scratch # base address
sd x15, 0(x2) # store in memory
li x15, 0x38ba3d42bcaa03a9 # load another value into integer register
amominu.d x2, x15, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x17, 0x373c4b0403725356 # load random value
la x3, scratch # base address
sd x17, 0(x3) # store in memory
li x17, 0x211b2fde6580b59b # load another value into integer register
amominu.d x3, x17, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x64af05930c4761d5 # load random value
la x4, scratch # base address
sd x9, 0(x4) # store in memory
li x9, 0x4c0b4103d0ba100e # load another value into integer register
amominu.d x4, x9, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x7971f73166a366db # load random value
la x5, scratch # base address
sd x19, 0(x5) # store in memory
li x19, 0x7e1c24c300c12364 # load another value into integer register
amominu.d x5, x19, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x1f7586f5b5c16535 # load random value
la x6, scratch # base address
sd x28, 0(x6) # store in memory
li x28, 0x02c0d6244ff7850d # load another value into integer register
amominu.d x6, x28, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x53bbe6055979103e # load random value
la x7, scratch # base address
sd x11, 0(x7) # store in memory
li x11, 0x889ee9cafa732981 # load another value into integer register
amominu.d x7, x11, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x14, 0xdf514eca3e9d3985 # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0x2977fd958d95f4b9 # load another value into integer register
amominu.d x8, x14, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x5, 0x66f3f9faca8aab84 # load random value
la x9, scratch # base address
sd x5, 0(x9) # store in memory
li x5, 0x7da76b98117259fc # load another value into integer register
amominu.d x9, x5, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x9, 0xe8f6fb494f568870 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x7a6dde37727cdb7b # load another value into integer register
amominu.d x10, x9, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x6, 0x92a2d8afc51fafdc # load random value
la x11, scratch # base address
sd x6, 0(x11) # store in memory
li x6, 0xfc80dd87b7b3db96 # load another value into integer register
amominu.d x11, x6, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x9, 0x15e7a2b26f35fa55 # load random value
la x12, scratch # base address
sd x9, 0(x12) # store in memory
li x9, 0xa00db6507bcbc391 # load another value into integer register
amominu.d x12, x9, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x26, 0x4a623969262d6e38 # load random value
la x13, scratch # base address
sd x26, 0(x13) # store in memory
li x26, 0x26670bb7363a6894 # load another value into integer register
amominu.d x13, x26, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x23, 0x04082d246370bb18 # load random value
la x14, scratch # base address
sd x23, 0(x14) # store in memory
li x23, 0xa9ede56802e5f616 # load another value into integer register
amominu.d x14, x23, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x28, 0xe4db6561c762fce2 # load random value
la x15, scratch # base address
sd x28, 0(x15) # store in memory
li x28, 0x7299ebd8dc662f36 # load another value into integer register
amominu.d x15, x28, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x14, 0x4268152b10beb476 # load random value
la x16, scratch # base address
sd x14, 0(x16) # store in memory
li x14, 0xa4ea6e84f65c8c4b # load another value into integer register
amominu.d x16, x14, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x14, 0xca06053783f5a828 # load random value
la x17, scratch # base address
sd x14, 0(x17) # store in memory
li x14, 0x22dadc570c829438 # load another value into integer register
amominu.d x17, x14, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x26, 0x8128903167dd5881 # load random value
la x18, scratch # base address
sd x26, 0(x18) # store in memory
li x26, 0xc5adcf78dea879fd # load another value into integer register
amominu.d x18, x26, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x7, 0xaa083e6dbf38fc61 # load random value
la x19, scratch # base address
sd x7, 0(x19) # store in memory
li x7, 0x9d6da73cfbaeb193 # load another value into integer register
amominu.d x19, x7, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x23, 0xd2e591e8f87fc834 # load random value
la x20, scratch # base address
sd x23, 0(x20) # store in memory
li x23, 0x67c718d90f924d44 # load another value into integer register
amominu.d x20, x23, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x26, 0xa5a3396ffd3fd3d8 # load random value
la x21, scratch # base address
sd x26, 0(x21) # store in memory
li x26, 0xd8681f52f88e1c31 # load another value into integer register
amominu.d x21, x26, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x3, 0xe2a1588b390164d9 # load random value
la x22, scratch # base address
sd x3, 0(x22) # store in memory
li x3, 0x9d64742cde611b99 # load another value into integer register
amominu.d x22, x3, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x11, 0xf2f5eae94972a358 # load random value
la x23, scratch # base address
sd x11, 0(x23) # store in memory
li x11, 0xc85bb0f618de640e # load another value into integer register
amominu.d x23, x11, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x21, 0x51bad6ee417f3eb7 # load random value
la x24, scratch # base address
sd x21, 0(x24) # store in memory
li x21, 0x9362bce5dbdae430 # load another value into integer register
amominu.d x24, x21, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x9, 0x55b09235a75cb8ec # load random value
la x25, scratch # base address
sd x9, 0(x25) # store in memory
li x9, 0x125533d3d79ec7f8 # load another value into integer register
amominu.d x25, x9, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x17, 0xfafdbd816c3c5f11 # load random value
la x26, scratch # base address
sd x17, 0(x26) # store in memory
li x17, 0x4509d9b0b193611f # load another value into integer register
amominu.d x26, x17, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x5, 0x32999fe193c73293 # load random value
la x27, scratch # base address
sd x5, 0(x27) # store in memory
li x5, 0x8bf339571e0c2f72 # load another value into integer register
amominu.d x27, x5, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x6, 0xfd7c35a2e7c9dc1c # load random value
la x28, scratch # base address
sd x6, 0(x28) # store in memory
li x6, 0xc3e6ae6b02b5f376 # load another value into integer register
amominu.d x28, x6, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x26, 0xe54dd6e096eac272 # load random value
la x29, scratch # base address
sd x26, 0(x29) # store in memory
li x26, 0x1eaf1cf5e4ab81aa # load another value into integer register
amominu.d x29, x26, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x16, 0x6ec20fdad91d59bf # load random value
la x30, scratch # base address
sd x16, 0(x30) # store in memory
li x16, 0xe1ab25a3dc923ace # load another value into integer register
amominu.d x30, x16, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x26, 0x1d6715c2af84cbea # load random value
la x31, scratch # base address
sd x26, 0(x31) # store in memory
li x26, 0x048ef7c90f1a5479 # load another value into integer register
amominu.d x31, x26, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xcef0f621c291f099 # load random value
la x14, scratch # base address
sd x0, 0(x14) # store in memory
li x0, 0x22705c40d2554fb5 # load another value into integer register
amominu.d x0, x0, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x425eedb7bfd99b44 # load random value
la x7, scratch # base address
sd x1, 0(x7) # store in memory
li x1, 0x8d8b6e9d0a8b35f9 # load another value into integer register
amominu.d x1, x1, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xd3c8f6542faad305 # load random value
la x19, scratch # base address
sd x2, 0(x19) # store in memory
li x2, 0x9c8e1bbf0bbae881 # load another value into integer register
amominu.d x2, x2, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xcda4316aad896370 # load random value
la x23, scratch # base address
sd x3, 0(x23) # store in memory
li x3, 0x702a59baffecfe11 # load another value into integer register
amominu.d x3, x3, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x98cd565ec94481a7 # load random value
la x18, scratch # base address
sd x4, 0(x18) # store in memory
li x4, 0x428295d6989988ad # load another value into integer register
amominu.d x4, x4, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x456c0a34b724beef # load random value
la x3, scratch # base address
sd x5, 0(x3) # store in memory
li x5, 0x1d98c7ad49b0471d # load another value into integer register
amominu.d x5, x5, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0b24f30bc12f39a9 # load random value
la x8, scratch # base address
sd x6, 0(x8) # store in memory
li x6, 0x08b88c04396166a4 # load another value into integer register
amominu.d x6, x6, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6261218e0133b0fc # load random value
la x4, scratch # base address
sd x7, 0(x4) # store in memory
li x7, 0xef50c4b3ddfb0b6c # load another value into integer register
amominu.d x7, x7, (x4) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xdd7d3e94c4a892dc # load random value
la x31, scratch # base address
sd x8, 0(x31) # store in memory
li x8, 0xb283640784e7f239 # load another value into integer register
amominu.d x8, x8, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xad99aff3d3124e28 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0xba69d3b993dd84ed # load another value into integer register
amominu.d x9, x9, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xce4a3f23151b9557 # load random value
la x4, scratch # base address
sd x10, 0(x4) # store in memory
li x10, 0x812b310eeb694ec6 # load another value into integer register
amominu.d x10, x10, (x4) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xba9279107d0e9a2b # load random value
la x31, scratch # base address
sd x11, 0(x31) # store in memory
li x11, 0x382d3fb385890fbb # load another value into integer register
amominu.d x11, x11, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x0c4bb6715454545e # load random value
la x21, scratch # base address
sd x12, 0(x21) # store in memory
li x12, 0x6a5101858368db1e # load another value into integer register
amominu.d x12, x12, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x5198fcd5daa6386d # load random value
la x26, scratch # base address
sd x13, 0(x26) # store in memory
li x13, 0x3d6edc5093cd627d # load another value into integer register
amominu.d x13, x13, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x9e3d7ba775da5e2c # load random value
la x10, scratch # base address
sd x14, 0(x10) # store in memory
li x14, 0x3920426c16640387 # load another value into integer register
amominu.d x14, x14, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x87f132577027e50d # load random value
la x30, scratch # base address
sd x15, 0(x30) # store in memory
li x15, 0xfdffdb89e336e422 # load another value into integer register
amominu.d x15, x15, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x19e1554206f423b2 # load random value
la x18, scratch # base address
sd x16, 0(x18) # store in memory
li x16, 0x5437e313f3cf581c # load another value into integer register
amominu.d x16, x16, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x190a23a6a7fd0162 # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0xa057a406a3bcb3d3 # load another value into integer register
amominu.d x17, x17, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xace85c268b5cf6c5 # load random value
la x3, scratch # base address
sd x18, 0(x3) # store in memory
li x18, 0x17d033f1bdba6d10 # load another value into integer register
amominu.d x18, x18, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x8bf8fb9549a73a79 # load random value
la x24, scratch # base address
sd x19, 0(x24) # store in memory
li x19, 0x223b6696e03ea6ec # load another value into integer register
amominu.d x19, x19, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xdd1642b50c3292be # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0xa44b625c93456727 # load another value into integer register
amominu.d x20, x20, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x7173d683076cc9ca # load random value
la x12, scratch # base address
sd x21, 0(x12) # store in memory
li x21, 0xa893938653546dce # load another value into integer register
amominu.d x21, x21, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x814a311d559b8dfe # load random value
la x16, scratch # base address
sd x22, 0(x16) # store in memory
li x22, 0xdce2c36b4882de64 # load another value into integer register
amominu.d x22, x22, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xe97a117e07d331c4 # load random value
la x27, scratch # base address
sd x23, 0(x27) # store in memory
li x23, 0xc4e956190cd0c3ad # load another value into integer register
amominu.d x23, x23, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x46b60edd57e958e3 # load random value
la x14, scratch # base address
sd x24, 0(x14) # store in memory
li x24, 0xd6336ecfd5baf765 # load another value into integer register
amominu.d x24, x24, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xe4901be3223b9b90 # load random value
la x12, scratch # base address
sd x25, 0(x12) # store in memory
li x25, 0xc78e8a56c5d4481d # load another value into integer register
amominu.d x25, x25, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xdc42e3d336f50295 # load random value
la x29, scratch # base address
sd x26, 0(x29) # store in memory
li x26, 0x7c458438bbab4d00 # load another value into integer register
amominu.d x26, x26, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xf57c40b0a99f3e22 # load random value
la x24, scratch # base address
sd x27, 0(x24) # store in memory
li x27, 0x93b7c53df61d188a # load another value into integer register
amominu.d x27, x27, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x3df5a9dedfdcbd93 # load random value
la x23, scratch # base address
sd x28, 0(x23) # store in memory
li x28, 0x64d8ca921fd0cf2b # load another value into integer register
amominu.d x28, x28, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x6a6fcf47cd0149ac # load random value
la x2, scratch # base address
sd x29, 0(x2) # store in memory
li x29, 0x6d3009a4a02da570 # load another value into integer register
amominu.d x29, x29, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xdf2a76035c9441fa # load random value
la x12, scratch # base address
sd x30, 0(x12) # store in memory
li x30, 0x750aaf833e7a2347 # load another value into integer register
amominu.d x30, x30, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x67377c9a13ce7c47 # load random value
la x24, scratch # base address
sd x31, 0(x24) # store in memory
li x31, 0x90e057dcd301231a # load another value into integer register
amominu.d x31, x31, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd2a7d2e9f1d8103b # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amominu.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x2403a9ab2851fcbd # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amominu.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xef258553f48fc063 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amominu.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x34cfc3bfe1344da7 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amominu.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x26fe1961ff1517bf # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amominu.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36a3d9f02ebba61d # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amominu.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x37b849e0001c1caf # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amominu.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe037141c5d50174a # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amominu.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xe8e44688444d083e # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amominu.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x721feaa4e24bb9c0 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amominu.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x698524d0e80cabb1 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amominu.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x60b7027ca685bf53 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amominu.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x118880768739cf18 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amominu.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb1001ad3b699fd7e # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amominu.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x0fe40a83b372b2db # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amominu.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xdce8966a31d890b7 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amominu.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x17de0326d643ac9b # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amominu.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7d557eae0f803e29 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amominu.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb27a14d0b129ec43 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amominu.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xdef5658b290cc129 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amominu.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc76ba9ddced24b6e # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amominu.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe2c9e0a9fa6a7f4a # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amominu.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xeb847c0f2afef04d # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amominu.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x423c0929f9daa7a7 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amominu.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x6000c14b1a290147 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amominu.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2eed6b2c4cf777c5 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amominu.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x8b7d79834b13b743 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amominu.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x11f3604200fe94a0 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amominu.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xe47867ee81dde906 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amominu.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x71e9fd6b377e17ea # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amominu.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xfb3bd044b0d98c29 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amominu.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x11, scratch
add x8, x13, x2 # perform first operation
amominu.d x5, x17, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x26, scratch
add x2, x7, x30 # perform first operation
amominu.d x27, x25, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x9, scratch
add x31, x29, x6 # perform first operation
amominu.d x25, x24, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
add x14, x14, x0 # perform first operation
amominu.d x2, x14, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
add x27, x27, x0 # perform first operation
amominu.d x27, x14, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
add x8, x8, x0 # perform first operation
amominu.d x16, x11, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x29, scratch
add x10, x1, x16 # perform first operation
amominu.d x10, x9, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x22, scratch
add x18, x12, x2 # perform first operation
amominu.d x18, x31, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
add x26, x14, x22 # perform first operation
amominu.d x26, x8, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x30, scratch
add x8, x23, x2 # perform first operation
amominu.d x23, x25, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x29, scratch
add x5, x17, x3 # perform first operation
amominu.d x3, x6, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x17, scratch
add x13, x23, x15 # perform first operation
amominu.d x2, x10, (x17) # perform second (triggering) operation

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
