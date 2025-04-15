///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoadd.w.S
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
li x9, 0x27c54e272733e6f2 # load random value
la x1, scratch # base address
sd x9, 0(x1) # store in memory
li x9, 0x65f0301030e986a1 # load another value into integer register
amoadd.w x2, x9, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x22, 0x4913f6a5847f83ca # load random value
la x2, scratch # base address
sd x22, 0(x2) # store in memory
li x22, 0x1e2f5a55feb3638d # load another value into integer register
amoadd.w x5, x22, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x24, 0xfc2fc58edfdfb133 # load random value
la x3, scratch # base address
sd x24, 0(x3) # store in memory
li x24, 0x24f929b23210f764 # load another value into integer register
amoadd.w x21, x24, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x387fdae1a9347f21 # load random value
la x4, scratch # base address
sd x14, 0(x4) # store in memory
li x14, 0x17b532621f98bdeb # load another value into integer register
amoadd.w x23, x14, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x8d7ab03ce2c30576 # load random value
la x5, scratch # base address
sd x28, 0(x5) # store in memory
li x28, 0x65422f49a838449e # load another value into integer register
amoadd.w x9, x28, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x40af7d61509e6204 # load random value
la x6, scratch # base address
sd x13, 0(x6) # store in memory
li x13, 0x3e39fa75f23512a4 # load another value into integer register
amoadd.w x21, x13, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x06dce95bb51ae8d0 # load random value
la x7, scratch # base address
sd x23, 0(x7) # store in memory
li x23, 0x788b4bd684e97293 # load another value into integer register
amoadd.w x27, x23, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x64d732fa90d06fab # load random value
la x8, scratch # base address
sd x13, 0(x8) # store in memory
li x13, 0xc61b7b6f3da710e5 # load another value into integer register
amoadd.w x21, x13, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0x81e8e08786bff1a2 # load random value
la x9, scratch # base address
sd x1, 0(x9) # store in memory
li x1, 0x35aad9c58aca8c5a # load another value into integer register
amoadd.w x24, x1, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x6a0a5f84b94617ae # load random value
la x10, scratch # base address
sd x12, 0(x10) # store in memory
li x12, 0x9c752daf604791fb # load another value into integer register
amoadd.w x16, x12, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x17, 0x256eb7e839fd68c4 # load random value
la x11, scratch # base address
sd x17, 0(x11) # store in memory
li x17, 0x731045c95806594e # load another value into integer register
amoadd.w x26, x17, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x17, 0x8269540d2be5a71f # load random value
la x12, scratch # base address
sd x17, 0(x12) # store in memory
li x17, 0xca9c2214d05f523d # load another value into integer register
amoadd.w x27, x17, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xb34c8aa57ff5211f # load random value
la x13, scratch # base address
sd x12, 0(x13) # store in memory
li x12, 0xaa6ec4c720694df7 # load another value into integer register
amoadd.w x29, x12, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0xe329049fb77ae7fd # load random value
la x14, scratch # base address
sd x10, 0(x14) # store in memory
li x10, 0x52e87bc5e8ffe79d # load another value into integer register
amoadd.w x20, x10, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x19, 0x902fc284655c360f # load random value
la x15, scratch # base address
sd x19, 0(x15) # store in memory
li x19, 0x18a7b1d98a9a8c54 # load another value into integer register
amoadd.w x16, x19, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0x104cc35f5a5b9d51 # load random value
la x16, scratch # base address
sd x15, 0(x16) # store in memory
li x15, 0x712033ac3f82f954 # load another value into integer register
amoadd.w x27, x15, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x21, 0x6d4e57ecab6bab2a # load random value
la x17, scratch # base address
sd x21, 0(x17) # store in memory
li x21, 0xdd71ebf261842df7 # load another value into integer register
amoadd.w x29, x21, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x26, 0x5476582bcf8e22d4 # load random value
la x18, scratch # base address
sd x26, 0(x18) # store in memory
li x26, 0x8c9a118eb3c68ec4 # load another value into integer register
amoadd.w x20, x26, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x9, 0x947a054c6f706d46 # load random value
la x19, scratch # base address
sd x9, 0(x19) # store in memory
li x9, 0xc57800c837cc8376 # load another value into integer register
amoadd.w x21, x9, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x31, 0x9f527da863e6af00 # load random value
la x20, scratch # base address
sd x31, 0(x20) # store in memory
li x31, 0xd92c5c2e02cda117 # load another value into integer register
amoadd.w x26, x31, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x17, 0x617fc72029932bca # load random value
la x21, scratch # base address
sd x17, 0(x21) # store in memory
li x17, 0x1f7c9158b200ab66 # load another value into integer register
amoadd.w x12, x17, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x2, 0x62e8ba0f59fb2ad4 # load random value
la x22, scratch # base address
sd x2, 0(x22) # store in memory
li x2, 0x8d88c5a4da786030 # load another value into integer register
amoadd.w x1, x2, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x11, 0x8b86b38f52e17c5e # load random value
la x23, scratch # base address
sd x11, 0(x23) # store in memory
li x11, 0xb47d4bb7efe5d747 # load another value into integer register
amoadd.w x30, x11, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0x7ad32f85cccf9e18 # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0x27fe2a02650323e6 # load another value into integer register
amoadd.w x6, x12, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x22, 0x23571d05a847beb0 # load random value
la x25, scratch # base address
sd x22, 0(x25) # store in memory
li x22, 0x18252e1902043e8d # load another value into integer register
amoadd.w x18, x22, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0x91c6954790c2005c # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0x9c80b8c4bf9558a4 # load another value into integer register
amoadd.w x30, x20, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0x8ca09cf9e411781a # load random value
la x27, scratch # base address
sd x2, 0(x27) # store in memory
li x2, 0xe41b2c4527288f81 # load another value into integer register
amoadd.w x17, x2, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0x451c08aab3007f91 # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0x77d2c52f7b3f77dd # load another value into integer register
amoadd.w x27, x1, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x7, 0xae05a45d01e28c6a # load random value
la x29, scratch # base address
sd x7, 0(x29) # store in memory
li x7, 0x8fe124a2c9874a47 # load another value into integer register
amoadd.w x5, x7, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x24, 0x2cf85a7eda229e49 # load random value
la x30, scratch # base address
sd x24, 0(x30) # store in memory
li x24, 0x1dffbf8647408ca6 # load another value into integer register
amoadd.w x3, x24, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0x371f3f259b6f56a8 # load random value
la x31, scratch # base address
sd x9, 0(x31) # store in memory
li x9, 0x3511caa6de80aedb # load another value into integer register
amoadd.w x14, x9, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x733a33ca984a8ae7 # load random value
la x3, scratch # base address
sd x0, 0(x3) # store in memory
li x0, 0x74978a86b210660f # load another value into integer register
amoadd.w x5, x0, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xa9e13c7932e05104 # load random value
la x30, scratch # base address
sd x1, 0(x30) # store in memory
li x1, 0xe1fab96b118284f1 # load another value into integer register
amoadd.w x5, x1, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x180cd70eebf2de4c # load random value
la x6, scratch # base address
sd x2, 0(x6) # store in memory
li x2, 0x44dcb6532878e67e # load another value into integer register
amoadd.w x10, x2, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x64052cfdbd9d5a8b # load random value
la x28, scratch # base address
sd x3, 0(x28) # store in memory
li x3, 0x76b07bd8e502d0c8 # load another value into integer register
amoadd.w x11, x3, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe341f26663c178d6 # load random value
la x1, scratch # base address
sd x4, 0(x1) # store in memory
li x4, 0xee30a278d97d46ca # load another value into integer register
amoadd.w x6, x4, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x462339f0be588439 # load random value
la x20, scratch # base address
sd x5, 0(x20) # store in memory
li x5, 0xd8c342e3bcfe2969 # load another value into integer register
amoadd.w x14, x5, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5c3035dabdec684a # load random value
la x7, scratch # base address
sd x6, 0(x7) # store in memory
li x6, 0xd29da7901b30922a # load another value into integer register
amoadd.w x27, x6, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x7, 0xa9ffccf9dec9a039 # load random value
la x10, scratch # base address
sd x7, 0(x10) # store in memory
li x7, 0xb7512cf4a8d3a0e9 # load another value into integer register
amoadd.w x16, x7, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x9f7b595cef203354 # load random value
la x30, scratch # base address
sd x8, 0(x30) # store in memory
li x8, 0xbc6f069202b9c4a6 # load another value into integer register
amoadd.w x21, x8, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x5ee72d838d010452 # load random value
la x24, scratch # base address
sd x9, 0(x24) # store in memory
li x9, 0x2a227556124425fc # load another value into integer register
amoadd.w x2, x9, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x045dccf429883e28 # load random value
la x30, scratch # base address
sd x10, 0(x30) # store in memory
li x10, 0x18a6e555a404c93e # load another value into integer register
amoadd.w x23, x10, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x8bec3aca03e5befd # load random value
la x7, scratch # base address
sd x11, 0(x7) # store in memory
li x11, 0x5e1f902981211933 # load another value into integer register
amoadd.w x18, x11, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xeec17e26521739a1 # load random value
la x2, scratch # base address
sd x12, 0(x2) # store in memory
li x12, 0xe62084bbbcc25b80 # load another value into integer register
amoadd.w x9, x12, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xa05edfa5a4e7c716 # load random value
la x21, scratch # base address
sd x13, 0(x21) # store in memory
li x13, 0x4c43030a44330732 # load another value into integer register
amoadd.w x28, x13, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x53d6eb88d0706614 # load random value
la x29, scratch # base address
sd x14, 0(x29) # store in memory
li x14, 0xbc1e7d81ad222b88 # load another value into integer register
amoadd.w x5, x14, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x0227c24114fcd3f4 # load random value
la x14, scratch # base address
sd x15, 0(x14) # store in memory
li x15, 0x3718da7d917997ef # load another value into integer register
amoadd.w x29, x15, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x54705be69359477c # load random value
la x1, scratch # base address
sd x16, 0(x1) # store in memory
li x16, 0x1d071ede523f9817 # load another value into integer register
amoadd.w x14, x16, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xe15342d5781a7c19 # load random value
la x14, scratch # base address
sd x17, 0(x14) # store in memory
li x17, 0x31d0a5c132b17530 # load another value into integer register
amoadd.w x9, x17, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x25336db7a4f09fa5 # load random value
la x24, scratch # base address
sd x18, 0(x24) # store in memory
li x18, 0x954fd661f5ac62c8 # load another value into integer register
amoadd.w x21, x18, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x2530746a546fa9c5 # load random value
la x13, scratch # base address
sd x19, 0(x13) # store in memory
li x19, 0x3701311d8371f602 # load another value into integer register
amoadd.w x25, x19, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x5fe3c922f9c3bd7d # load random value
la x1, scratch # base address
sd x20, 0(x1) # store in memory
li x20, 0x5d9f59e8647de5ef # load another value into integer register
amoadd.w x25, x20, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xa09da5fbe1b609c8 # load random value
la x10, scratch # base address
sd x21, 0(x10) # store in memory
li x21, 0x8d8b51a078c5997f # load another value into integer register
amoadd.w x25, x21, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x8ba518627229dc00 # load random value
la x21, scratch # base address
sd x22, 0(x21) # store in memory
li x22, 0x8c0b9960b50742c2 # load another value into integer register
amoadd.w x25, x22, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x71edf37ed62ea8e4 # load random value
la x31, scratch # base address
sd x23, 0(x31) # store in memory
li x23, 0xa63b3b523bbdaa5e # load another value into integer register
amoadd.w x6, x23, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x499cce352701f5de # load random value
la x1, scratch # base address
sd x24, 0(x1) # store in memory
li x24, 0xd250912990409455 # load another value into integer register
amoadd.w x6, x24, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x5dac6fefd06fecf9 # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0x37e030b2db8272f1 # load another value into integer register
amoadd.w x17, x25, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x4cd762e2dc8af2f8 # load random value
la x18, scratch # base address
sd x26, 0(x18) # store in memory
li x26, 0x563df600fe520cee # load another value into integer register
amoadd.w x30, x26, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x8ab0b43d0e4edc7d # load random value
la x17, scratch # base address
sd x27, 0(x17) # store in memory
li x27, 0x66dd536d3791b869 # load another value into integer register
amoadd.w x18, x27, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xd8889438645b971e # load random value
la x22, scratch # base address
sd x28, 0(x22) # store in memory
li x28, 0x8ce2e5a2e041ec63 # load another value into integer register
amoadd.w x21, x28, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xc0323e183d761de8 # load random value
la x18, scratch # base address
sd x29, 0(x18) # store in memory
li x29, 0x01c74e75d0dbbd97 # load another value into integer register
amoadd.w x6, x29, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x2383459e79fa354c # load random value
la x28, scratch # base address
sd x30, 0(x28) # store in memory
li x30, 0x503412cf58928277 # load another value into integer register
amoadd.w x17, x30, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x9791272918b304ab # load random value
la x15, scratch # base address
sd x31, 0(x15) # store in memory
li x31, 0xdb69d086df3f3f55 # load another value into integer register
amoadd.w x22, x31, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x17, 0x6eb1be6e76807570 # load random value
la x1, scratch # base address
sd x17, 0(x1) # store in memory
li x17, 0x40fff97c1fd9df9c # load another value into integer register
amoadd.w x0, x17, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x787af770dade4f0b # load random value
la x25, scratch # base address
sd x1, 0(x25) # store in memory
li x1, 0x280ccf9cc2a1dac3 # load another value into integer register
amoadd.w x1, x1, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x15, 0xbcfa2ae96ca3bc76 # load random value
la x3, scratch # base address
sd x15, 0(x3) # store in memory
li x15, 0x84e6f53fc77e68e3 # load another value into integer register
amoadd.w x2, x15, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x21, 0x351309d6d466d606 # load random value
la x27, scratch # base address
sd x21, 0(x27) # store in memory
li x21, 0xfedab801f3352e6a # load another value into integer register
amoadd.w x3, x21, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xf95a1d522351975f # load random value
la x22, scratch # base address
sd x27, 0(x22) # store in memory
li x27, 0x3b95bc70f13b0e9b # load another value into integer register
amoadd.w x4, x27, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x536b0516f5fcf233 # load random value
la x21, scratch # base address
sd x25, 0(x21) # store in memory
li x25, 0x4b4ab09a568900b9 # load another value into integer register
amoadd.w x5, x25, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0xef47cea4a08ab0a4 # load random value
la x11, scratch # base address
sd x12, 0(x11) # store in memory
li x12, 0x1b9b3e89be3ff60e # load another value into integer register
amoadd.w x6, x12, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x4b334650f923c381 # load random value
la x18, scratch # base address
sd x22, 0(x18) # store in memory
li x22, 0x780704e317e17874 # load another value into integer register
amoadd.w x7, x22, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x08dd314ab743f087 # load random value
la x26, scratch # base address
sd x7, 0(x26) # store in memory
li x7, 0xae6fc17d499d11d7 # load another value into integer register
amoadd.w x8, x7, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x20, 0x5645903774f15ae2 # load random value
la x12, scratch # base address
sd x20, 0(x12) # store in memory
li x20, 0x615fcf1e28e208d0 # load another value into integer register
amoadd.w x9, x20, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x775fcdc2f45147c5 # load random value
la x14, scratch # base address
sd x21, 0(x14) # store in memory
li x21, 0xed131c01fedbe909 # load another value into integer register
amoadd.w x10, x21, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x78d7ab2cd6dd849a # load random value
la x12, scratch # base address
sd x7, 0(x12) # store in memory
li x7, 0xc817727356e97ba9 # load another value into integer register
amoadd.w x11, x7, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x7e7ad816997fc460 # load random value
la x17, scratch # base address
sd x21, 0(x17) # store in memory
li x21, 0x2f3982eec81640fd # load another value into integer register
amoadd.w x12, x21, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x30, 0xbefbf8feb21852c5 # load random value
la x12, scratch # base address
sd x30, 0(x12) # store in memory
li x30, 0x69506d04e0dcf2d7 # load another value into integer register
amoadd.w x13, x30, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x167de61480ad681c # load random value
la x13, scratch # base address
sd x23, 0(x13) # store in memory
li x23, 0xd82edcdc78ecc01b # load another value into integer register
amoadd.w x14, x23, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x4ca2136fd9470e7d # load random value
la x7, scratch # base address
sd x3, 0(x7) # store in memory
li x3, 0x0b2cb4963e42b93b # load another value into integer register
amoadd.w x15, x3, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x21, 0xaab6be6ad9baf2af # load random value
la x15, scratch # base address
sd x21, 0(x15) # store in memory
li x21, 0xb5087976a8954c53 # load another value into integer register
amoadd.w x16, x21, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x862d9f05d0324002 # load random value
la x21, scratch # base address
sd x20, 0(x21) # store in memory
li x20, 0xee22771b537f29c8 # load another value into integer register
amoadd.w x17, x20, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x2, 0x63927ef7785df1ed # load random value
la x10, scratch # base address
sd x2, 0(x10) # store in memory
li x2, 0xcdd77a592bf64fc9 # load another value into integer register
amoadd.w x18, x2, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x31, 0xc5aba8bde802879e # load random value
la x8, scratch # base address
sd x31, 0(x8) # store in memory
li x31, 0x5a8be7fe2f13e705 # load another value into integer register
amoadd.w x19, x31, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x7, 0x82f0df23231c3e79 # load random value
la x12, scratch # base address
sd x7, 0(x12) # store in memory
li x7, 0x8ccf093694c3ea80 # load another value into integer register
amoadd.w x20, x7, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x12, 0xb00b9bf6a7e06a96 # load random value
la x15, scratch # base address
sd x12, 0(x15) # store in memory
li x12, 0xcb4f4f4260aa502f # load another value into integer register
amoadd.w x21, x12, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x17, 0x16dbf4dfcd753ce5 # load random value
la x14, scratch # base address
sd x17, 0(x14) # store in memory
li x17, 0xab4773af51006da9 # load another value into integer register
amoadd.w x22, x17, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x15, 0x78068191f8ead415 # load random value
la x18, scratch # base address
sd x15, 0(x18) # store in memory
li x15, 0x15f66259dfea5a59 # load another value into integer register
amoadd.w x23, x15, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x26, 0xbfef5525f03793d5 # load random value
la x3, scratch # base address
sd x26, 0(x3) # store in memory
li x26, 0xb42d152611776a01 # load another value into integer register
amoadd.w x24, x26, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x7, 0xaee71becf093334b # load random value
la x9, scratch # base address
sd x7, 0(x9) # store in memory
li x7, 0xd0e89056161e05be # load another value into integer register
amoadd.w x25, x7, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x6505a2c43f542f40 # load random value
la x9, scratch # base address
sd x14, 0(x9) # store in memory
li x14, 0x00ab5ea8d56c8edd # load another value into integer register
amoadd.w x26, x14, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x205b083f72bea581 # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0x1ad81e0daec19dec # load another value into integer register
amoadd.w x27, x1, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x20046694e6bc46d1 # load random value
la x29, scratch # base address
sd x2, 0(x29) # store in memory
li x2, 0x64233566361351eb # load another value into integer register
amoadd.w x28, x2, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x11, 0x490ce06d50d28e6e # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0xc50bad4f9e6b2428 # load another value into integer register
amoadd.w x29, x11, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x9, 0x4b9cc1ee7c9607cc # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0xcfdc5d264da89bc7 # load another value into integer register
amoadd.w x30, x9, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x25, 0x22ad14f729738729 # load random value
la x6, scratch # base address
sd x25, 0(x6) # store in memory
li x25, 0xe6614e73f2f42611 # load another value into integer register
amoadd.w x31, x25, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x52e9feec34832f41 # load random value
la x2, scratch # base address
sd x27, 0(x2) # store in memory
li x27, 0x0000000000000000 # load another value into integer register
amoadd.w x25, x27, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xd9d9c13a18fb4a35 # load random value
la x25, scratch # base address
sd x26, 0(x25) # store in memory
li x26, 0x0000000000000001 # load another value into integer register
amoadd.w x24, x26, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x0c1cae8dee45847d # load random value
la x11, scratch # base address
sd x29, 0(x11) # store in memory
li x29, 0x0000000000000002 # load another value into integer register
amoadd.w x14, x29, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x23, 0x8e286376d91ab127 # load random value
la x20, scratch # base address
sd x23, 0(x20) # store in memory
li x23, 0x8000000000000000 # load another value into integer register
amoadd.w x7, x23, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x12, 0x41b0550554db632d # load random value
la x17, scratch # base address
sd x12, 0(x17) # store in memory
li x12, 0x8000000000000001 # load another value into integer register
amoadd.w x8, x12, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x30, 0x84c9ad7befd55268 # load random value
la x24, scratch # base address
sd x30, 0(x24) # store in memory
li x30, 0x7fffffffffffffff # load another value into integer register
amoadd.w x17, x30, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x23, 0xdb9464f118d4a74b # load random value
la x10, scratch # base address
sd x23, 0(x10) # store in memory
li x23, 0x7ffffffffffffffe # load another value into integer register
amoadd.w x17, x23, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x598b40a3abc8cbd2 # load random value
la x5, scratch # base address
sd x16, 0(x5) # store in memory
li x16, 0xffffffffffffffff # load another value into integer register
amoadd.w x12, x16, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0x98a61787940671f7 # load random value
la x25, scratch # base address
sd x21, 0(x25) # store in memory
li x21, 0xfffffffffffffffe # load another value into integer register
amoadd.w x13, x21, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x15, 0x4ff9dc93d3b49069 # load random value
la x17, scratch # base address
sd x15, 0(x17) # store in memory
li x15, 0x5bbc887763ae86f2 # load another value into integer register
amoadd.w x18, x15, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xe23128385777a35a # load random value
la x20, scratch # base address
sd x31, 0(x20) # store in memory
li x31, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoadd.w x16, x31, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x21, 0x67135f5da6f323a2 # load random value
la x29, scratch # base address
sd x21, 0(x29) # store in memory
li x21, 0x5555555555555555 # load another value into integer register
amoadd.w x1, x21, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xe7b7927e4643c24c # load random value
la x23, scratch # base address
sd x24, 0(x23) # store in memory
li x24, 0x00000000ffffffff # load another value into integer register
amoadd.w x26, x24, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xb636b75db0b2b0f7 # load random value
la x25, scratch # base address
sd x15, 0(x25) # store in memory
li x15, 0x00000000fffffffe # load another value into integer register
amoadd.w x13, x15, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x20, 0x688b97538ddc0fd1 # load random value
la x23, scratch # base address
sd x20, 0(x23) # store in memory
li x20, 0x0000000100000000 # load another value into integer register
amoadd.w x21, x20, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0xfdd904ce12af44b0 # load random value
la x7, scratch # base address
sd x31, 0(x7) # store in memory
li x31, 0x0000000100000001 # load another value into integer register
amoadd.w x10, x31, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xd347681325d9e503 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoadd.w x19, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd442680f1c0d0579 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoadd.w x21, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x7be2f54533193360 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoadd.w x21, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4be1de2ef94543c5 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoadd.w x1, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x635340b02feb6c29 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoadd.w x17, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9d522d6783842484 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoadd.w x4, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x958e0b8d94ec38b8 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoadd.w x10, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x51987bbea9deea34 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoadd.w x14, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5e88584fb293ed5b # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoadd.w x7, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xc73a8dfdffacb939 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoadd.w x1, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf8347f562918b8ec # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoadd.w x7, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x1ff35ec8e4162e9b # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoadd.w x18, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x86b2bcf0d9d5429a # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoadd.w x18, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x04a72fe00bf78184 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoadd.w x15, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa166a6bd5b18e046 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoadd.w x2, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xf77b0d4164b574e3 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoadd.w x2, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x9ac0da0e45a9c133 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoadd.w x11, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x11f03b1254355110 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoadd.w x19, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xefc70cb7c3490a04 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoadd.w x15, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe74a46c4fb0607bb # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoadd.w x15, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xa7f8b7c4c2afceee # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoadd.w x28, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x17fb62052d79b1d1 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoadd.w x17, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x3f238c19a64b51ad # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoadd.w x11, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x71478e5608590773 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoadd.w x29, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x77c1084c411ed926 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoadd.w x12, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0d1b5e384936122d # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoadd.w x12, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdac7e504190a2b21 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoadd.w x12, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x16475cca15d92d75 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoadd.w x26, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x8ec6e9f0f2f3bf1c # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoadd.w x28, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x683c3fd3c6cc009c # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoadd.w x24, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x5f736e9dfd9fe0eb # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoadd.w x26, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x6, 0x01b388872ef906d7 # load random value
la x1, scratch # base address
sd x6, 0(x1) # store in memory
li x6, 0x47d7bd5756136e60 # load another value into integer register
amoadd.w x1, x6, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x28, 0x12215e37a17f3ecf # load random value
la x2, scratch # base address
sd x28, 0(x2) # store in memory
li x28, 0x27c32d8df7b88d61 # load another value into integer register
amoadd.w x2, x28, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x29, 0x6da8542b47c6b4e5 # load random value
la x3, scratch # base address
sd x29, 0(x3) # store in memory
li x29, 0x67ab0b04c79583f4 # load another value into integer register
amoadd.w x3, x29, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xbc5f022b4867c28e # load random value
la x4, scratch # base address
sd x6, 0(x4) # store in memory
li x6, 0xd2c4780d79aaf044 # load another value into integer register
amoadd.w x4, x6, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x8c2d1ef5674d2cb0 # load random value
la x5, scratch # base address
sd x25, 0(x5) # store in memory
li x25, 0x42ebbb39b85edbf2 # load another value into integer register
amoadd.w x5, x25, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xffb8a9fb25b116b4 # load random value
la x6, scratch # base address
sd x8, 0(x6) # store in memory
li x8, 0x25117b183ca94a37 # load another value into integer register
amoadd.w x6, x8, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x0bbafb36b284b0df # load random value
la x7, scratch # base address
sd x17, 0(x7) # store in memory
li x17, 0xc1c9bde8b8e275e9 # load another value into integer register
amoadd.w x7, x17, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x26, 0x0e76d0c214075623 # load random value
la x8, scratch # base address
sd x26, 0(x8) # store in memory
li x26, 0x3e41f4055a566e1c # load another value into integer register
amoadd.w x8, x26, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x24, 0x31bdca9539686d95 # load random value
la x9, scratch # base address
sd x24, 0(x9) # store in memory
li x24, 0x848619d85ba63535 # load another value into integer register
amoadd.w x9, x24, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x3, 0x29b7b252eaf47d19 # load random value
la x10, scratch # base address
sd x3, 0(x10) # store in memory
li x3, 0xc543423c7ea646a9 # load another value into integer register
amoadd.w x10, x3, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x26, 0x1b6ff5ee6f822397 # load random value
la x11, scratch # base address
sd x26, 0(x11) # store in memory
li x26, 0x091788848067d0e8 # load another value into integer register
amoadd.w x11, x26, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x29, 0xbdb485e1184aec31 # load random value
la x12, scratch # base address
sd x29, 0(x12) # store in memory
li x29, 0x98f8d84149151680 # load another value into integer register
amoadd.w x12, x29, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x26, 0x131bc1950159cb93 # load random value
la x13, scratch # base address
sd x26, 0(x13) # store in memory
li x26, 0x85d3587dfc87776b # load another value into integer register
amoadd.w x13, x26, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x22, 0x51b0a0c64a839db9 # load random value
la x14, scratch # base address
sd x22, 0(x14) # store in memory
li x22, 0x3e6b2fdda70bc226 # load another value into integer register
amoadd.w x14, x22, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x26, 0xab76abfb5721c008 # load random value
la x15, scratch # base address
sd x26, 0(x15) # store in memory
li x26, 0xfd88b778105b4a39 # load another value into integer register
amoadd.w x15, x26, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x22, 0x2ff73913d9e4f5d3 # load random value
la x16, scratch # base address
sd x22, 0(x16) # store in memory
li x22, 0xf3dcfbaf74a9ebe4 # load another value into integer register
amoadd.w x16, x22, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x5, 0x2923d1d1628e47d0 # load random value
la x17, scratch # base address
sd x5, 0(x17) # store in memory
li x5, 0x038afca2bf484b85 # load another value into integer register
amoadd.w x17, x5, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x24, 0xde40d5501b682ed3 # load random value
la x18, scratch # base address
sd x24, 0(x18) # store in memory
li x24, 0x1f404cf40e64f763 # load another value into integer register
amoadd.w x18, x24, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x16, 0x458e9b0e1244c34d # load random value
la x19, scratch # base address
sd x16, 0(x19) # store in memory
li x16, 0x1572e92e40c57d7d # load another value into integer register
amoadd.w x19, x16, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x8, 0x1639686cb9f63399 # load random value
la x20, scratch # base address
sd x8, 0(x20) # store in memory
li x8, 0xacf42082d036c96b # load another value into integer register
amoadd.w x20, x8, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x16, 0xa053db92437ccc0e # load random value
la x21, scratch # base address
sd x16, 0(x21) # store in memory
li x16, 0x1bd7e5f27190d51d # load another value into integer register
amoadd.w x21, x16, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x5, 0xe49451df0913daed # load random value
la x22, scratch # base address
sd x5, 0(x22) # store in memory
li x5, 0xb07e9c041e56ea2b # load another value into integer register
amoadd.w x22, x5, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x3, 0x28d8c4608a9aaa96 # load random value
la x23, scratch # base address
sd x3, 0(x23) # store in memory
li x3, 0x2a88851c44c01608 # load another value into integer register
amoadd.w x23, x3, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x19, 0xd512409d02ae5c24 # load random value
la x24, scratch # base address
sd x19, 0(x24) # store in memory
li x19, 0x39a001688d528e45 # load another value into integer register
amoadd.w x24, x19, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x13, 0x7c77bef7b86f2a87 # load random value
la x25, scratch # base address
sd x13, 0(x25) # store in memory
li x13, 0x9616920f26d10fbc # load another value into integer register
amoadd.w x25, x13, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x14, 0x19731495e774825e # load random value
la x26, scratch # base address
sd x14, 0(x26) # store in memory
li x14, 0xe46f06699865470f # load another value into integer register
amoadd.w x26, x14, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x26, 0xbbea842dacbfc002 # load random value
la x27, scratch # base address
sd x26, 0(x27) # store in memory
li x26, 0x56d4633575d3fffa # load another value into integer register
amoadd.w x27, x26, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x11, 0xd944bdaa4feb94de # load random value
la x28, scratch # base address
sd x11, 0(x28) # store in memory
li x11, 0x68a6176e951fb3b5 # load another value into integer register
amoadd.w x28, x11, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x22, 0x6e6b260273db98e6 # load random value
la x29, scratch # base address
sd x22, 0(x29) # store in memory
li x22, 0x0d17c87b72032746 # load another value into integer register
amoadd.w x29, x22, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x23, 0xa86bac2d3d63da11 # load random value
la x30, scratch # base address
sd x23, 0(x30) # store in memory
li x23, 0xe3f644a936b45432 # load another value into integer register
amoadd.w x30, x23, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x1, 0xa2881f114d2d957d # load random value
la x31, scratch # base address
sd x1, 0(x31) # store in memory
li x1, 0x4dde3c3a9e14a381 # load another value into integer register
amoadd.w x31, x1, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xd34e83f0c1d02dd3 # load random value
la x13, scratch # base address
sd x0, 0(x13) # store in memory
li x0, 0xd0000b37046528ff # load another value into integer register
amoadd.w x0, x0, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x8b441c648ec51676 # load random value
la x13, scratch # base address
sd x1, 0(x13) # store in memory
li x1, 0x37e8ff7f18bf03ac # load another value into integer register
amoadd.w x1, x1, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xbcd5b9c83668e6e2 # load random value
la x5, scratch # base address
sd x2, 0(x5) # store in memory
li x2, 0x579e4acf3c2fafe4 # load another value into integer register
amoadd.w x2, x2, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x9c5cfce5a8af049a # load random value
la x22, scratch # base address
sd x3, 0(x22) # store in memory
li x3, 0x1b8adc6e8cd15277 # load another value into integer register
amoadd.w x3, x3, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x36f8939513085fb8 # load random value
la x6, scratch # base address
sd x4, 0(x6) # store in memory
li x4, 0x21066d1a246dacc0 # load another value into integer register
amoadd.w x4, x4, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb380cbeaffe303d1 # load random value
la x6, scratch # base address
sd x5, 0(x6) # store in memory
li x5, 0x3dbb2c8c47732981 # load another value into integer register
amoadd.w x5, x5, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x6, 0x84b5625ec24dfa1c # load random value
la x9, scratch # base address
sd x6, 0(x9) # store in memory
li x6, 0xb796df0cce1fadce # load another value into integer register
amoadd.w x6, x6, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc1e1a363d119d485 # load random value
la x9, scratch # base address
sd x7, 0(x9) # store in memory
li x7, 0xc4c42770b1cc3b71 # load another value into integer register
amoadd.w x7, x7, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xa67835f59bc20673 # load random value
la x14, scratch # base address
sd x8, 0(x14) # store in memory
li x8, 0x03334b1e4416cec7 # load another value into integer register
amoadd.w x8, x8, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x5a5401c537cf866b # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0xc7d7de2ded13a76c # load another value into integer register
amoadd.w x9, x9, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xc60f72d5d3bc1a00 # load random value
la x17, scratch # base address
sd x10, 0(x17) # store in memory
li x10, 0x037baada5d424163 # load another value into integer register
amoadd.w x10, x10, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xec22980c2c4974ed # load random value
la x1, scratch # base address
sd x11, 0(x1) # store in memory
li x11, 0x38fd1e4655c592ea # load another value into integer register
amoadd.w x11, x11, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x661850fbfa7451c1 # load random value
la x15, scratch # base address
sd x12, 0(x15) # store in memory
li x12, 0xec8619c48a5c4cee # load another value into integer register
amoadd.w x12, x12, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x5d2eca9fdbbabd51 # load random value
la x10, scratch # base address
sd x13, 0(x10) # store in memory
li x13, 0xeff5dd6110036905 # load another value into integer register
amoadd.w x13, x13, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x5f59451cf769992b # load random value
la x2, scratch # base address
sd x14, 0(x2) # store in memory
li x14, 0xeeeb218ed2611bf8 # load another value into integer register
amoadd.w x14, x14, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x7849482aeeaaeff4 # load random value
la x19, scratch # base address
sd x15, 0(x19) # store in memory
li x15, 0x6375d2cd00ef84eb # load another value into integer register
amoadd.w x15, x15, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x3fd5d1036390562f # load random value
la x24, scratch # base address
sd x16, 0(x24) # store in memory
li x16, 0x464178326fc3fecb # load another value into integer register
amoadd.w x16, x16, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x11ba5c0f7d4db005 # load random value
la x9, scratch # base address
sd x17, 0(x9) # store in memory
li x17, 0xc879f3c04a42dad7 # load another value into integer register
amoadd.w x17, x17, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x9f5f55190ecb594c # load random value
la x9, scratch # base address
sd x18, 0(x9) # store in memory
li x18, 0x24270f6104866e9f # load another value into integer register
amoadd.w x18, x18, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x8bd75f0545e40f39 # load random value
la x26, scratch # base address
sd x19, 0(x26) # store in memory
li x19, 0x78f56bef1bb64291 # load another value into integer register
amoadd.w x19, x19, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x496d1183c00678c6 # load random value
la x8, scratch # base address
sd x20, 0(x8) # store in memory
li x20, 0x7dc5976adf538f18 # load another value into integer register
amoadd.w x20, x20, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xb7b589279261daa3 # load random value
la x16, scratch # base address
sd x21, 0(x16) # store in memory
li x21, 0x95caf4344e43ee8a # load another value into integer register
amoadd.w x21, x21, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x07fffd8c82e5767f # load random value
la x5, scratch # base address
sd x22, 0(x5) # store in memory
li x22, 0x8bf033d7baa23a58 # load another value into integer register
amoadd.w x22, x22, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x5bd7b26d127465a0 # load random value
la x3, scratch # base address
sd x23, 0(x3) # store in memory
li x23, 0xd20631e3a005114e # load another value into integer register
amoadd.w x23, x23, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x55e41e71bd128a73 # load random value
la x27, scratch # base address
sd x24, 0(x27) # store in memory
li x24, 0x73dc11ccd85b0436 # load another value into integer register
amoadd.w x24, x24, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x98ceccb758771dfe # load random value
la x16, scratch # base address
sd x25, 0(x16) # store in memory
li x25, 0x44dcde8e11bfb689 # load another value into integer register
amoadd.w x25, x25, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x8fefa4cc4e6068c9 # load random value
la x31, scratch # base address
sd x26, 0(x31) # store in memory
li x26, 0x692055f531e06393 # load another value into integer register
amoadd.w x26, x26, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xd54ad102edc3af41 # load random value
la x28, scratch # base address
sd x27, 0(x28) # store in memory
li x27, 0x3430ac28043767c3 # load another value into integer register
amoadd.w x27, x27, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x26514d703e4a8193 # load random value
la x16, scratch # base address
sd x28, 0(x16) # store in memory
li x28, 0x2c81a1f6d87d83ab # load another value into integer register
amoadd.w x28, x28, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xad6194364acf8d19 # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0xf722e5a1e525bfce # load another value into integer register
amoadd.w x29, x29, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xd320cf922329011f # load random value
la x24, scratch # base address
sd x30, 0(x24) # store in memory
li x30, 0x1b3e4e873dbeac09 # load another value into integer register
amoadd.w x30, x30, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x10005f490f946d20 # load random value
la x14, scratch # base address
sd x31, 0(x14) # store in memory
li x31, 0x0b501dbfba5f5b4f # load another value into integer register
amoadd.w x31, x31, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xda3a33b6c82edb14 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoadd.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8ca7bcb926d0baf8 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoadd.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa3bf9929eb3900a8 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoadd.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb86b2d163b352897 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoadd.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x37a4d9600728156c # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoadd.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4d42b5b4b0674bb5 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoadd.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6ca59245124e555f # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoadd.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe9abb26495a857eb # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoadd.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6c4df3c2a79f8985 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoadd.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x1680b4ebb3bbe495 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoadd.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5c63925ffcdefc2d # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoadd.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf42d57c3fa37f37d # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoadd.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x62b30de1698476ed # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoadd.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb874fac0e0278bf7 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoadd.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb166e8af83062b0b # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoadd.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x807c4deea52f59ac # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoadd.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5ee2b59ef965b5ed # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoadd.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7a647a6a2377d317 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoadd.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x94b87452aef65464 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoadd.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfc5e13477d924e47 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoadd.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x7b1d3f784808dca6 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoadd.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf0b65389a7674232 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoadd.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc233764360280d3c # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoadd.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf09b13ae9fbef51e # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoadd.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x988687a9d1b07412 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoadd.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x02439237e6285a55 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoadd.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd9728152b7058616 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoadd.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x3beb84d34169bacc # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoadd.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb94e10ae132a29f7 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoadd.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x5455dccef8f94cf8 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoadd.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc152f05cc88dc642 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoadd.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, scratch
add x7, x6, x21 # perform first operation
amoadd.w x23, x10, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x11, scratch
add x5, x23, x20 # perform first operation
amoadd.w x22, x3, (x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x18, scratch
add x6, x23, x24 # perform first operation
amoadd.w x3, x8, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
add x2, x2, x0 # perform first operation
amoadd.w x12, x2, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x6, scratch
add x6, x6, x0 # perform first operation
amoadd.w x20, x29, (x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
add x27, x27, x0 # perform first operation
amoadd.w x9, x2, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x5, scratch
add x16, x2, x8 # perform first operation
amoadd.w x16, x6, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x9, scratch
add x3, x15, x24 # perform first operation
amoadd.w x3, x16, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x26, scratch
add x11, x17, x14 # perform first operation
amoadd.w x11, x31, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x22, scratch
add x15, x6, x10 # perform first operation
amoadd.w x6, x7, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x26, scratch
add x27, x5, x29 # perform first operation
amoadd.w x29, x13, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x19, x5, x21 # perform first operation
amoadd.w x9, x27, (x31) # perform second (triggering) operation

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
