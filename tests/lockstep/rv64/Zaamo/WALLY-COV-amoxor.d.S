///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoxor.d.S
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
li x9, 0x65efddd46c19833d # load random value
la x1, scratch # base address
sd x9, 0(x1) # store in memory
li x9, 0xd3c365534679e76a # load another value into integer register
amoxor.d x10, x9, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0x63e120d6d9b7c9db # load random value
la x2, scratch # base address
sd x10, 0(x2) # store in memory
li x10, 0x8a170d9a5e318b24 # load another value into integer register
amoxor.d x21, x10, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0x95941163526ca522 # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0x2fffca7ce4e23cef # load another value into integer register
amoxor.d x1, x21, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x11f0136e637fa472 # load random value
la x4, scratch # base address
sd x29, 0(x4) # store in memory
li x29, 0xd45bb64d67fff408 # load another value into integer register
amoxor.d x18, x29, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x0a52cc9f5ff1e83d # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0xba0b970cd80d87e7 # load another value into integer register
amoxor.d x27, x31, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x8f435da2572cc303 # load random value
la x6, scratch # base address
sd x4, 0(x6) # store in memory
li x4, 0xc6bc182dcf810a2b # load another value into integer register
amoxor.d x8, x4, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x19f39d89704e0150 # load random value
la x7, scratch # base address
sd x2, 0(x7) # store in memory
li x2, 0x0f1571f0f0f7fede # load another value into integer register
amoxor.d x15, x2, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0xe337885c982daf22 # load random value
la x8, scratch # base address
sd x1, 0(x8) # store in memory
li x1, 0x216a93e1e193c87a # load another value into integer register
amoxor.d x13, x1, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x419bfcbde8762f37 # load random value
la x9, scratch # base address
sd x25, 0(x9) # store in memory
li x25, 0x02ee687b9f4b1233 # load another value into integer register
amoxor.d x31, x25, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0x3a89c81edda28209 # load random value
la x10, scratch # base address
sd x7, 0(x10) # store in memory
li x7, 0xb646439d92d71fd0 # load another value into integer register
amoxor.d x9, x7, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0x3eb2bb182fb64c37 # load random value
la x11, scratch # base address
sd x29, 0(x11) # store in memory
li x29, 0x13cca3bf91f6d93f # load another value into integer register
amoxor.d x10, x29, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x3f0c6eab03e9b7ac # load random value
la x12, scratch # base address
sd x21, 0(x12) # store in memory
li x21, 0x80c853f580d764e6 # load another value into integer register
amoxor.d x7, x21, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x69acdc143b4e4826 # load random value
la x13, scratch # base address
sd x12, 0(x13) # store in memory
li x12, 0x2db54ad1efe6f1e2 # load another value into integer register
amoxor.d x8, x12, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x24, 0xe42efc51df536263 # load random value
la x14, scratch # base address
sd x24, 0(x14) # store in memory
li x24, 0xe9f60c94ff907924 # load another value into integer register
amoxor.d x16, x24, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x8fecf9131d4afbd5 # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0x94294145e3d390b9 # load another value into integer register
amoxor.d x10, x18, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0x5cacfb0182f4463a # load random value
la x16, scratch # base address
sd x2, 0(x16) # store in memory
li x2, 0x98c42bf674dd140e # load another value into integer register
amoxor.d x15, x2, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x27, 0x07a6b8a7796b501a # load random value
la x17, scratch # base address
sd x27, 0(x17) # store in memory
li x27, 0x66001b67509ed358 # load another value into integer register
amoxor.d x11, x27, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x9, 0x626927266710d6ee # load random value
la x18, scratch # base address
sd x9, 0(x18) # store in memory
li x9, 0xb49ffe94ecc8234f # load another value into integer register
amoxor.d x14, x9, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0x39992e706519c023 # load random value
la x19, scratch # base address
sd x10, 0(x19) # store in memory
li x10, 0x3d513e4d32291106 # load another value into integer register
amoxor.d x20, x10, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0xc5c2435fdd9315a8 # load random value
la x20, scratch # base address
sd x25, 0(x20) # store in memory
li x25, 0x852279bb84a3a00a # load another value into integer register
amoxor.d x17, x25, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x19, 0x1fcfc8ab8a683614 # load random value
la x21, scratch # base address
sd x19, 0(x21) # store in memory
li x19, 0x1db20eec6742b979 # load another value into integer register
amoxor.d x24, x19, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x17, 0x23361720f9bcce9e # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0xa135e3f82f7390c3 # load another value into integer register
amoxor.d x3, x17, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x14, 0x1342b523c0adf859 # load random value
la x23, scratch # base address
sd x14, 0(x23) # store in memory
li x14, 0x4352dbd8c58f8feb # load another value into integer register
amoxor.d x27, x14, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x30, 0xe91bbfd45c1df4a3 # load random value
la x24, scratch # base address
sd x30, 0(x24) # store in memory
li x30, 0x96df95acf9eb23fc # load another value into integer register
amoxor.d x18, x30, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x2, 0xedb11942d7d023f1 # load random value
la x25, scratch # base address
sd x2, 0(x25) # store in memory
li x2, 0xe7346cebf9991360 # load another value into integer register
amoxor.d x14, x2, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x29, 0xd589284987ed52fc # load random value
la x26, scratch # base address
sd x29, 0(x26) # store in memory
li x29, 0xb6c9003c91ea515a # load another value into integer register
amoxor.d x28, x29, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0xd022d060fb045e71 # load random value
la x27, scratch # base address
sd x9, 0(x27) # store in memory
li x9, 0xbdd1165fe4d6fe3d # load another value into integer register
amoxor.d x17, x9, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0xf3abeea08b817579 # load random value
la x28, scratch # base address
sd x29, 0(x28) # store in memory
li x29, 0x30481d0e2e42538a # load another value into integer register
amoxor.d x12, x29, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x12, 0xcf2cf8bbc8dce4f6 # load random value
la x29, scratch # base address
sd x12, 0(x29) # store in memory
li x12, 0x725d105759e5774c # load another value into integer register
amoxor.d x7, x12, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x3cdd9b6f6107864b # load random value
la x30, scratch # base address
sd x27, 0(x30) # store in memory
li x27, 0x6cb04f8176e0bedf # load another value into integer register
amoxor.d x15, x27, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x7, 0xf662c7aa207b0973 # load random value
la x31, scratch # base address
sd x7, 0(x31) # store in memory
li x7, 0x742e739932f33318 # load another value into integer register
amoxor.d x9, x7, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x8ffc48d87891c084 # load random value
la x11, scratch # base address
sd x0, 0(x11) # store in memory
li x0, 0x23ce979995f8fdde # load another value into integer register
amoxor.d x23, x0, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x1a86381c6e948f5b # load random value
la x29, scratch # base address
sd x1, 0(x29) # store in memory
li x1, 0x5b203c60eea912ff # load another value into integer register
amoxor.d x22, x1, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x72928177a0854229 # load random value
la x23, scratch # base address
sd x2, 0(x23) # store in memory
li x2, 0x44ee14ca090d908e # load another value into integer register
amoxor.d x20, x2, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x17a1735b853eb1d6 # load random value
la x8, scratch # base address
sd x3, 0(x8) # store in memory
li x3, 0x07e8a8efba35316a # load another value into integer register
amoxor.d x26, x3, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe81a2a4c0e5ebaf1 # load random value
la x29, scratch # base address
sd x4, 0(x29) # store in memory
li x4, 0x93f430d73d1e0d61 # load another value into integer register
amoxor.d x26, x4, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x00b7e4abcc74d1b3 # load random value
la x29, scratch # base address
sd x5, 0(x29) # store in memory
li x5, 0xa89b817facd555fa # load another value into integer register
amoxor.d x20, x5, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7795f9b6653c6ae8 # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0x57890c013071415c # load another value into integer register
amoxor.d x7, x6, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x7, 0x484f688141787595 # load random value
la x6, scratch # base address
sd x7, 0(x6) # store in memory
li x7, 0xe967b9855b5d51f4 # load another value into integer register
amoxor.d x3, x7, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xacd8969084800e43 # load random value
la x30, scratch # base address
sd x8, 0(x30) # store in memory
li x8, 0x6b5e0be308960dbb # load another value into integer register
amoxor.d x29, x8, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x370f49fe02f33b79 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x416ad123d274d34a # load another value into integer register
amoxor.d x17, x9, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xfbbf7910687da869 # load random value
la x18, scratch # base address
sd x10, 0(x18) # store in memory
li x10, 0x9cec4a8243aec484 # load another value into integer register
amoxor.d x25, x10, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x15f119588bd46e7b # load random value
la x8, scratch # base address
sd x11, 0(x8) # store in memory
li x11, 0x98fc9e5d1a44b5d6 # load another value into integer register
amoxor.d x13, x11, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xb72f76beffa18e47 # load random value
la x6, scratch # base address
sd x12, 0(x6) # store in memory
li x12, 0xeb2a1d6a4f0c53b0 # load another value into integer register
amoxor.d x8, x12, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xa6ac626826c0d62c # load random value
la x14, scratch # base address
sd x13, 0(x14) # store in memory
li x13, 0xeb8b8ffcd5df2577 # load another value into integer register
amoxor.d x26, x13, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xa4190970f70f20a4 # load random value
la x1, scratch # base address
sd x14, 0(x1) # store in memory
li x14, 0x52e7efbbfef3188a # load another value into integer register
amoxor.d x15, x14, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x1be2123459c3a4ec # load random value
la x2, scratch # base address
sd x15, 0(x2) # store in memory
li x15, 0x3f302c1d9af8f63e # load another value into integer register
amoxor.d x13, x15, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xaf724bbbff720c60 # load random value
la x12, scratch # base address
sd x16, 0(x12) # store in memory
li x16, 0xae936d987097fa73 # load another value into integer register
amoxor.d x11, x16, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xdbf452096ee57bad # load random value
la x18, scratch # base address
sd x17, 0(x18) # store in memory
li x17, 0x441764f1cd055c13 # load another value into integer register
amoxor.d x29, x17, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xf7a60afe7157f490 # load random value
la x16, scratch # base address
sd x18, 0(x16) # store in memory
li x18, 0x46482a5505823cec # load another value into integer register
amoxor.d x19, x18, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xf4b34feca89f5519 # load random value
la x17, scratch # base address
sd x19, 0(x17) # store in memory
li x19, 0xbda09816a1a47c60 # load another value into integer register
amoxor.d x20, x19, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x8bfa05dae6fad40e # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0x371695cd6baff5be # load another value into integer register
amoxor.d x22, x20, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x81ffff5af9119cb9 # load random value
la x29, scratch # base address
sd x21, 0(x29) # store in memory
li x21, 0x128143c60d22d075 # load another value into integer register
amoxor.d x8, x21, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xf4f97db706360b44 # load random value
la x23, scratch # base address
sd x22, 0(x23) # store in memory
li x22, 0x3293572b347ad8ac # load another value into integer register
amoxor.d x3, x22, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x3968849362993ec4 # load random value
la x6, scratch # base address
sd x23, 0(x6) # store in memory
li x23, 0xb2b61eb727858b30 # load another value into integer register
amoxor.d x7, x23, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x6ab9ac9afc88c56f # load random value
la x22, scratch # base address
sd x24, 0(x22) # store in memory
li x24, 0xcbacf1563ca11943 # load another value into integer register
amoxor.d x1, x24, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x6a90d1df190d1902 # load random value
la x20, scratch # base address
sd x25, 0(x20) # store in memory
li x25, 0x275e87783eea496e # load another value into integer register
amoxor.d x6, x25, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x0238d3c9fce8e86e # load random value
la x10, scratch # base address
sd x26, 0(x10) # store in memory
li x26, 0x1f95d40562288f78 # load another value into integer register
amoxor.d x6, x26, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xca73d2d979e37f2b # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0x73b1cb0705d656d5 # load another value into integer register
amoxor.d x22, x27, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x20a40f4187bd7889 # load random value
la x30, scratch # base address
sd x28, 0(x30) # store in memory
li x28, 0x2546e6b60b7e7fbe # load another value into integer register
amoxor.d x18, x28, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xf32c791d7180b3d9 # load random value
la x8, scratch # base address
sd x29, 0(x8) # store in memory
li x29, 0xeeb761caaa225aaf # load another value into integer register
amoxor.d x9, x29, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x87efae5e664bf65c # load random value
la x16, scratch # base address
sd x30, 0(x16) # store in memory
li x30, 0x48796ae763b0ba99 # load another value into integer register
amoxor.d x26, x30, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xadfd9537faa25a6f # load random value
la x29, scratch # base address
sd x31, 0(x29) # store in memory
li x31, 0x5cbfcf295f36c518 # load another value into integer register
amoxor.d x15, x31, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x1642b4764047cd11 # load random value
la x7, scratch # base address
sd x14, 0(x7) # store in memory
li x14, 0x1b8d4dbc4ec4badc # load another value into integer register
amoxor.d x0, x14, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x645104b243a7206f # load random value
la x5, scratch # base address
sd x15, 0(x5) # store in memory
li x15, 0xfefed9c09553cfff # load another value into integer register
amoxor.d x1, x15, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xc61fdca40ebb4032 # load random value
la x9, scratch # base address
sd x8, 0(x9) # store in memory
li x8, 0xe0ecd8b80aa27193 # load another value into integer register
amoxor.d x2, x8, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x27, 0xcafae085f0ceeceb # load random value
la x24, scratch # base address
sd x27, 0(x24) # store in memory
li x27, 0x44ac031e3e2c6687 # load another value into integer register
amoxor.d x3, x27, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0xa4057b09d830d24f # load random value
la x8, scratch # base address
sd x5, 0(x8) # store in memory
li x5, 0xa9e7e54d6f33a3ef # load another value into integer register
amoxor.d x4, x5, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x22, 0xcc7f671d8593135f # load random value
la x31, scratch # base address
sd x22, 0(x31) # store in memory
li x22, 0xc14a3b9d77a33f67 # load another value into integer register
amoxor.d x5, x22, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x3db1bae62a93200c # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0x6c0166bef4d86966 # load another value into integer register
amoxor.d x6, x7, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x20, 0xce233a3a7db565fd # load random value
la x27, scratch # base address
sd x20, 0(x27) # store in memory
li x20, 0x9b59fab2ecefcc71 # load another value into integer register
amoxor.d x7, x20, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x3, 0xd369562dcf05f970 # load random value
la x25, scratch # base address
sd x3, 0(x25) # store in memory
li x3, 0xc98a1d95d6dc6feb # load another value into integer register
amoxor.d x8, x3, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x7, 0xddc77b3bc60b2371 # load random value
la x15, scratch # base address
sd x7, 0(x15) # store in memory
li x7, 0xd8bba891f4f3a16c # load another value into integer register
amoxor.d x9, x7, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x25, 0x937c1c14d980d2b3 # load random value
la x27, scratch # base address
sd x25, 0(x27) # store in memory
li x25, 0xcbd689a69cda5264 # load another value into integer register
amoxor.d x10, x25, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x194952be091c3959 # load random value
la x1, scratch # base address
sd x3, 0(x1) # store in memory
li x3, 0xa4a1b0b5bc6ea432 # load another value into integer register
amoxor.d x11, x3, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xc113f86700bdafcb # load random value
la x26, scratch # base address
sd x11, 0(x26) # store in memory
li x11, 0x5edbb270a23398bf # load another value into integer register
amoxor.d x12, x11, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x3, 0xab8d5345c9d7979d # load random value
la x18, scratch # base address
sd x3, 0(x18) # store in memory
li x3, 0xbe6afc66bb18f957 # load another value into integer register
amoxor.d x13, x3, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x4e68aeb24fabc14a # load random value
la x2, scratch # base address
sd x29, 0(x2) # store in memory
li x29, 0x0fc622d8e6979f3d # load another value into integer register
amoxor.d x14, x29, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xe441bc0c51a41a68 # load random value
la x14, scratch # base address
sd x11, 0(x14) # store in memory
li x11, 0xe90690eea798c986 # load another value into integer register
amoxor.d x15, x11, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x9ab26fa6610ec5b7 # load random value
la x16, scratch # base address
sd x2, 0(x16) # store in memory
li x2, 0xcea8b96fa92019e4 # load another value into integer register
amoxor.d x16, x2, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xdda043f0edc5a185 # load random value
la x14, scratch # base address
sd x15, 0(x14) # store in memory
li x15, 0xfc6e94e75e537a6c # load another value into integer register
amoxor.d x17, x15, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x31, 0x63121d41f035bf53 # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0xb56629852282b23a # load another value into integer register
amoxor.d x18, x31, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x6, 0xb5dfe3c4c7fc7f40 # load random value
la x20, scratch # base address
sd x6, 0(x20) # store in memory
li x6, 0xaa177def29bad5f5 # load another value into integer register
amoxor.d x19, x6, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x3feb0ccd6252f231 # load random value
la x27, scratch # base address
sd x16, 0(x27) # store in memory
li x16, 0x054fa5a74fdacf4c # load another value into integer register
amoxor.d x20, x16, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x19, 0x05dd19579ec46914 # load random value
la x2, scratch # base address
sd x19, 0(x2) # store in memory
li x19, 0x53f020c81fb7c558 # load another value into integer register
amoxor.d x21, x19, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x2, 0x497d9714d45881b0 # load random value
la x11, scratch # base address
sd x2, 0(x11) # store in memory
li x2, 0x1baa082fd9624dda # load another value into integer register
amoxor.d x22, x2, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x3, 0x5cdd2952541b567a # load random value
la x31, scratch # base address
sd x3, 0(x31) # store in memory
li x3, 0x54e2e292993ad505 # load another value into integer register
amoxor.d x23, x3, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x4d4df789eb0fba80 # load random value
la x28, scratch # base address
sd x13, 0(x28) # store in memory
li x13, 0x64f2cfdd8399ea20 # load another value into integer register
amoxor.d x24, x13, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x20, 0xe6bdf0cd6150b3e2 # load random value
la x5, scratch # base address
sd x20, 0(x5) # store in memory
li x20, 0x4fcf847ba0d01831 # load another value into integer register
amoxor.d x25, x20, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x28, 0x40d9b0aa49561117 # load random value
la x5, scratch # base address
sd x28, 0(x5) # store in memory
li x28, 0x12d9335b4ae874e9 # load another value into integer register
amoxor.d x26, x28, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x25, 0x0990691766488057 # load random value
la x9, scratch # base address
sd x25, 0(x9) # store in memory
li x25, 0x505e2a418a5b7c8c # load another value into integer register
amoxor.d x27, x25, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xc79b23fb12c08f73 # load random value
la x3, scratch # base address
sd x22, 0(x3) # store in memory
li x22, 0xa6fbdbc4b80302c6 # load another value into integer register
amoxor.d x28, x22, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x23, 0x7512a9a9ac384b97 # load random value
la x3, scratch # base address
sd x23, 0(x3) # store in memory
li x23, 0xf37a57a6bcbfd061 # load another value into integer register
amoxor.d x29, x23, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x16, 0xfd2089175f066bf8 # load random value
la x22, scratch # base address
sd x16, 0(x22) # store in memory
li x16, 0x51d7d16137ef46eb # load another value into integer register
amoxor.d x30, x16, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x8, 0xa487e72668cd68cb # load random value
la x13, scratch # base address
sd x8, 0(x13) # store in memory
li x8, 0xe5b3d192e1f2c587 # load another value into integer register
amoxor.d x31, x8, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x5e609fc30557c0f1 # load random value
la x19, scratch # base address
sd x22, 0(x19) # store in memory
li x22, 0x0000000000000000 # load another value into integer register
amoxor.d x31, x22, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0xcfe50a5618b6fb8b # load random value
la x17, scratch # base address
sd x19, 0(x17) # store in memory
li x19, 0x0000000000000001 # load another value into integer register
amoxor.d x9, x19, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x28, 0x5c6b6264abc093ef # load random value
la x9, scratch # base address
sd x28, 0(x9) # store in memory
li x28, 0x0000000000000002 # load another value into integer register
amoxor.d x11, x28, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x16, 0x9267fc591d296f0a # load random value
la x14, scratch # base address
sd x16, 0(x14) # store in memory
li x16, 0x8000000000000000 # load another value into integer register
amoxor.d x23, x16, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x658c4a04431f511b # load random value
la x31, scratch # base address
sd x9, 0(x31) # store in memory
li x9, 0x8000000000000001 # load another value into integer register
amoxor.d x11, x9, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x22, 0x9c01dc331585fbcd # load random value
la x13, scratch # base address
sd x22, 0(x13) # store in memory
li x22, 0x7fffffffffffffff # load another value into integer register
amoxor.d x29, x22, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0x56128832520aa6f0 # load random value
la x9, scratch # base address
sd x7, 0(x9) # store in memory
li x7, 0x7ffffffffffffffe # load another value into integer register
amoxor.d x3, x7, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x8, 0x4f95b62b0192e2b7 # load random value
la x29, scratch # base address
sd x8, 0(x29) # store in memory
li x8, 0xffffffffffffffff # load another value into integer register
amoxor.d x13, x8, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x23, 0x0ab38bee22c723cc # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0xfffffffffffffffe # load another value into integer register
amoxor.d x28, x23, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x19, 0x065de0369e4717c1 # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0x5bbc887763ae86f2 # load another value into integer register
amoxor.d x20, x19, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xb6080b94a0caacbc # load random value
la x24, scratch # base address
sd x28, 0(x24) # store in memory
li x28, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoxor.d x15, x28, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x26, 0xe400e3e8862a4651 # load random value
la x8, scratch # base address
sd x26, 0(x8) # store in memory
li x26, 0x5555555555555555 # load another value into integer register
amoxor.d x9, x26, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x49bb74d634893823 # load random value
la x23, scratch # base address
sd x29, 0(x23) # store in memory
li x29, 0x00000000ffffffff # load another value into integer register
amoxor.d x19, x29, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x5, 0x73a529fd9ec95685 # load random value
la x30, scratch # base address
sd x5, 0(x30) # store in memory
li x5, 0x00000000fffffffe # load another value into integer register
amoxor.d x8, x5, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0xdaf496eb16cef3d1 # load random value
la x21, scratch # base address
sd x15, 0(x21) # store in memory
li x15, 0x0000000100000000 # load another value into integer register
amoxor.d x12, x15, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0x6bc4ce8a439fb73e # load random value
la x10, scratch # base address
sd x14, 0(x10) # store in memory
li x14, 0x0000000100000001 # load another value into integer register
amoxor.d x3, x14, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xba86b813e9924a04 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoxor.d x24, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x79e21f38fbd5dc96 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoxor.d x2, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc8c1017857312481 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoxor.d x2, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfd03226f37f85ba8 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoxor.d x2, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9952605f7a46f98a # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoxor.d x22, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x92cbaf10bd65b6a8 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoxor.d x13, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x542def3b4f7a5f3b # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoxor.d x30, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6215ecf4323c803b # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoxor.d x12, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1252b625349d4eae # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoxor.d x5, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8eb2199a50319fd7 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoxor.d x3, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xcb1903d69d5ff835 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoxor.d x16, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x234d34020dd0b2dd # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoxor.d x5, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7759b88e12678293 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoxor.d x12, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3fc1dcc283f231d8 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoxor.d x18, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x23ed7376994376d0 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoxor.d x23, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6dd9cb18ff79d7fc # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoxor.d x7, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xaedbc9e71013f856 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoxor.d x3, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9476af4b85adfe94 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoxor.d x7, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb248e6fcbbfa6739 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoxor.d x22, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4408f20d80a29287 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoxor.d x16, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5e613ac35d47522e # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoxor.d x3, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xca8d49b66995c59a # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoxor.d x28, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x916104f2f24b1f4e # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoxor.d x1, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x5cfea93c77fff76b # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoxor.d x13, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd49a08072b719e84 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoxor.d x24, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x385e8b4732f51a1f # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoxor.d x8, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x94fd3530586eb926 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoxor.d x19, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd5db02aa0e8004e8 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoxor.d x3, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc6d29bbc839f317b # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoxor.d x16, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3aed4ed39dd8d887 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoxor.d x17, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6083c082fa3b1c42 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoxor.d x20, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x24, 0xd5af725b5b99daf8 # load random value
la x1, scratch # base address
sd x24, 0(x1) # store in memory
li x24, 0x1420ef8374ddf8bd # load another value into integer register
amoxor.d x1, x24, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x24, 0xf71054bf1d3dcbdf # load random value
la x2, scratch # base address
sd x24, 0(x2) # store in memory
li x24, 0x153c090790f358f6 # load another value into integer register
amoxor.d x2, x24, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x38db02f676c24910 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoxor.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0xc5eda117c1803940 # load random value
la x4, scratch # base address
sd x26, 0(x4) # store in memory
li x26, 0x9dcc1e68372c328b # load another value into integer register
amoxor.d x4, x26, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x9c6aa5349bfaf625 # load random value
la x5, scratch # base address
sd x20, 0(x5) # store in memory
li x20, 0x988ee0906e96549a # load another value into integer register
amoxor.d x5, x20, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xdc24279e3faef9ef # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0x4e85c8a783878d30 # load another value into integer register
amoxor.d x6, x9, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xf71b92cd3eeae853 # load random value
la x7, scratch # base address
sd x20, 0(x7) # store in memory
li x20, 0xe7fa3f3cb514de7b # load another value into integer register
amoxor.d x7, x20, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x13, 0x83c72e0ca19b8f4b # load random value
la x8, scratch # base address
sd x13, 0(x8) # store in memory
li x13, 0x4bb266aa47dab009 # load another value into integer register
amoxor.d x8, x13, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x23, 0xa2b597a002aa1c9d # load random value
la x9, scratch # base address
sd x23, 0(x9) # store in memory
li x23, 0x8a9e8e9cf1fac0ad # load another value into integer register
amoxor.d x9, x23, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x16, 0x830fa54a1faac06e # load random value
la x10, scratch # base address
sd x16, 0(x10) # store in memory
li x16, 0x6a9e1af995df583a # load another value into integer register
amoxor.d x10, x16, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x31, 0xa4b4e60241def3bd # load random value
la x11, scratch # base address
sd x31, 0(x11) # store in memory
li x31, 0xb07d7b9d06a8e5a6 # load another value into integer register
amoxor.d x11, x31, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x9, 0x8162250940a7505e # load random value
la x12, scratch # base address
sd x9, 0(x12) # store in memory
li x9, 0x47b1e4014e13956b # load another value into integer register
amoxor.d x12, x9, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x9, 0x4b8f6266749b80a5 # load random value
la x13, scratch # base address
sd x9, 0(x13) # store in memory
li x9, 0x3b63b9c15afe57f7 # load another value into integer register
amoxor.d x13, x9, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x19, 0x13407402c78d5598 # load random value
la x14, scratch # base address
sd x19, 0(x14) # store in memory
li x19, 0x0c86a85bdf70cca4 # load another value into integer register
amoxor.d x14, x19, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x22, 0xf8b5e17e3b15bd93 # load random value
la x15, scratch # base address
sd x22, 0(x15) # store in memory
li x22, 0x7da987d8a5f0b955 # load another value into integer register
amoxor.d x15, x22, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x11a26665d04f709c # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoxor.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x26, 0x6f154686d548742c # load random value
la x17, scratch # base address
sd x26, 0(x17) # store in memory
li x26, 0x244b43b7671a9530 # load another value into integer register
amoxor.d x17, x26, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x8, 0x0297d20763256ffc # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0x04a90394b56abf9e # load another value into integer register
amoxor.d x18, x8, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x30, 0xe3f1b3bb4fdf1fd5 # load random value
la x19, scratch # base address
sd x30, 0(x19) # store in memory
li x30, 0x6e52176e897f3872 # load another value into integer register
amoxor.d x19, x30, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x12, 0x766742eb8d206636 # load random value
la x20, scratch # base address
sd x12, 0(x20) # store in memory
li x12, 0x9036027cd4fb0129 # load another value into integer register
amoxor.d x20, x12, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x9, 0x7a1c18238b4aacaf # load random value
la x21, scratch # base address
sd x9, 0(x21) # store in memory
li x9, 0xf09de17bbf04b796 # load another value into integer register
amoxor.d x21, x9, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x31, 0x98ef105c85682d4b # load random value
la x22, scratch # base address
sd x31, 0(x22) # store in memory
li x31, 0xfe24aff15c313599 # load another value into integer register
amoxor.d x22, x31, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x12, 0xde317df84f0cf5bd # load random value
la x23, scratch # base address
sd x12, 0(x23) # store in memory
li x12, 0x947cafb80d4b75ae # load another value into integer register
amoxor.d x23, x12, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x25, 0xd99d9d1caad1a25a # load random value
la x24, scratch # base address
sd x25, 0(x24) # store in memory
li x25, 0x3cd1d7edfe627f51 # load another value into integer register
amoxor.d x24, x25, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x23, 0xfe926e7e88923e7d # load random value
la x25, scratch # base address
sd x23, 0(x25) # store in memory
li x23, 0xdeb8ddb893824061 # load another value into integer register
amoxor.d x25, x23, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x30, 0x355de525a4a5703b # load random value
la x26, scratch # base address
sd x30, 0(x26) # store in memory
li x30, 0x470e1d64ce4a0f79 # load another value into integer register
amoxor.d x26, x30, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x10, 0x1fb3fe401f6fdbb6 # load random value
la x27, scratch # base address
sd x10, 0(x27) # store in memory
li x10, 0x4be648c5f7392e69 # load another value into integer register
amoxor.d x27, x10, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x17, 0x3714100bf818efdc # load random value
la x28, scratch # base address
sd x17, 0(x28) # store in memory
li x17, 0x3fee6a4611348b19 # load another value into integer register
amoxor.d x28, x17, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x25, 0xeaa1a5116fb2f41e # load random value
la x29, scratch # base address
sd x25, 0(x29) # store in memory
li x25, 0x1d510bd9990724a6 # load another value into integer register
amoxor.d x29, x25, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x13, 0x10fbf7588c2e3035 # load random value
la x30, scratch # base address
sd x13, 0(x30) # store in memory
li x13, 0x3da2e95146ebc4f0 # load another value into integer register
amoxor.d x30, x13, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x15, 0x141a50c7bfc16e04 # load random value
la x31, scratch # base address
sd x15, 0(x31) # store in memory
li x15, 0xb062e291394ff85d # load another value into integer register
amoxor.d x31, x15, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x845c0c1edc27eaeb # load random value
la x22, scratch # base address
sd x0, 0(x22) # store in memory
li x0, 0xf7c7fc1b43dc396c # load another value into integer register
amoxor.d x0, x0, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x5058c8730c1a3aef # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0x279028d0aa1bc27b # load another value into integer register
amoxor.d x1, x1, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x45cf148f8306216f # load random value
la x31, scratch # base address
sd x2, 0(x31) # store in memory
li x2, 0x93cfaa7ce29b6e8a # load another value into integer register
amoxor.d x2, x2, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xbeadf55692829abb # load random value
la x23, scratch # base address
sd x3, 0(x23) # store in memory
li x3, 0x3a8d7bdd0fe1b64d # load another value into integer register
amoxor.d x3, x3, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9cbc1933119326f5 # load random value
la x21, scratch # base address
sd x4, 0(x21) # store in memory
li x4, 0x9e23720825f4168c # load another value into integer register
amoxor.d x4, x4, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb3e74683ceb2ec27 # load random value
la x18, scratch # base address
sd x5, 0(x18) # store in memory
li x5, 0x6501ccbc84bdd49d # load another value into integer register
amoxor.d x5, x5, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb92c6faebabd61b0 # load random value
la x7, scratch # base address
sd x6, 0(x7) # store in memory
li x6, 0x35d20961a4e82f65 # load another value into integer register
amoxor.d x6, x6, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
li x7, 0xa38b0e14a3706deb # load random value
la x16, scratch # base address
sd x7, 0(x16) # store in memory
li x7, 0xeac9d7d8f796cd39 # load another value into integer register
amoxor.d x7, x7, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xcaca3af11b8da1c9 # load random value
la x30, scratch # base address
sd x8, 0(x30) # store in memory
li x8, 0xa00797a0fc2ad283 # load another value into integer register
amoxor.d x8, x8, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x8ec7fd7222542ebb # load random value
la x23, scratch # base address
sd x9, 0(x23) # store in memory
li x9, 0x3befeb92c2f17314 # load another value into integer register
amoxor.d x9, x9, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x63f251ad8cf79f40 # load random value
la x31, scratch # base address
sd x10, 0(x31) # store in memory
li x10, 0x28f49c7b3a1f313d # load another value into integer register
amoxor.d x10, x10, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xe6c302613dc779ee # load random value
la x24, scratch # base address
sd x11, 0(x24) # store in memory
li x11, 0x4bcd442f56bbb6a7 # load another value into integer register
amoxor.d x11, x11, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x21d507e61b66e8a9 # load random value
la x10, scratch # base address
sd x12, 0(x10) # store in memory
li x12, 0x78c50b3994d5e5af # load another value into integer register
amoxor.d x12, x12, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x5af8d4072a9f96e9 # load random value
la x25, scratch # base address
sd x13, 0(x25) # store in memory
li x13, 0xccb2371c8c5bfeab # load another value into integer register
amoxor.d x13, x13, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x13b6f07c8079f7e3 # load random value
la x2, scratch # base address
sd x14, 0(x2) # store in memory
li x14, 0xfec7624f18c8fa35 # load another value into integer register
amoxor.d x14, x14, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x6b781254774fa40c # load random value
la x26, scratch # base address
sd x15, 0(x26) # store in memory
li x15, 0xfcc733445f00a849 # load another value into integer register
amoxor.d x15, x15, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xe6ac47904b586f54 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoxor.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x2cc2d20d4ac62acb # load random value
la x11, scratch # base address
sd x17, 0(x11) # store in memory
li x17, 0x4da33fb5967e772d # load another value into integer register
amoxor.d x17, x17, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x967c0bf78f5fd9ec # load random value
la x21, scratch # base address
sd x18, 0(x21) # store in memory
li x18, 0xa54d122389c43fac # load another value into integer register
amoxor.d x18, x18, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x41103d84576396af # load random value
la x23, scratch # base address
sd x19, 0(x23) # store in memory
li x19, 0xb4d122d72ac8e4c1 # load another value into integer register
amoxor.d x19, x19, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xa0ad928710cbf342 # load random value
la x16, scratch # base address
sd x20, 0(x16) # store in memory
li x20, 0xb0ba881a34ad93d4 # load another value into integer register
amoxor.d x20, x20, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xc6ac8624d30a7c63 # load random value
la x20, scratch # base address
sd x21, 0(x20) # store in memory
li x21, 0x4fd6d21e9be0445d # load another value into integer register
amoxor.d x21, x21, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x95829ff685c1875f # load random value
la x18, scratch # base address
sd x22, 0(x18) # store in memory
li x22, 0x85182f8ae435c96b # load another value into integer register
amoxor.d x22, x22, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x362f89b440aa99d8 # load random value
la x20, scratch # base address
sd x23, 0(x20) # store in memory
li x23, 0xfe5cf951c58cd746 # load another value into integer register
amoxor.d x23, x23, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x78ae352f74c0cba8 # load random value
la x17, scratch # base address
sd x24, 0(x17) # store in memory
li x24, 0x1c434f56eb46e8dc # load another value into integer register
amoxor.d x24, x24, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xc646cf8f342672e6 # load random value
la x3, scratch # base address
sd x25, 0(x3) # store in memory
li x25, 0x9f4e0e681a0a8d87 # load another value into integer register
amoxor.d x25, x25, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xa3563bffea558af6 # load random value
la x13, scratch # base address
sd x26, 0(x13) # store in memory
li x26, 0x4629eea126f8c36e # load another value into integer register
amoxor.d x26, x26, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x3dccf886ce2b7ff2 # load random value
la x8, scratch # base address
sd x27, 0(x8) # store in memory
li x27, 0x5bbc2949830d762e # load another value into integer register
amoxor.d x27, x27, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xd69b49af28e543dc # load random value
la x22, scratch # base address
sd x28, 0(x22) # store in memory
li x28, 0xcb4f88e0f085b4e5 # load another value into integer register
amoxor.d x28, x28, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x9c51e3dd239e6630 # load random value
la x24, scratch # base address
sd x29, 0(x24) # store in memory
li x29, 0xb46f3f68c78281a1 # load another value into integer register
amoxor.d x29, x29, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xac7ed72c01417568 # load random value
la x1, scratch # base address
sd x30, 0(x1) # store in memory
li x30, 0xc7bf9f07248ef082 # load another value into integer register
amoxor.d x30, x30, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xce91c7ca140e0f7e # load random value
la x26, scratch # base address
sd x31, 0(x26) # store in memory
li x31, 0xe313f6ca120045cf # load another value into integer register
amoxor.d x31, x31, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3037f8cba927da60 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoxor.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1ca1ea82086de2c8 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoxor.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x86dee85e7bd9bf9c # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoxor.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x72023fd79a7458c5 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoxor.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x10cade3257a547b9 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoxor.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb236ff1f62d6af14 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoxor.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x41b24b61fe118b43 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoxor.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbed9536179db97ef # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoxor.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5fdb5dbb02f76f71 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoxor.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xddfbda233d714b8b # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoxor.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xcb28ac51aa42b945 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoxor.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe1e021f98e0dff1d # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoxor.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1534bd6b156b5422 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoxor.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6304e1538e3f94dd # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoxor.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe48c28097817ebc1 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoxor.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xeed8bbc8f39311bf # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoxor.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7b25b3eb31b6b2e7 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoxor.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x26a6de9e814f23d2 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoxor.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe51a099020a1b71b # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoxor.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x05548cc9b1d1681d # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoxor.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x7048dca02a7759a9 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoxor.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x341fb7410045c834 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoxor.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4618f83422c59be4 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoxor.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa4c82347b18b6a15 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoxor.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa6ca6aaa391e592b # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoxor.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x63ccdc9ff957a4e4 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoxor.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xed09c83aa0b7ef01 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoxor.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5910cf75cd297063 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoxor.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf16cef359aba2cdd # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoxor.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd87480b76d950c60 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoxor.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x51f734e88cb8ef9f # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoxor.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x27, scratch
add x1, x5, x18 # perform first operation
amoxor.d x24, x19, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
add x17, x6, x31 # perform first operation
amoxor.d x8, x3, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
add x24, x19, x13 # perform first operation
amoxor.d x29, x30, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
add x25, x25, x0 # perform first operation
amoxor.d x25, x25, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x2, scratch
add x2, x2, x0 # perform first operation
amoxor.d x2, x10, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
add x21, x21, x0 # perform first operation
amoxor.d x21, x5, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
add x25, x31, x11 # perform first operation
amoxor.d x25, x1, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x21, scratch
add x3, x15, x19 # perform first operation
amoxor.d x3, x17, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x28, scratch
add x27, x10, x22 # perform first operation
amoxor.d x27, x30, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x9, scratch
add x8, x16, x20 # perform first operation
amoxor.d x16, x30, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x13, scratch
add x24, x12, x19 # perform first operation
amoxor.d x19, x16, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x8, scratch
add x19, x28, x1 # perform first operation
amoxor.d x5, x18, (x8) # perform second (triggering) operation

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
