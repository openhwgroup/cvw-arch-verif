///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amomin.d.S
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
li x12, 0x68df41054a52db0f # load random value
la x1, scratch # base address
sd x12, 0(x1) # store in memory
li x12, 0x850ce19ba90840a4 # load another value into integer register
amomin.d x24, x12, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x20, 0xc764cb436c583b7b # load random value
la x2, scratch # base address
sd x20, 0(x2) # store in memory
li x20, 0xdffb0e7b76dcd9d9 # load another value into integer register
amomin.d x8, x20, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x18, 0xa4d635f9c11d7d88 # load random value
la x3, scratch # base address
sd x18, 0(x3) # store in memory
li x18, 0xcde3af2a4ee5c2e8 # load another value into integer register
amomin.d x24, x18, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0xc66e58417f29fd9d # load random value
la x4, scratch # base address
sd x3, 0(x4) # store in memory
li x3, 0xb763630a88fca139 # load another value into integer register
amomin.d x24, x3, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x3f74419b866dafa9 # load random value
la x5, scratch # base address
sd x21, 0(x5) # store in memory
li x21, 0x3eaf3eacef246625 # load another value into integer register
amomin.d x23, x21, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x400e50f2e9604139 # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0x1887cd86412fc2ef # load another value into integer register
amomin.d x16, x9, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x18da7605649638b7 # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0x8a9cde75ad2e4365 # load another value into integer register
amomin.d x23, x27, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0xb224fc6ec28eb7fb # load random value
la x8, scratch # base address
sd x16, 0(x8) # store in memory
li x16, 0x5a7c9b21861819fd # load another value into integer register
amomin.d x18, x16, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x26, 0xe8eed4135457da0e # load random value
la x9, scratch # base address
sd x26, 0(x9) # store in memory
li x26, 0x3b3d1b33bb2ae87d # load another value into integer register
amomin.d x24, x26, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0xe414ba4097309cc5 # load random value
la x10, scratch # base address
sd x7, 0(x10) # store in memory
li x7, 0x2c2cca486fcde513 # load another value into integer register
amomin.d x25, x7, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x777f39796f363b8a # load random value
la x11, scratch # base address
sd x31, 0(x11) # store in memory
li x31, 0x7efe3b99bd0c0078 # load another value into integer register
amomin.d x5, x31, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0x253fd104eeb8a9c4 # load random value
la x12, scratch # base address
sd x24, 0(x12) # store in memory
li x24, 0xdd739319328958a8 # load another value into integer register
amomin.d x8, x24, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0xa88fdc5341f020b1 # load random value
la x13, scratch # base address
sd x14, 0(x13) # store in memory
li x14, 0xbedf15daf8770007 # load another value into integer register
amomin.d x28, x14, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0x089427f0c1882d70 # load random value
la x14, scratch # base address
sd x27, 0(x14) # store in memory
li x27, 0x4213873b8a3cf551 # load another value into integer register
amomin.d x19, x27, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x20, 0x3d648d456752f360 # load random value
la x15, scratch # base address
sd x20, 0(x15) # store in memory
li x20, 0x119be571c2760785 # load another value into integer register
amomin.d x25, x20, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x25, 0x106735849804bc9d # load random value
la x16, scratch # base address
sd x25, 0(x16) # store in memory
li x25, 0x6691d42c22a75082 # load another value into integer register
amomin.d x13, x25, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x12, 0xe062c4c2f35fd13d # load random value
la x17, scratch # base address
sd x12, 0(x17) # store in memory
li x12, 0x265e52cd135e8996 # load another value into integer register
amomin.d x15, x12, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x21, 0x63eb43e072a8476d # load random value
la x18, scratch # base address
sd x21, 0(x18) # store in memory
li x21, 0x5125cce92ce0e501 # load another value into integer register
amomin.d x1, x21, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0x181147a84a6f4fa6 # load random value
la x19, scratch # base address
sd x12, 0(x19) # store in memory
li x12, 0x7cdc7bc99f2864c0 # load another value into integer register
amomin.d x11, x12, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0xdeaf1726b750b96c # load random value
la x20, scratch # base address
sd x15, 0(x20) # store in memory
li x15, 0xcda7ff14d72f6a56 # load another value into integer register
amomin.d x11, x15, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0x94f4a20d6d4a556a # load random value
la x21, scratch # base address
sd x31, 0(x21) # store in memory
li x31, 0xe7af9db1be46267a # load another value into integer register
amomin.d x29, x31, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0x2629da8247cea3a2 # load random value
la x22, scratch # base address
sd x3, 0(x22) # store in memory
li x3, 0x2be58d4668c1e853 # load another value into integer register
amomin.d x6, x3, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x12, 0x531c36c8c7dfa954 # load random value
la x23, scratch # base address
sd x12, 0(x23) # store in memory
li x12, 0xd3b0828d971c3305 # load another value into integer register
amomin.d x3, x12, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0x05c88864f8c79608 # load random value
la x24, scratch # base address
sd x9, 0(x24) # store in memory
li x9, 0x465afb5f8f97a8b8 # load another value into integer register
amomin.d x17, x9, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x14, 0xbf177ed3fe61775d # load random value
la x25, scratch # base address
sd x14, 0(x25) # store in memory
li x14, 0x543ff93aaa0cb498 # load another value into integer register
amomin.d x29, x14, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x8be3f93eb70e0dc7 # load random value
la x26, scratch # base address
sd x1, 0(x26) # store in memory
li x1, 0x9db9dcfd901823c3 # load another value into integer register
amomin.d x19, x1, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x10, 0xdc05645e9d4306d6 # load random value
la x27, scratch # base address
sd x10, 0(x27) # store in memory
li x10, 0x4fd0275bb37963ec # load another value into integer register
amomin.d x5, x10, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0x95a79a734b793976 # load random value
la x28, scratch # base address
sd x12, 0(x28) # store in memory
li x12, 0xb20a26c575bd9153 # load another value into integer register
amomin.d x22, x12, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x9, 0x28cf8f7802943ca2 # load random value
la x29, scratch # base address
sd x9, 0(x29) # store in memory
li x9, 0xb618349c01330b81 # load another value into integer register
amomin.d x7, x9, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x24, 0xbd87e9261040b3a1 # load random value
la x30, scratch # base address
sd x24, 0(x30) # store in memory
li x24, 0x574b2d9918d9b0c8 # load another value into integer register
amomin.d x14, x24, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0x500b626b55db190e # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0xda08ba953cf61a82 # load another value into integer register
amomin.d x22, x12, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xc6aed330a0149eb1 # load random value
la x25, scratch # base address
sd x0, 0(x25) # store in memory
li x0, 0x34e426a387c5a2e3 # load another value into integer register
amomin.d x9, x0, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xba95f5fd6c31ba63 # load random value
la x25, scratch # base address
sd x1, 0(x25) # store in memory
li x1, 0x92042e884c6c7a21 # load another value into integer register
amomin.d x16, x1, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x38d4189e5b54e90c # load random value
la x8, scratch # base address
sd x2, 0(x8) # store in memory
li x2, 0x58adfba51c1fea33 # load another value into integer register
amomin.d x17, x2, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xa70064801dcfb605 # load random value
la x17, scratch # base address
sd x3, 0(x17) # store in memory
li x3, 0x76b8f50419fc9dc3 # load another value into integer register
amomin.d x12, x3, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xeee4f50b7366418d # load random value
la x14, scratch # base address
sd x4, 0(x14) # store in memory
li x4, 0x4fa4ce5b0a5f79e4 # load another value into integer register
amomin.d x5, x4, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x5, 0x2a699c4b0c054b59 # load random value
la x16, scratch # base address
sd x5, 0(x16) # store in memory
li x5, 0xde14f44d3d4a1bff # load another value into integer register
amomin.d x9, x5, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x14351089acc7f40e # load random value
la x21, scratch # base address
sd x6, 0(x21) # store in memory
li x6, 0x577bc5dccb9f0337 # load another value into integer register
amomin.d x9, x6, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7a6da6006bef843c # load random value
la x28, scratch # base address
sd x7, 0(x28) # store in memory
li x7, 0x23d33cc3703a4d6d # load another value into integer register
amomin.d x20, x7, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x45f8ce6b542f1b5c # load random value
la x11, scratch # base address
sd x8, 0(x11) # store in memory
li x8, 0x7e25f266b01242a0 # load another value into integer register
amomin.d x22, x8, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xb11f86709d738a93 # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0x046cdb05847680b7 # load another value into integer register
amomin.d x3, x9, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x8f2a19492be7b373 # load random value
la x24, scratch # base address
sd x10, 0(x24) # store in memory
li x10, 0x253b4b9ad35183f1 # load another value into integer register
amomin.d x13, x10, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xc854cbade1eed9a1 # load random value
la x24, scratch # base address
sd x11, 0(x24) # store in memory
li x11, 0xb3ffe093a4dca33c # load another value into integer register
amomin.d x29, x11, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1ef60b44d7b3a838 # load random value
la x16, scratch # base address
sd x12, 0(x16) # store in memory
li x12, 0x0505aaf8b13ca04e # load another value into integer register
amomin.d x27, x12, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xc575ec40f5f744f1 # load random value
la x18, scratch # base address
sd x13, 0(x18) # store in memory
li x13, 0xe139dd43aa1c0f83 # load another value into integer register
amomin.d x22, x13, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xe7589173d7bfe05f # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0x756445406ed96604 # load another value into integer register
amomin.d x1, x14, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xdbc5ef5146dca2f5 # load random value
la x16, scratch # base address
sd x15, 0(x16) # store in memory
li x15, 0x4c15f5f5aa8524a0 # load another value into integer register
amomin.d x23, x15, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xcfc5e4ba37549e79 # load random value
la x15, scratch # base address
sd x16, 0(x15) # store in memory
li x16, 0xebd7997994b8f0b0 # load another value into integer register
amomin.d x2, x16, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x720aa88772e7f762 # load random value
la x12, scratch # base address
sd x17, 0(x12) # store in memory
li x17, 0x018c30c4fa9115c2 # load another value into integer register
amomin.d x24, x17, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x2e388f0c213830c5 # load random value
la x2, scratch # base address
sd x18, 0(x2) # store in memory
li x18, 0x74f7296dfffe38e5 # load another value into integer register
amomin.d x19, x18, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xf93a82c4d0032280 # load random value
la x24, scratch # base address
sd x19, 0(x24) # store in memory
li x19, 0x8ae0d052cdf9deb0 # load another value into integer register
amomin.d x10, x19, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xcb6bd9da02bbef1e # load random value
la x19, scratch # base address
sd x20, 0(x19) # store in memory
li x20, 0xa6b7652e2e7cd45d # load another value into integer register
amomin.d x23, x20, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x224fbd107c010eaa # load random value
la x8, scratch # base address
sd x21, 0(x8) # store in memory
li x21, 0xbd10ce1e283dfe26 # load another value into integer register
amomin.d x12, x21, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x00f5122a7c69b00f # load random value
la x16, scratch # base address
sd x22, 0(x16) # store in memory
li x22, 0x98efe792706da010 # load another value into integer register
amomin.d x17, x22, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x1bbd73fb189fd898 # load random value
la x21, scratch # base address
sd x23, 0(x21) # store in memory
li x23, 0x2f778392bebd588f # load another value into integer register
amomin.d x19, x23, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x15cd9370fa64174e # load random value
la x18, scratch # base address
sd x24, 0(x18) # store in memory
li x24, 0x0a287abc7a449a9d # load another value into integer register
amomin.d x6, x24, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x085daede809266d2 # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0x0cb3fb7528b13cfe # load another value into integer register
amomin.d x24, x25, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x8f2c286649ea5d49 # load random value
la x16, scratch # base address
sd x26, 0(x16) # store in memory
li x26, 0x15aeb178cc99b35b # load another value into integer register
amomin.d x23, x26, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x14f9d13c1df50371 # load random value
la x24, scratch # base address
sd x27, 0(x24) # store in memory
li x27, 0x2fed7de9c1db982f # load another value into integer register
amomin.d x11, x27, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x836a019e388c0f41 # load random value
la x22, scratch # base address
sd x28, 0(x22) # store in memory
li x28, 0x8357e7f5dddffbc1 # load another value into integer register
amomin.d x6, x28, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x8124ba95a84c64ad # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0xccad88bb4ece0e98 # load another value into integer register
amomin.d x11, x29, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x7b6d2faade6cbb7b # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0x5a71ad58b2eacf4e # load another value into integer register
amomin.d x7, x30, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xc45134a4c8a4f7e7 # load random value
la x9, scratch # base address
sd x31, 0(x9) # store in memory
li x31, 0x2cca548b6cd1a4b6 # load another value into integer register
amomin.d x26, x31, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x12, 0x0f7e58a91d1c2034 # load random value
la x26, scratch # base address
sd x12, 0(x26) # store in memory
li x12, 0x9465ede3222b35d2 # load another value into integer register
amomin.d x0, x12, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x329c141b610d876a # load random value
la x10, scratch # base address
sd x20, 0(x10) # store in memory
li x20, 0x479af7c8bf34c0a4 # load another value into integer register
amomin.d x1, x20, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x18, 0x3772ded24d86efbf # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0xf959c434a4fe0895 # load another value into integer register
amomin.d x2, x18, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x30, 0xb80c12bff6de9590 # load random value
la x8, scratch # base address
sd x30, 0(x8) # store in memory
li x30, 0x36a94a699b12b4ba # load another value into integer register
amomin.d x3, x30, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x07e0b6862db82a99 # load random value
la x9, scratch # base address
sd x19, 0(x9) # store in memory
li x19, 0x9f0ce4c4d49077ec # load another value into integer register
amomin.d x4, x19, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x7d4fdcb86a64ba8a # load random value
la x4, scratch # base address
sd x27, 0(x4) # store in memory
li x27, 0x6a3efedf585ee2ed # load another value into integer register
amomin.d x5, x27, (x4) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x9fdbf49b09500427 # load random value
la x29, scratch # base address
sd x21, 0(x29) # store in memory
li x21, 0x4c93ca14add69565 # load another value into integer register
amomin.d x6, x21, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xb2162b7de385c3b8 # load random value
la x2, scratch # base address
sd x23, 0(x2) # store in memory
li x23, 0xa5cc5f524f55d0d2 # load another value into integer register
amomin.d x7, x23, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x14, 0xd2ec348aad42e64f # load random value
la x9, scratch # base address
sd x14, 0(x9) # store in memory
li x14, 0xf57b3a716120bfb8 # load another value into integer register
amomin.d x8, x14, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x20, 0x49c32459e043b8d7 # load random value
la x19, scratch # base address
sd x20, 0(x19) # store in memory
li x20, 0xe269964048d508bd # load another value into integer register
amomin.d x9, x20, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x29, 0xcc407378ce460dc4 # load random value
la x31, scratch # base address
sd x29, 0(x31) # store in memory
li x29, 0xa4b9b4ffa84a97ab # load another value into integer register
amomin.d x10, x29, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x278949c96fd0c390 # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0xf44aa0e219a30e60 # load another value into integer register
amomin.d x11, x11, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x3083c946b9b7885b # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0xc8b61e80db995216 # load another value into integer register
amomin.d x12, x6, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x12, 0x17a4236c3559ea4e # load random value
la x21, scratch # base address
sd x12, 0(x21) # store in memory
li x12, 0x3e2fec7eb5556193 # load another value into integer register
amomin.d x13, x12, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x201213b7241ca0ea # load random value
la x2, scratch # base address
sd x15, 0(x2) # store in memory
li x15, 0x8f3ee37efe80e6e3 # load another value into integer register
amomin.d x14, x15, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x5, 0xd03dfb6d44097864 # load random value
la x31, scratch # base address
sd x5, 0(x31) # store in memory
li x5, 0xfdfdaf550b2f312f # load another value into integer register
amomin.d x15, x5, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x7d78590a4347415d # load random value
la x18, scratch # base address
sd x2, 0(x18) # store in memory
li x2, 0xcbe41f19a0ee5c59 # load another value into integer register
amomin.d x16, x2, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xf6e618724d117fd8 # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0x336097f9f8280401 # load another value into integer register
amomin.d x17, x15, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x1, 0xe18fa1f763dcc947 # load random value
la x29, scratch # base address
sd x1, 0(x29) # store in memory
li x1, 0xe1929569be693f1f # load another value into integer register
amomin.d x18, x1, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x16, 0xf9161dea1f9934a3 # load random value
la x13, scratch # base address
sd x16, 0(x13) # store in memory
li x16, 0x95005f80eeb9354c # load another value into integer register
amomin.d x19, x16, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x5ff4dd294ceddd3c # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0xd907932ed5da5dc1 # load another value into integer register
amomin.d x20, x12, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x1, 0x77219a1b9a853b72 # load random value
la x15, scratch # base address
sd x1, 0(x15) # store in memory
li x1, 0x5740f923b868db77 # load another value into integer register
amomin.d x21, x1, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x12, 0x012437cc804c37bf # load random value
la x9, scratch # base address
sd x12, 0(x9) # store in memory
li x12, 0x617524f50625f616 # load another value into integer register
amomin.d x22, x12, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x19a1e05f3727fe34 # load random value
la x2, scratch # base address
sd x9, 0(x2) # store in memory
li x9, 0xb00b84983cee6178 # load another value into integer register
amomin.d x23, x9, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x20, 0x3e6df205561b338e # load random value
la x1, scratch # base address
sd x20, 0(x1) # store in memory
li x20, 0x7d91b28d2bd3a6f0 # load another value into integer register
amomin.d x24, x20, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x22, 0xc81c83bf3bd5bd4c # load random value
la x6, scratch # base address
sd x22, 0(x6) # store in memory
li x22, 0xa375dab342d3772e # load another value into integer register
amomin.d x25, x22, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x25, 0xffa4b4b7d46e5172 # load random value
la x1, scratch # base address
sd x25, 0(x1) # store in memory
li x25, 0x6784567314d715fc # load another value into integer register
amomin.d x26, x25, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x445b20223863a266 # load random value
la x9, scratch # base address
sd x1, 0(x9) # store in memory
li x1, 0x73f98cfbcc371e8f # load another value into integer register
amomin.d x27, x1, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x25, 0x631e73bf1d70412b # load random value
la x27, scratch # base address
sd x25, 0(x27) # store in memory
li x25, 0x85cb99c1da5a2c5b # load another value into integer register
amomin.d x28, x25, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x11, 0x52b598e1c567f339 # load random value
la x30, scratch # base address
sd x11, 0(x30) # store in memory
li x11, 0x03630e5bf80ae593 # load another value into integer register
amomin.d x29, x11, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x2e29c5969fcf90dd # load random value
la x1, scratch # base address
sd x5, 0(x1) # store in memory
li x5, 0x9a328ef8ba14dc30 # load another value into integer register
amomin.d x30, x5, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x14, 0xa3ed1b655eb3eed7 # load random value
la x16, scratch # base address
sd x14, 0(x16) # store in memory
li x14, 0x0831544169ef0bd3 # load another value into integer register
amomin.d x31, x14, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0x68a6d797cf76e53a # load random value
la x1, scratch # base address
sd x29, 0(x1) # store in memory
li x29, 0x0000000000000000 # load another value into integer register
amomin.d x26, x29, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x23, 0x06e40f2819723616 # load random value
la x5, scratch # base address
sd x23, 0(x5) # store in memory
li x23, 0x0000000000000001 # load another value into integer register
amomin.d x13, x23, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x8746812a08408b34 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x0000000000000002 # load another value into integer register
amomin.d x20, x9, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x23, 0xea6a0d00517df4e1 # load random value
la x28, scratch # base address
sd x23, 0(x28) # store in memory
li x23, 0x8000000000000000 # load another value into integer register
amomin.d x5, x23, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x2, 0x89a9a6f18e508d32 # load random value
la x24, scratch # base address
sd x2, 0(x24) # store in memory
li x2, 0x8000000000000001 # load another value into integer register
amomin.d x30, x2, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x7, 0xdd19a56caa2eb4a2 # load random value
la x31, scratch # base address
sd x7, 0(x31) # store in memory
li x7, 0x7fffffffffffffff # load another value into integer register
amomin.d x18, x7, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x6, 0x7391d7cdb92f35af # load random value
la x26, scratch # base address
sd x6, 0(x26) # store in memory
li x6, 0x7ffffffffffffffe # load another value into integer register
amomin.d x30, x6, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x5, 0x0c19788995580af3 # load random value
la x1, scratch # base address
sd x5, 0(x1) # store in memory
li x5, 0xffffffffffffffff # load another value into integer register
amomin.d x20, x5, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x18, 0x40ae33b45f1c0f36 # load random value
la x13, scratch # base address
sd x18, 0(x13) # store in memory
li x18, 0xfffffffffffffffe # load another value into integer register
amomin.d x25, x18, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x29, 0x4fcfd83296053d7a # load random value
la x2, scratch # base address
sd x29, 0(x2) # store in memory
li x29, 0x5bbc887763ae86f2 # load another value into integer register
amomin.d x16, x29, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0x4a4b69d2a649713f # load random value
la x10, scratch # base address
sd x7, 0(x10) # store in memory
li x7, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amomin.d x8, x7, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x21, 0x7496ac8b57b61126 # load random value
la x15, scratch # base address
sd x21, 0(x15) # store in memory
li x21, 0x5555555555555555 # load another value into integer register
amomin.d x10, x21, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0x41b9781e594b4323 # load random value
la x23, scratch # base address
sd x10, 0(x23) # store in memory
li x10, 0x00000000ffffffff # load another value into integer register
amomin.d x15, x10, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0x5fcee1540e07e3a1 # load random value
la x29, scratch # base address
sd x25, 0(x29) # store in memory
li x25, 0x00000000fffffffe # load another value into integer register
amomin.d x8, x25, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x30, 0xa4addfe471bafbd8 # load random value
la x23, scratch # base address
sd x30, 0(x23) # store in memory
li x30, 0x0000000100000000 # load another value into integer register
amomin.d x7, x30, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x8, 0x7caf4bafbef4548c # load random value
la x14, scratch # base address
sd x8, 0(x14) # store in memory
li x8, 0x0000000100000001 # load another value into integer register
amomin.d x17, x8, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9c45f5aacb6cf9ff # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomin.d x30, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe4ab9e6c7240376d # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomin.d x1, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x510408536be3a0b2 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomin.d x8, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe3448c2fed9be1ae # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomin.d x28, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x611373ca9ae63c73 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomin.d x16, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x006c9ca543ffce44 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomin.d x16, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7f9dad387732626a # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomin.d x12, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xdbe3ea4eaf251ac1 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomin.d x20, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9454781293bd2cf9 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomin.d x20, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x02109d40a4329f1e # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomin.d x7, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbbf2ccca1f46739b # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomin.d x28, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x2bfca5fce31ec9a4 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomin.d x2, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc5ac17b3ab224387 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomin.d x3, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x195f0cd95b274b3a # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomin.d x15, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6bc23c5fe5a47cf4 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomin.d x6, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x7f3fa8020069e61f # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomin.d x12, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe156d3d04e47364d # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomin.d x17, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1fea5c24588b4315 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomin.d x17, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x76831ed81735cd2b # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomin.d x1, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe9527435fcadbdde # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomin.d x27, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb9e8ffc07915784d # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomin.d x17, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa25c635d75a2049e # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomin.d x30, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe3eb707046dbac67 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomin.d x5, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xa3cb896e8799e7d8 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomin.d x25, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x3d7878d8f4dd5b4f # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomin.d x21, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xcd98103928df3d0a # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomin.d x22, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xce3443fd2cdd1804 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomin.d x21, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x27c24f26b27f6d33 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomin.d x10, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xe7c52d36ccc2443c # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomin.d x1, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x1bba670f9ba0520e # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomin.d x5, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc11d2b058d685763 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomin.d x28, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x23, 0x2f9c8327674c8d31 # load random value
la x1, scratch # base address
sd x23, 0(x1) # store in memory
li x23, 0x1b70451c25428cd1 # load another value into integer register
amomin.d x1, x23, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x11, 0x5c3443fe7f47ba4e # load random value
la x2, scratch # base address
sd x11, 0(x2) # store in memory
li x11, 0xcb6898dafad5b1fe # load another value into integer register
amomin.d x2, x11, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x11, 0x839e544d8de0f957 # load random value
la x3, scratch # base address
sd x11, 0(x3) # store in memory
li x11, 0xb166b75f0caa02c0 # load another value into integer register
amomin.d x3, x11, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x81385fe2ca8d23ab # load random value
la x4, scratch # base address
sd x24, 0(x4) # store in memory
li x24, 0x433add53b6ee2351 # load another value into integer register
amomin.d x4, x24, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x5f887b40203a83a1 # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0x6723df09cc0729c0 # load another value into integer register
amomin.d x5, x18, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x4d298fbb0e67ce45 # load random value
la x6, scratch # base address
sd x27, 0(x6) # store in memory
li x27, 0xc36d8be85a31f9e2 # load another value into integer register
amomin.d x6, x27, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x9d3b7109b579d372 # load random value
la x7, scratch # base address
sd x2, 0(x7) # store in memory
li x2, 0x5a54200719f489b4 # load another value into integer register
amomin.d x7, x2, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x25, 0xe9edee6bd5d1cabe # load random value
la x8, scratch # base address
sd x25, 0(x8) # store in memory
li x25, 0x56be0f18b651bc5d # load another value into integer register
amomin.d x8, x25, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x21, 0x7528326fb27d9aac # load random value
la x9, scratch # base address
sd x21, 0(x9) # store in memory
li x21, 0x4421229289eaf740 # load another value into integer register
amomin.d x9, x21, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x28, 0xf43317d1f27d3280 # load random value
la x10, scratch # base address
sd x28, 0(x10) # store in memory
li x28, 0x381cdf5b1cd15889 # load another value into integer register
amomin.d x10, x28, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x30, 0x8c73e6108136a988 # load random value
la x11, scratch # base address
sd x30, 0(x11) # store in memory
li x30, 0xee2b0c555e00a2a7 # load another value into integer register
amomin.d x11, x30, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x28, 0x380bd9011c7e30e7 # load random value
la x12, scratch # base address
sd x28, 0(x12) # store in memory
li x28, 0x89d8c8fcc87d489f # load another value into integer register
amomin.d x12, x28, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x17, 0x68007446680a0d3f # load random value
la x13, scratch # base address
sd x17, 0(x13) # store in memory
li x17, 0x8d9d6d48cd5ffa50 # load another value into integer register
amomin.d x13, x17, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x20, 0x50c4aedd8b76129f # load random value
la x14, scratch # base address
sd x20, 0(x14) # store in memory
li x20, 0xdad50dccaf504ac1 # load another value into integer register
amomin.d x14, x20, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x17, 0x2bdfb2f6d2fd4b7f # load random value
la x15, scratch # base address
sd x17, 0(x15) # store in memory
li x17, 0x89cde9d5c031f7ec # load another value into integer register
amomin.d x15, x17, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x9, 0x7626f304daccc90e # load random value
la x16, scratch # base address
sd x9, 0(x16) # store in memory
li x9, 0x126299a322c3aa30 # load another value into integer register
amomin.d x16, x9, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x25, 0x0b135a39ae32ed3e # load random value
la x17, scratch # base address
sd x25, 0(x17) # store in memory
li x25, 0x94e0c55a07100295 # load another value into integer register
amomin.d x17, x25, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x11, 0x7aeb66182bf4ea6f # load random value
la x18, scratch # base address
sd x11, 0(x18) # store in memory
li x11, 0x86d93c12d95d85cb # load another value into integer register
amomin.d x18, x11, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x10, 0xd41bedbcbb57c10f # load random value
la x19, scratch # base address
sd x10, 0(x19) # store in memory
li x10, 0x730df6facf1a2d4c # load another value into integer register
amomin.d x19, x10, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x22, 0x2adc6dc6100efc65 # load random value
la x20, scratch # base address
sd x22, 0(x20) # store in memory
li x22, 0x4355e978b8c7d77c # load another value into integer register
amomin.d x20, x22, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x5, 0x340b1e632ec4b942 # load random value
la x21, scratch # base address
sd x5, 0(x21) # store in memory
li x5, 0xb610a4c8c49f2e0d # load another value into integer register
amomin.d x21, x5, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x27, 0xb9abd26f1cd06437 # load random value
la x22, scratch # base address
sd x27, 0(x22) # store in memory
li x27, 0xee822f43532e05fc # load another value into integer register
amomin.d x22, x27, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x27, 0xb43d84a2729515e4 # load random value
la x23, scratch # base address
sd x27, 0(x23) # store in memory
li x27, 0xaa29de82081c88d3 # load another value into integer register
amomin.d x23, x27, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x17, 0x3483beb47696aa3a # load random value
la x24, scratch # base address
sd x17, 0(x24) # store in memory
li x17, 0xfe60390a8c56fb91 # load another value into integer register
amomin.d x24, x17, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x22, 0xd0f1f77375b2d724 # load random value
la x25, scratch # base address
sd x22, 0(x25) # store in memory
li x22, 0x9a9a138c315af36d # load another value into integer register
amomin.d x25, x22, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x20, 0xa992d37f6ef51b1f # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0xac5076225a5ca838 # load another value into integer register
amomin.d x26, x20, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x11, 0x95cb416ed9fbece8 # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0x10c7e85e6add4a68 # load another value into integer register
amomin.d x27, x11, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x31, 0x9fef023ce67f760d # load random value
la x28, scratch # base address
sd x31, 0(x28) # store in memory
li x31, 0x0a32a6ff691c1b18 # load another value into integer register
amomin.d x28, x31, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x21, 0x2aa0e75fcc0d25d6 # load random value
la x29, scratch # base address
sd x21, 0(x29) # store in memory
li x21, 0xbb0d054ff3ea3eaa # load another value into integer register
amomin.d x29, x21, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x24, 0x269fb706a9bccec9 # load random value
la x30, scratch # base address
sd x24, 0(x30) # store in memory
li x24, 0x129b3430379e7546 # load another value into integer register
amomin.d x30, x24, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x9, 0xb82ddaa5c5fe3ea4 # load random value
la x31, scratch # base address
sd x9, 0(x31) # store in memory
li x9, 0xcb2ce2671edd3af8 # load another value into integer register
amomin.d x31, x9, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xd298b77cb8574f0d # load random value
la x17, scratch # base address
sd x0, 0(x17) # store in memory
li x0, 0x5f2054ca07bb7baa # load another value into integer register
amomin.d x0, x0, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x2bdba95b4249248e # load random value
la x23, scratch # base address
sd x1, 0(x23) # store in memory
li x1, 0xe88349813a6f333e # load another value into integer register
amomin.d x1, x1, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xc3b5c10f27be4a1e # load random value
la x5, scratch # base address
sd x2, 0(x5) # store in memory
li x2, 0xa424da4b6190e1a0 # load another value into integer register
amomin.d x2, x2, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x7678dd10fdf94e14 # load random value
la x23, scratch # base address
sd x3, 0(x23) # store in memory
li x3, 0xef80249cba579fc5 # load another value into integer register
amomin.d x3, x3, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2ff29fd37301527c # load random value
la x16, scratch # base address
sd x4, 0(x16) # store in memory
li x4, 0x9a221e94e2d2c011 # load another value into integer register
amomin.d x4, x4, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb97bf068efb34d2c # load random value
la x18, scratch # base address
sd x5, 0(x18) # store in memory
li x5, 0xfa0ae570addee142 # load another value into integer register
amomin.d x5, x5, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6910c94b725602a7 # load random value
la x20, scratch # base address
sd x6, 0(x20) # store in memory
li x6, 0x3b69b79e3643c5d2 # load another value into integer register
amomin.d x6, x6, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6a7bb69e0b34b5fa # load random value
la x29, scratch # base address
sd x7, 0(x29) # store in memory
li x7, 0xf8202a1cb7ee37ac # load another value into integer register
amomin.d x7, x7, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xc6b97555650452bb # load random value
la x11, scratch # base address
sd x8, 0(x11) # store in memory
li x8, 0x7f1e593c8e67f69b # load another value into integer register
amomin.d x8, x8, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xa096543dae33ae32 # load random value
la x15, scratch # base address
sd x9, 0(x15) # store in memory
li x9, 0xd0a82789522043b3 # load another value into integer register
amomin.d x9, x9, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xb81aa1b39506dacb # load random value
la x3, scratch # base address
sd x10, 0(x3) # store in memory
li x10, 0x56dc697ac73e15b3 # load another value into integer register
amomin.d x10, x10, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xb74d1552554703b9 # load random value
la x19, scratch # base address
sd x11, 0(x19) # store in memory
li x11, 0x534829aac7cf5090 # load another value into integer register
amomin.d x11, x11, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x9c095f8bc4b57cb7 # load random value
la x6, scratch # base address
sd x12, 0(x6) # store in memory
li x12, 0x6294085222328a3b # load another value into integer register
amomin.d x12, x12, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4d9678f93607fc4c # load random value
la x23, scratch # base address
sd x13, 0(x23) # store in memory
li x13, 0xf4f6fc28595b6616 # load another value into integer register
amomin.d x13, x13, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xf196bd44660a8eba # load random value
la x30, scratch # base address
sd x14, 0(x30) # store in memory
li x14, 0x01f6fa6095081bd6 # load another value into integer register
amomin.d x14, x14, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x31479319f33ba6fe # load random value
la x22, scratch # base address
sd x15, 0(x22) # store in memory
li x15, 0x8e794ec6f743ffb0 # load another value into integer register
amomin.d x15, x15, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xb8d21710115f5906 # load random value
la x1, scratch # base address
sd x16, 0(x1) # store in memory
li x16, 0x04668fa028b187af # load another value into integer register
amomin.d x16, x16, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xbfa0a4bc1c02766e # load random value
la x27, scratch # base address
sd x17, 0(x27) # store in memory
li x17, 0x53bc08550931747b # load another value into integer register
amomin.d x17, x17, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x9f44cd1421381f6b # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomin.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xe3f5945d34424b86 # load random value
la x15, scratch # base address
sd x19, 0(x15) # store in memory
li x19, 0x157ee3c38ff75c77 # load another value into integer register
amomin.d x19, x19, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xe1ea5be0273da709 # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x2a860b691aba4ce0 # load another value into integer register
amomin.d x20, x20, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xd4f9ac2b4e2f2b13 # load random value
la x29, scratch # base address
sd x21, 0(x29) # store in memory
li x21, 0xe04b1f508ba706b7 # load another value into integer register
amomin.d x21, x21, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xd6ea7e7097567eea # load random value
la x19, scratch # base address
sd x22, 0(x19) # store in memory
li x22, 0x05cf68334115a5ea # load another value into integer register
amomin.d x22, x22, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xf22923e9060fdeef # load random value
la x16, scratch # base address
sd x23, 0(x16) # store in memory
li x23, 0x716df0478427f92d # load another value into integer register
amomin.d x23, x23, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x5f01a456c28ff978 # load random value
la x12, scratch # base address
sd x24, 0(x12) # store in memory
li x24, 0xb2fad7f12d36b21e # load another value into integer register
amomin.d x24, x24, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x5f22454bda4d516e # load random value
la x9, scratch # base address
sd x25, 0(x9) # store in memory
li x25, 0xa2d1f239c15383bc # load another value into integer register
amomin.d x25, x25, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xf4baaaa88391697a # load random value
la x20, scratch # base address
sd x26, 0(x20) # store in memory
li x26, 0xc2aba0d4cc762176 # load another value into integer register
amomin.d x26, x26, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xc9a2257c39429abe # load random value
la x3, scratch # base address
sd x27, 0(x3) # store in memory
li x27, 0x8a264b2779c13c4c # load another value into integer register
amomin.d x27, x27, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x608a4953e30a07a2 # load random value
la x17, scratch # base address
sd x28, 0(x17) # store in memory
li x28, 0xc1511a2fc8d931aa # load another value into integer register
amomin.d x28, x28, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xe0bf6306ddc6ea30 # load random value
la x23, scratch # base address
sd x29, 0(x23) # store in memory
li x29, 0xfd07375b7997df58 # load another value into integer register
amomin.d x29, x29, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xd8b3c95125bf1ed1 # load random value
la x20, scratch # base address
sd x30, 0(x20) # store in memory
li x30, 0x82ac4c7be5e6fc4c # load another value into integer register
amomin.d x30, x30, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x2d0b299db6eee78b # load random value
la x30, scratch # base address
sd x31, 0(x30) # store in memory
li x31, 0x3eecaf1ed5ef699d # load another value into integer register
amomin.d x31, x31, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc096e02504b9f3f4 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomin.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4f2ddb5da8b15f9c # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomin.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x41979a43c3258917 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomin.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc7ffaf1c4373f7f0 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomin.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x70b1ef875d4a94b6 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomin.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcae23607b2a459fc # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomin.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe8c93462188daacd # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomin.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbf7b35f710eee14e # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomin.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x907bab55e18955ce # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomin.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x1dba1e2342a3c78c # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomin.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x316b8e78d93fbc3f # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomin.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x746f99938c695585 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomin.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x16de90cb45e3e83a # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomin.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x09e812cf95c091e1 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomin.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3a64223818599206 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomin.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6ee293f21daeeaa7 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomin.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7661c607ce09c03e # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomin.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xfa1c2cfdd1908714 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomin.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x63682a34a6ac3d67 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomin.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x49d0ddb947a304a1 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomin.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x285eafad3d916697 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomin.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x47a7b2bcf51a35d4 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomin.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1c26a2eb54caf958 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomin.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x81d8b777c02407c5 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomin.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x68bbb3e8b94165fb # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomin.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x3026443ea5544c23 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomin.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x49c686b605c8e743 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomin.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe02f4c93eb27666d # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomin.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb29279aa12f0338f # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomin.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x18bfdce8a0f17055 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomin.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x57cfdea9d20e78c9 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomin.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
add x8, x30, x10 # perform first operation
amomin.d x6, x22, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x11, scratch
add x30, x2, x7 # perform first operation
amomin.d x23, x19, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
add x25, x27, x30 # perform first operation
amomin.d x8, x14, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
add x10, x10, x0 # perform first operation
amomin.d x10, x10, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
add x31, x31, x0 # perform first operation
amomin.d x12, x10, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
add x28, x28, x0 # perform first operation
amomin.d x16, x8, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x14, scratch
add x8, x23, x1 # perform first operation
amomin.d x8, x3, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x17, scratch
add x14, x1, x2 # perform first operation
amomin.d x14, x22, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
add x16, x30, x9 # perform first operation
amomin.d x16, x22, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x16, scratch
add x10, x5, x26 # perform first operation
amomin.d x5, x17, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x23, scratch
add x18, x28, x27 # perform first operation
amomin.d x27, x25, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
add x2, x26, x10 # perform first operation
amomin.d x17, x12, (x5) # perform second (triggering) operation

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
