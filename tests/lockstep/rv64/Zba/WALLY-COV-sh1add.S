///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-sh1add.S
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
li x0, 0xd71bfc02099fb693 # initialize rs1
li x22, 0x28a5aa24e2973040 # initialize rs2
sh1add x26, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc2d8cd2ab4a7c1b8 # initialize rs1
li x23, 0x5ba3eac2cd5a9174 # initialize rs2
sh1add x24, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0ca278b96d2c897c # initialize rs1
li x28, 0x0fc10d3fd7f7a440 # initialize rs2
sh1add x3, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x1534346b30c83e38 # initialize rs1
li x28, 0x94be9d32dd22e94e # initialize rs2
sh1add x12, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7bb84941eff801d8 # initialize rs1
li x26, 0x78a3d49c39e07076 # initialize rs2
sh1add x29, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf3951f294cf7a182 # initialize rs1
li x22, 0x772f6dc7bd2cff69 # initialize rs2
sh1add x19, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9afc320c7234b5d0 # initialize rs1
li x21, 0x757637c303c0c525 # initialize rs2
sh1add x4, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8e73a75963ea080e # initialize rs1
li x29, 0x85c38630076d861c # initialize rs2
sh1add x4, x7, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xfdf7402f73b16dc1 # initialize rs1
li x16, 0xc9f92d8252da52bc # initialize rs2
sh1add x31, x8, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd5cd3b4a63940ad4 # initialize rs1
li x16, 0x075df9f5c65b7b98 # initialize rs2
sh1add x28, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xccd37eba209ebba3 # initialize rs1
li x13, 0x00ef480ff71161ec # initialize rs2
sh1add x26, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe2240e0bf1cccd1f # initialize rs1
li x6, 0x5dc9b3db9639a106 # initialize rs2
sh1add x10, x11, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x935db0f215bde1eb # initialize rs1
li x1, 0x416ca965020c0f0a # initialize rs2
sh1add x13, x12, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc4b7575e6cf0228d # initialize rs1
li x23, 0x294bfb675e232059 # initialize rs2
sh1add x15, x13, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x99eb2925a94942f5 # initialize rs1
li x17, 0xfe37a58e7082f450 # initialize rs2
sh1add x24, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x71bafbb389cfe710 # initialize rs1
li x14, 0x8243868d7bb6c945 # initialize rs2
sh1add x4, x15, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xae862df821b95a31 # initialize rs1
li x8, 0x6c4046eafad04920 # initialize rs2
sh1add x24, x16, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa4a29271c39d435d # initialize rs1
li x26, 0x0f4f3470383f81b2 # initialize rs2
sh1add x3, x17, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x7240db4034830be5 # initialize rs1
li x15, 0x0daaf019f4b215a0 # initialize rs2
sh1add x7, x18, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xfb3b2e884952d288 # initialize rs1
li x3, 0xe47065ed9607a6c0 # initialize rs2
sh1add x17, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbedd00953981e70c # initialize rs1
li x8, 0x7b2ad0ff6d13003f # initialize rs2
sh1add x10, x20, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0e75e8372c6b2668 # initialize rs1
li x31, 0xf3150abf1c7b79bf # initialize rs2
sh1add x16, x21, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x90615a0c4996a1f6 # initialize rs1
li x19, 0x50647ef0fd2581dd # initialize rs2
sh1add x3, x22, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x117d904bae11258a # initialize rs1
li x10, 0x6955874c16fb2fe6 # initialize rs2
sh1add x8, x23, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb139fa5b885ee99e # initialize rs1
li x15, 0xea893a5690622db0 # initialize rs2
sh1add x12, x24, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd61a8b8720939bbd # initialize rs1
li x3, 0xa819e3b846b784cd # initialize rs2
sh1add x14, x25, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x63a8bef7005c8b22 # initialize rs1
li x22, 0xa70a3c0779208166 # initialize rs2
sh1add x4, x26, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x415dfed2f1c2d662 # initialize rs1
li x17, 0x9ca44426b9fb7036 # initialize rs2
sh1add x14, x27, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x86245bc87c843eae # initialize rs1
li x15, 0x5ccc4562aae9adc9 # initialize rs2
sh1add x8, x28, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x032309bc8e0c5c18 # initialize rs1
li x17, 0xd3fc66609a466693 # initialize rs2
sh1add x19, x29, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb6f5b05d84919271 # initialize rs1
li x26, 0x4585f73f282b36b4 # initialize rs2
sh1add x27, x30, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbea51dbad620734e # initialize rs1
li x1, 0xb1620f3063b86cdf # initialize rs2
sh1add x28, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x54a45d4bd7029f4c # initialize rs1
li x0, 0xf7534762bc7ca721 # initialize rs2
sh1add x18, x2, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0xa3a3d82751f2d536 # initialize rs1
li x1, 0x933f4a51e9778d3e # initialize rs2
sh1add x30, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0x78086d0f1c083854 # initialize rs1
li x2, 0x22eb595c8aa34dbe # initialize rs2
sh1add x3, x16, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x31, 0x22c39918b6a4dde2 # initialize rs1
li x3, 0xaf118da32a3a2c67 # initialize rs2
sh1add x15, x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
li x2, 0x008c4b762cbb63da # initialize rs1
li x4, 0x5e66a55ee7ddbf0a # initialize rs2
sh1add x24, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x4428f83b3d73406b # initialize rs1
li x5, 0x98ae284c1597d551 # initialize rs2
sh1add x3, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
li x11, 0xae31c52478296042 # initialize rs1
li x6, 0x2f959047c79e4fd2 # initialize rs2
sh1add x10, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x03b158707415da5c # initialize rs1
li x7, 0x5e788a937a97afc7 # initialize rs2
sh1add x3, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0x18fa2e3cbb97de5e # initialize rs1
li x8, 0xe79e0e7f5b6c37f1 # initialize rs2
sh1add x15, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0xa807f4338582011a # initialize rs1
li x9, 0x7ed66da8179f1cd5 # initialize rs2
sh1add x13, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x1856baea5c1b1dcf # initialize rs1
li x10, 0x4257aaad8c1902eb # initialize rs2
sh1add x11, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0x9bfd6586a25cce90 # initialize rs1
li x11, 0x9de1402ad205d071 # initialize rs2
sh1add x22, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0xfd48a3160fc0d2a0 # initialize rs1
li x12, 0x6361468bc89762d8 # initialize rs2
sh1add x22, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x9cf2c7b4ec6a4c04 # initialize rs1
li x13, 0x362db7f8793eba34 # initialize rs2
sh1add x18, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x24ca935feb160d34 # initialize rs1
li x14, 0x659f4df067da877f # initialize rs2
sh1add x31, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0x8115e9a4efeb9111 # initialize rs1
li x15, 0x2c2919817c7f7135 # initialize rs2
sh1add x17, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x28c8ec935fb7e160 # initialize rs1
li x16, 0xe2a2a1de7b86172a # initialize rs2
sh1add x24, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x762494dd132f0abe # initialize rs1
li x17, 0x44566630369a2e75 # initialize rs2
sh1add x1, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0xd1615d8cab6ed8f0 # initialize rs1
li x18, 0x71fcaca0931014ee # initialize rs2
sh1add x19, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x45041ef42d066fc2 # initialize rs1
li x19, 0xe50f3739350c8800 # initialize rs2
sh1add x24, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0x8d3b9a8d3c86ecf5 # initialize rs1
li x20, 0xc59ae044a8e27737 # initialize rs2
sh1add x12, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0xf52be44c923b845f # initialize rs1
li x21, 0x4e314c2fd13d9860 # initialize rs2
sh1add x19, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0xbde18f1df296756b # initialize rs1
li x22, 0x83adb5c28983d48b # initialize rs2
sh1add x20, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0xb0dc28e2ce9ba8b4 # initialize rs1
li x23, 0xf779632a1e722c1a # initialize rs2
sh1add x15, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0x27419cea27c54473 # initialize rs1
li x24, 0x3eaa66582db47364 # initialize rs2
sh1add x31, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0xcd321c74762fb090 # initialize rs1
li x25, 0x22bd2c446d921ab5 # initialize rs2
sh1add x16, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0xf35d5bf9c5235468 # initialize rs1
li x26, 0x69db31c9c48eab03 # initialize rs2
sh1add x14, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x6cdd6696e1b6a28e # initialize rs1
li x27, 0xe41bb2af2b19c211 # initialize rs2
sh1add x10, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x21ce27606d7c84d5 # initialize rs1
li x28, 0xa6144067b38a88f1 # initialize rs2
sh1add x18, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x92c88dc7140e9b64 # initialize rs1
li x29, 0xeaa9f297b764ce06 # initialize rs2
sh1add x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x95287c2ecb098acb # initialize rs1
li x30, 0x2c6d67bb9c141bd1 # initialize rs2
sh1add x20, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x936ce32d8166cf1d # initialize rs1
li x31, 0x6f75a21a9b8048c5 # initialize rs2
sh1add x27, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0xf85fcda6e7a215c6 # initialize rs1
li x2, 0xe265bbfa3a0b2376 # initialize rs2
sh1add x0, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x522576c33ef3fcf6 # initialize rs1
li x5, 0xd6564578c44b17de # initialize rs2
sh1add x1, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x42696b3e7449f722 # initialize rs1
li x9, 0xced12727132e03f4 # initialize rs2
sh1add x2, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0xd540acf5d52dde1f # initialize rs1
li x24, 0x8f6fb213d1ebb95f # initialize rs2
sh1add x3, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x7495c06fab192d17 # initialize rs1
li x6, 0x1b306dc3a5deeff4 # initialize rs2
sh1add x4, x14, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x6263f5f64af8da94 # initialize rs1
li x16, 0x1e641fd4967fd1e9 # initialize rs2
sh1add x5, x20, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x41955d4c3685b96e # initialize rs1
li x25, 0x83edf3496168540c # initialize rs2
sh1add x6, x9, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xfaf30a17206f1f24 # initialize rs1
li x20, 0x93b695c5ee7276da # initialize rs2
sh1add x7, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0xebbf453a8d36b172 # initialize rs1
li x20, 0x68c93399270c7fb6 # initialize rs2
sh1add x8, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x30, 0xede09385a3f004b9 # initialize rs1
li x22, 0xb009de81ec4e3aa1 # initialize rs2
sh1add x9, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0xf2739f1ff4c833eb # initialize rs1
li x16, 0xbc63db3a4ed074c6 # initialize rs2
sh1add x10, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x5c1aa2ddd779cad5 # initialize rs1
li x29, 0xb03e1632b9235b47 # initialize rs2
sh1add x11, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0xfa6e6569e793a86c # initialize rs1
li x21, 0x5c80632fd7004d6b # initialize rs2
sh1add x12, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0xaa097ae74dbd2384 # initialize rs1
li x22, 0xf31eb46f323b4513 # initialize rs2
sh1add x13, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x34a9a934043196a2 # initialize rs1
li x2, 0x4ddee871a3cbfe1c # initialize rs2
sh1add x14, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x22, 0x62b6737a1a79d30f # initialize rs1
li x6, 0x51ccdde2e0daf383 # initialize rs2
sh1add x15, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x1a86013f83c02c53 # initialize rs1
li x27, 0xed8f3f946b4ff467 # initialize rs2
sh1add x16, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x5fe6b8afc411430a # initialize rs1
li x23, 0x52e5b6a902deb5bc # initialize rs2
sh1add x17, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x3, 0x36e84fdbcaf2396b # initialize rs1
li x20, 0x9fa00fa7a8c9efef # initialize rs2
sh1add x18, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x41f5a6e7f0aa1996 # initialize rs1
li x26, 0x560b92830f425d25 # initialize rs2
sh1add x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xb19403e318698c39 # initialize rs1
li x5, 0x599d16d8142656a4 # initialize rs2
sh1add x20, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xf0af45a2d05f64f4 # initialize rs1
li x11, 0xbc48f1c585b756f0 # initialize rs2
sh1add x21, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0x299ed7bf81194f4a # initialize rs1
li x29, 0xd8cc0334d401b0f6 # initialize rs2
sh1add x22, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x3c249438ef6a0da9 # initialize rs1
li x26, 0x0403bca18ba20ad4 # initialize rs2
sh1add x23, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x8, 0xc4f0f255157333c2 # initialize rs1
li x24, 0x1640c9f444e2b8d0 # initialize rs2
sh1add x24, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x677f864bc83165f5 # initialize rs1
li x8, 0x7e9df944faf75764 # initialize rs2
sh1add x25, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x425b9c28d816239f # initialize rs1
li x24, 0xa5d4870a715ab4ab # initialize rs2
sh1add x26, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0x7c28e7bdc59431a5 # initialize rs1
li x23, 0x9e6068abd942c85d # initialize rs2
sh1add x27, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe4a0cffb58c15064 # initialize rs1
li x23, 0xbff253205de10d3d # initialize rs2
sh1add x28, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x777fe5faac0e923b # initialize rs1
li x29, 0x24f79254d2a67f00 # initialize rs2
sh1add x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf91c399d106c5bec # initialize rs1
li x2, 0x04fc069f126d6cfa # initialize rs2
sh1add x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0x0c04f0d634ede72e # initialize rs1
li x22, 0x90dcf94556d09a10 # initialize rs2
sh1add x31, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x0000000000000000 # initialize rs1
li x3, 0x78118a3e39cb9200 # initialize rs2
sh1add x23, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x15, 0x956bd2278a9bda31 # initialize rs2
sh1add x26, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x26, 0xba02f330d637d983 # initialize rs2
sh1add x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
li x29, 0x48682352666c03c5 # initialize rs2
sh1add x14, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0xf02adb392c24b061 # initialize rs2
sh1add x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x17, 0xe73af9ff05177ef5 # initialize rs2
sh1add x21, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x9, 0xa6e7bcbf82f8c118 # initialize rs2
sh1add x25, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x10, 0xc02ebba425c38bd8 # initialize rs2
sh1add x25, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x9, 0xc9761443a3675c75 # initialize rs2
sh1add x27, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x4190d8ba0c018593 # initialize rs2
sh1add x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xdb8f76743438e057 # initialize rs2
sh1add x23, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
li x28, 0x108cae47bd73901b # initialize rs2
sh1add x15, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x28, 0x9448489452ea663e # initialize rs2
sh1add x27, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x31, 0x5628977726359239 # initialize rs2
sh1add x8, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x7, 0x0000000100000000 # initialize rs1
li x3, 0x980a29190083585b # initialize rs2
sh1add x1, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x3, 0x6801caf013c48409 # initialize rs2
sh1add x14, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xc3ae3de133232ee3 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh1add x27, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x72f0a0bc895ac361 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh1add x11, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xebee386817d31251 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sh1add x31, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xfb26e9aaecdb3ba5 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh1add x2, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x16, 0xad73fa1d050ee9f6 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh1add x22, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x9c83f9f67b80ac7a # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sh1add x3, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x18, 0x3ba06f276d0a1f25 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh1add x15, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x5, 0x3135bf68369b220d # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh1add x6, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x2, 0x6de7f8be0e41e1c1 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh1add x28, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x31, 0x52087ba38b46e0e1 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh1add x8, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x4a83b8e023289954 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x7, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x470d436b54ff4c8c # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sh1add x6, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xdf319e1dbf43cda7 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sh1add x27, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0xba71a8bd3ebca484 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add x11, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0x1b3df3abf6ff9bfc # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh1add x12, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x24, 0x29895e81f61c0721 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sh1add x9, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add x14, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x29, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add x18, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sh1add x31, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x7, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh1add x6, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh1add x20, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
sh1add x31, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sh1add x8, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh1add x1, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add x22, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000000000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add x13, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x28, 0x0000000000000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add x14, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sh1add x16, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh1add x22, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add x13, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x27, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add x5, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh1add x16, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x2, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh1add x17, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh1add x9, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
sh1add x27, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
sh1add x30, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh1add x31, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh1add x17, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh1add x21, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh1add x26, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh1add x13, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x22, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x20, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add x12, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh1add x28, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh1add x27, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x5, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add x25, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x21, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh1add x17, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh1add x7, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x12, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add x20, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh1add x9, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh1add x20, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sh1add x2, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh1add x26, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh1add x13, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh1add x30, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh1add x26, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add x28, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000002 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x20, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x28, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh1add x8, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh1add x7, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sh1add x12, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x28, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sh1add x25, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x15, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh1add x22, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x19, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sh1add x7, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x6, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
sh1add x13, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x12, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh1add x2, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sh1add x3, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x26, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sh1add x29, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sh1add x29, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh1add x21, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh1add x16, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sh1add x22, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x9, 0x8000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh1add x8, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000000 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x29, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x23, 0x8000000000000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sh1add x28, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh1add x29, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sh1add x6, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh1add x22, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x3, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add x18, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh1add x31, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh1add x17, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x14, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh1add x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x29, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sh1add x13, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh1add x13, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh1add x2, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh1add x24, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh1add x23, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh1add x21, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
sh1add x14, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x8000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x6, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh1add x9, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh1add x2, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sh1add x29, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x27, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh1add x8, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x25, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh1add x2, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x10, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sh1add x11, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x24, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh1add x12, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh1add x2, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh1add x21, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh1add x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sh1add x2, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh1add x11, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
sh1add x29, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sh1add x15, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0x7fffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sh1add x19, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7fffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x5, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh1add x5, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh1add x12, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh1add x26, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sh1add x1, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x11, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sh1add x26, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
sh1add x2, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh1add x1, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh1add x18, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sh1add x27, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh1add x19, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh1add x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh1add x1, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh1add x24, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sh1add x20, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sh1add x10, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7ffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sh1add x24, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x8, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh1add x29, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sh1add x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x10, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add x25, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x13, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh1add x24, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh1add x8, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sh1add x6, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x24, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh1add x11, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x22, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sh1add x26, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x18, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh1add x14, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sh1add x16, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh1add x10, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh1add x5, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sh1add x29, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x21, 0xffffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh1add x31, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x20, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x26, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add x21, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sh1add x29, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh1add x17, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sh1add x3, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x20, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add x14, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh1add x26, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x30, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sh1add x15, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x11, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh1add x20, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh1add x12, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh1add x21, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sh1add x8, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh1add x2, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x10, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sh1add x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add x22, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh1add x28, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x16, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x29, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh1add x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x9, 0xfffffffffffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sh1add x5, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh1add x18, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x9, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh1add x6, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x19, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh1add x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh1add x8, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh1add x13, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sh1add x16, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh1add x6, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sh1add x28, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh1add x16, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sh1add x2, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh1add x26, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh1add x30, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add x5, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x10, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh1add x10, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add x31, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
sh1add x6, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sh1add x19, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sh1add x8, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sh1add x18, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add x18, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh1add x3, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
sh1add x22, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh1add x28, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sh1add x21, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sh1add x24, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh1add x3, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh1add x26, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh1add x5, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh1add x22, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sh1add x22, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh1add x15, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add x11, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add x10, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x13, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh1add x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x18, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh1add x15, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x23, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh1add x30, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x30, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh1add x12, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x3, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sh1add x24, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sh1add x3, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x23, 0x5555555555555555 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh1add x8, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sh1add x30, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh1add x11, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5555555555555555 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sh1add x7, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x28, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
sh1add x9, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh1add x5, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh1add x2, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh1add x28, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x22, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sh1add x15, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh1add x9, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh1add x18, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
sh1add x25, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x14, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh1add x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x14, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh1add x2, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
sh1add x30, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x00000000ffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
sh1add x31, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
sh1add x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh1add x11, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh1add x25, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x00000000ffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x30, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sh1add x1, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh1add x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
sh1add x15, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x30, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh1add x7, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x10, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh1add x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh1add x8, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh1add x6, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh1add x15, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x13, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sh1add x28, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x16, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sh1add x15, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sh1add x23, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh1add x6, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x1, 0x00000000fffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh1add x15, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh1add x17, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh1add x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x00000000fffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x14, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x27, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh1add x23, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add x9, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add x6, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x3, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh1add x16, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x19, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sh1add x24, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sh1add x24, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x21, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sh1add x14, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x29, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh1add x22, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh1add x19, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh1add x2, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sh1add x19, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh1add x10, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sh1add x5, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sh1add x7, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sh1add x12, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x8, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0x0000000100000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh1add x1, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh1add x12, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
sh1add x21, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sh1add x29, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh1add x23, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x16, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add x18, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x23, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add x24, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x14, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh1add x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x2, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh1add x1, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
sh1add x6, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh1add x30, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000100000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
sh1add x29, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x23, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
sh1add x7, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sh1add x16, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000001 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh1add x12, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add x16, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x30, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sh1add x9, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sh1add x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sh1add x8, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x14, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh1add x1, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh1add x10, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe005d64f5e20dd3e # initialize rs1
li x0, 0xbc3137f65d7e5258 # initialize rs2
sh1add x26, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc809dd76b516477f # initialize rs1
li x1, 0x6254c0db3728cc6d # initialize rs2
sh1add x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x77a48ce43df5f937 # initialize rs1
li x2, 0x64ff07ba7f912392 # initialize rs2
sh1add x11, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2093d5329f1980fd # initialize rs1
li x3, 0xc2edbb6111b11760 # initialize rs2
sh1add x2, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xed55efa35b357e74 # initialize rs1
li x4, 0xaf5d7c806794d8cf # initialize rs2
sh1add x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe458a00d5b9ccfc9 # initialize rs1
li x5, 0x173cdd23b8bc09d2 # initialize rs2
sh1add x19, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4fa83337bfb8fd0d # initialize rs1
li x6, 0x98e83a1e00b5f84a # initialize rs2
sh1add x30, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbd3e4a8f5e62ba13 # initialize rs1
li x7, 0x23eb6807254015da # initialize rs2
sh1add x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x670e4bd11978ed68 # initialize rs1
li x8, 0x91d8d92a18119eaa # initialize rs2
sh1add x29, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe55a981c786bc982 # initialize rs1
li x9, 0x4101f04bc0831dfd # initialize rs2
sh1add x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf2abc3968c88ad84 # initialize rs1
li x10, 0xda51fdc4308e8594 # initialize rs2
sh1add x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xff9fcc35d8fda197 # initialize rs1
li x11, 0xd9684f82ff0b1705 # initialize rs2
sh1add x18, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xe5d4fef22c2d5e49 # initialize rs1
li x12, 0xe8897ddc81d87b71 # initialize rs2
sh1add x20, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xbfb62b6bc51c9ee0 # initialize rs1
li x13, 0x580f07b75d5db564 # initialize rs2
sh1add x17, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2b0ee363ac6d9250 # initialize rs1
li x14, 0xe2314dcf3db55782 # initialize rs2
sh1add x31, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0aa9d029ac8c8510 # initialize rs1
li x15, 0x2ca933b23feda821 # initialize rs2
sh1add x5, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc24a643020dd782d # initialize rs1
li x16, 0xcfb7bd2bc50bdf72 # initialize rs2
sh1add x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1dc757c418791717 # initialize rs1
li x17, 0xb8e51ac246a13a58 # initialize rs2
sh1add x16, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x042d2b45a040779f # initialize rs1
li x18, 0xe577d039fa066825 # initialize rs2
sh1add x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x47ff76131e270012 # initialize rs1
li x19, 0x6f35ae255f44fe83 # initialize rs2
sh1add x8, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x85d2c974a0d35e9d # initialize rs1
li x20, 0xe9cce5aeab1af9b4 # initialize rs2
sh1add x5, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x2a8855e83f876bac # initialize rs1
li x21, 0x3dce23a7ed28d554 # initialize rs2
sh1add x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x109b4321b4af9f6f # initialize rs1
li x22, 0xe2380f7b30d53efa # initialize rs2
sh1add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x86e41d8cc444b1c0 # initialize rs1
li x23, 0xb2d874f578c4b480 # initialize rs2
sh1add x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x6d48f3d356db2a10 # initialize rs1
li x24, 0xabd103a3d0ddf2a0 # initialize rs2
sh1add x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x6d7177fa79631e9c # initialize rs1
li x25, 0xa67ae7be2ced6f8f # initialize rs2
sh1add x8, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc2c10176e38575a4 # initialize rs1
li x26, 0xb0d1c57af5e9c0f8 # initialize rs2
sh1add x25, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2b845aef357e8f4a # initialize rs1
li x27, 0xd60274f97da1c688 # initialize rs2
sh1add x22, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0b636997d5a6f1b7 # initialize rs1
li x28, 0x2bb3854a97f4ebb1 # initialize rs2
sh1add x22, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x06f93dac988df2fa # initialize rs1
li x29, 0x29ce5eed76e68092 # initialize rs2
sh1add x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf2d1404f4f74311b # initialize rs1
li x30, 0xb6a2196f3ae8a5ff # initialize rs2
sh1add x28, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaf5e72fec2c4d345 # initialize rs1
li x31, 0x5baea409266a18ba # initialize rs2
sh1add x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x597489d96f8410fc # initialize rs1
li x29, 0x89797206d0e9ec3b # initialize rs2
sh1add x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x15c0fbb7e2600999 # initialize rs1
li x6, 0x6f95a045b4543ce9 # initialize rs2
sh1add x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6cc1adf3afc82383 # initialize rs1
li x13, 0x89278c3cdb730ab8 # initialize rs2
sh1add x2, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x237c845e7c5223dc # initialize rs1
li x11, 0xde571c81eda2fe14 # initialize rs2
sh1add x3, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb6b090e7a15f62a4 # initialize rs1
li x29, 0x31d87c40ade0a8dc # initialize rs2
sh1add x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xca95c23c2c38515d # initialize rs1
li x29, 0x2c07ccedbffd2f03 # initialize rs2
sh1add x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x916fe7fec45fb53e # initialize rs1
li x30, 0xb04c33f6ce23ba86 # initialize rs2
sh1add x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x77e98c42f9284a0a # initialize rs1
li x1, 0x0453b620c58c7353 # initialize rs2
sh1add x7, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x271841dcb8848f99 # initialize rs1
li x10, 0xd417b62ed9d809c7 # initialize rs2
sh1add x8, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc5f057cb8d65301a # initialize rs1
li x12, 0xd1397c4929bec9c7 # initialize rs2
sh1add x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc8dce400accc39d9 # initialize rs1
li x21, 0x664293b893cf2bf1 # initialize rs2
sh1add x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe2c47fc2ad3b37ac # initialize rs1
li x22, 0x386a45d5a7bba75e # initialize rs2
sh1add x11, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x68c1ab2145d7d710 # initialize rs1
li x26, 0xb163ee65f7ce6d6a # initialize rs2
sh1add x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7912bb6223809d08 # initialize rs1
li x7, 0x1cf2326a444f5173 # initialize rs2
sh1add x13, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xfe640386b95cabd0 # initialize rs1
li x20, 0x95985b3a7512aeec # initialize rs2
sh1add x14, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x86300df982138606 # initialize rs1
li x20, 0x198a8d51fba22d3a # initialize rs2
sh1add x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8c349bf7c01e5fe6 # initialize rs1
li x15, 0x8f5522221b2986c4 # initialize rs2
sh1add x16, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x45e1cc2a985bb12d # initialize rs1
li x10, 0x551d8f00285516ce # initialize rs2
sh1add x17, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbf7123607a5ce129 # initialize rs1
li x3, 0x7313ac650b0b11ce # initialize rs2
sh1add x18, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbdb24cc28bef1e37 # initialize rs1
li x22, 0xa84db784e2103dfa # initialize rs2
sh1add x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x90ad193c8d81d3db # initialize rs1
li x20, 0x5d2a7b447ee1988d # initialize rs2
sh1add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd8d31601f7f30eff # initialize rs1
li x2, 0xa3b27a5867504e06 # initialize rs2
sh1add x21, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd36083b984d93d87 # initialize rs1
li x19, 0x508c96ff82a633d6 # initialize rs2
sh1add x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfc75ac5af3e9123e # initialize rs1
li x3, 0x7fc4394aa2cc3ab8 # initialize rs2
sh1add x23, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe6bf72442cdfef4c # initialize rs1
li x22, 0x50edbac5287ee1bb # initialize rs2
sh1add x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x555778154a4fba9b # initialize rs1
li x12, 0xa022f8a1f67ab40c # initialize rs2
sh1add x25, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x57f6282b78b81a6a # initialize rs1
li x26, 0xc1c50759a0693813 # initialize rs2
sh1add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb3a956e196f5772d # initialize rs1
li x25, 0x330ca4ce69800930 # initialize rs2
sh1add x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5e8c24fbbb1e1253 # initialize rs1
li x21, 0xbb93481bdcf9f267 # initialize rs2
sh1add x28, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5c63aeb659e6f1ec # initialize rs1
li x31, 0xfb95674fcaf0875a # initialize rs2
sh1add x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1b4f6ff54d62347a # initialize rs1
li x21, 0xcbdc4f05d60136cb # initialize rs2
sh1add x30, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd5e12c5f75102e3a # initialize rs1
li x1, 0x15e4497bd353f9e1 # initialize rs2
sh1add x31, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0x404b05736f640fe6 # initialize rs1
li x0, 0xa8574ceb6a3baff4 # initialize rs2
sh1add x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x3, 0x8d6adc46ef7a5883 # initialize rs1
li x1, 0x0d646af8a171dbc5 # initialize rs2
sh1add x1, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x23, 0xf575e39c70b90d91 # initialize rs1
li x2, 0x29f37293b142b0d0 # initialize rs2
sh1add x2, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x26, 0x766bc682da5acf43 # initialize rs1
li x3, 0xc6f8ddacdf2c9627 # initialize rs2
sh1add x3, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x5e8d77eba3827e79 # initialize rs1
li x4, 0xf9d5e9e4cf72ecbd # initialize rs2
sh1add x4, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
li x8, 0x18f83b9751710713 # initialize rs1
li x5, 0x65ee9455f9663c7c # initialize rs2
sh1add x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x64c6a65eaa533cd7 # initialize rs1
li x6, 0x83d860574f8958cb # initialize rs2
sh1add x6, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xd310baa656cddc69 # initialize rs1
li x7, 0xd3ff732dfa2ef67c # initialize rs2
sh1add x7, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x27, 0x048f5c66d4e95c4f # initialize rs1
li x8, 0x5aaa676358448cea # initialize rs2
sh1add x8, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0xa9c922e69d01b400 # initialize rs1
li x9, 0xbbad819e8cad53ac # initialize rs2
sh1add x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x6, 0xa4abd08e61533abe # initialize rs1
li x10, 0x6b5b40cba77f3310 # initialize rs2
sh1add x10, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x1, 0x8480cfdabbcd6ee9 # initialize rs1
li x11, 0xfcd5260f68159a5c # initialize rs2
sh1add x11, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x21, 0x37c038ce36158140 # initialize rs1
li x12, 0x17d00a56b19b69d6 # initialize rs2
sh1add x12, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xf84a215a46e60f5b # initialize rs1
li x13, 0x549b62b27011d83f # initialize rs2
sh1add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x13, 0x2db593bd74e93c5a # initialize rs1
li x14, 0xe792e7bba6579ad1 # initialize rs2
sh1add x14, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x2, 0xaefff9026e955906 # initialize rs1
li x15, 0xee4da42684eb6aee # initialize rs2
sh1add x15, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x0a54a8de431be68e # initialize rs1
li x16, 0x7518283fcaaeee7f # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x28, 0x8dcee2d7aba28d5a # initialize rs1
li x17, 0x33703314f722f3ac # initialize rs2
sh1add x17, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x26, 0x9ae2357ba8a5f252 # initialize rs1
li x18, 0xec253ef3a208ccd1 # initialize rs2
sh1add x18, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x18, 0x02b7f214a7943f93 # initialize rs1
li x19, 0xb773c2933aefcd91 # initialize rs2
sh1add x19, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x11, 0xf1a31e8e3ae304f9 # initialize rs1
li x20, 0x0b10946c5f2a763d # initialize rs2
sh1add x20, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x1, 0x738f8a48f409cf60 # initialize rs1
li x21, 0xcb3bbfeff364a803 # initialize rs2
sh1add x21, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x27, 0xcd5ffbaae63480e7 # initialize rs1
li x22, 0x5783cf694bce5a88 # initialize rs2
sh1add x22, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0xb056477bd7ff88ba # initialize rs1
li x23, 0xc1e93b8f5002d198 # initialize rs2
sh1add x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0xb219a4444bdb9123 # initialize rs1
li x24, 0x019d047c0ec1544e # initialize rs2
sh1add x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x524854dd1fd7d853 # initialize rs1
li x25, 0x184ee5b570729095 # initialize rs2
sh1add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0x79e7ffa8b3ccf90a # initialize rs1
li x26, 0x8da76e7e86ed6a84 # initialize rs2
sh1add x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xc5b4b3cd922a7b79 # initialize rs1
li x27, 0xc70966cc14749ec7 # initialize rs2
sh1add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x12, 0x6b2e05136598c9a5 # initialize rs1
li x28, 0x2187a4877c9d1452 # initialize rs2
sh1add x28, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0x7e99e881f2b6b47a # initialize rs1
li x29, 0xd03b2bbfc7594e8b # initialize rs2
sh1add x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x0ac19d324adda91d # initialize rs1
li x30, 0xbe701e40d67fc834 # initialize rs2
sh1add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0x8b1aecea6c160cba # initialize rs1
li x31, 0x9c544b458aa37d5f # initialize rs2
sh1add x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x644507c4e1cef3eb # initialize rs1
li x0, 0x4017639d24d92381 # initialize rs2
sh1add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9bc35f4c5831f307 # initialize rs1
li x1, 0x4e639835fa5cb326 # initialize rs2
sh1add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa03ae80024681fd5 # initialize rs1
li x2, 0x55e01a696dd439f9 # initialize rs2
sh1add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x607942ab25068e3a # initialize rs1
li x3, 0x3f45e5081adbb541 # initialize rs2
sh1add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x38d2567b834f8035 # initialize rs1
li x4, 0x3d9e0a10b996da22 # initialize rs2
sh1add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc119c269b5ef6027 # initialize rs1
li x5, 0xc50ed2c5bf02f83c # initialize rs2
sh1add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a23d2d1d8c85ef4 # initialize rs1
li x6, 0x7ff75a65dc29482e # initialize rs2
sh1add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb340b32f75898888 # initialize rs1
li x7, 0x7c443538a841f5fb # initialize rs2
sh1add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc835de077f86f140 # initialize rs1
li x8, 0x9015c1a99bc779be # initialize rs2
sh1add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x306e981643fe09fd # initialize rs1
li x9, 0xf78ffcd5e3ed64af # initialize rs2
sh1add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x8eab26f58eeae01a # initialize rs1
li x10, 0x0e46bb1f467829a0 # initialize rs2
sh1add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x8eb418ba7af8e706 # initialize rs1
li x11, 0xe2e1616c11f78819 # initialize rs2
sh1add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x788a5d148dcbcb53 # initialize rs1
li x12, 0xc16a9757857345e4 # initialize rs2
sh1add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x39271cf206753d1d # initialize rs1
li x13, 0x06b45a53a08506fb # initialize rs2
sh1add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xafe93602a773b0d7 # initialize rs1
li x14, 0x7b367c8e6ec4e886 # initialize rs2
sh1add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3712b34f17d193eb # initialize rs1
li x15, 0xa932c59425ecda92 # initialize rs2
sh1add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x13b6f0d802feb6ef # initialize rs1
li x16, 0xa2ca4e6447ebfce3 # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbe2037624cefb209 # initialize rs1
li x17, 0x3edae16e1054a546 # initialize rs2
sh1add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa990cf8b1a082990 # initialize rs1
li x18, 0x9e0ac5ed4dc111b6 # initialize rs2
sh1add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x79a347455fb3b9a1 # initialize rs1
li x19, 0x3d0629a5f753a273 # initialize rs2
sh1add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe144a45972cd9851 # initialize rs1
li x20, 0x7dd6c0484a3567b2 # initialize rs2
sh1add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x74ab7e87717e0b2b # initialize rs1
li x21, 0xcab3652bd72e623c # initialize rs2
sh1add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xfbc34152673f04dc # initialize rs1
li x22, 0x1e2ae606b83ed554 # initialize rs2
sh1add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x25bf8e2858635ea7 # initialize rs1
li x23, 0xcc06b53163b3ae2c # initialize rs2
sh1add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x2926826b1b89e3ce # initialize rs1
li x24, 0x64b3890936967c30 # initialize rs2
sh1add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe7eaa5fa108c04fa # initialize rs1
li x25, 0xd23b76022e6bb8b2 # initialize rs2
sh1add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2e97ef5714e53fa0 # initialize rs1
li x26, 0xb8e01349d71e47bf # initialize rs2
sh1add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x09a4eb9c26bd635c # initialize rs1
li x27, 0xf5ec12687d85f52e # initialize rs2
sh1add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x96e44d384f63891f # initialize rs1
li x28, 0xb018365e39630e8c # initialize rs2
sh1add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x07d8fc2554450f70 # initialize rs1
li x29, 0xd6a90e0a17c6b4ff # initialize rs2
sh1add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9978a9475422e0eb # initialize rs1
li x30, 0x543835ace4e2ecf9 # initialize rs2
sh1add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xb3464d376b39fe46 # initialize rs1
li x31, 0x7d97ade87523a984 # initialize rs2
sh1add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x20, x12 # perform first operation
sh1add x1, x5, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x7, x1 # perform first operation
sh1add x13, x29, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x29, x26 # perform first operation
sh1add x12, x18, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x28, x3 # perform first operation
sh1add x18, x18, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x24, x9 # perform first operation
sh1add x24, x1, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x11, x9 # perform first operation
sh1add x17, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x6, x19 # perform first operation
sh1add x25, x15, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x2, x17 # perform first operation
sh1add x31, x20, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x28, x1 # perform first operation
sh1add x19, x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x18, x1 # perform first operation
sh1add x18, x17, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x6, x8 # perform first operation
sh1add x8, x22, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x6, x19 # perform first operation
sh1add x20, x26, x3 # perform second (triggering) operation

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
