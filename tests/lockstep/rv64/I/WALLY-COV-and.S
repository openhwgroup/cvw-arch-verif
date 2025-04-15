///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-and.S
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
li x0, 0x93c3e53cae7a1f00 # initialize rs1
li x17, 0x3e35faa86213db88 # initialize rs2
and x20, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xceda80b373d750b7 # initialize rs1
li x13, 0xbeae16261d11c79a # initialize rs2
and x18, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x40cee6b81c380a37 # initialize rs1
li x16, 0x34b1822b22a51bc2 # initialize rs2
and x13, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6b5c2f291be2b7ce # initialize rs1
li x10, 0x037aaf5e4a841dbe # initialize rs2
and x21, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc2f51e3cdb863aea # initialize rs1
li x17, 0x14d0b1e4de871d6c # initialize rs2
and x16, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xebdf835bcf8d5e01 # initialize rs1
li x6, 0x5100c4f2c648320c # initialize rs2
and x22, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x2aba7df90f5cc988 # initialize rs1
li x11, 0xec2411ef0ae175a9 # initialize rs2
and x25, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9cb0131f6cfb178f # initialize rs1
li x11, 0x2ac13b8a51a81c27 # initialize rs2
and x27, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x46476ddf09aea206 # initialize rs1
li x17, 0x4ea94bbbca8fdfe8 # initialize rs2
and x25, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe571583fae886c58 # initialize rs1
li x8, 0x4156f6c3b22899d5 # initialize rs2
and x2, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa27a11d3a3907333 # initialize rs1
li x25, 0x982b6a3f6349fa0a # initialize rs2
and x26, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc6a61c28deb91bf4 # initialize rs1
li x28, 0x218447d3417343bd # initialize rs2
and x25, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xeea007b9e9e0b1ef # initialize rs1
li x15, 0x81dc321a40a0100b # initialize rs2
and x1, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xf74a0c35d06cc994 # initialize rs1
li x11, 0x61cc50e5fc9fd75e # initialize rs2
and x24, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xca2d6f3554f62c5a # initialize rs1
li x30, 0xf2858ccd66a490eb # initialize rs2
and x12, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x932e8780cef5443e # initialize rs1
li x19, 0x5a85612a87ca0af3 # initialize rs2
and x8, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4313e7197dc85bd7 # initialize rs1
li x19, 0xeaf918b3241dda2d # initialize rs2
and x31, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc464be3c38d0fc46 # initialize rs1
li x3, 0x43792f6852ed3f7a # initialize rs2
and x9, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4abf01a22acdbaaf # initialize rs1
li x22, 0x2ed6c284292cb690 # initialize rs2
and x25, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb047a6ad548f303a # initialize rs1
li x21, 0x59fe5dd666092c9c # initialize rs2
and x18, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x37220ba1e05c0a7d # initialize rs1
li x31, 0xe69bc1d4eae2cb4e # initialize rs2
and x16, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9858db9d89d9301f # initialize rs1
li x12, 0xe3c22ebb0c338944 # initialize rs2
and x26, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x48116fd5c9401b04 # initialize rs1
li x24, 0x36ed5722a71f80b1 # initialize rs2
and x13, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x47c4e85cd4dc354f # initialize rs1
li x8, 0x7192ad1b0ff9967a # initialize rs2
and x29, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x159574957ea3586d # initialize rs1
li x14, 0x903568cac918e72c # initialize rs2
and x23, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x022e0b1dea18865c # initialize rs1
li x24, 0x2e2034fc34d8d50a # initialize rs2
and x3, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x00ddd337a60e9713 # initialize rs1
li x25, 0x54ecc24d9fc9cb0a # initialize rs2
and x12, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x44cfc23418ded206 # initialize rs1
li x23, 0xedb0ead623ec861e # initialize rs2
and x8, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb16cb3b48bff8b6f # initialize rs1
li x14, 0x042093e41fec0236 # initialize rs2
and x26, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2a5507873cb1ffe0 # initialize rs1
li x1, 0x4993d06924d41fd5 # initialize rs2
and x7, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe2de0bb7413fb93f # initialize rs1
li x3, 0x306ca3a99bf01d50 # initialize rs2
and x27, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe28a98364dd141f5 # initialize rs1
li x5, 0x3a60e7bd3f1436cc # initialize rs2
and x23, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x15, 0x6e93378f7b7dac62 # initialize rs1
li x0, 0x0c9bdc73e402e8ca # initialize rs2
and x9, x15, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x83a636a0f43d13ae # initialize rs1
li x1, 0x215efd5532579398 # initialize rs2
and x16, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0x1bd1d6a9270bb11f # initialize rs1
li x2, 0x7ccfc95b64542c66 # initialize rs2
and x31, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0xe60b681b22a878fc # initialize rs1
li x3, 0xbd465598d84d58aa # initialize rs2
and x19, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xde30f2b9d6d8c962 # initialize rs1
li x4, 0x965bd94e20f8109e # initialize rs2
and x14, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x6920d83f89a4bfb6 # initialize rs1
li x5, 0x39dc3270789f5e17 # initialize rs2
and x14, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0xf16339fbdb48be1d # initialize rs1
li x6, 0xeb0511e1c1b86abe # initialize rs2
and x12, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x515d75b94cd511c2 # initialize rs1
li x7, 0xada1408fc954eb07 # initialize rs2
and x19, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x5, 0x831ded30c001e6ce # initialize rs1
li x8, 0x9ca787d2654a93e3 # initialize rs2
and x20, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x8, 0xc69cafaedd58ba11 # initialize rs1
li x9, 0x23272c6c437f3034 # initialize rs2
and x2, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x9, 0x4d55876ad24d4df2 # initialize rs1
li x10, 0x5a02dbb408d0b6f0 # initialize rs2
and x29, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0xfc9f2d915e9f032a # initialize rs1
li x11, 0xc01f3cee8726842e # initialize rs2
and x5, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0x405ce9ee976a7e37 # initialize rs1
li x12, 0xe4d53d9a1ed7e0b6 # initialize rs2
and x21, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0x140d6a3d51491144 # initialize rs1
li x13, 0x6ed4ecf41fd66d89 # initialize rs2
and x12, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xebb33fcdae5f9408 # initialize rs1
li x14, 0x716f2402e787cd4c # initialize rs2
and x30, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x64d030515cdee9eb # initialize rs1
li x15, 0x08848bf02390b88f # initialize rs2
and x19, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0x8578aaa7ced8cdaf # initialize rs1
li x16, 0x10f23a316e1d4f4d # initialize rs2
and x6, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0xf2aa19ff0faaf4c1 # initialize rs1
li x17, 0x4642a6457c3a4b0f # initialize rs2
and x23, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0x5aaa64e280d3be37 # initialize rs1
li x18, 0xa4970bafb8cd7880 # initialize rs2
and x7, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x20b064a84fd9c0f2 # initialize rs1
li x19, 0x5849b90453b3b4ba # initialize rs2
and x26, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0xc6e924a3e2cd9f33 # initialize rs1
li x20, 0xc09763156beee3d7 # initialize rs2
and x17, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xc8c229f3f555a651 # initialize rs1
li x21, 0x442730763c075f3b # initialize rs2
and x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0xcfdebc962e00f89b # initialize rs1
li x22, 0x8eb49009a59f9ee0 # initialize rs2
and x17, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x31, 0xe3a9c98497cd2acd # initialize rs1
li x23, 0xbdeaba80dce2ac62 # initialize rs2
and x15, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xfbf78b738e248b24 # initialize rs1
li x24, 0xca43bd7a459f2021 # initialize rs2
and x27, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x589cf5b3cfedced7 # initialize rs1
li x25, 0xfaecefe119a8e070 # initialize rs2
and x7, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0x15ff563528468a22 # initialize rs1
li x26, 0x2d88a1c0360565d8 # initialize rs2
and x23, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0xc7bddc9f8990f352 # initialize rs1
li x27, 0x543d203c3bb56ea5 # initialize rs2
and x11, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x00d3145841172c81 # initialize rs1
li x28, 0xb52ef35c77f80a25 # initialize rs2
and x23, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x21, 0x8447f71860ee5bce # initialize rs1
li x29, 0x07de816b9eba6998 # initialize rs2
and x20, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x25, 0x9336616cdb246047 # initialize rs1
li x30, 0x0fd4eb77eda57350 # initialize rs2
and x5, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x29, 0x2301714b31daa258 # initialize rs1
li x31, 0x7b2376ca7cbb164c # initialize rs2
and x26, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x0884b289d3d869e2 # initialize rs1
li x10, 0x125a4a4bfeb0415d # initialize rs2
and x0, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0xee7a2bb046ebbe13 # initialize rs1
li x1, 0x3b92e4cbfe90b8a7 # initialize rs2
and x1, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xf14854a71111a08e # initialize rs1
li x1, 0x16e0f7737146e3e8 # initialize rs2
and x2, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0x7d1d01024165f189 # initialize rs1
li x20, 0xa7c67e6f0fabbb8c # initialize rs2
and x3, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x7cca7a0a4696758b # initialize rs1
li x24, 0xc6bc0bafe5e194a9 # initialize rs2
and x4, x30, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x18e6b02d9ff297c7 # initialize rs1
li x14, 0xa68f9f092cfaf0cb # initialize rs2
and x5, x31, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xa4a5edb4872146f3 # initialize rs1
li x3, 0x0a30b9b33b716f5c # initialize rs2
and x6, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
li x1, 0xc9a5d28051bce2f2 # initialize rs1
li x24, 0xcf757bbf99806e32 # initialize rs2
and x7, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0xeb6b03f135a207d6 # initialize rs1
li x27, 0x3f17bfc4c5c39e44 # initialize rs2
and x8, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0xb1354bde4417a50b # initialize rs1
li x6, 0xc48456aab82d551e # initialize rs2
and x9, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0x0313dfe88e9de947 # initialize rs1
li x3, 0x263e5331e6557411 # initialize rs2
and x10, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x5944c054a5d6120f # initialize rs1
li x18, 0x63d08b467f5618c4 # initialize rs2
and x11, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0xef48654eb298330c # initialize rs1
li x29, 0x7471766dd404fa43 # initialize rs2
and x12, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0x8caf7d6a3e22f4ca # initialize rs1
li x16, 0xfd3d65f58f4db2a3 # initialize rs2
and x13, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0xc4ecbda7702f7034 # initialize rs1
li x11, 0xdc2bc18726190f95 # initialize rs2
and x14, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xa75f9f19bf725d8c # initialize rs1
li x16, 0xfd5ec05cc6da0be8 # initialize rs2
and x15, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xc0f11842d9d8c55b # initialize rs1
li x18, 0x6179a64ca8a0833e # initialize rs2
and x16, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0x3771dd21e8dade52 # initialize rs1
li x3, 0x1ea8eaf0835bcd9c # initialize rs2
and x17, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xa5265caec727bb07 # initialize rs1
li x22, 0x5d87202626fb3a0a # initialize rs2
and x18, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0x1ddc9a068c450dfb # initialize rs1
li x1, 0xdfcfbce4f48136f6 # initialize rs2
and x19, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x28, 0x86545e8e02b8bf59 # initialize rs1
li x17, 0x0af40098017495a2 # initialize rs2
and x20, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x5a5c3ee452e17e2c # initialize rs1
li x11, 0x23599491e2c1c565 # initialize rs2
and x21, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0xcc03e08ed9401ba6 # initialize rs1
li x7, 0x9b1d33a0b46f14f6 # initialize rs2
and x22, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x24, 0x5205210b5f50641f # initialize rs1
li x10, 0x6a5c0fd43ec4f220 # initialize rs2
and x23, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x851d6dfcce66823d # initialize rs1
li x10, 0xe77b5c7506e98199 # initialize rs2
and x24, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x9105f1ff37ed8137 # initialize rs1
li x31, 0x7a0cdaa2379601e0 # initialize rs2
and x25, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0x7c976571ae009420 # initialize rs1
li x27, 0x944ec592095322f7 # initialize rs2
and x26, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x24, 0x1dacc0e301eaae28 # initialize rs1
li x31, 0xfa16857a44a54175 # initialize rs2
and x27, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x960cd9c0db17b7be # initialize rs1
li x20, 0xb374c8ff1cd44ee2 # initialize rs2
and x28, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x9, 0xbbbfe5951660007c # initialize rs1
li x7, 0xfa8d5e219bc239fc # initialize rs2
and x29, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0x84d8e49fd15efd1c # initialize rs1
li x19, 0x9eb681eb5ec93439 # initialize rs2
and x30, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0xcabac4a34260686e # initialize rs1
li x15, 0xe45c0a444f23ac29 # initialize rs2
and x31, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x0000000000000000 # initialize rs1
li x11, 0xa64cb4f8b367d1a5 # initialize rs2
and x9, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x0000000000000001 # initialize rs1
li x5, 0xa8ea8b2d1fe6ac5f # initialize rs2
and x14, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x0000000000000002 # initialize rs1
li x10, 0xc0f5866ed5b1e615 # initialize rs2
and x5, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
li x8, 0xde89426c5f34e9e8 # initialize rs2
and x31, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x17, 0x61663c598fbca71e # initialize rs2
and x1, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x26, 0x17f5d5a5a99b8919 # initialize rs2
and x19, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x30, 0xb78b9a70b814a99f # initialize rs2
and x31, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0x570f005ddf9ae1e8 # initialize rs2
and x27, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x29, 0x26dd71c556606fd9 # initialize rs2
and x11, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x92770dab0a14f0f3 # initialize rs2
and x10, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0a02a0191611ef41 # initialize rs2
and x22, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
li x6, 0x75067a016cab03cf # initialize rs2
and x13, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x23, 0xa164524727adbe06 # initialize rs2
and x24, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x23, 0xeb600708d6e4314e # initialize rs2
and x3, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x10, 0x97375464630dd35e # initialize rs2
and x18, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x11, 0x7c4e229c4f41295d # initialize rs2
and x5, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x86388a545df9a416 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
and x12, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x2ce7a16c86099a65 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
and x15, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0xdc05f25aae91146b # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
and x2, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0x9edbcdcdd37eaa1d # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
and x31, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0xde39e9eed6a1ecf8 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
and x11, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x13, 0xee847dc071f02a4c # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
and x12, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0x3e916177361c58ac # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
and x30, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x30, 0x2046b4f3fc2081fe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
and x8, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x22, 0x8b186f3fc207318c # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
and x6, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0x533a6760bad35bc1 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
and x6, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xa686d539801b8d46 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x23, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0xf6f814db9284aaa6 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
and x5, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0x87af2d8dfc9b4fc3 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
and x17, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x3f6b01bff95e9c5f # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
and x27, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x24, 0xb3a98b3a7c738cad # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
and x11, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x1, 0xabb9beb7347a3b5a # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
and x14, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
and x5, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
and x10, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
and x28, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x3, 0x0000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
and x13, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x5, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
and x11, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
and x28, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
and x23, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
and x9, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
and x10, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
and x22, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x7, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
and x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
and x8, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
and x22, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x25, 0x0000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
and x23, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x2, 0x0000000000000000 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
and x23, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
and x18, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x12, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
and x16, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
and x18, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x6, 0x0000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
and x21, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x11, 0x0000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
and x27, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
and x10, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
and x8, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
and x20, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
and x16, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
and x25, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x2, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x0000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
and x8, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
and x13, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x15, 0x0000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
and x24, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x3, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
and x13, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x6, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
and x31, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x8, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
and x2, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x28, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
and x6, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
and x7, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x28, 0x0000000000000002 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
and x12, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x14, 0x0000000000000002 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
and x5, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
and x18, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000002 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
and x7, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
and x5, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
and x30, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000000000002 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
and x19, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000000000002 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x18, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x2, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
and x5, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
and x21, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
and x30, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
and x10, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x6, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
and x17, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x30, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
and x28, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x14, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
and x7, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x22, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
and x19, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
and x6, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x24, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
and x14, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
and x27, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
and x30, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
and x19, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
and x9, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x14, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
and x18, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8000000000000000 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x19, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x9, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
and x12, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x18, 0x8000000000000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
and x30, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
and x18, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
and x30, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x5, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
and x10, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
and x31, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x27, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
and x5, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x30, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
and x9, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x30, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
and x16, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
and x15, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
and x5, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
and x21, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
and x6, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
and x6, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
and x8, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x8000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x16, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x6, 0x8000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
and x29, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
and x3, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
and x22, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x25, 0x8000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
and x19, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
and x31, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x12, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
and x9, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
and x15, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x18, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
and x10, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
and x12, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
and x20, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
and x1, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
and x22, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
and x7, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
and x20, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0x7fffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
and x28, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7fffffffffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x16, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x18, 0x7fffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
and x25, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
and x9, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
and x8, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x21, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
and x2, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
and x24, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x13, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
and x16, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
and x19, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
and x27, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x15, 0x7ffffffffffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
and x27, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
and x22, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
and x15, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
and x12, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
and x12, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
and x23, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
and x23, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x7ffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x11, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
and x28, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x26, 0x7ffffffffffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
and x22, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
and x29, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x31, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
and x30, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x22, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
and x21, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x31, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
and x23, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x3, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
and x29, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x30, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
and x25, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x19, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
and x10, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x18, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
and x8, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
and x22, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
and x1, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
and x26, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
and x10, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0xffffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
and x6, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x11, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x10, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
and x28, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
and x25, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
and x19, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
and x15, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x10, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
and x20, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x25, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
and x3, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
and x14, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
and x1, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0xfffffffffffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
and x31, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
and x27, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
and x26, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
and x21, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
and x5, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
and x18, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0xfffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
and x23, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xfffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x31, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x17, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
and x7, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x10, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
and x27, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
and x29, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x5, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
and x6, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x23, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
and x14, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
and x12, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
and x28, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
and x23, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
and x20, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
and x18, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
and x20, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
and x24, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
and x7, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
and x1, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
and x9, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x31, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
and x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
and x21, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
and x29, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
and x3, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
and x19, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
and x6, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
and x14, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
and x9, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
and x26, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
and x16, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
and x28, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
and x8, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
and x26, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
and x24, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
and x5, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x20, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
and x18, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
and x23, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
and x31, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
and x13, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
and x3, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
and x31, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x10, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
and x20, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x10, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
and x15, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x13, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
and x29, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x21, 0x5555555555555555 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
and x9, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
and x10, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
and x2, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x11, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
and x26, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
and x5, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5555555555555555 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
and x21, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x5555555555555555 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x18, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
and x31, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
and x7, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
and x18, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
and x16, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x1, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
and x9, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
and x5, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
and x26, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x22, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
and x26, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x7, 0x00000000ffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
and x14, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x20, 0x00000000ffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
and x1, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
and x11, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0x00000000ffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
and x5, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
and x6, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
and x21, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x00000000ffffffff # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
and x21, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x3, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x30, 0x00000000ffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
and x17, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
and x18, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x24, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
and x28, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x18, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
and x29, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x21, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
and x18, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
and x11, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
and x24, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x20, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
and x11, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x21, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
and x20, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x14, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
and x2, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x00000000fffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
and x1, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
and x7, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x29, 0x00000000fffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
and x5, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
and x26, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0x00000000fffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
and x1, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x00000000fffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x12, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x3, 0x00000000fffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
and x11, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x21, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
and x1, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
and x13, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x12, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
and x19, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x9, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
and x13, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x6, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
and x13, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x28, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
and x3, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x22, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
and x9, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x5, 0x0000000100000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
and x6, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x16, 0x0000000100000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
and x27, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
and x5, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
and x8, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
and x15, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
and x16, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
and x2, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000100000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x7, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x18, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
and x11, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
and x10, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x12, 0x0000000100000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
and x26, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
and x15, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x8, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
and x17, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x26, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
and x16, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x22, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
and x16, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x20, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
and x6, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x27, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
and x20, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x15, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
and x22, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
and x16, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
and x10, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x31, 0x0000000100000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
and x22, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
and x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
and x13, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x11, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x10, 0x0000000100000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
and x29, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x1, 0x0000000100000001 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
and x19, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x20, 0x0000000100000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
and x14, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x17, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
and x24, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x28, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
and x3, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc40fa9cd7d86a225 # initialize rs1
li x0, 0x7e9249037094c424 # initialize rs2
and x21, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x31436217898e21ee # initialize rs1
li x1, 0xa3322bdabe20a202 # initialize rs2
and x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x25ba464361911a8a # initialize rs1
li x2, 0xcc7c111146299493 # initialize rs2
and x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x1e5a5cfa02b0ef44 # initialize rs1
li x3, 0x4ad646e799d7c08d # initialize rs2
and x23, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x98b52a01144a6b88 # initialize rs1
li x4, 0x6a376524b3c44019 # initialize rs2
and x11, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5e8d2bb77400f629 # initialize rs1
li x5, 0x820bc61deb65e045 # initialize rs2
and x11, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcfc29099d217d0b8 # initialize rs1
li x6, 0xc5e7baf54413fe11 # initialize rs2
and x22, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0603d97024f81964 # initialize rs1
li x7, 0x9aef0463d60a5e77 # initialize rs2
and x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x5fa6f6418e2d9a0f # initialize rs1
li x8, 0x581e7551258f2f7e # initialize rs2
and x9, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xece4385a4caa1534 # initialize rs1
li x9, 0xdc5f56346680346d # initialize rs2
and x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8971f9d8ff3ca030 # initialize rs1
li x10, 0x0cda812e211118a0 # initialize rs2
and x29, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x2bc46b4c48eab716 # initialize rs1
li x11, 0xea8ba01efd00c0f2 # initialize rs2
and x15, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x1f40e1d6f6594440 # initialize rs1
li x12, 0xda33ca624821f10f # initialize rs2
and x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x49ca963444265a13 # initialize rs1
li x13, 0xb7a6a08fc8afdb5e # initialize rs2
and x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xef56a73bd1bb1bc6 # initialize rs1
li x14, 0x93689c33a7be3851 # initialize rs2
and x23, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6166c2a7c9b0bc8d # initialize rs1
li x15, 0x90b75105e134d7b2 # initialize rs2
and x1, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x3046ccee712e1475 # initialize rs1
li x16, 0x5947f15b947afb79 # initialize rs2
and x13, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x09b33964920ee752 # initialize rs1
li x17, 0xcc68e41174d5f97f # initialize rs2
and x19, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x5b24d6fbe540ae3f # initialize rs1
li x18, 0xdf95cd368d652b0f # initialize rs2
and x28, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x2b9001284ca43e9f # initialize rs1
li x19, 0x909926802e8a2344 # initialize rs2
and x22, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf939ef07b08c36f6 # initialize rs1
li x20, 0x9e1184b0c397d3df # initialize rs2
and x31, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1cc461282816d724 # initialize rs1
li x21, 0xa214f6a2b13a156e # initialize rs2
and x12, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xb50bd8aa7817d896 # initialize rs1
li x22, 0x766a707876ec7785 # initialize rs2
and x9, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2aff75b9fe1d4187 # initialize rs1
li x23, 0xc3ad3cec775032d1 # initialize rs2
and x28, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xd2f731b5ee7de797 # initialize rs1
li x24, 0x599624506ba365e5 # initialize rs2
and x31, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd844d383784ab856 # initialize rs1
li x25, 0x285a6fd26cd85889 # initialize rs2
and x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x09302e66970cf942 # initialize rs1
li x26, 0x2e71678f1c235c3c # initialize rs2
and x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x03103be38dd0ca8e # initialize rs1
li x27, 0x643cece0c1369e16 # initialize rs2
and x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8c9eda2e768a0727 # initialize rs1
li x28, 0xa3b61b00d44d5bae # initialize rs2
and x13, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb0eabccf92531a35 # initialize rs1
li x29, 0x10060ada37b4eb7d # initialize rs2
and x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xb346141581d2f81a # initialize rs1
li x30, 0x1adc9fa2d050cae1 # initialize rs2
and x3, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x463bff9809f6bed1 # initialize rs1
li x31, 0x655957fa1daf54e1 # initialize rs2
and x7, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa23fdc73c4d2914d # initialize rs1
li x22, 0x0d9951bbadee1703 # initialize rs2
and x0, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x61fd528cf92bcebb # initialize rs1
li x2, 0x76092e3949280020 # initialize rs2
and x1, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6f4f2b7453c32ea2 # initialize rs1
li x29, 0x94f38da56089dad6 # initialize rs2
and x2, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5daa0a93c47405d5 # initialize rs1
li x6, 0x4d4f274180111602 # initialize rs2
and x3, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x601c1914627b04e9 # initialize rs1
li x1, 0x8a35168b9b1ca5c3 # initialize rs2
and x4, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x56d4dad8d3d517a4 # initialize rs1
li x6, 0x98eb3b8dcb16d2b0 # initialize rs2
and x5, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x65fff04d0bbbc1b2 # initialize rs1
li x21, 0xbfbb63877de29eb3 # initialize rs2
and x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcd8db90b6c946166 # initialize rs1
li x8, 0xa5a553db2f3ccd4f # initialize rs2
and x7, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x228f3ba43f1f4f5c # initialize rs1
li x25, 0x44d0c50d179459ba # initialize rs2
and x8, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3d2e79a87b831fd4 # initialize rs1
li x20, 0x60f052c4e1e22c95 # initialize rs2
and x9, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x16231eabcbc30158 # initialize rs1
li x19, 0x37192307ecf3294b # initialize rs2
and x10, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2c207dadf5bd6295 # initialize rs1
li x17, 0xde2d008215cb216e # initialize rs2
and x11, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6ee18856f82609bc # initialize rs1
li x23, 0x705d1f42b1073ebd # initialize rs2
and x12, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7418381a3b6e689f # initialize rs1
li x25, 0xa07f08364ccab218 # initialize rs2
and x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xcd403af74573f09a # initialize rs1
li x7, 0xc4fb041a6d38bf98 # initialize rs2
and x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc49febfac9d0bd68 # initialize rs1
li x20, 0xdd4c78fac3628f84 # initialize rs2
and x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9c67e9749474a11b # initialize rs1
li x8, 0x80c22d3abe748e7d # initialize rs2
and x16, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe00d55a982bdc3f5 # initialize rs1
li x24, 0xe122991ad6949da2 # initialize rs2
and x17, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8c3c01e00bd59650 # initialize rs1
li x15, 0xcf1313a756c04d4b # initialize rs2
and x18, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x648c4c0ae43d93f8 # initialize rs1
li x12, 0x228cbc106613b87e # initialize rs2
and x19, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xdd28fab15cb29a28 # initialize rs1
li x31, 0x846f7acd435dc59a # initialize rs2
and x20, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8fae39994ece3c75 # initialize rs1
li x25, 0xda376008eb7552cb # initialize rs2
and x21, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1752f8047745c2fd # initialize rs1
li x10, 0xda765218b52db6ba # initialize rs2
and x22, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x98a3db46e9de54c8 # initialize rs1
li x29, 0x9c15e1ddb7ccdbe3 # initialize rs2
and x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2b4d83660d1ee379 # initialize rs1
li x19, 0xaf4de9316916ab9f # initialize rs2
and x24, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xef353acb2a6f9c90 # initialize rs1
li x9, 0x554693411f9e8a73 # initialize rs2
and x25, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0eae018370d443b1 # initialize rs1
li x8, 0xa09af4646a6938ee # initialize rs2
and x26, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xdce62bb1ce5e1624 # initialize rs1
li x6, 0xd063d25861b54700 # initialize rs2
and x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x40d2de42c59260f0 # initialize rs1
li x28, 0xddd597a3c6856752 # initialize rs2
and x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x4fb6c85c474e9e45 # initialize rs1
li x26, 0x01f49f1b86bc9612 # initialize rs2
and x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x074cd1661d8b5acf # initialize rs1
li x16, 0x2f7cb938f9e2570c # initialize rs2
and x30, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8a109d07495cd5c8 # initialize rs1
li x15, 0xe7d39383ca141484 # initialize rs2
and x31, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x01085e1c26a3d320 # initialize rs1
li x0, 0x041509ec1782b151 # initialize rs2
and x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x29, 0x42fac7740a37471c # initialize rs1
li x1, 0x144266f5641e2110 # initialize rs2
and x1, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x12, 0x3190b7d5bc0ae328 # initialize rs1
li x2, 0x131e54e1ceeb8665 # initialize rs2
and x2, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x14, 0x447bf27f72666983 # initialize rs1
li x3, 0xca040c35b8367375 # initialize rs2
and x3, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xf538131250330dfc # initialize rs1
li x4, 0x3cfa738136ea7d17 # initialize rs2
and x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x08b8094652a6f781 # initialize rs1
li x5, 0x12466129370de0f3 # initialize rs2
and x5, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x9a3270e72c486fe9 # initialize rs1
li x6, 0xf03da0c92fa45373 # initialize rs2
and x6, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x5f9a908c1624f990 # initialize rs1
li x7, 0xcec88b4b508cab91 # initialize rs2
and x7, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0xfe1bf335e1f18bb0 # initialize rs1
li x8, 0x552da3749926c52f # initialize rs2
and x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x6, 0x4722e4f4f900012a # initialize rs1
li x9, 0x533032eae0cfa7e8 # initialize rs2
and x9, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x17, 0x9c2e0ae783d835a0 # initialize rs1
li x10, 0x78e1ff3fa7f90f12 # initialize rs2
and x10, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x30, 0xe164bf7a11a2ffce # initialize rs1
li x11, 0x5e40cb3eabd9cf28 # initialize rs2
and x11, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x29, 0x12d056b4a21ae56c # initialize rs1
li x12, 0xe974dccf08ac0931 # initialize rs2
and x12, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0xc83811703c42ac3d # initialize rs1
li x13, 0x8c223602fb2943c9 # initialize rs2
and x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0xe7f77c0e04d11324 # initialize rs1
li x14, 0x54389363d7948a30 # initialize rs2
and x14, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x16, 0x171d922ac82a1738 # initialize rs1
li x15, 0xcc0c7c4a089fbe5a # initialize rs2
and x15, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x19, 0xde9bb2182e7039e7 # initialize rs1
li x16, 0xee9285e3b7b06a44 # initialize rs2
and x16, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x28, 0x3350b4deb7d08b22 # initialize rs1
li x17, 0xbca5ae98d4ceb377 # initialize rs2
and x17, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x11, 0x5b7185ebed099586 # initialize rs1
li x18, 0x17812be31b8bbac5 # initialize rs2
and x18, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x2, 0x4fb213eabfc6410c # initialize rs1
li x19, 0xab040295359d690d # initialize rs2
and x19, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0x0bbdb994ea94bb7a # initialize rs1
li x20, 0xe1e73ad25fc6febf # initialize rs2
and x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0xc249d5155ad15daa # initialize rs1
li x21, 0xd56a224e17245b7e # initialize rs2
and x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0xf95a3a48e8337f25 # initialize rs1
li x22, 0x8a32c02d4cac5353 # initialize rs2
and x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x2, 0x5b19469b1d623188 # initialize rs1
li x23, 0xb4b98c8d7367a2fa # initialize rs2
and x23, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x17, 0x048293b8dc24740e # initialize rs1
li x24, 0xd085fe48d454ba3c # initialize rs2
and x24, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x28, 0x0607983dfb7270fc # initialize rs1
li x25, 0xc53577a812a93991 # initialize rs2
and x25, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0xd9831fb374e17236 # initialize rs1
li x26, 0x4bc448f16675de60 # initialize rs2
and x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x25, 0x7f8b094f3d895301 # initialize rs1
li x27, 0x7ddaef707d964c41 # initialize rs2
and x27, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0xd01dfdee92b550d0 # initialize rs1
li x28, 0xe5fc8348a5f0efbc # initialize rs2
and x28, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x18, 0x1f878c4cd972be80 # initialize rs1
li x29, 0x8f4da43be1b01cc8 # initialize rs2
and x29, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x17, 0x86df672a69b1173c # initialize rs1
li x30, 0x9d49017fe739566a # initialize rs2
and x30, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x14, 0x62b106c3bfd36069 # initialize rs1
li x31, 0x361d628631a2ac72 # initialize rs2
and x31, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x90a77f0bfee4cca5 # initialize rs1
li x0, 0xa7a187f38b700b70 # initialize rs2
and x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb15530fd68a70c0f # initialize rs1
li x1, 0x1452538fb637e26c # initialize rs2
and x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1b703b8662e9278c # initialize rs1
li x2, 0x01e8da46ec6d717d # initialize rs2
and x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb918d9fa980729fc # initialize rs1
li x3, 0x6f0d31e3b8c635f6 # initialize rs2
and x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8b0efb803d0b6439 # initialize rs1
li x4, 0xe4fe857ce0be2845 # initialize rs2
and x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa4f0672a1d6cf92f # initialize rs1
li x5, 0xbe9a6a6322a1def5 # initialize rs2
and x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc3cf9cd195726440 # initialize rs1
li x6, 0x05c35e70819a0229 # initialize rs2
and x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdb26d9282abfd762 # initialize rs1
li x7, 0xfbcc05c461b73f6a # initialize rs2
and x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x501c574fad316415 # initialize rs1
li x8, 0x0fae76bba750cdd9 # initialize rs2
and x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x4693a4e3b1d0b399 # initialize rs1
li x9, 0xdcddbdaea8b35199 # initialize rs2
and x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x19e97f2d09b01b6d # initialize rs1
li x10, 0xbdaac2d6c92ee7a3 # initialize rs2
and x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x827557e6f2d1719f # initialize rs1
li x11, 0xb0e248efb63e54c4 # initialize rs2
and x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x637f6d54eab3d9d4 # initialize rs1
li x12, 0xb0d85592ef75fa5a # initialize rs2
and x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x5a67806de2e6e81f # initialize rs1
li x13, 0x896ccdadbb1c3a74 # initialize rs2
and x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa8012c521f15e96f # initialize rs1
li x14, 0x1c1df5777c83dcb5 # initialize rs2
and x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc5d49825e80b379f # initialize rs1
li x15, 0x74581e22061d69ee # initialize rs2
and x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc828565568d690c2 # initialize rs1
li x16, 0xff6f760682a2896a # initialize rs2
and x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xaf8afed5f092a203 # initialize rs1
li x17, 0x70e42d35d227d2fa # initialize rs2
and x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x4ac28a05722d211f # initialize rs1
li x18, 0x6902579bee0747cc # initialize rs2
and x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8fc462eff394b921 # initialize rs1
li x19, 0xcc92a62a5755aca2 # initialize rs2
and x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x1f834b7e9aac9c74 # initialize rs1
li x20, 0x07a476b00fb9041a # initialize rs2
and x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x3b36ac1d195034e5 # initialize rs1
li x21, 0x0124cf95a7f49e35 # initialize rs2
and x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xbb6925fc602032da # initialize rs1
li x22, 0x85236c066f7ecb63 # initialize rs2
and x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x6f8d345247ea1c08 # initialize rs1
li x23, 0x77dd39a7103d1fa0 # initialize rs2
and x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x6228f0faae8559de # initialize rs1
li x24, 0xbb19e45675706466 # initialize rs2
and x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x863e8ce215d86195 # initialize rs1
li x25, 0x3d50207e52988a84 # initialize rs2
and x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xf91464286980f464 # initialize rs1
li x26, 0x3a36b3d73b8decb9 # initialize rs2
and x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x347adbd4eba74cbd # initialize rs1
li x27, 0x6b28a3d42ad7cdbe # initialize rs2
and x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x89bd597003c7b8c6 # initialize rs1
li x28, 0xa41353c326498ff7 # initialize rs2
and x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5849e496d8f696d1 # initialize rs1
li x29, 0x2f1c8b739d91c58c # initialize rs2
and x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xff172cb87dce282b # initialize rs1
li x30, 0xe2a67ef7b134758e # initialize rs2
and x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x19ea075bbfb4dd1c # initialize rs1
li x31, 0x61670789692d96d8 # initialize rs2
and x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x25, x6 # perform first operation
and x15, x1, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x14, x5 # perform first operation
and x9, x18, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x24, x19 # perform first operation
and x26, x13, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x31, x9 # perform first operation
and x7, x7, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x25, x18 # perform first operation
and x18, x6, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x10, x3 # perform first operation
and x10, x20, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x31, x26 # perform first operation
and x12, x25, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x11, x31 # perform first operation
and x17, x29, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x11, x15 # perform first operation
and x27, x2, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x11, x2 # perform first operation
and x11, x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x29, x19 # perform first operation
and x19, x26, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x1, x19 # perform first operation
and x11, x23, x6 # perform second (triggering) operation

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
