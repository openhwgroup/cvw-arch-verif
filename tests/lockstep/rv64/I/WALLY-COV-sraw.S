///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sraw.S
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
li x0, 0xff1b82b9684d7683 # initialize rs1
li x16, 0xf1d41c889ebebacf # initialize rs2
sraw x23, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x4e452c1af4f4572b # initialize rs1
li x9, 0x4b9a1fb85edd70da # initialize rs2
sraw x13, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x72c3de325bbc8169 # initialize rs1
li x9, 0xa9957dc84fe65e68 # initialize rs2
sraw x12, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc9c2ee5812622e7f # initialize rs1
li x11, 0x8f13ad3c6000cb15 # initialize rs2
sraw x10, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x43f1b45ec9f90b2c # initialize rs1
li x19, 0x4a1ebefdf11943bd # initialize rs2
sraw x27, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8ca34bd6aa4f9db0 # initialize rs1
li x12, 0xaaf78be0db6500f3 # initialize rs2
sraw x17, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdfb90359576c88b3 # initialize rs1
li x24, 0x61fb29f10d2d35b2 # initialize rs2
sraw x9, x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa04f5f2741beda4b # initialize rs1
li x3, 0x1c2107f096d8ad29 # initialize rs2
sraw x27, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9a15025b5b73dbb1 # initialize rs1
li x14, 0xdc3b3ad746157aff # initialize rs2
sraw x7, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x97f9796552d8e632 # initialize rs1
li x8, 0xf0907997f2f8ae1a # initialize rs2
sraw x10, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xcdaabfa6dc05a3df # initialize rs1
li x12, 0x91a4cbab7fb00753 # initialize rs2
sraw x14, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x658d934d27efc5eb # initialize rs1
li x27, 0xe4e3bae4ad6393fd # initialize rs2
sraw x13, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1a3aee25186cade7 # initialize rs1
li x26, 0x3885c1abeb4f05a6 # initialize rs2
sraw x29, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa852fe89d06dc0e7 # initialize rs1
li x5, 0x8c0ebdba33ee001a # initialize rs2
sraw x17, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x01abce2177fa51ad # initialize rs1
li x11, 0x8e804cde476ff17f # initialize rs2
sraw x8, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8be9b2933700b32a # initialize rs1
li x29, 0x1ad772e76f928444 # initialize rs2
sraw x25, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb3aac4bfe9e36919 # initialize rs1
li x19, 0xbe632b0fd0076cc9 # initialize rs2
sraw x11, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x420a78689fd8f404 # initialize rs1
li x29, 0x88d10ef83f0043c0 # initialize rs2
sraw x7, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xda127866c4c74f76 # initialize rs1
li x10, 0xbbb682c26820932a # initialize rs2
sraw x21, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x15d6558bd6cfc25e # initialize rs1
li x20, 0x45a4ae9d47364657 # initialize rs2
sraw x1, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xadadf34111afb249 # initialize rs1
li x27, 0x04b902ba61cbf2b1 # initialize rs2
sraw x29, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xdc77663258438811 # initialize rs1
li x25, 0xc9ab43dccc3d5be3 # initialize rs2
sraw x24, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x7c3fd1e4d36ce872 # initialize rs1
li x3, 0x40197ec9d98c93da # initialize rs2
sraw x16, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xab6f80e41b895435 # initialize rs1
li x24, 0x5ca6dbb7d46a9c57 # initialize rs2
sraw x21, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6790604d620c29c6 # initialize rs1
li x21, 0xefa16419a0763033 # initialize rs2
sraw x18, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa13cea18d3b7e09d # initialize rs1
li x19, 0x923a6c09748e97a2 # initialize rs2
sraw x14, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x0873ed2abcfe1120 # initialize rs1
li x19, 0x52e91531894234db # initialize rs2
sraw x10, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe4762ae1f59a8800 # initialize rs1
li x20, 0x2761fcf74e619c67 # initialize rs2
sraw x1, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc92fe56c24673511 # initialize rs1
li x31, 0xf01923a331a3b537 # initialize rs2
sraw x5, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x05433d6993463f6b # initialize rs1
li x24, 0xef263fc1adfdd1f7 # initialize rs2
sraw x14, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xf43ae6d0cca3b170 # initialize rs1
li x2, 0x4727303c3c7aba98 # initialize rs2
sraw x24, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe8dfcd9018b4a7af # initialize rs1
li x8, 0x5ae4ee040145c21e # initialize rs2
sraw x11, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x1ae9af77de0ee2c1 # initialize rs1
li x0, 0x53d0d24edc6de6bd # initialize rs2
sraw x21, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0x0b328464315b69d3 # initialize rs1
li x1, 0x1238cf8823848b61 # initialize rs2
sraw x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x860b5a0d02295d9b # initialize rs1
li x2, 0xfcefc43522696ed7 # initialize rs2
sraw x11, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0x795f8b1791d481ca # initialize rs1
li x3, 0x642e634c3a675dea # initialize rs2
sraw x6, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x0c9de40cfaac5777 # initialize rs1
li x4, 0x6f898ba2eeaad385 # initialize rs2
sraw x23, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x02a951a11a466cf4 # initialize rs1
li x5, 0xb98eb123c59a9bcf # initialize rs2
sraw x8, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x6668ac5e8587cc50 # initialize rs1
li x6, 0x3ea30960b3e4db41 # initialize rs2
sraw x25, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0xcfb8f280bb63f0d2 # initialize rs1
li x7, 0x80035787043488a9 # initialize rs2
sraw x31, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0x9c35c16f3902454e # initialize rs1
li x8, 0x971b887f225e5d1f # initialize rs2
sraw x28, x15, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0x0ce451971518f423 # initialize rs1
li x9, 0xf49f2aa2d8feb00c # initialize rs2
sraw x20, x26, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xb6487ba9397e746c # initialize rs1
li x10, 0xe3a0d82fcd241b85 # initialize rs2
sraw x3, x27, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0xc39dad7aca84158f # initialize rs1
li x11, 0xf76549ae5ca9bfe5 # initialize rs2
sraw x18, x30, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x14, 0x1a15b4ff7b30049c # initialize rs1
li x12, 0x93b909f9df505a29 # initialize rs2
sraw x25, x14, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x30, 0x212a91fbbd403d9d # initialize rs1
li x13, 0xa86b49d95282c134 # initialize rs2
sraw x9, x30, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0x40abe83e85194f1b # initialize rs1
li x14, 0x7c102d3aea3a114c # initialize rs2
sraw x24, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x12816981d6504bdf # initialize rs1
li x15, 0xb7d621f811a641fe # initialize rs2
sraw x11, x22, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x28, 0xc955370dfeb1e3a6 # initialize rs1
li x16, 0x62a5781fb9f11b1c # initialize rs2
sraw x7, x28, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x27888f7c7171cc32 # initialize rs1
li x17, 0xdae572608bb28ec0 # initialize rs2
sraw x13, x22, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x44488ca6b22bb842 # initialize rs1
li x18, 0x7ad312c97a484075 # initialize rs2
sraw x17, x27, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x44fb3c6e5e647844 # initialize rs1
li x19, 0xdbe6c03f3856e1ea # initialize rs2
sraw x22, x11, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0x7dd1ae4e1f4bfd82 # initialize rs1
li x20, 0xa7648616592a60bd # initialize rs2
sraw x25, x15, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0xff09fb9e2a2ff599 # initialize rs1
li x21, 0xa5a69d603c4c08d4 # initialize rs2
sraw x14, x26, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x158d55d68f48f055 # initialize rs1
li x22, 0x1dbf1535bb765270 # initialize rs2
sraw x2, x10, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0xe72df9695c6358a7 # initialize rs1
li x23, 0x4107c442d397e5d4 # initialize rs2
sraw x12, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x1d47004b658151a5 # initialize rs1
li x24, 0xa6066d18f50a8b6b # initialize rs2
sraw x14, x31, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x304d00df7a26b052 # initialize rs1
li x25, 0xecf3d8ed17e0b3f6 # initialize rs2
sraw x8, x19, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0xc7e92dd63cfaa023 # initialize rs1
li x26, 0xf62b8a979d761d48 # initialize rs2
sraw x3, x8, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x30, 0xedd7ef2fab35dac6 # initialize rs1
li x27, 0x7c291009e1170fb3 # initialize rs2
sraw x3, x30, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0xd3acc9121db3d710 # initialize rs1
li x28, 0x36b368a7f64f41d4 # initialize rs2
sraw x23, x16, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0x459c34ecf9d32868 # initialize rs1
li x29, 0x9ee0af80106191dc # initialize rs2
sraw x11, x17, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0x795535a211c9823d # initialize rs1
li x30, 0x9ecae5d32dfc59d6 # initialize rs2
sraw x23, x3, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x7e95f530b5956d05 # initialize rs1
li x31, 0xcf06c6419ca667c9 # initialize rs2
sraw x7, x3, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 504)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0x098ff948df4c16f9 # initialize rs1
li x24, 0xaac1130be653fd3f # initialize rs2
sraw x0, x23, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x2e83e579fa9ae659 # initialize rs1
li x22, 0xfc933e468de9715b # initialize rs2
sraw x1, x7, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x1, 0xb705713372e514a1 # initialize rs1
li x14, 0x43889e9d67f6a90c # initialize rs2
sraw x2, x1, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0xe1325f0395d95120 # initialize rs1
li x28, 0x1846346e522a1741 # initialize rs2
sraw x3, x24, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
li x31, 0x08c56d1218e26918 # initialize rs1
li x30, 0x19ffb98e4005953b # initialize rs2
sraw x4, x31, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xc4c192c0f70d5fc8 # initialize rs1
li x24, 0x9e203485ff733d2e # initialize rs2
sraw x5, x28, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xc6b4a815d4a5166f # initialize rs1
li x14, 0x35b91196e8172eb0 # initialize rs2
sraw x6, x25, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xd699706068dfdf26 # initialize rs1
li x26, 0x89d7d8c0eb256cd8 # initialize rs2
sraw x7, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x3, 0xf785019d2a07a5fc # initialize rs1
li x7, 0xe1d466cee96848b7 # initialize rs2
sraw x8, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0x06670c3e300a7d23 # initialize rs1
li x25, 0x71d9ec8f591ce304 # initialize rs2
sraw x9, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x6cf46c7ad4123af4 # initialize rs1
li x6, 0x4b2665bf548cf6cf # initialize rs2
sraw x10, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0xd96d43875c210064 # initialize rs1
li x17, 0x6be61422563f2b97 # initialize rs2
sraw x11, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x530ca385620e35b5 # initialize rs1
li x31, 0x4263e9b658bc0714 # initialize rs2
sraw x12, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x4511c567831d499a # initialize rs1
li x17, 0x0521dd6f9286efbc # initialize rs2
sraw x13, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0xed38dcf1e35a5627 # initialize rs1
li x5, 0x4d38f019df978795 # initialize rs2
sraw x14, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x890714b7876c1363 # initialize rs1
li x23, 0x0fd2a556d779f77c # initialize rs2
sraw x15, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x31, 0x3bbccd382f9b7c9e # initialize rs1
li x20, 0x10eb49e77e05520d # initialize rs2
sraw x16, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x27, 0x2b69523b262165d2 # initialize rs1
li x19, 0xa81a7adb9ad7fa57 # initialize rs2
sraw x17, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0x818251054a958069 # initialize rs1
li x18, 0x73f05415ccf9b629 # initialize rs2
sraw x18, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0x9b845a4bb764f110 # initialize rs1
li x3, 0x84ca42caa0c56fe7 # initialize rs2
sraw x19, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0x64a0705fa49d4653 # initialize rs1
li x22, 0xe561f4aa26b14747 # initialize rs2
sraw x20, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x18, 0x28a913823e472ea3 # initialize rs1
li x23, 0x8ee04f101b566a4b # initialize rs2
sraw x21, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x1, 0x0e69bf4e8b413fdf # initialize rs1
li x10, 0x364e9fcd94807224 # initialize rs2
sraw x22, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0x9ae003de9dee7d83 # initialize rs1
li x7, 0x5b66bb9693ba57a2 # initialize rs2
sraw x23, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0x6ae785c36eb5eb70 # initialize rs1
li x29, 0xdb676056178c5904 # initialize rs2
sraw x24, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0xe117d2b3508a0e75 # initialize rs1
li x17, 0x038653d24666c148 # initialize rs2
sraw x25, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0x275f4421f58849d9 # initialize rs1
li x15, 0x5a1f44df071a723e # initialize rs2
sraw x26, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x29, 0x14cc8906543072e3 # initialize rs1
li x31, 0x50ea69723df05854 # initialize rs2
sraw x27, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xc69e412be24806e6 # initialize rs1
li x16, 0xc403d44d3f55433c # initialize rs2
sraw x28, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x7baf0a1d0adf2f14 # initialize rs1
li x26, 0x938a0a84646257be # initialize rs2
sraw x29, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x6a6b7b1161c6324c # initialize rs1
li x22, 0x61d0130ecddb754d # initialize rs2
sraw x30, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xd736ed37fdf21f62 # initialize rs1
li x6, 0x516e59fc56b54eb0 # initialize rs2
sraw x31, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x2, 0xf754d1302882d759 # initialize rs2
sraw x18, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x0000000000000001 # initialize rs1
li x5, 0x82e82506b7a8716d # initialize rs2
sraw x24, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x2, 0x352c06b1f8e7f921 # initialize rs2
sraw x25, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
li x25, 0x560b0e909e49554e # initialize rs2
sraw x6, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x5, 0x8000000000000001 # initialize rs1
li x16, 0x5410481b0552f70c # initialize rs2
sraw x25, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x23, 0xbab825502ba371e0 # initialize rs2
sraw x21, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x15, 0x4e9ea0e4a726aae4 # initialize rs2
sraw x14, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x1, 0x3e67fc1f8627faf1 # initialize rs2
sraw x19, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x29, 0xe9279271f4c437c3 # initialize rs2
sraw x31, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x487c3e46d5d2097b # initialize rs2
sraw x20, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x8698b5af95ba981a # initialize rs2
sraw x1, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
li x14, 0xf4d1f30e7781c16b # initialize rs2
sraw x31, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x24, 0x52d64c699470a4a7 # initialize rs2
sraw x23, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x7, 0xbaee37fc4808bb5e # initialize rs2
sraw x3, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x15, 0xab6dc3b2bfe5e2aa # initialize rs2
sraw x13, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x12, 0x813d76ced1480e15 # initialize rs2
sraw x26, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x44c42d17afff07ad # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sraw x14, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x132e95db88b1019b # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
sraw x2, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x43ecdd720238a99d # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sraw x31, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0xcf3e9ff272016574 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sraw x27, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0x13ac399d72e27c2f # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sraw x25, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x4aa3392c09f5c102 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sraw x27, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x25, 0x58c4880dad5584c7 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sraw x22, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x29, 0x89f12dda00edb370 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
sraw x26, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x2, 0xab17cbf3f1bdb498 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sraw x28, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x1, 0x58420ecc3524bcb0 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sraw x2, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x1f176ada0a10f900 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x15, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x8132d9224821ccc0 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sraw x27, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x7087aefcfb772d6b # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sraw x28, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0xadc54b664dc37c70 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sraw x28, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x26, 0x480fca173233bade # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sraw x13, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x30, 0x4cae2b8d1ace9325 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sraw x27, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x29, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sraw x18, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x17, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sraw x21, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sraw x16, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x22, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sraw x10, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x21, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sraw x10, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sraw x31, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sraw x21, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sraw x26, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sraw x8, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sraw x9, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x26, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x11, 0x0000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sraw x7, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sraw x22, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sraw x11, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x9, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sraw x11, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x28, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sraw x12, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x2, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sraw x27, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x17, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sraw x5, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x31, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sraw x1, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x18, 0x0000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sraw x15, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x15, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sraw x14, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
sraw x21, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
sraw x11, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sraw x30, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sraw x5, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sraw x15, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x26, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x14, 0x0000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
sraw x28, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x24, 0x0000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sraw x23, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sraw x16, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x13, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sraw x27, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x27, 0x0000000000000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sraw x1, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sraw x12, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sraw x9, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sraw x2, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x11, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sraw x6, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sraw x31, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sraw x9, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sraw x25, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000002 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sraw x20, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sraw x26, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000002 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sraw x16, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x24, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x5, 0x0000000000000002 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sraw x8, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sraw x2, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sraw x11, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x27, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sraw x28, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x6, 0x0000000000000002 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
sraw x16, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x31, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sraw x22, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x30, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sraw x21, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x19, 0x8000000000000000 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sraw x7, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x11, 0x8000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sraw x28, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x29, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sraw x5, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sraw x9, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
sraw x1, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x22, 0x8000000000000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sraw x27, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sraw x2, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sraw x6, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x8000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x22, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x23, 0x8000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sraw x24, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sraw x2, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sraw x9, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x29, 0x8000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sraw x22, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x6, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sraw x1, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x6, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sraw x3, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x13, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sraw x26, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x21, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sraw x10, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x8, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
sraw x16, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sraw x3, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sraw x15, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x5, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sraw x25, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sraw x6, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sraw x10, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sraw x18, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x3, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sraw x30, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x19, 0x8000000000000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sraw x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x5, 0x8000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sraw x19, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x6, 0x8000000000000001 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sraw x5, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x9, 0x8000000000000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sraw x5, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x10, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sraw x5, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x31, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sraw x13, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x2, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sraw x25, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x18, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sraw x15, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sraw x13, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sraw x7, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sraw x27, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sraw x10, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0x7fffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sraw x27, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0x7fffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sraw x15, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x7fffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x24, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x10, 0x7fffffffffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sraw x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sraw x26, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x11, 0x7fffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sraw x16, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sraw x27, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x11, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sraw x26, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x9, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sraw x5, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x12, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sraw x2, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x6, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sraw x5, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0x7ffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sraw x5, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sraw x6, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
sraw x28, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sraw x27, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0x7ffffffffffffffe # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sraw x21, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sraw x19, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x17, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sraw x25, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7ffffffffffffffe # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x8, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x8, 0x7ffffffffffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sraw x22, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sraw x5, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sraw x26, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x21, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sraw x13, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sraw x7, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sraw x28, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x30, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sraw x21, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x15, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sraw x25, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x3, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sraw x21, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x3, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sraw x16, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
sraw x18, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sraw x12, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
sraw x23, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sraw x22, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0xffffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sraw x23, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xffffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x28, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x21, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sraw x3, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sraw x1, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sraw x25, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x15, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sraw x26, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x23, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sraw x25, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x5, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sraw x7, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x25, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sraw x29, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x20, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sraw x28, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x1, 0xfffffffffffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sraw x13, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x11, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sraw x5, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sraw x9, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sraw x1, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sraw x17, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sraw x8, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0xfffffffffffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sraw x21, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xfffffffffffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x3, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x8, 0xfffffffffffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sraw x29, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sraw x2, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sraw x15, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sraw x2, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sraw x9, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sraw x26, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sraw x20, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sraw x21, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sraw x9, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sraw x6, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sraw x15, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sraw x10, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sraw x3, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sraw x28, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sraw x12, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x16, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sraw x22, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sraw x16, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
sraw x9, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sraw x27, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
sraw x14, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sraw x29, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sraw x28, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sraw x19, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sraw x20, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sraw x17, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sraw x26, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sraw x2, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sraw x13, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sraw x22, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sraw x27, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x5, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sraw x13, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sraw x7, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sraw x1, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sraw x30, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sraw x6, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x27, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sraw x12, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x12, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sraw x24, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sraw x25, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x19, 0x5555555555555555 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
sraw x24, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x2, 0x5555555555555555 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sraw x13, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sraw x18, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sraw x2, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x16, 0x5555555555555555 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sraw x11, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sraw x17, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x25, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sraw x26, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5555555555555555 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x2, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sraw x25, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x21, 0x5555555555555555 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sraw x24, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sraw x11, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x15, 0x5555555555555555 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sraw x11, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x19, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sraw x29, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sraw x27, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sraw x25, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x11, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
sraw x25, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x18, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sraw x8, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x1, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sraw x11, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sraw x27, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sraw x16, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sraw x28, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x00000000ffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sraw x7, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000ffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sraw x8, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x00000000ffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x27, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x22, 0x00000000ffffffff # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sraw x27, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sraw x9, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
sraw x17, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x23, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sraw x27, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x15, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sraw x11, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sraw x5, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sraw x16, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sraw x16, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x14, 0x00000000fffffffe # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sraw x7, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x9, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sraw x30, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sraw x20, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sraw x14, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sraw x15, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sraw x23, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x00000000fffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sraw x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000fffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x20, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0x00000000fffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sraw x28, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sraw x18, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sraw x29, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sraw x27, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x23, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sraw x6, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x17, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sraw x11, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x15, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sraw x13, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x31, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sraw x15, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x11, 0x0000000100000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sraw x12, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x18, 0x0000000100000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sraw x16, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sraw x25, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sraw x29, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sraw x23, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sraw x29, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000100000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sraw x13, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000100000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x3, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x26, 0x0000000100000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sraw x20, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sraw x6, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x23, 0x0000000100000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sraw x3, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x25, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sraw x19, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x28, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sraw x5, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x7, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sraw x18, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x8, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sraw x22, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x17, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sraw x18, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x17, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sraw x10, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x31, 0x0000000100000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sraw x3, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sraw x8, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sraw x3, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
sraw x26, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sraw x7, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000100000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sraw x30, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000100000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sraw x25, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x2, 0x0000000100000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sraw x13, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sraw x24, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sraw x27, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x6, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sraw x1, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x6, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sraw x22, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xf7eb20384a1effb4 # initialize rs1
li x0, 0x8e5875737ddeab05 # initialize rs2
sraw x3, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x8bab49d519274414 # initialize rs1
li x1, 0x8e12e84d001ee83d # initialize rs2
sraw x15, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x60bde30be85d5b56 # initialize rs1
li x2, 0xaad757c9ad4dd828 # initialize rs2
sraw x15, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xfebfba016cfca0d2 # initialize rs1
li x3, 0xcc050082066e1de6 # initialize rs2
sraw x14, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x18d00fb1bfe9354d # initialize rs1
li x4, 0x260c34bb1a1c9440 # initialize rs2
sraw x20, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa59320c83ab78705 # initialize rs1
li x5, 0xcf9aecfb12b2fc3c # initialize rs2
sraw x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd6b44c5aeb5b0638 # initialize rs1
li x6, 0xfbb442403e21d30d # initialize rs2
sraw x16, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbd37880135b2b457 # initialize rs1
li x7, 0x1a242560ab38fbbf # initialize rs2
sraw x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x0cf1b15f84de1402 # initialize rs1
li x8, 0x762f7a818e12020b # initialize rs2
sraw x27, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x14d63129d9639ae2 # initialize rs1
li x9, 0xf156ae54f73b5af4 # initialize rs2
sraw x10, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x03ccb4b33088c7c4 # initialize rs1
li x10, 0x7f2497cd7eadc6a3 # initialize rs2
sraw x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x3c043d897a71f729 # initialize rs1
li x11, 0x6760edcf18669d89 # initialize rs2
sraw x29, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf2c5003edcf57093 # initialize rs1
li x12, 0xfb60e7bdd1bb333d # initialize rs2
sraw x13, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x6418ed136b0dcd77 # initialize rs1
li x13, 0xe1b0d3b6575b3ab8 # initialize rs2
sraw x17, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5fa2faac9cbfb246 # initialize rs1
li x14, 0xc500a3b33a9ae614 # initialize rs2
sraw x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x7139da9b85aa590e # initialize rs1
li x15, 0x84c6572ca0f1b114 # initialize rs2
sraw x23, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x8debca04639f9efc # initialize rs1
li x16, 0x1fdcb99fcbaffc16 # initialize rs2
sraw x27, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe2f885e2f1750a62 # initialize rs1
li x17, 0x117f2a8264e0ad1e # initialize rs2
sraw x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x89ff2f961cab81b5 # initialize rs1
li x18, 0x9d73af812152e491 # initialize rs2
sraw x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe8d8a0fb0198a726 # initialize rs1
li x19, 0xd984b4135babf20b # initialize rs2
sraw x13, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xeac008efe9496b20 # initialize rs1
li x20, 0x1978508dd322cc91 # initialize rs2
sraw x3, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x624939899a0ba965 # initialize rs1
li x21, 0xe53d6de55c6f449a # initialize rs2
sraw x7, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xe8158839728c30d0 # initialize rs1
li x22, 0x0f963b5ecf962167 # initialize rs2
sraw x2, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x3f349cff55fe3ae2 # initialize rs1
li x23, 0xed06394f2f6a3b03 # initialize rs2
sraw x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x95801ac79ace77e7 # initialize rs1
li x24, 0x24f5be70ecae5382 # initialize rs2
sraw x10, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4067d27f7911d263 # initialize rs1
li x25, 0xe140c3b01d61996a # initialize rs2
sraw x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8b3cde67480e9e68 # initialize rs1
li x26, 0x1667d5bf20458e1a # initialize rs2
sraw x9, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0480e8473a77c139 # initialize rs1
li x27, 0x8d01ffaf831956b0 # initialize rs2
sraw x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x4600c5de8e11572c # initialize rs1
li x28, 0xb4114c404d996b44 # initialize rs2
sraw x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xbcc6c29d183a846f # initialize rs1
li x29, 0x44ad89efc7de9eab # initialize rs2
sraw x2, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xd3721cc60f8a2870 # initialize rs1
li x30, 0x29f8af83b2f2f809 # initialize rs2
sraw x31, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd07e9b91506ceb2f # initialize rs1
li x31, 0xb810c0c149c126e6 # initialize rs2
sraw x11, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc38b043b1a7db77a # initialize rs1
li x20, 0xcd7f1811c8e0f692 # initialize rs2
sraw x0, x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xdb7cf1d8be1744fb # initialize rs1
li x9, 0x88497aabea0c3870 # initialize rs2
sraw x1, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbf93058aad9f1b93 # initialize rs1
li x15, 0xe0c95a637e5ec89d # initialize rs2
sraw x2, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0dffc26f9aa16cc4 # initialize rs1
li x6, 0xad79a7956482af29 # initialize rs2
sraw x3, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5240128b574fc3e8 # initialize rs1
li x2, 0xc9a5adc73fb32955 # initialize rs2
sraw x4, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x94181d94810c47b0 # initialize rs1
li x27, 0x04c4f766f954eb58 # initialize rs2
sraw x5, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd2f7af470bae7c3a # initialize rs1
li x11, 0x72a4f45172cd2f9a # initialize rs2
sraw x6, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4932ab1463c5f27d # initialize rs1
li x25, 0x6c7dbf67090bfdfc # initialize rs2
sraw x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xff69a3eeabfa0a79 # initialize rs1
li x14, 0x603c7512e28e66db # initialize rs2
sraw x8, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x29e62e54c0ae9601 # initialize rs1
li x5, 0xe048b03470feb205 # initialize rs2
sraw x9, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x65948e43d219b2a5 # initialize rs1
li x16, 0x7459b240572f03e2 # initialize rs2
sraw x10, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xccae03a9f6f50af1 # initialize rs1
li x26, 0x195cd730fca79207 # initialize rs2
sraw x11, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x07ded17b56e3ce6e # initialize rs1
li x16, 0xd2ffed2babe64e2b # initialize rs2
sraw x12, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x40e03071f4f311b4 # initialize rs1
li x18, 0x407580d749ae7ea3 # initialize rs2
sraw x13, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4ebbbdfc8daaa2ca # initialize rs1
li x1, 0x94291d827716a9d3 # initialize rs2
sraw x14, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0c8d1aad947d8175 # initialize rs1
li x15, 0xd6563fb0995f0626 # initialize rs2
sraw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4e9b473191c794aa # initialize rs1
li x11, 0xefe8cf13cc2c61da # initialize rs2
sraw x16, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4eca06531dcf0824 # initialize rs1
li x30, 0x5fc89da1b286beae # initialize rs2
sraw x17, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xca048e49469606d8 # initialize rs1
li x30, 0x71bca5235c5915f7 # initialize rs2
sraw x18, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x460033b762bb3c75 # initialize rs1
li x1, 0x9efb52849bfc6166 # initialize rs2
sraw x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x49a3881909599be3 # initialize rs1
li x12, 0x8cdfe14dbb4086c3 # initialize rs2
sraw x20, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x49d7334562d55664 # initialize rs1
li x14, 0x16d63a5435a9e592 # initialize rs2
sraw x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbc499399cb581cb9 # initialize rs1
li x9, 0x4e3994f0cecebe09 # initialize rs2
sraw x22, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2c5d0b869e88cab4 # initialize rs1
li x21, 0x37c87cf27ba33ba7 # initialize rs2
sraw x23, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x622bcb4cc3149ddb # initialize rs1
li x3, 0x459a4604ef85148d # initialize rs2
sraw x24, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x862b632751d1b7d2 # initialize rs1
li x7, 0x7f91a1625374223c # initialize rs2
sraw x25, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x029bdae28d169a29 # initialize rs1
li x31, 0x030ff21bb4f6f3f3 # initialize rs2
sraw x26, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7df99f5280ed9d22 # initialize rs1
li x29, 0x85eb7ee20ff27c32 # initialize rs2
sraw x27, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xaebca2f247d51d2c # initialize rs1
li x28, 0x3b98efec1887ddc0 # initialize rs2
sraw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xee9fb59119bb8016 # initialize rs1
li x8, 0x3bfabab88c2eedcc # initialize rs2
sraw x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3e5bde0e3d8eac37 # initialize rs1
li x1, 0xf68508d8e201a2e3 # initialize rs2
sraw x30, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x389e48aabb18566d # initialize rs1
li x17, 0x03b50165ee19a4a7 # initialize rs2
sraw x31, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0x4c8a96c0c84938b3 # initialize rs1
li x0, 0x14a13e9902ede555 # initialize rs2
sraw x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x30, 0x5e4a5e616fec9b81 # initialize rs1
li x1, 0xbef80aedd7ea1d86 # initialize rs2
sraw x1, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x30, 0x18946fe995126ffb # initialize rs1
li x2, 0xb468c4ac23414b3f # initialize rs2
sraw x2, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x23, 0x853fafd00dcff8b5 # initialize rs1
li x3, 0xcdb7fb09aa22c20e # initialize rs2
sraw x3, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xc903ede6f43aa505 # initialize rs1
li x4, 0x2ea910c8e8686890 # initialize rs2
sraw x4, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x48fd6918c0213f81 # initialize rs1
li x5, 0xdf3c021fded44cdb # initialize rs2
sraw x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x40fd8dad92a249a9 # initialize rs1
li x6, 0x7eb819f2f10a70d1 # initialize rs2
sraw x6, x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xe8b1f3921bad5cc4 # initialize rs1
li x7, 0x5775bc0a78e81520 # initialize rs2
sraw x7, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x6, 0x7e329ad9918be4c9 # initialize rs1
li x8, 0x1966fca70418d46e # initialize rs2
sraw x8, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x3, 0x62d6766857ce59fc # initialize rs1
li x9, 0xca2de0d576961389 # initialize rs2
sraw x9, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x28, 0xcbb608a60f1a6b62 # initialize rs1
li x10, 0x007689062e26909c # initialize rs2
sraw x10, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x9a3eea06fd0b0f5c # initialize rs1
li x11, 0x5b5a1f28bc1c099b # initialize rs2
sraw x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x11, 0xe9ef8197ea0fcc1f # initialize rs1
li x12, 0xfd5368c4b485e556 # initialize rs2
sraw x12, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x15, 0x3715d7a5ac4b5125 # initialize rs1
li x13, 0xe84d1f051392799a # initialize rs2
sraw x13, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x29, 0x8fb608d99fffdd99 # initialize rs1
li x14, 0x23697ee6db72df55 # initialize rs2
sraw x14, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0x630bc5a4a31be1da # initialize rs1
li x15, 0x55cf6ed985231e6a # initialize rs2
sraw x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x593e28ce96491ac5 # initialize rs1
li x16, 0xf34c5eed2f8e9bd3 # initialize rs2
sraw x16, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x20, 0x7934c1e2ea59f05a # initialize rs1
li x17, 0x71380f38f709a9ac # initialize rs2
sraw x17, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x11, 0x57cac2acbb6b7e94 # initialize rs1
li x18, 0x7be90edd4035b96b # initialize rs2
sraw x18, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x2, 0xca8c40179a6a0348 # initialize rs1
li x19, 0xaf512437e0e2b33a # initialize rs2
sraw x19, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x7, 0x988276913890f14c # initialize rs1
li x20, 0x73401cdd2d88c987 # initialize rs2
sraw x20, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0xd7d639fc983dfdbe # initialize rs1
li x21, 0xdb51b9fb7ef37465 # initialize rs2
sraw x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x27, 0x36a4739bc3a2cc7c # initialize rs1
li x22, 0x06b56db11eeaebef # initialize rs2
sraw x22, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x7, 0x53a522087738bfd4 # initialize rs1
li x23, 0x30f31b9e57aa5ee8 # initialize rs2
sraw x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0xe14a47c8dec246fd # initialize rs1
li x24, 0x0a5d3da28b303918 # initialize rs2
sraw x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x10, 0xb6bfbcb5071564cc # initialize rs1
li x25, 0x0e16f386a451ad34 # initialize rs2
sraw x25, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x25, 0xd60b7f524dce279a # initialize rs1
li x26, 0x9d270e6317b618f3 # initialize rs2
sraw x26, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x2, 0x66863f9f7d67daca # initialize rs1
li x27, 0xee99279e8ffee6a2 # initialize rs2
sraw x27, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0x3275392648488d91 # initialize rs1
li x28, 0x8a90fcaac4aa57f2 # initialize rs2
sraw x28, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x17, 0x67108c33aaf129ab # initialize rs1
li x29, 0x61a34c70ebcb0f6e # initialize rs2
sraw x29, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x26, 0x958f9d1e3c1c02ce # initialize rs1
li x30, 0x6e992a13690f3134 # initialize rs2
sraw x30, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x7, 0x107865d6cf6566f3 # initialize rs1
li x31, 0x868436e8539da3d1 # initialize rs2
sraw x31, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x2313c6812ca89979 # initialize rs1
li x0, 0xc83bf8b6da7d8867 # initialize rs2
sraw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x7ee32a8ebf0d26f8 # initialize rs1
li x1, 0x29986fe45807f772 # initialize rs2
sraw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4524677e486239a3 # initialize rs1
li x2, 0x5f5fb562499d4ee3 # initialize rs2
sraw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xcf3f3fd08a4fead4 # initialize rs1
li x3, 0x45f1f8f60f054a49 # initialize rs2
sraw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6442328a5d4dc51e # initialize rs1
li x4, 0x4d12c0dd69578c2c # initialize rs2
sraw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x10de97bea2b3aafb # initialize rs1
li x5, 0x34962e755fa1bd8f # initialize rs2
sraw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x31573504048ae4c8 # initialize rs1
li x6, 0x44e1e1b6ca099fd0 # initialize rs2
sraw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb526e2159dea97bc # initialize rs1
li x7, 0x99884774b25dae60 # initialize rs2
sraw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3f72ed6cf5bb5c83 # initialize rs1
li x8, 0x68ddddc38a0fe28a # initialize rs2
sraw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x043219ad0713698e # initialize rs1
li x9, 0xefc6fcc9c33f18b5 # initialize rs2
sraw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc46794a063d5d38a # initialize rs1
li x10, 0x6758e1ed182f597b # initialize rs2
sraw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x0dbc35f18d715b6f # initialize rs1
li x11, 0x97454cec7d92edd2 # initialize rs2
sraw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x76a777c96aabd212 # initialize rs1
li x12, 0x6af58cc924fbc268 # initialize rs2
sraw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x24deccd0892dc1ba # initialize rs1
li x13, 0x8502e5884469fe7f # initialize rs2
sraw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x431e67e1d1608d2f # initialize rs1
li x14, 0xffb50cb3551c85c2 # initialize rs2
sraw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x852cc44efd0e5194 # initialize rs1
li x15, 0x3e3e668d051a89a1 # initialize rs2
sraw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x50a890ab7d4ab32d # initialize rs1
li x16, 0x59d93eadeead21ac # initialize rs2
sraw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8a1e6944e0a9c267 # initialize rs1
li x17, 0x3d3beeb3bed6fe0d # initialize rs2
sraw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x387bc77377dc3526 # initialize rs1
li x18, 0xf52f3581ac99dd35 # initialize rs2
sraw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9dbd6f939fb3bc55 # initialize rs1
li x19, 0x39cfe656cf6a40dd # initialize rs2
sraw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xddf477c03f781052 # initialize rs1
li x20, 0x79b9a6bdc1836067 # initialize rs2
sraw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x71e6735c7d6c318a # initialize rs1
li x21, 0x8670c2576ab71490 # initialize rs2
sraw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x78f5e9866187e7dd # initialize rs1
li x22, 0xb389f7d00ac46d2d # initialize rs2
sraw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x07ae80cc2ad5dde4 # initialize rs1
li x23, 0xb6d0b82ff5132bba # initialize rs2
sraw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x932af252abae0ad3 # initialize rs1
li x24, 0x55b3d92088a8a567 # initialize rs2
sraw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe154cc32b97dc426 # initialize rs1
li x25, 0xe06751bf33446387 # initialize rs2
sraw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x9ec9e7ef26c2e2ef # initialize rs1
li x26, 0xfd26a48d542be3d6 # initialize rs2
sraw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x93ba0ac56e18875f # initialize rs1
li x27, 0x143e4ba1c1a35602 # initialize rs2
sraw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x41723a454490f709 # initialize rs1
li x28, 0x3c98c696c7480560 # initialize rs2
sraw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb30dcb8fd03518d9 # initialize rs1
li x29, 0x4ebeabbe1c3c0332 # initialize rs2
sraw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x961f52fc8a38cc60 # initialize rs1
li x30, 0x97991955940a3de5 # initialize rs2
sraw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf827c5473b8f989c # initialize rs1
li x31, 0x4265ddee187be257 # initialize rs2
sraw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x19, x16 # perform first operation
sraw x23, x21, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x1, x22 # perform first operation
sraw x11, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x7, x20 # perform first operation
sraw x23, x2, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x14, x16 # perform first operation
sraw x18, x18, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x20, x27 # perform first operation
sraw x20, x25, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x28, x20 # perform first operation
sraw x20, x6, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x29, x20 # perform first operation
sraw x30, x16, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x26, x19 # perform first operation
sraw x6, x5, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x7, x22 # perform first operation
sraw x17, x20, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x10, x18 # perform first operation
sraw x10, x19, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x28, x26 # perform first operation
sraw x26, x12, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x14, x24 # perform first operation
sraw x9, x1, x5 # perform second (triggering) operation

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
