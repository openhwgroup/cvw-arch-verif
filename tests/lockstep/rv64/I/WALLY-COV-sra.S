///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sra.S
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

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x2f163f70768d6c0c # initialize rs1
li x24, 0x1fffcbc3ae7b31a3 # initialize rs2
sra x19, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb10caad6fc1c6d75 # initialize rs1
li x2, 0xa822ddd2bf109236 # initialize rs2
sra x17, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf8aadfad1403d2b9 # initialize rs1
li x15, 0xe408147a13b282b2 # initialize rs2
sra x30, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf89e7f502fd3260d # initialize rs1
li x5, 0x731b43f52c158eca # initialize rs2
sra x6, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0e7ad77d7d19496a # initialize rs1
li x30, 0x19cac62130e6035d # initialize rs2
sra x28, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x13aba15ffea8de99 # initialize rs1
li x22, 0x19b2b4304fa19ba8 # initialize rs2
sra x16, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xadb52d0009cd47cd # initialize rs1
li x5, 0x86cf6c8eaf57f251 # initialize rs2
sra x10, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcae05caff02514d9 # initialize rs1
li x15, 0x3173590dbfb5b1f9 # initialize rs2
sra x17, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6fe1f95fbfd9f5ea # initialize rs1
li x14, 0x3bb64525a0cf021f # initialize rs2
sra x21, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd85c1704688aba87 # initialize rs1
li x10, 0xb7dc71d475122555 # initialize rs2
sra x27, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x6628ad324d458a35 # initialize rs1
li x25, 0x9091889773fb30d8 # initialize rs2
sra x13, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x28c29862b1a7e6b5 # initialize rs1
li x12, 0x438677662eed3088 # initialize rs2
sra x2, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xfb540b16c433f31b # initialize rs1
li x10, 0x224a1462850e4645 # initialize rs2
sra x23, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x9335c9d9a0ce6bfe # initialize rs1
li x17, 0x86bb6209121cad3d # initialize rs2
sra x18, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xfcf5000bc2755fcb # initialize rs1
li x15, 0x5e08c0a680ced342 # initialize rs2
sra x17, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6a122843010398ea # initialize rs1
li x18, 0xfa4cbb225e198d1f # initialize rs2
sra x19, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x444ba03537649340 # initialize rs1
li x19, 0x8667af38d291dd2c # initialize rs2
sra x5, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe0e02d8337f60eba # initialize rs1
li x21, 0x2c4c733c435ae66b # initialize rs2
sra x11, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x1e9b9e21bf20b062 # initialize rs1
li x25, 0xd6ba7a564c42c24d # initialize rs2
sra x13, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1e96cafaa9ab98f6 # initialize rs1
li x3, 0xf8eb9e5c05ec59ca # initialize rs2
sra x17, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xaa73defa02ecc042 # initialize rs1
li x3, 0x6845d88226946cdd # initialize rs2
sra x24, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd060985cbcda4be1 # initialize rs1
li x8, 0xc1542d4e2a66c862 # initialize rs2
sra x20, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc8b70ad99897b996 # initialize rs1
li x24, 0x55b3240c6091cef0 # initialize rs2
sra x7, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2982448fc60caa31 # initialize rs1
li x9, 0x4363446d5b75dfee # initialize rs2
sra x13, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8f8667bf9e5a94f3 # initialize rs1
li x15, 0x37538525b8788cf9 # initialize rs2
sra x5, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5803d4e409253405 # initialize rs1
li x19, 0x9803bfa246cdc04e # initialize rs2
sra x22, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9e35f79705e8a0a6 # initialize rs1
li x3, 0xd510dbef603455a5 # initialize rs2
sra x17, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x45d1cec747a1a044 # initialize rs1
li x18, 0x82d416d7929e7fad # initialize rs2
sra x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xad0236f449965e34 # initialize rs1
li x9, 0xb2aeb9cf6ef5f9e5 # initialize rs2
sra x5, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc836c6fa3c52d2e1 # initialize rs1
li x19, 0xd5584c117fbb000a # initialize rs2
sra x6, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x90a7968f4a175dfa # initialize rs1
li x12, 0x5ef9d00c8f8ad8af # initialize rs2
sra x24, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc2872cdf87f8473b # initialize rs1
li x25, 0x128446d0203ba0f6 # initialize rs2
sra x20, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x81f9b791222aff59 # initialize rs1
li x0, 0x4825bccd8358ddeb # initialize rs2
sra x22, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0x205a1d528ef08720 # initialize rs1
li x1, 0x4200aa04ec00fd16 # initialize rs2
sra x6, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0x9acfccc2dc1f699e # initialize rs1
li x2, 0x54553a33a46211ed # initialize rs2
sra x1, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x16, 0x4ef6b3abad0fd795 # initialize rs1
li x3, 0x05487e35e316b5cd # initialize rs2
sra x5, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x9033fd50ad919376 # initialize rs1
li x4, 0xe58a4142e5b6b3e8 # initialize rs2
sra x25, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xa5e0b6c980f7cfa6 # initialize rs1
li x5, 0x13433c6c9c53b32a # initialize rs2
sra x1, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xce0dbd40c4e080b2 # initialize rs1
li x6, 0xb5aa83a377740398 # initialize rs2
sra x17, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xad911aefb0654ad9 # initialize rs1
li x7, 0xe234b015b4040a56 # initialize rs2
sra x6, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0xb3c2ca03beeb994e # initialize rs1
li x8, 0xcf7492e16527616e # initialize rs2
sra x21, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0x3d3c0637a87e1a09 # initialize rs1
li x9, 0x4f2c14cb923b51f9 # initialize rs2
sra x14, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x1e07bf064bf7c2e1 # initialize rs1
li x10, 0x712dcbc58c5f8d60 # initialize rs2
sra x11, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0x68e7eb5d4f2de119 # initialize rs1
li x11, 0x803565ef256f5114 # initialize rs2
sra x8, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0xe0dae1c5fc7dd98b # initialize rs1
li x12, 0x185a35608fdfe89e # initialize rs2
sra x30, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0x4404a6ed1f4c2b8e # initialize rs1
li x13, 0xf79cdb8f69854bbd # initialize rs2
sra x25, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xe61384a53fe97aaa # initialize rs1
li x14, 0x4a505b2adab27a61 # initialize rs2
sra x27, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0xb42326d52a2d8023 # initialize rs1
li x15, 0xfa8dcfcf9c7dee8e # initialize rs2
sra x14, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x25, 0x02c9cf6ee2314a82 # initialize rs1
li x16, 0x41cf5cb32ff88194 # initialize rs2
sra x27, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x12a5f27b2c904053 # initialize rs1
li x17, 0x72203f856ef44166 # initialize rs2
sra x14, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xd074f1e84146bcad # initialize rs1
li x18, 0x9e08b000c2382bb6 # initialize rs2
sra x14, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0xbc92d2adb50ce354 # initialize rs1
li x19, 0x067a87baea28ed76 # initialize rs2
sra x12, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x3, 0x2a9947c04314330f # initialize rs1
li x20, 0xef87a3bc7aabe887 # initialize rs2
sra x6, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x5, 0xb33acf3036ac1eaf # initialize rs1
li x21, 0xe8007fc8cb15e12b # initialize rs2
sra x22, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0x9ca3e3ba523290ac # initialize rs1
li x22, 0xdf3581977d208586 # initialize rs2
sra x16, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0x4327299d05d6b9b8 # initialize rs1
li x23, 0x450669a73acce0b4 # initialize rs2
sra x31, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x024cab26c92e71a5 # initialize rs1
li x24, 0x41b75666e820494e # initialize rs2
sra x18, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0xe83ce811212c50b6 # initialize rs1
li x25, 0x0865285b18c722e9 # initialize rs2
sra x13, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x15, 0x48967e70fbcd9999 # initialize rs1
li x26, 0x80b9da13f71d8974 # initialize rs2
sra x18, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0xad2919645e27a749 # initialize rs1
li x27, 0xc84a062020ca7ea6 # initialize rs2
sra x23, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x6, 0x088367cbc5caa435 # initialize rs1
li x28, 0xd433a09d54df8ac1 # initialize rs2
sra x1, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x1c894bc87105a8e0 # initialize rs1
li x29, 0xd23482a4571d1f5c # initialize rs2
sra x12, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0xf061efd852e6c2b8 # initialize rs1
li x30, 0x00efbef0c50388c7 # initialize rs2
sra x12, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0xf7553732de194180 # initialize rs1
li x31, 0x7ad9f8c833c4c269 # initialize rs2
sra x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0x66fd5b39fd44bcfb # initialize rs1
li x11, 0x7a7d59950fde4ec4 # initialize rs2
sra x0, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0xb73a31a0dbebad05 # initialize rs1
li x8, 0xad6aba95fb329bba # initialize rs2
sra x1, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0x72fffd35fa7f81d9 # initialize rs1
li x29, 0x9d2afe969d6ec417 # initialize rs2
sra x2, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xd5440ad034cce8df # initialize rs1
li x28, 0x7fc7407ec6ef7aaa # initialize rs2
sra x3, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x8a2d61ab5e62cffb # initialize rs1
li x24, 0x1ccc2fd2549acb6a # initialize rs2
sra x4, x16, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xcde20ffff16e02e0 # initialize rs1
li x28, 0x1dd8ac83ca43c3f2 # initialize rs2
sra x5, x20, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x1a7fe5347401aae1 # initialize rs1
li x3, 0xf6d0372e7f156953 # initialize rs2
sra x6, x24, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x86a3ef94f3b174ce # initialize rs1
li x22, 0x19b31c24224f169b # initialize rs2
sra x7, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0x80f9bdf44518ef73 # initialize rs1
li x7, 0x6b618bc599e797a7 # initialize rs2
sra x8, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x9356e0c34e2715a6 # initialize rs1
li x16, 0x28741812dd2ba71a # initialize rs2
sra x9, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xe049bb0190f0f0b2 # initialize rs1
li x1, 0x04d82964b4340831 # initialize rs2
sra x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x9, 0x68ad6f02e117cc8c # initialize rs1
li x24, 0x655da933db69cbb8 # initialize rs2
sra x11, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0x81d836976f1ba0aa # initialize rs1
li x8, 0x034f9f726aaa1dc9 # initialize rs2
sra x12, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0x8361172816eb0fb0 # initialize rs1
li x16, 0x7e23117ace37ac63 # initialize rs2
sra x13, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8fff19e428fd4f97 # initialize rs1
li x24, 0x1c6e917d8355fb0b # initialize rs2
sra x14, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x56831226b890d536 # initialize rs1
li x26, 0x6552601bf79317b5 # initialize rs2
sra x15, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0319463947e141c7 # initialize rs1
li x21, 0x5e8a7f3a293ab476 # initialize rs2
sra x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0xe733eab5291bb85e # initialize rs1
li x1, 0x710e428ab218d1bc # initialize rs2
sra x17, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0x76187f42d95b3e7f # initialize rs1
li x9, 0x998fb4a8970ea4d2 # initialize rs2
sra x18, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0xf8ca45862c8e7898 # initialize rs1
li x23, 0x436a91fdba0460b6 # initialize rs2
sra x19, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x6408063efc0b22bd # initialize rs1
li x5, 0xa6c78a157f475a14 # initialize rs2
sra x20, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0x8191cf38ad486662 # initialize rs1
li x30, 0x28658da04736ce63 # initialize rs2
sra x21, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0x64935bfba40d81d9 # initialize rs1
li x2, 0xc5ef7cefa3b1a9bc # initialize rs2
sra x22, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x54d68d5ce27a6a55 # initialize rs1
li x25, 0x794161baef0de370 # initialize rs2
sra x23, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x333d812b87f4917a # initialize rs1
li x29, 0x2eeb138155870c84 # initialize rs2
sra x24, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x4e1e5bf5341eeb08 # initialize rs1
li x18, 0x482be76d416be44a # initialize rs2
sra x25, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x497cf0296bcd9560 # initialize rs1
li x11, 0x761ad64f0a82ce97 # initialize rs2
sra x26, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x206cbcb9a6e45505 # initialize rs1
li x17, 0xb589f4c0ef5ae2f6 # initialize rs2
sra x27, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0xc320ee94994c11e7 # initialize rs1
li x31, 0x4bff7d5e927e0f4a # initialize rs2
sra x28, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x13a6d24bf18fcb54 # initialize rs1
li x26, 0xd05958bb09c06666 # initialize rs2
sra x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x471d808e8f628459 # initialize rs1
li x11, 0x5b585d5a1c124d1d # initialize rs2
sra x30, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0xec22eea911852fb3 # initialize rs1
li x2, 0xd12de115bc1f00c1 # initialize rs2
sra x31, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
li x10, 0xa077a76e77bbfd89 # initialize rs2
sra x12, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x24, 0xaf1cb266f94c4b88 # initialize rs2
sra x14, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x13, 0xc4d2d938766ab34f # initialize rs2
sra x6, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0x8000000000000000 # initialize rs1
li x12, 0x2a39e716633ea241 # initialize rs2
sra x23, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
li x20, 0x3f59c1c8ef442771 # initialize rs2
sra x6, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x24, 0x7d929660dca4c257 # initialize rs2
sra x27, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x15, 0x08506061f62e334e # initialize rs2
sra x2, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x9, 0x5ea037d67dde0831 # initialize rs2
sra x29, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x11, 0x861d663e13449cab # initialize rs2
sra x6, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xbcda1baf64ce3257 # initialize rs2
sra x19, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xcce1145161b29e50 # initialize rs2
sra x7, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
li x14, 0xd1bc31c1893362c2 # initialize rs2
sra x26, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x00000000ffffffff # initialize rs1
li x21, 0x9f92e046e33292cf # initialize rs2
sra x8, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x16, 0xbc871618e94ee623 # initialize rs2
sra x8, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
li x22, 0x021eecc16ede7d6f # initialize rs2
sra x19, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x1, 0xbb5072264d7266cf # initialize rs2
sra x30, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x0f4a3ca87dd4f376 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sra x11, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x865f107104f70f87 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sra x2, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0xf055b67f46983835 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sra x9, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x7, 0xa619fda5687932f6 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sra x21, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x49f8bb2ab8f6a0ea # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sra x1, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x11, 0xa15f2a32f6a63b4d # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sra x5, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0x63e6a1b63ef3d695 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sra x20, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x3, 0xb99e2acad6a577ec # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sra x9, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x28, 0x461856b418d1edeb # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sra x5, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x15, 0x1650d256b8e85e12 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sra x10, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaee4b1ff9d78f427 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x15, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x9, 0xdb90ecaa124cd1b5 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sra x7, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0x6fa0083689d8fc3b # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sra x30, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x3f0ed442b30d8e55 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sra x14, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0xf8cc83f2a72de930 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
sra x3, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x989199a5162cd4e7 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sra x12, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sra x18, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sra x12, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x8, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sra x29, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x19, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sra x22, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x21, 0x0000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sra x11, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sra x10, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sra x14, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sra x18, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000000000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sra x11, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sra x26, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x8, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x6, 0x0000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sra x16, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sra x14, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sra x26, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x7, 0x0000000000000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sra x22, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x21, 0x0000000000000000 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sra x14, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
sra x14, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sra x5, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x1, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sra x26, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x22, 0x0000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sra x31, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sra x17, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sra x30, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sra x28, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sra x17, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
sra x10, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sra x24, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x29, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x29, 0x0000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sra x7, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sra x30, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x13, 0x0000000000000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sra x25, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x10, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sra x25, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x14, 0x0000000000000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
sra x5, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sra x29, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sra x29, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sra x17, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x10, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sra x9, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x31, 0x0000000000000002 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sra x22, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sra x13, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sra x17, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000002 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
sra x13, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sra x11, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000002 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sra x6, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000002 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x14, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sra x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sra x25, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sra x21, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x29, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sra x26, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x16, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sra x2, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x24, 0x8000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sra x9, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x31, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sra x21, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x19, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sra x8, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sra x24, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x28, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sra x29, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sra x30, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sra x26, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sra x29, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sra x17, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x8000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sra x28, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x8000000000000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x31, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x7, 0x8000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sra x18, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x8000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sra x24, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sra x3, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x17, 0x8000000000000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sra x30, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x8, 0x8000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sra x11, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x1, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sra x26, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x8, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sra x21, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x21, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sra x22, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x18, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sra x1, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sra x14, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sra x24, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sra x10, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sra x11, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sra x21, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sra x20, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x8000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x16, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sra x5, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x24, 0x8000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sra x25, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sra x26, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x23, 0x8000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sra x2, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x3, 0x8000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sra x10, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x16, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sra x14, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sra x25, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x16, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sra x2, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x1, 0x7fffffffffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sra x31, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sra x16, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sra x22, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sra x23, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sra x7, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sra x18, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0x7fffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sra x28, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x7fffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x7, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x5, 0x7fffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sra x7, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sra x11, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sra x28, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x29, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sra x2, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x24, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sra x16, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x13, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sra x12, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
sra x8, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sra x9, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sra x10, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x7ffffffffffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sra x8, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sra x8, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sra x15, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sra x12, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sra x13, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x19, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
sra x18, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7ffffffffffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x27, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sra x19, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sra x5, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sra x22, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x24, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sra x3, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sra x7, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x9, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sra x5, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x20, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sra x12, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x22, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
sra x1, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x8, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sra x30, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x6, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sra x18, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sra x26, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0xffffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sra x12, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sra x22, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x10, 0xffffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sra x18, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0xffffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
sra x24, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xffffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x19, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x17, 0xffffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sra x10, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sra x26, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x20, 0xffffffffffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sra x14, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x3, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sra x10, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sra x27, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x5, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sra x3, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x15, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sra x6, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sra x12, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sra x22, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sra x21, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sra x17, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
sra x25, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sra x23, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sra x25, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0xfffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
sra x9, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xfffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x16, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0xfffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sra x23, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sra x11, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sra x24, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x23, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
sra x12, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sra x10, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sra x10, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sra x8, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sra x22, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
sra x26, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sra x28, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sra x19, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sra x30, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sra x7, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sra x25, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
sra x23, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sra x2, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sra x1, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sra x20, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sra x26, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sra x8, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sra x18, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sra x9, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sra x29, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sra x15, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sra x10, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sra x7, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
sra x8, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sra x31, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sra x26, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sra x26, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x10, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sra x17, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sra x30, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sra x21, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sra x5, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sra x29, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x2, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sra x8, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x8, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sra x23, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x19, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sra x3, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x26, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sra x9, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x5, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sra x9, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sra x8, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x15, 0x5555555555555555 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sra x25, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sra x24, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x26, 0x5555555555555555 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sra x23, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x28, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sra x23, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x5555555555555555 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x13, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sra x9, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sra x19, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x24, 0x5555555555555555 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sra x18, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sra x26, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x31, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sra x22, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x7, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sra x8, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sra x13, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sra x8, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x20, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sra x3, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sra x7, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sra x30, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sra x9, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sra x17, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sra x1, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
sra x3, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000ffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x6, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x00000000ffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sra x26, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sra x17, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
sra x21, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x24, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sra x8, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sra x27, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x12, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sra x17, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sra x24, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x2, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sra x19, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x27, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sra x25, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x15, 0x00000000fffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sra x11, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sra x16, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sra x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sra x30, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sra x27, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x25, 0x00000000fffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sra x28, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x00000000fffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x9, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sra x18, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x12, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sra x23, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sra x16, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x14, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sra x15, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x30, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sra x25, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x1, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sra x31, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x9, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sra x23, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sra x10, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x20, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sra x7, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x10, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sra x29, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sra x5, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sra x22, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x18, 0x0000000100000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sra x30, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sra x22, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000100000000 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sra x27, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000100000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x25, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x9, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sra x10, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sra x6, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sra x10, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sra x13, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x11, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sra x3, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x5, 0x0000000100000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
sra x6, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x15, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sra x20, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x5, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sra x25, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x5, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sra x2, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x16, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sra x19, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sra x13, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sra x18, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sra x21, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sra x2, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000100000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
sra x25, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sra x14, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x5, 0x0000000100000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sra x26, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x7, 0x0000000100000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sra x27, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x10, 0x0000000100000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sra x7, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x28, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sra x25, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sra x31, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5665a07402fb1fb3 # initialize rs1
li x0, 0xc5b90bcb368ed92a # initialize rs2
sra x10, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x87ffc41ccfd42b28 # initialize rs1
li x1, 0x56c005ed798631dd # initialize rs2
sra x24, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xed076b403626c84c # initialize rs1
li x2, 0x1f02102b2c683445 # initialize rs2
sra x6, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2fa352699dd7e4ee # initialize rs1
li x3, 0x94a6c78d82834eb8 # initialize rs2
sra x27, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd2b68668e93ded38 # initialize rs1
li x4, 0x6360acfb40d663cc # initialize rs2
sra x3, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd52274a1642349dc # initialize rs1
li x5, 0xa3754e0dbc07967c # initialize rs2
sra x24, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36783ca3478fdcd9 # initialize rs1
li x6, 0xf131c18148d327db # initialize rs2
sra x21, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x535d92384dc3d60e # initialize rs1
li x7, 0xc0a20ccc83465d4d # initialize rs2
sra x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x749373112cf956f3 # initialize rs1
li x8, 0xdbf094ca71aa0312 # initialize rs2
sra x17, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1d31dade571663cf # initialize rs1
li x9, 0x6d44429d595b5902 # initialize rs2
sra x25, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xc9b80a8441f41baa # initialize rs1
li x10, 0xe67cd8d29bd94d00 # initialize rs2
sra x25, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb31ddf1421f266e0 # initialize rs1
li x11, 0xdf6bbb57fcc190ff # initialize rs2
sra x28, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x41900d9052091d76 # initialize rs1
li x12, 0x70261349ed86dfb8 # initialize rs2
sra x23, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xb558e3e6a810a124 # initialize rs1
li x13, 0x6da361ffa66244bc # initialize rs2
sra x11, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xca29a29c0c16d6c5 # initialize rs1
li x14, 0x032154aafcc2fe39 # initialize rs2
sra x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xe2bf8dec02b38ae4 # initialize rs1
li x15, 0x4a926cf22072e27d # initialize rs2
sra x5, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x12f48cb2320e628f # initialize rs1
li x16, 0x47bb80b4e086564e # initialize rs2
sra x22, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x194974e0ee86c127 # initialize rs1
li x17, 0x46f337af914821f4 # initialize rs2
sra x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xe0c208b25f850c68 # initialize rs1
li x18, 0x94b110a4b7bbd839 # initialize rs2
sra x28, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb84361bc0c30de0c # initialize rs1
li x19, 0x651a49ab8a81ff74 # initialize rs2
sra x7, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xafdaa701a2a2677b # initialize rs1
li x20, 0xf7390d8cb1058424 # initialize rs2
sra x16, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x962763861e3a3657 # initialize rs1
li x21, 0xa89cd05b85755015 # initialize rs2
sra x24, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xbbd9d4ed72780c8b # initialize rs1
li x22, 0x0eef44255a3a643e # initialize rs2
sra x7, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8f0592eb17bbe36b # initialize rs1
li x23, 0x3399b32090e78fca # initialize rs2
sra x17, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7370aecd8c452038 # initialize rs1
li x24, 0xa191b7207c156e07 # initialize rs2
sra x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xc3adc37743c88f4d # initialize rs1
li x25, 0xc8c298e5d5d05acc # initialize rs2
sra x5, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc169be6715867036 # initialize rs1
li x26, 0xe95a6d65eafbb706 # initialize rs2
sra x29, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x538b18314b0e9749 # initialize rs1
li x27, 0xae7a6cca9dffb9a2 # initialize rs2
sra x15, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x2f5f2bbd855647cd # initialize rs1
li x28, 0x99ac506ab07508ab # initialize rs2
sra x30, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2f0e6c9c891ad55d # initialize rs1
li x29, 0x1a2a5633c2ed8938 # initialize rs2
sra x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x055e383ca3f4e8e8 # initialize rs1
li x30, 0x808b8d76fc83479b # initialize rs2
sra x28, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x95d00bd525173dc8 # initialize rs1
li x31, 0x68f764b085c690b9 # initialize rs2
sra x1, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x38928194fdfc1f29 # initialize rs1
li x17, 0x494066a7bb5f7149 # initialize rs2
sra x0, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc8dc307a30afd1d1 # initialize rs1
li x21, 0x4dcc33fdc89619e2 # initialize rs2
sra x1, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x0e1713d682dff656 # initialize rs1
li x1, 0xfb32b961be6585de # initialize rs2
sra x2, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa4cfc549838ac56e # initialize rs1
li x27, 0x828faf56ac117219 # initialize rs2
sra x3, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xde42c8315a3b351a # initialize rs1
li x23, 0xb2a9aae6b2dd3271 # initialize rs2
sra x4, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa2cfdad1074a3c9c # initialize rs1
li x14, 0xf5ed659a6c21aa63 # initialize rs2
sra x5, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4af67504707c4a14 # initialize rs1
li x12, 0x132c772d07372e0e # initialize rs2
sra x6, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbee6ca2d1e7ac3b9 # initialize rs1
li x14, 0x696a4788372a7749 # initialize rs2
sra x7, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe43eb37d799f22b9 # initialize rs1
li x18, 0xa120ac81d83d6d95 # initialize rs2
sra x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd1c580f13242ead5 # initialize rs1
li x17, 0xda36bc360104470b # initialize rs2
sra x9, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x82e588c633d32c17 # initialize rs1
li x17, 0x8a0e5e8eba54fc84 # initialize rs2
sra x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2098447fb8cd1a6d # initialize rs1
li x27, 0x5ab5b3e233bb45ef # initialize rs2
sra x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x71c8285d4f3d3a66 # initialize rs1
li x26, 0x91e25a4206ca5810 # initialize rs2
sra x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x86efa62be3a58b49 # initialize rs1
li x24, 0x0600b3115bcf24a1 # initialize rs2
sra x13, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9b2a121f4e610100 # initialize rs1
li x26, 0x9200edfa1bd3c051 # initialize rs2
sra x14, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf7b29b2763702e07 # initialize rs1
li x11, 0x8a8d54282923ef47 # initialize rs2
sra x15, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd299f18d965307e2 # initialize rs1
li x14, 0x14ff70fd26fea931 # initialize rs2
sra x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe805ca8e3ab9fefb # initialize rs1
li x28, 0x6ac27e8917062dda # initialize rs2
sra x17, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x3cfde13a9760104e # initialize rs1
li x10, 0x8b68c63dde735397 # initialize rs2
sra x18, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1ac29ccd8396a931 # initialize rs1
li x19, 0x271b24b6663e5a39 # initialize rs2
sra x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb674f9a17262beed # initialize rs1
li x25, 0x4e1e29dd55685735 # initialize rs2
sra x20, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x59f78c135d5ec570 # initialize rs1
li x27, 0xa687e42ceb498e3f # initialize rs2
sra x21, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6906e7093159b287 # initialize rs1
li x25, 0x4e6c3ec06251aa54 # initialize rs2
sra x22, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x572607a2aae4e093 # initialize rs1
li x3, 0xe095890ff7776a67 # initialize rs2
sra x23, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa54d9e9b1d257233 # initialize rs1
li x30, 0xa9369d96a0517ed4 # initialize rs2
sra x24, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x59a7c2916112b493 # initialize rs1
li x17, 0xe74fe633c1b7801c # initialize rs2
sra x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcea930a85468cb23 # initialize rs1
li x2, 0xc48b603dbd50131b # initialize rs2
sra x26, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf3eae491d0444b7a # initialize rs1
li x13, 0xc815dd7c208afa45 # initialize rs2
sra x27, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x750eeec5ac5c6034 # initialize rs1
li x9, 0xbe703b31a6b82b08 # initialize rs2
sra x28, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc794c967e9ac0076 # initialize rs1
li x10, 0xc961bc759bbc28a1 # initialize rs2
sra x29, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcb6d31e94c7ad45c # initialize rs1
li x8, 0x01dc22059b4d9808 # initialize rs2
sra x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x1690833116a6e27c # initialize rs1
li x27, 0x6b840364981ee5ae # initialize rs2
sra x31, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x19, 0xc55f4db5c34591df # initialize rs1
li x0, 0xdc07d03d4e1c6423 # initialize rs2
sra x0, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x20, 0xaeedf31d6e558306 # initialize rs1
li x1, 0xac5a6399897ffcce # initialize rs2
sra x1, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x19feaeda3e749f9d # initialize rs1
li x2, 0x356387dd527476c0 # initialize rs2
sra x2, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x22, 0x8c15f84fa71b0f9a # initialize rs1
li x3, 0x5693383379f66b50 # initialize rs2
sra x3, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x7149c879253aa80b # initialize rs1
li x4, 0x20b4c6bd05ef5aa6 # initialize rs2
sra x4, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xcbfa8c8ef7f0c038 # initialize rs1
li x5, 0x6520800a41b0b233 # initialize rs2
sra x5, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x9702127bb470e4a8 # initialize rs1
li x6, 0x71eddf6148123d11 # initialize rs2
sra x6, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0xc92efb3e00f5ba75 # initialize rs1
li x7, 0xea1860be0be5ed05 # initialize rs2
sra x7, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0xdfbfecf57ffe2723 # initialize rs1
li x8, 0xff9e5770ed32dac9 # initialize rs2
sra x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x5, 0x9296b880b46c9804 # initialize rs1
li x9, 0xd6a86ce94458ab2f # initialize rs2
sra x9, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x17, 0x29a91b9be34225dc # initialize rs1
li x10, 0xbc2ea974c3b5765b # initialize rs2
sra x10, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x25, 0xb3147c485934ae1f # initialize rs1
li x11, 0xe1a8f99efaefa2d9 # initialize rs2
sra x11, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0x0967bbfe8c0c570f # initialize rs1
li x12, 0xf403335d85da5150 # initialize rs2
sra x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0x9981a37645e0dab3 # initialize rs1
li x13, 0xad65145c9afb0bb3 # initialize rs2
sra x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x5, 0x3e8b6086d2c27b71 # initialize rs1
li x14, 0x5976a2126617fc32 # initialize rs2
sra x14, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0x5c44d48247a77fa7 # initialize rs1
li x15, 0xe346a3637d12e468 # initialize rs2
sra x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x17, 0x1db0cc59874d4b07 # initialize rs1
li x16, 0xcd5d3d75806d6097 # initialize rs2
sra x16, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x12, 0x86b87f8b7f03ec01 # initialize rs1
li x17, 0xf7ace6b519e00534 # initialize rs2
sra x17, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x28, 0xa92adba54b4ca9fe # initialize rs1
li x18, 0x4cff2d2157910289 # initialize rs2
sra x18, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0xa7c709638eae24bd # initialize rs1
li x19, 0xcfb140a4188f0429 # initialize rs2
sra x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x15, 0x604000db31e46670 # initialize rs1
li x20, 0xa1391f80b3ba9c41 # initialize rs2
sra x20, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0x09185ce8687dc9a5 # initialize rs1
li x21, 0x37ef7da56327751f # initialize rs2
sra x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0x1eb08ddfeb21e81d # initialize rs1
li x22, 0xfea62959e1ae6f20 # initialize rs2
sra x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x19, 0x3397f4aff0b4250e # initialize rs1
li x23, 0xb222bb32f6b4d614 # initialize rs2
sra x23, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x2, 0x095014bc593d2669 # initialize rs1
li x24, 0x3946213dd439b8a3 # initialize rs2
sra x24, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x2, 0xd96d3fb35d7e1db1 # initialize rs1
li x25, 0xce29f03e39d278e5 # initialize rs2
sra x25, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x25, 0x689b6992861bcb3a # initialize rs1
li x26, 0x22584c8e23172681 # initialize rs2
sra x26, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x12, 0xf103ec2d2898ffa4 # initialize rs1
li x27, 0x6fa882ccd1cd3b40 # initialize rs2
sra x27, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0xaa8be384bed4ad14 # initialize rs1
li x28, 0xebbb6c7ece39ab80 # initialize rs2
sra x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x8, 0x777e548258a5c79c # initialize rs1
li x29, 0x1fff83bae378d5d1 # initialize rs2
sra x29, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x6bc977267d238697 # initialize rs1
li x30, 0x134c4c94eda6cc1b # initialize rs2
sra x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x24, 0x05a67941d9a6ccb7 # initialize rs1
li x31, 0x7ab6a9bef4e42635 # initialize rs2
sra x31, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd1d5fa6342f4c46c # initialize rs1
li x0, 0x6d844f243c277165 # initialize rs2
sra x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x55a56a908b0d7e5d # initialize rs1
li x1, 0x0ebe0f8a1ce71a87 # initialize rs2
sra x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x351477c08b630da7 # initialize rs1
li x2, 0x252fec988c4dfe7c # initialize rs2
sra x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x8aa5a0eea815dfee # initialize rs1
li x3, 0xec3196458041a6cf # initialize rs2
sra x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x97cee75fd0da417d # initialize rs1
li x4, 0x1a9ccc677a900156 # initialize rs2
sra x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x428ebec27b3a6dcf # initialize rs1
li x5, 0x8feed678b48051be # initialize rs2
sra x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x25d9828df20fb495 # initialize rs1
li x6, 0x435a0753dd769f42 # initialize rs2
sra x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6faf111bdb04387e # initialize rs1
li x7, 0x6433cdfe84b1c6f8 # initialize rs2
sra x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbbcfde749d39be68 # initialize rs1
li x8, 0xe1760741d6c6950a # initialize rs2
sra x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa0ad32857db60a5f # initialize rs1
li x9, 0xba6f80cc6b3454fd # initialize rs2
sra x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3a344f74ee7107cb # initialize rs1
li x10, 0xd8a09f3d20ca5405 # initialize rs2
sra x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x94a462bd8eb5bf08 # initialize rs1
li x11, 0x442830aa8275adbd # initialize rs2
sra x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8872339d041c3eff # initialize rs1
li x12, 0x05fcb71e005ab7c9 # initialize rs2
sra x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x8ad100ddcfe5517d # initialize rs1
li x13, 0x9f82e53adc21b789 # initialize rs2
sra x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8a0599bd306038c3 # initialize rs1
li x14, 0xc2a681e0b74f0345 # initialize rs2
sra x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xa17b62ff7858f281 # initialize rs1
li x15, 0x6a6c431bcdd7b767 # initialize rs2
sra x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x60a912d68cfc7e3f # initialize rs1
li x16, 0xdcca596690cd46f9 # initialize rs2
sra x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x03c7d8e98a443eff # initialize rs1
li x17, 0x0275d0372bd0adfa # initialize rs2
sra x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x667d70f02a4e0686 # initialize rs1
li x18, 0x065eb421471b944f # initialize rs2
sra x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe31015cf8036c325 # initialize rs1
li x19, 0xc79fe54fe644cadc # initialize rs2
sra x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6fcd1c1dd841b2fc # initialize rs1
li x20, 0xcdebab7252b68d24 # initialize rs2
sra x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x6452cecef669fbb1 # initialize rs1
li x21, 0xaab7f4dd8bb4d668 # initialize rs2
sra x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x77b3eaa79d1e47d2 # initialize rs1
li x22, 0xb10470e5ee8a0eb7 # initialize rs2
sra x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x41beab24bce0aa3e # initialize rs1
li x23, 0x92b1d6cd31009ffc # initialize rs2
sra x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x8bcfc82b7b652ffd # initialize rs1
li x24, 0x031bde1f8dcd6ec1 # initialize rs2
sra x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x27e47e425e83fca4 # initialize rs1
li x25, 0x16a41b11d0e0f103 # initialize rs2
sra x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb33e4dcca4574ff4 # initialize rs1
li x26, 0xd181ba7f6584490b # initialize rs2
sra x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x1ee7929d97b6948d # initialize rs1
li x27, 0xea1830e51e97d3f7 # initialize rs2
sra x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9f258559e5a7da75 # initialize rs1
li x28, 0x388fbae330c9bc7c # initialize rs2
sra x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5a439fd6fc1b7293 # initialize rs1
li x29, 0x4530e6cf573557dc # initialize rs2
sra x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x3919fbea5dc23b0c # initialize rs1
li x30, 0x0ad19c76ffc31d58 # initialize rs2
sra x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5ad7f18e9d5f18e6 # initialize rs1
li x31, 0x3eaa891c3507296c # initialize rs2
sra x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x21, x11 # perform first operation
sra x16, x3, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x22, x23 # perform first operation
sra x1, x3, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x19, x31 # perform first operation
sra x30, x25, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x30, x11 # perform first operation
sra x11, x23, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x7, x2 # perform first operation
sra x7, x31, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x20, x23 # perform first operation
sra x6, x28, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x27, x12 # perform first operation
sra x13, x17, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x14, x1 # perform first operation
sra x19, x23, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x26, x31 # perform first operation
sra x8, x28, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x28, x2 # perform first operation
sra x28, x1, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x12, x3 # perform first operation
sra x3, x28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x2, x14 # perform first operation
sra x17, x16, x8 # perform second (triggering) operation

.EQU SIGSIZE,4096


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
