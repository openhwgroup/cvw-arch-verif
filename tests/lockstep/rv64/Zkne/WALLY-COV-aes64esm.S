///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zkne/WALLY-COV-aes64esm.S
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
li x0, 0xa76a3593962c07c1 # initialize rs1
li x27, 0x5651c3afd4cc2fcf # initialize rs2
aes64esm x20, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8e57444244f6e8e7 # initialize rs1
li x6, 0x6eb959559a76557c # initialize rs2
aes64esm x25, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4db98f9747f7e2bd # initialize rs1
li x3, 0x247797dafeacd519 # initialize rs2
aes64esm x9, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x66bf2f71416d5541 # initialize rs1
li x14, 0xca39ce6167ad7db6 # initialize rs2
aes64esm x16, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x064ca9c5f0ba0b41 # initialize rs1
li x27, 0x5a0f659510524d2f # initialize rs2
aes64esm x21, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb9976ccd2255ca55 # initialize rs1
li x11, 0xe61a3a0d874c248c # initialize rs2
aes64esm x29, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x08b768da8d19e80b # initialize rs1
li x2, 0xafa37a097742ec0f # initialize rs2
aes64esm x17, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7dcceab4866b5e67 # initialize rs1
li x28, 0x9d912497bd16ba74 # initialize rs2
aes64esm x29, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb27718719266cde4 # initialize rs1
li x25, 0x6c15c204bc4eb29c # initialize rs2
aes64esm x30, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x226387ed91a61a73 # initialize rs1
li x17, 0x91e3bccb5af2247a # initialize rs2
aes64esm x13, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x60e929aa79399e8d # initialize rs1
li x15, 0x670d178498da408a # initialize rs2
aes64esm x7, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8f56cb85766148b4 # initialize rs1
li x16, 0xddc0b461849bef67 # initialize rs2
aes64esm x6, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd266e75f137f1f0d # initialize rs1
li x23, 0xdea808539e2c1687 # initialize rs2
aes64esm x30, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa1887281728f0aaf # initialize rs1
li x31, 0x93e1c5bed35bfa70 # initialize rs2
aes64esm x19, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb5adce5e4f7415c8 # initialize rs1
li x7, 0x86dc7a442d727f5a # initialize rs2
aes64esm x2, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1672be2b56d61e86 # initialize rs1
li x1, 0x392e4612b63b1a81 # initialize rs2
aes64esm x14, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0c46a84c0c4ea4bf # initialize rs1
li x1, 0x887f0119cab5da74 # initialize rs2
aes64esm x25, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x9288e952de4a5134 # initialize rs1
li x16, 0xa8b5333dd7fc285f # initialize rs2
aes64esm x28, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x714c4c5a0e843fed # initialize rs1
li x10, 0x2293bbb1fbc9a7d0 # initialize rs2
aes64esm x21, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xea923ab3582570d7 # initialize rs1
li x18, 0x1fc42ad8901f3fe5 # initialize rs2
aes64esm x21, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x52a6b923cc8ebe9b # initialize rs1
li x7, 0x95325276aa53177a # initialize rs2
aes64esm x11, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x18605ffc3951633f # initialize rs1
li x28, 0xf791f43419cca0b3 # initialize rs2
aes64esm x27, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x62a316a7e9d9e190 # initialize rs1
li x12, 0xf2f5d86d25b9f96e # initialize rs2
aes64esm x20, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x97f3fe789919788e # initialize rs1
li x6, 0x39de8bb0e8633c1a # initialize rs2
aes64esm x25, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdc34daaa731e56fa # initialize rs1
li x7, 0x3ff2701754650d3f # initialize rs2
aes64esm x8, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd7058abd07498733 # initialize rs1
li x23, 0x41f71ecdc37f46f7 # initialize rs2
aes64esm x17, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xca526e449c956dd9 # initialize rs1
li x3, 0xbf211082cba4c9e8 # initialize rs2
aes64esm x23, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xaddccac67c76633d # initialize rs1
li x28, 0x22b8d9d9dabbd3cc # initialize rs2
aes64esm x3, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa1735d685a339575 # initialize rs1
li x27, 0xfcb42b28a2a70a89 # initialize rs2
aes64esm x22, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1ce44f57d8cc913f # initialize rs1
li x14, 0x070572ee6783edf2 # initialize rs2
aes64esm x24, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xcbde182b8e5bdb75 # initialize rs1
li x29, 0x1be2905f076a97fd # initialize rs2
aes64esm x2, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x0c2d7f8394a587d3 # initialize rs1
li x25, 0x542427376ec1c53e # initialize rs2
aes64esm x17, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0x1556d7e0690a1704 # initialize rs1
li x0, 0xb2e736b6b8b1c25d # initialize rs2
aes64esm x24, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0xc87ed5213ba1a933 # initialize rs1
li x1, 0x27778be723605204 # initialize rs2
aes64esm x2, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0x47ce9038dca46ff3 # initialize rs1
li x2, 0xe1460acdec8117c8 # initialize rs2
aes64esm x18, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x16, 0x60c5ecfc02d45746 # initialize rs1
li x3, 0x2ac670d14550538b # initialize rs2
aes64esm x31, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x851fd87aced6acf3 # initialize rs1
li x4, 0xf834457ff1a20365 # initialize rs2
aes64esm x29, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xdc3e93a85fb7d60d # initialize rs1
li x5, 0xc294ebba358bbf3d # initialize rs2
aes64esm x11, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x4b639bcc1a1c04f6 # initialize rs1
li x6, 0x32506e4dc66c3f30 # initialize rs2
aes64esm x14, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xb15a41e181565dc9 # initialize rs1
li x7, 0x0764dbec0555d483 # initialize rs2
aes64esm x13, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x20, 0x86adfeb5e5da77e7 # initialize rs1
li x8, 0x3e4b9e87c9a4bbeb # initialize rs2
aes64esm x5, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x2a9f6dde2ae489f4 # initialize rs1
li x9, 0x5d0a6ba8240e9e1e # initialize rs2
aes64esm x7, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0xfd338e314cf710c2 # initialize rs1
li x10, 0x6ede3d1cd2d86205 # initialize rs2
aes64esm x9, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x6b18ba5ee96940de # initialize rs1
li x11, 0x11076a3c05d54716 # initialize rs2
aes64esm x22, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x6a6a74ccfeb12044 # initialize rs1
li x12, 0x0d1b0b8f6b39a4bd # initialize rs2
aes64esm x11, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x23, 0x8a5216675acd26ee # initialize rs1
li x13, 0x3e1b70c627c595f0 # initialize rs2
aes64esm x22, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xe8d3409247fa728a # initialize rs1
li x14, 0xf7432c5d5b440ea5 # initialize rs2
aes64esm x13, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x7ac6d85cd3fbe824 # initialize rs1
li x15, 0xae13d36949dd9c7f # initialize rs2
aes64esm x13, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xc21e68571eaee375 # initialize rs1
li x16, 0xeea2f8f81b0f39d0 # initialize rs2
aes64esm x7, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x7, 0x6dbcb0e98f9c59ef # initialize rs1
li x17, 0xef465832cea0ebdd # initialize rs2
aes64esm x24, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x679b22f3949b8af7 # initialize rs1
li x18, 0x818ed3c2caa8d990 # initialize rs2
aes64esm x2, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x27, 0x58efc5ecbd015eed # initialize rs1
li x19, 0x01f499b3efab856c # initialize rs2
aes64esm x20, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x3dde86703a7af4f9 # initialize rs1
li x20, 0x65e20ca3a53a2db1 # initialize rs2
aes64esm x6, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0x897dc5d611cc4ad9 # initialize rs1
li x21, 0x0f2d1785c2fa3cdb # initialize rs2
aes64esm x31, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x22633acdc9eedd69 # initialize rs1
li x22, 0x970ce39337bfa12c # initialize rs2
aes64esm x18, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0xbe74a02e7a1b9e5e # initialize rs1
li x23, 0x703136266fd335d5 # initialize rs2
aes64esm x26, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x89c8cc12c778ad45 # initialize rs1
li x24, 0xafdbe611c01c100f # initialize rs2
aes64esm x22, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0xb3e6e9ae35efcf47 # initialize rs1
li x25, 0xba933cc562314ec3 # initialize rs2
aes64esm x29, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0x6d85dbef37143751 # initialize rs1
li x26, 0xaef60cb662c9c29c # initialize rs2
aes64esm x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x9d41370e438ee5ca # initialize rs1
li x27, 0x50d99acde4dd2470 # initialize rs2
aes64esm x26, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x3, 0xaad36b51ee1fee08 # initialize rs1
li x28, 0x0047eba52c1cebbc # initialize rs2
aes64esm x30, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x757a3ed05a7fb255 # initialize rs1
li x29, 0xfb90b860cfd4572a # initialize rs2
aes64esm x9, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0x88895d29b04c2f8d # initialize rs1
li x30, 0xd9aac052e25fc667 # initialize rs2
aes64esm x28, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x6, 0xa82ddc4da562624e # initialize rs1
li x31, 0xdba741da4da94581 # initialize rs2
aes64esm x3, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x6d8d00eaf345ca17 # initialize rs1
li x27, 0xce6586bf14493ed2 # initialize rs2
aes64esm x0, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0xac261878baeaeced # initialize rs1
li x21, 0xadaf586d84106f83 # initialize rs2
aes64esm x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x0f32370aeca526b3 # initialize rs1
li x31, 0xeb32623dd0073e48 # initialize rs2
aes64esm x2, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0xc471d3fbb2ec0778 # initialize rs1
li x27, 0xe4a724fb73bc4499 # initialize rs2
aes64esm x3, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xe5a0a896dbb4852d # initialize rs1
li x24, 0xa32fc44ece278129 # initialize rs2
aes64esm x4, x10, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0xe133dc0bcd1d3181 # initialize rs1
li x26, 0x7b45b42134fc1cb7 # initialize rs2
aes64esm x5, x29, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x079d03955ef9f425 # initialize rs1
li x15, 0xc13e0b2305af7682 # initialize rs2
aes64esm x6, x24, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0xa25a6e5d7c8b0537 # initialize rs1
li x6, 0xa870ea8ee958cd83 # initialize rs2
aes64esm x7, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0xc5f1ba341d303353 # initialize rs1
li x21, 0x8f03b722af40098a # initialize rs2
aes64esm x8, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x56a7e161213a42a9 # initialize rs1
li x7, 0x19ef2978d0035209 # initialize rs2
aes64esm x9, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0x63974218c777c376 # initialize rs1
li x15, 0x2c947ad6d230247d # initialize rs2
aes64esm x10, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x33ae85e18ecf5df5 # initialize rs1
li x16, 0xae8f65a670670625 # initialize rs2
aes64esm x11, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x4611d6db5829523f # initialize rs1
li x5, 0x52e69683e29d1974 # initialize rs2
aes64esm x12, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xce4d0d9cf2fbc86f # initialize rs1
li x22, 0xef863637382b170d # initialize rs2
aes64esm x13, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0xdec2518c7193dc1c # initialize rs1
li x22, 0x76f3b5c5476b726e # initialize rs2
aes64esm x14, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x814dee0a5b846408 # initialize rs1
li x12, 0x6594e5ac6f79a4b2 # initialize rs2
aes64esm x15, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x2efa169ffc246112 # initialize rs1
li x17, 0x12c801734c8c476e # initialize rs2
aes64esm x16, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0xc442918d158a2a8d # initialize rs1
li x5, 0x384168c5b9956e1f # initialize rs2
aes64esm x17, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x22, 0x5b8625436463f4e3 # initialize rs1
li x13, 0x7338eca866e787c8 # initialize rs2
aes64esm x18, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x21, 0xdfaf75544ba4fcb9 # initialize rs1
li x31, 0xc93860f3777f0511 # initialize rs2
aes64esm x19, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0xa5a3f07b28f9c549 # initialize rs1
li x21, 0xebb73050cfdb81eb # initialize rs2
aes64esm x20, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x14, 0xde1286c4931b036a # initialize rs1
li x22, 0x1d5d1bd0f9201f13 # initialize rs2
aes64esm x21, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x14fc88926549ac7b # initialize rs1
li x28, 0x18f0da2926d325cc # initialize rs2
aes64esm x22, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0x10ea65d9a3708bc8 # initialize rs1
li x23, 0x18fe622bb0c77186 # initialize rs2
aes64esm x23, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0x53e1842587d70be7 # initialize rs1
li x14, 0xfb0760ad2265c8e9 # initialize rs2
aes64esm x24, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x76a4d57fe2742a3e # initialize rs1
li x10, 0x59952651da681ca3 # initialize rs2
aes64esm x25, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0x60a6d125de53313a # initialize rs1
li x25, 0x83587db7845801cc # initialize rs2
aes64esm x26, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x7072b6c061a92f97 # initialize rs1
li x31, 0x9e341592f9c7915b # initialize rs2
aes64esm x27, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x55f766949b25856c # initialize rs1
li x12, 0xd26d966cc15cfaed # initialize rs2
aes64esm x28, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x918e527e35213fc1 # initialize rs1
li x22, 0x04709245f2a8be4f # initialize rs2
aes64esm x29, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0xc3d441a1e1a32dd9 # initialize rs1
li x9, 0x3cc7eba0b0536f5d # initialize rs2
aes64esm x30, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x883b8f374e87bc73 # initialize rs1
li x12, 0xea3cf92ecfdab607 # initialize rs2
aes64esm x31, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x2, 0x117ea73cf81680f6 # initialize rs2
aes64esm x22, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x0000000000000001 # initialize rs1
li x31, 0x4de9a62855f4d5f7 # initialize rs2
aes64esm x16, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
li x21, 0x98c078b8f7b6c665 # initialize rs2
aes64esm x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x30, 0x04f6cf29a64bec41 # initialize rs2
aes64esm x11, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x1, 0x81160a4ffc880c80 # initialize rs2
aes64esm x7, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x16, 0x56fbd1a0cdb6939c # initialize rs2
aes64esm x14, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
li x11, 0x697ded54c65a8a7a # initialize rs2
aes64esm x26, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x21, 0x9b7fb8e806ffa3db # initialize rs2
aes64esm x20, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x6, 0xc838835e0b50f08b # initialize rs2
aes64esm x30, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x1d1aa071eeb0fe0f # initialize rs2
aes64esm x9, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x972f66bec3aad349 # initialize rs2
aes64esm x14, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs1
li x22, 0x78aaec5beea59c71 # initialize rs2
aes64esm x18, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x31, 0xc21bdadb0865f089 # initialize rs2
aes64esm x23, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x18, 0x8123060b5d6d5b11 # initialize rs2
aes64esm x6, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
li x2, 0x87c0e71ca1729738 # initialize rs2
aes64esm x26, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x1, 0x0000000100000001 # initialize rs1
li x28, 0xa49a0d083be1f8e7 # initialize rs2
aes64esm x19, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0x3f01281d37b7c9c8 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64esm x6, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x28, 0xe366e04bdd5ff93e # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
aes64esm x31, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x03d17d0e914913fa # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
aes64esm x9, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xba192da819ff9049 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
aes64esm x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0xccb8f850f7df6074 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
aes64esm x20, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x1df9bea592c13461 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64esm x25, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0xfd375b517df5cb9e # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64esm x17, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x923a6a2355ee21f7 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64esm x8, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x7, 0xa20889361ec54f99 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
aes64esm x12, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x24, 0x44563642ad348c34 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x17, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xeb48443c28a18d5a # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x24, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x088a613559a5a7ca # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
aes64esm x3, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xd4479943a92821f9 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64esm x17, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x1594d599fa93b824 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
aes64esm x6, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0x036af5233c947601 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64esm x29, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0x6f27e5a8dbc0f99a # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
aes64esm x22, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
aes64esm x13, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x29, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
aes64esm x27, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
aes64esm x22, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x5, 0x0000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64esm x29, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x0000000000000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
aes64esm x12, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64esm x8, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
aes64esm x2, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
aes64esm x14, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
aes64esm x25, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x24, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x14, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
aes64esm x5, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
aes64esm x29, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
aes64esm x28, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x30, 0x0000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64esm x11, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x17, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
aes64esm x2, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x3, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64esm x29, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
aes64esm x15, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x20, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
aes64esm x21, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x16, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
aes64esm x20, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x2, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
aes64esm x25, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
aes64esm x15, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64esm x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
aes64esm x25, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
aes64esm x17, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x29, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x13, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x17, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
aes64esm x30, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
aes64esm x20, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
aes64esm x16, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x6, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64esm x28, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x27, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
aes64esm x11, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64esm x16, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x23, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
aes64esm x28, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64esm x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x19, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
aes64esm x3, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x19, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
aes64esm x10, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000002 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
aes64esm x15, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
aes64esm x25, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64esm x28, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
aes64esm x15, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000002 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x28, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x13, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0x0000000000000002 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64esm x21, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
aes64esm x14, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64esm x3, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x27, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
aes64esm x3, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x8, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
aes64esm x2, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
aes64esm x30, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x22, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
aes64esm x27, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x18, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
aes64esm x24, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
aes64esm x7, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x19, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
aes64esm x1, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x30, 0x8000000000000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
aes64esm x5, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64esm x14, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64esm x7, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
aes64esm x30, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x27, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x1, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x8000000000000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
aes64esm x22, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
aes64esm x31, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64esm x12, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64esm x8, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x11, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
aes64esm x13, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
aes64esm x30, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
aes64esm x24, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
aes64esm x2, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x18, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
aes64esm x7, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
aes64esm x1, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
aes64esm x17, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64esm x1, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
aes64esm x22, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
aes64esm x1, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x23, 0x8000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x18, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x6, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64esm x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
aes64esm x7, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
aes64esm x20, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x7, 0x8000000000000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
aes64esm x6, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x23, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64esm x1, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x9, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
aes64esm x12, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x30, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
aes64esm x5, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x27, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
aes64esm x11, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
aes64esm x18, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
aes64esm x14, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x23, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
aes64esm x9, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
aes64esm x6, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64esm x10, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
aes64esm x11, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x31, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7fffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x29, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x7fffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
aes64esm x12, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
aes64esm x15, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
aes64esm x2, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
aes64esm x24, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
aes64esm x21, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x20, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
aes64esm x3, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x7, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
aes64esm x19, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x8, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
aes64esm x23, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
aes64esm x25, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
aes64esm x10, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
aes64esm x20, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
aes64esm x7, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
aes64esm x27, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
aes64esm x14, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x16, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7ffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x30, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64esm x12, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x2, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64esm x26, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
aes64esm x16, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
aes64esm x1, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x10, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
aes64esm x25, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
aes64esm x14, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x27, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
aes64esm x31, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64esm x2, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
aes64esm x14, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x17, 0xffffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
aes64esm x26, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64esm x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64esm x10, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
aes64esm x27, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
aes64esm x12, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0xffffffffffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x26, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xffffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x26, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
aes64esm x30, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
aes64esm x9, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
aes64esm x5, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x9, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
aes64esm x28, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
aes64esm x7, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
aes64esm x3, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x5, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
aes64esm x20, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x19, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64esm x28, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
aes64esm x17, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
aes64esm x18, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
aes64esm x15, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
aes64esm x6, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
aes64esm x12, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64esm x15, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x30, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xfffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x22, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x1, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
aes64esm x25, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64esm x16, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
aes64esm x11, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x23, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
aes64esm x7, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x19, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64esm x7, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
aes64esm x7, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
aes64esm x20, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
aes64esm x23, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
aes64esm x15, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64esm x16, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
aes64esm x20, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64esm x22, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
aes64esm x27, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
aes64esm x8, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x23, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x28, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
aes64esm x3, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
aes64esm x20, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64esm x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
aes64esm x28, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
aes64esm x19, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
aes64esm x11, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
aes64esm x10, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64esm x18, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64esm x11, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64esm x21, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
aes64esm x21, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
aes64esm x28, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
aes64esm x8, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
aes64esm x8, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x19, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x16, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
aes64esm x13, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64esm x2, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64esm x25, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
aes64esm x31, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64esm x28, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x27, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
aes64esm x28, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x14, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64esm x8, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
aes64esm x18, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x29, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
aes64esm x19, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x7, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
aes64esm x25, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x2, 0x5555555555555555 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
aes64esm x25, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
aes64esm x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x2, 0x5555555555555555 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
aes64esm x26, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64esm x30, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x16, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5555555555555555 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x7, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x30, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
aes64esm x14, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
aes64esm x20, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
aes64esm x6, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x26, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
aes64esm x19, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64esm x17, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
aes64esm x16, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64esm x22, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x22, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
aes64esm x18, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x7, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
aes64esm x9, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x19, 0x00000000ffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
aes64esm x22, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
aes64esm x24, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
aes64esm x25, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64esm x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64esm x7, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0x00000000ffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x12, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x00000000ffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x30, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
aes64esm x23, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64esm x2, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
aes64esm x27, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x30, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
aes64esm x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x3, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
aes64esm x19, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x27, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
aes64esm x19, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
aes64esm x14, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
aes64esm x16, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x16, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64esm x9, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x20, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64esm x27, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x29, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
aes64esm x7, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
aes64esm x14, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
aes64esm x14, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
aes64esm x8, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x10, 0x00000000fffffffe # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x2, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000fffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x14, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64esm x2, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
aes64esm x2, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64esm x2, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x9, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
aes64esm x20, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x13, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64esm x15, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x10, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
aes64esm x15, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x24, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
aes64esm x3, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x15, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64esm x30, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x7, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
aes64esm x9, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x5, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
aes64esm x10, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
aes64esm x8, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000100000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
aes64esm x24, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64esm x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
aes64esm x15, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x29, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x7, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x24, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
aes64esm x14, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
aes64esm x8, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
aes64esm x23, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64esm x20, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
aes64esm x7, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x20, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
aes64esm x12, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x17, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64esm x5, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x23, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
aes64esm x15, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x31, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64esm x5, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x23, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
aes64esm x6, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
aes64esm x18, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
aes64esm x9, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64esm x29, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
aes64esm x29, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x5, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x16, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x10, 0x0000000100000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
aes64esm x25, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
aes64esm x15, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
aes64esm x27, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
aes64esm x23, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
aes64esm x19, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xf992548c5ee33a83 # initialize rs1
li x0, 0xf105aa945d0d5c27 # initialize rs2
aes64esm x10, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x43b3f267cdaf86c5 # initialize rs1
li x1, 0xb79af2ad8d9a3fb5 # initialize rs2
aes64esm x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xfa59540ae248f4f7 # initialize rs1
li x2, 0x782e1a8b5ecd647b # initialize rs2
aes64esm x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2780acbfcc709080 # initialize rs1
li x3, 0xed484353a65c5c08 # initialize rs2
aes64esm x11, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4e4a9717a091a689 # initialize rs1
li x4, 0x4ff82c5c1f35c1d6 # initialize rs2
aes64esm x6, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x98f808ed724aeef8 # initialize rs1
li x5, 0xe7dda9385a480fd9 # initialize rs2
aes64esm x11, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6afc6656d21a84bc # initialize rs1
li x6, 0x746fa65fb1ae3ecd # initialize rs2
aes64esm x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbec671f1b9d5260b # initialize rs1
li x7, 0x2f18c27521078b64 # initialize rs2
aes64esm x30, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6f9d9188e88c97f0 # initialize rs1
li x8, 0xfe44bc956b3d5e94 # initialize rs2
aes64esm x1, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x083eeacc13eefceb # initialize rs1
li x9, 0x92cdc1a7cc8b6c7d # initialize rs2
aes64esm x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x00e2843314dfac3f # initialize rs1
li x10, 0x980631ecb13ef8c0 # initialize rs2
aes64esm x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x45c0fbdd1e4d8435 # initialize rs1
li x11, 0x7d4d2562e160a246 # initialize rs2
aes64esm x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x157d36d046305860 # initialize rs1
li x12, 0xedb1d46d49433f91 # initialize rs2
aes64esm x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd1b0c5dcf8bae96f # initialize rs1
li x13, 0xc9b6d053318db61f # initialize rs2
aes64esm x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xdd9634b68a50c2e3 # initialize rs1
li x14, 0x4ddcb42d53e461f4 # initialize rs2
aes64esm x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xed19a6a66bd9e243 # initialize rs1
li x15, 0x55b91dabd09cc30d # initialize rs2
aes64esm x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xad9b79c978d34dc2 # initialize rs1
li x16, 0xbde72bc40cc5ba07 # initialize rs2
aes64esm x11, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x07694096460af5bf # initialize rs1
li x17, 0x38471c5ca64f82db # initialize rs2
aes64esm x5, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc34ddd7f49e7d9eb # initialize rs1
li x18, 0x3b2701e821f9c162 # initialize rs2
aes64esm x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xd05cec98376f1bb9 # initialize rs1
li x19, 0xfecc0a5244ef5261 # initialize rs2
aes64esm x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x88b9e4cb76532ff7 # initialize rs1
li x20, 0x4fead3b209411a6e # initialize rs2
aes64esm x13, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x73ff843c5c10c605 # initialize rs1
li x21, 0xf5e4b959c438e5d4 # initialize rs2
aes64esm x26, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x316fec658728a21b # initialize rs1
li x22, 0x737d049e2724dad0 # initialize rs2
aes64esm x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1fe55e183e0537c9 # initialize rs1
li x23, 0x61de96d699da9ed8 # initialize rs2
aes64esm x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7eea6388f479317f # initialize rs1
li x24, 0x202b3b1d0b144a5d # initialize rs2
aes64esm x1, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x71557f3cf920973f # initialize rs1
li x25, 0x1d962f628485f111 # initialize rs2
aes64esm x5, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd33071bae96dc220 # initialize rs1
li x26, 0x8718a29a69a04ebe # initialize rs2
aes64esm x14, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x4535983b6e5e8230 # initialize rs1
li x27, 0xb74556e2bb0ed863 # initialize rs2
aes64esm x28, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x24aa415e8fc24eec # initialize rs1
li x28, 0x4e0b7bb65a0b0443 # initialize rs2
aes64esm x12, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4fad887d4fb05f65 # initialize rs1
li x29, 0xdb5d85bdc799e12e # initialize rs2
aes64esm x16, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x492fb5abf165e0dc # initialize rs1
li x30, 0x57393529971254fb # initialize rs2
aes64esm x3, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x241b52fc64340cf1 # initialize rs1
li x31, 0xd2fc4b30d7b55150 # initialize rs2
aes64esm x13, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7ac9c3aef08d51e0 # initialize rs1
li x13, 0x2f66d4e7f2c9b9cd # initialize rs2
aes64esm x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xad3a03969222b9af # initialize rs1
li x9, 0x936290ea0c4eab3b # initialize rs2
aes64esm x1, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x00e42cae4d1f516b # initialize rs1
li x17, 0xa6ee26020a8e9716 # initialize rs2
aes64esm x2, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2e5985ee5259bd7f # initialize rs1
li x5, 0xcdffbf4b4f3d37e0 # initialize rs2
aes64esm x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x025593935a2ee3ba # initialize rs1
li x7, 0x38c88e3708e4cb52 # initialize rs2
aes64esm x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3c7cb6c6f6c1cb0a # initialize rs1
li x23, 0x93fcb291a292c590 # initialize rs2
aes64esm x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd4861fadee048733 # initialize rs1
li x15, 0x98f6ab66f5556d20 # initialize rs2
aes64esm x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7e33898ea665d7c8 # initialize rs1
li x10, 0xf4cbfc6873c1979b # initialize rs2
aes64esm x7, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9a1631240c817585 # initialize rs1
li x13, 0x8323b2969ae4d5eb # initialize rs2
aes64esm x8, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe489146869a76a1a # initialize rs1
li x16, 0xba8c1a6aa2b173e7 # initialize rs2
aes64esm x9, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe7ab2ffdadc74bf0 # initialize rs1
li x12, 0x2dbd7ce855e3eacb # initialize rs2
aes64esm x10, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xaf0cf059dabc184a # initialize rs1
li x12, 0xe59a7fd454d7a39d # initialize rs2
aes64esm x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1ae4c4b06179545f # initialize rs1
li x13, 0xe2afb4fdb87395c9 # initialize rs2
aes64esm x12, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3d3df0753bbefeef # initialize rs1
li x23, 0xb8920417e232b652 # initialize rs2
aes64esm x13, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd55bd1cb63a46e12 # initialize rs1
li x11, 0x6873ab30b5478bb7 # initialize rs2
aes64esm x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb1cbff9f5e68831a # initialize rs1
li x11, 0xbec31325bca99d4a # initialize rs2
aes64esm x15, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd7077b05de61e4d1 # initialize rs1
li x7, 0x1b85d905360d65fa # initialize rs2
aes64esm x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0e3586f4b2efde84 # initialize rs1
li x11, 0x1f1ba500d32f6fe7 # initialize rs2
aes64esm x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6874089fc3e039de # initialize rs1
li x26, 0x922d0eccb9513b41 # initialize rs2
aes64esm x18, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7fd0f134aae472b8 # initialize rs1
li x24, 0x8fddbb9bdaed57fd # initialize rs2
aes64esm x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6707be0966b2e78f # initialize rs1
li x20, 0xcdafd1506dc61b6f # initialize rs2
aes64esm x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x159a800dc61b3869 # initialize rs1
li x11, 0x8bfbd886ff59fe03 # initialize rs2
aes64esm x21, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3ca246f2a3049339 # initialize rs1
li x17, 0xccba09d36b110471 # initialize rs2
aes64esm x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x084dfda37a4e01f0 # initialize rs1
li x5, 0xe31c5ad49963b7c7 # initialize rs2
aes64esm x23, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8efe4cb7af20ce92 # initialize rs1
li x27, 0x3c710a73a851ab0d # initialize rs2
aes64esm x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5d3fbc7f795daae4 # initialize rs1
li x26, 0x3e62f70a4963d0f4 # initialize rs2
aes64esm x25, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1d774022f466c9c5 # initialize rs1
li x7, 0xfe71e6b8f371c71e # initialize rs2
aes64esm x26, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9eacbde18a9d228d # initialize rs1
li x25, 0x23463120fe2e33da # initialize rs2
aes64esm x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa541a114371ee002 # initialize rs1
li x9, 0x518b3833f69c529a # initialize rs2
aes64esm x28, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xde8e89e42be5256d # initialize rs1
li x16, 0x867d5c3526c40772 # initialize rs2
aes64esm x29, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb65b096cc538f2a2 # initialize rs1
li x25, 0x3b3cfbb650ed45f3 # initialize rs2
aes64esm x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe0378e38c496e45f # initialize rs1
li x30, 0xd5dc6cb9e1ce05ef # initialize rs2
aes64esm x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0xdb2bba55f441cf5d # initialize rs1
li x0, 0xaa20f324c93970aa # initialize rs2
aes64esm x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x13, 0x5017e94c8cd82c66 # initialize rs1
li x1, 0x995aa9eb6d1248d2 # initialize rs2
aes64esm x1, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x12, 0x74cf6a7d236ab8a4 # initialize rs1
li x2, 0x3317a92bbd3e6daf # initialize rs2
aes64esm x2, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0x6099a7df4476009b # initialize rs1
li x3, 0x468e2cf7259a75f1 # initialize rs2
aes64esm x3, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x850b6841284b1165 # initialize rs1
li x4, 0xa4fa0091b071a7df # initialize rs2
aes64esm x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x011c10aff5c7f34c # initialize rs1
li x5, 0xcb89b88d98b3e20f # initialize rs2
aes64esm x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xb399e058b9f05746 # initialize rs1
li x6, 0x7581a86866e446e0 # initialize rs2
aes64esm x6, x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xab0c42f6d8672041 # initialize rs1
li x7, 0x77fa1ea7fa153717 # initialize rs2
aes64esm x7, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x19, 0x7fc6f9b6c5488fd2 # initialize rs1
li x8, 0xa6829af7d4b9fd4d # initialize rs2
aes64esm x8, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x27, 0x3d277170f69ee018 # initialize rs1
li x9, 0x41502847bc7226d5 # initialize rs2
aes64esm x9, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x13, 0x4cf9a9a0c2d1377d # initialize rs1
li x10, 0x1d8e28c2087fe069 # initialize rs2
aes64esm x10, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x28, 0x5dae9fdde9ac11a1 # initialize rs1
li x11, 0xbae98476be8896cf # initialize rs2
aes64esm x11, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0xd3009ab76d87f048 # initialize rs1
li x12, 0x9e9f5248d7de7bd9 # initialize rs2
aes64esm x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x2, 0x25ef2547202fa048 # initialize rs1
li x13, 0x8090e1814179c871 # initialize rs2
aes64esm x13, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0x9a2d2f556af6a350 # initialize rs1
li x14, 0xf8a6dec875d3b055 # initialize rs2
aes64esm x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x16, 0x4fd86fc8d00ca518 # initialize rs1
li x15, 0x9496ddf6e7efb75b # initialize rs2
aes64esm x15, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x11, 0x13dd26d0feba282c # initialize rs1
li x16, 0x50f13f83e459d265 # initialize rs2
aes64esm x16, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x30, 0xf5abf7859cd4d863 # initialize rs1
li x17, 0x08d86333ebcd9cc8 # initialize rs2
aes64esm x17, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x14, 0x4ff77858183c32ba # initialize rs1
li x18, 0xf15c8debc484ea72 # initialize rs2
aes64esm x18, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x5, 0x1a4f1fd6bc361b1c # initialize rs1
li x19, 0xe790c3571016eb14 # initialize rs2
aes64esm x19, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0x8cd7b2d8ecb080c6 # initialize rs1
li x20, 0x9c7725cadb02da5a # initialize rs2
aes64esm x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xac0a3f6a562a12f0 # initialize rs1
li x21, 0x4666b5d63d918578 # initialize rs2
aes64esm x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0xe97dda0cc47f8e21 # initialize rs1
li x22, 0xf19cafe92333e64a # initialize rs2
aes64esm x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x0c13f23f3a2a13ac # initialize rs1
li x23, 0x74068f9434177605 # initialize rs2
aes64esm x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0x406171b0f2c95867 # initialize rs1
li x24, 0x534c803cdac033cc # initialize rs2
aes64esm x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x26, 0xa9990accfbbd9ea9 # initialize rs1
li x25, 0x6e1c8e15eea08c6b # initialize rs2
aes64esm x25, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x16, 0x119622f6fca662d8 # initialize rs1
li x26, 0x0630b4ce6655bb24 # initialize rs2
aes64esm x26, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x6, 0x8d5f6bc1d63fcc2d # initialize rs1
li x27, 0x002717597518f427 # initialize rs2
aes64esm x27, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x3, 0x0209f07f60c9ea26 # initialize rs1
li x28, 0xcff2ea35453bd772 # initialize rs2
aes64esm x28, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x49ca5496bdc79604 # initialize rs1
li x29, 0xec2dd234b9959e70 # initialize rs2
aes64esm x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0xfabecddbde7a7349 # initialize rs1
li x30, 0x2dc16f65cc234ce5 # initialize rs2
aes64esm x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x17, 0x667435f8aa097fc3 # initialize rs1
li x31, 0x2bf8e14b64a36e67 # initialize rs2
aes64esm x31, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7f558cb3d1efb0ea # initialize rs1
li x0, 0x320169e1d7af3da8 # initialize rs2
aes64esm x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd4573dcd6e2507a4 # initialize rs1
li x1, 0x47c7370a080ffb72 # initialize rs2
aes64esm x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x06d310d5a6cfaa69 # initialize rs1
li x2, 0x4296570dd20834ba # initialize rs2
aes64esm x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1d9300ffd2030f3d # initialize rs1
li x3, 0x04bb5f8a524fa688 # initialize rs2
aes64esm x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x086e67eb999f55ad # initialize rs1
li x4, 0x96cad24c98bb12ed # initialize rs2
aes64esm x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x632858708026dede # initialize rs1
li x5, 0x2fe4aac3795f22c6 # initialize rs2
aes64esm x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x296c16ec2c7b9bb6 # initialize rs1
li x6, 0x662b7cc7d1e14a0e # initialize rs2
aes64esm x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf45149321a44449e # initialize rs1
li x7, 0x1aba54db1f8b7e4c # initialize rs2
aes64esm x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0a4151f7bf2a52ed # initialize rs1
li x8, 0xea5ec8cd194dc638 # initialize rs2
aes64esm x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x79ac4a2ae6a6b9b3 # initialize rs1
li x9, 0xfdb5e70eb3247020 # initialize rs2
aes64esm x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x28d5710535c05811 # initialize rs1
li x10, 0x858e53d450ac5540 # initialize rs2
aes64esm x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x8b377a216aeaef13 # initialize rs1
li x11, 0x752e53a0ece4cd3c # initialize rs2
aes64esm x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x64a8126c96d6e89d # initialize rs1
li x12, 0x73c03a45dcaca445 # initialize rs2
aes64esm x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3d6e3b15e3c5a9d6 # initialize rs1
li x13, 0x043e08367b5febfa # initialize rs2
aes64esm x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x0fdc3e8a94ce881a # initialize rs1
li x14, 0xe769bc34240f6f46 # initialize rs2
aes64esm x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3a7b0e7d610f36b8 # initialize rs1
li x15, 0xcf3f0c6da3c89326 # initialize rs2
aes64esm x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xe4e19248d6d5dedd # initialize rs1
li x16, 0xdd7f0f2fbb8780b9 # initialize rs2
aes64esm x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xef065fc1d8fbb6c1 # initialize rs1
li x17, 0x07083546f534083b # initialize rs2
aes64esm x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd81a7387393244e9 # initialize rs1
li x18, 0xf94815aa6d12e3a1 # initialize rs2
aes64esm x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9d4453fc1308806c # initialize rs1
li x19, 0x2ec724e6b6fbd157 # initialize rs2
aes64esm x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xad44393c2fc03f85 # initialize rs1
li x20, 0xbca5baf0109e2b80 # initialize rs2
aes64esm x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd788543a61be21fb # initialize rs1
li x21, 0x1f40be3bf505bf8d # initialize rs2
aes64esm x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x50c2e9d7c66f7282 # initialize rs1
li x22, 0x52e0c03f198996a0 # initialize rs2
aes64esm x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xee98a2d1efb68890 # initialize rs1
li x23, 0xf4690ad7c78fb98b # initialize rs2
aes64esm x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x619ab6a7465e3387 # initialize rs1
li x24, 0xc3f5d48d5354b349 # initialize rs2
aes64esm x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xde2b2d465b6346f1 # initialize rs1
li x25, 0x27706d013b638785 # initialize rs2
aes64esm x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xfc0ba056cddb2c20 # initialize rs1
li x26, 0x44c3f7ac779159c7 # initialize rs2
aes64esm x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x16f96450ed6df12b # initialize rs1
li x27, 0x4eb79ba303623e8e # initialize rs2
aes64esm x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x221bab3a83b80b7f # initialize rs1
li x28, 0xc331279a8967a525 # initialize rs2
aes64esm x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1dbd1424b54ba53f # initialize rs1
li x29, 0xdb202cdc5ee7b21d # initialize rs2
aes64esm x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc27c3ec5efa85c59 # initialize rs1
li x30, 0x38d1f2f1783da317 # initialize rs2
aes64esm x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1ac86bf3663c2b0d # initialize rs1
li x31, 0x6417ddd5b1c5297a # initialize rs2
aes64esm x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x7, x18 # perform first operation
aes64esm x3, x1, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x9, x19 # perform first operation
aes64esm x30, x24, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x13, x10 # perform first operation
aes64esm x22, x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x2, x15 # perform first operation
aes64esm x26, x8, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x3, x28 # perform first operation
aes64esm x15, x31, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x8, x29 # perform first operation
aes64esm x29, x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x25, x16 # perform first operation
aes64esm x10, x12, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x9, x26 # perform first operation
aes64esm x11, x31, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x23, x13 # perform first operation
aes64esm x31, x2, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x2, x27 # perform first operation
aes64esm x2, x20, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x2, x10 # perform first operation
aes64esm x10, x6, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x23, x10 # perform first operation
aes64esm x8, x21, x22 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x13, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64esm x7, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

# Testcase cp_sbox = 1
li x25, 0x0101010101010101 # initialize rs1
li x20, 0x0101010101010101 # initialize rs2
aes64esm x31, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_sbox = 2
li x22, 0x0202020202020202 # initialize rs1
li x25, 0x0202020202020202 # initialize rs2
aes64esm x13, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cp_sbox = 3
li x26, 0x0303030303030303 # initialize rs1
li x29, 0x0303030303030303 # initialize rs2
aes64esm x2, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_sbox = 4
li x7, 0x0404040404040404 # initialize rs1
li x14, 0x0404040404040404 # initialize rs2
aes64esm x28, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cp_sbox = 5
li x6, 0x0505050505050505 # initialize rs1
li x3, 0x0505050505050505 # initialize rs2
aes64esm x22, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_sbox = 6
li x10, 0x0606060606060606 # initialize rs1
li x1, 0x0606060606060606 # initialize rs2
aes64esm x3, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cp_sbox = 7
li x8, 0x0707070707070707 # initialize rs1
li x28, 0x0707070707070707 # initialize rs2
aes64esm x16, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cp_sbox = 8
li x29, 0x0808080808080808 # initialize rs1
li x11, 0x0808080808080808 # initialize rs2
aes64esm x26, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cp_sbox = 9
li x6, 0x0909090909090909 # initialize rs1
li x13, 0x0909090909090909 # initialize rs2
aes64esm x23, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_sbox = 10
li x31, 0x0a0a0a0a0a0a0a0a # initialize rs1
li x6, 0x0a0a0a0a0a0a0a0a # initialize rs2
aes64esm x12, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cp_sbox = 11
li x15, 0x0b0b0b0b0b0b0b0b # initialize rs1
li x16, 0x0b0b0b0b0b0b0b0b # initialize rs2
aes64esm x14, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cp_sbox = 12
li x21, 0x0c0c0c0c0c0c0c0c # initialize rs1
li x12, 0x0c0c0c0c0c0c0c0c # initialize rs2
aes64esm x6, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cp_sbox = 13
li x28, 0x0d0d0d0d0d0d0d0d # initialize rs1
li x19, 0x0d0d0d0d0d0d0d0d # initialize rs2
aes64esm x11, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_sbox = 14
li x31, 0x0e0e0e0e0e0e0e0e # initialize rs1
li x1, 0x0e0e0e0e0e0e0e0e # initialize rs2
aes64esm x22, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cp_sbox = 15
li x6, 0x0f0f0f0f0f0f0f0f # initialize rs1
li x21, 0x0f0f0f0f0f0f0f0f # initialize rs2
aes64esm x5, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cp_sbox = 16
li x10, 0x1010101010101010 # initialize rs1
li x23, 0x1010101010101010 # initialize rs2
aes64esm x29, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_sbox = 17
li x11, 0x1111111111111111 # initialize rs1
li x12, 0x1111111111111111 # initialize rs2
aes64esm x28, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cp_sbox = 18
li x31, 0x1212121212121212 # initialize rs1
li x25, 0x1212121212121212 # initialize rs2
aes64esm x19, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 640)

# Testcase cp_sbox = 19
li x25, 0x1313131313131313 # initialize rs1
li x14, 0x1313131313131313 # initialize rs2
aes64esm x21, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 648)

# Testcase cp_sbox = 20
li x19, 0x1414141414141414 # initialize rs1
li x17, 0x1414141414141414 # initialize rs2
aes64esm x9, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cp_sbox = 21
li x29, 0x1515151515151515 # initialize rs1
li x3, 0x1515151515151515 # initialize rs2
aes64esm x16, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cp_sbox = 22
li x14, 0x1616161616161616 # initialize rs1
li x23, 0x1616161616161616 # initialize rs2
aes64esm x16, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cp_sbox = 23
li x21, 0x1717171717171717 # initialize rs1
li x26, 0x1717171717171717 # initialize rs2
aes64esm x23, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cp_sbox = 24
li x11, 0x1818181818181818 # initialize rs1
li x13, 0x1818181818181818 # initialize rs2
aes64esm x8, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cp_sbox = 25
li x21, 0x1919191919191919 # initialize rs1
li x24, 0x1919191919191919 # initialize rs2
aes64esm x15, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cp_sbox = 26
li x21, 0x1a1a1a1a1a1a1a1a # initialize rs1
li x6, 0x1a1a1a1a1a1a1a1a # initialize rs2
aes64esm x16, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 704)

# Testcase cp_sbox = 27
li x10, 0x1b1b1b1b1b1b1b1b # initialize rs1
li x17, 0x1b1b1b1b1b1b1b1b # initialize rs2
aes64esm x18, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cp_sbox = 28
li x5, 0x1c1c1c1c1c1c1c1c # initialize rs1
li x11, 0x1c1c1c1c1c1c1c1c # initialize rs2
aes64esm x22, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cp_sbox = 29
li x2, 0x1d1d1d1d1d1d1d1d # initialize rs1
li x29, 0x1d1d1d1d1d1d1d1d # initialize rs2
aes64esm x12, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cp_sbox = 30
li x9, 0x1e1e1e1e1e1e1e1e # initialize rs1
li x3, 0x1e1e1e1e1e1e1e1e # initialize rs2
aes64esm x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 736)

# Testcase cp_sbox = 31
li x20, 0x1f1f1f1f1f1f1f1f # initialize rs1
li x13, 0x1f1f1f1f1f1f1f1f # initialize rs2
aes64esm x29, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_sbox = 32
li x27, 0x2020202020202020 # initialize rs1
li x5, 0x2020202020202020 # initialize rs2
aes64esm x10, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cp_sbox = 33
li x5, 0x2121212121212121 # initialize rs1
li x27, 0x2121212121212121 # initialize rs2
aes64esm x17, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cp_sbox = 34
li x2, 0x2222222222222222 # initialize rs1
li x5, 0x2222222222222222 # initialize rs2
aes64esm x19, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cp_sbox = 35
li x24, 0x2323232323232323 # initialize rs1
li x13, 0x2323232323232323 # initialize rs2
aes64esm x7, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_sbox = 36
li x6, 0x2424242424242424 # initialize rs1
li x12, 0x2424242424242424 # initialize rs2
aes64esm x28, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cp_sbox = 37
li x20, 0x2525252525252525 # initialize rs1
li x30, 0x2525252525252525 # initialize rs2
aes64esm x7, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cp_sbox = 38
li x26, 0x2626262626262626 # initialize rs1
li x22, 0x2626262626262626 # initialize rs2
aes64esm x23, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cp_sbox = 39
li x10, 0x2727272727272727 # initialize rs1
li x24, 0x2727272727272727 # initialize rs2
aes64esm x19, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 808)

# Testcase cp_sbox = 40
li x23, 0x2828282828282828 # initialize rs1
li x10, 0x2828282828282828 # initialize rs2
aes64esm x1, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 816)

# Testcase cp_sbox = 41
li x16, 0x2929292929292929 # initialize rs1
li x19, 0x2929292929292929 # initialize rs2
aes64esm x2, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_sbox = 42
li x6, 0x2a2a2a2a2a2a2a2a # initialize rs1
li x3, 0x2a2a2a2a2a2a2a2a # initialize rs2
aes64esm x23, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_sbox = 43
li x18, 0x2b2b2b2b2b2b2b2b # initialize rs1
li x15, 0x2b2b2b2b2b2b2b2b # initialize rs2
aes64esm x5, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cp_sbox = 44
li x29, 0x2c2c2c2c2c2c2c2c # initialize rs1
li x21, 0x2c2c2c2c2c2c2c2c # initialize rs2
aes64esm x20, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cp_sbox = 45
li x27, 0x2d2d2d2d2d2d2d2d # initialize rs1
li x14, 0x2d2d2d2d2d2d2d2d # initialize rs2
aes64esm x20, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cp_sbox = 46
li x26, 0x2e2e2e2e2e2e2e2e # initialize rs1
li x19, 0x2e2e2e2e2e2e2e2e # initialize rs2
aes64esm x8, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

# Testcase cp_sbox = 47
li x14, 0x2f2f2f2f2f2f2f2f # initialize rs1
li x1, 0x2f2f2f2f2f2f2f2f # initialize rs2
aes64esm x23, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cp_sbox = 48
li x7, 0x3030303030303030 # initialize rs1
li x23, 0x3030303030303030 # initialize rs2
aes64esm x28, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cp_sbox = 49
li x21, 0x3131313131313131 # initialize rs1
li x12, 0x3131313131313131 # initialize rs2
aes64esm x16, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 888)

# Testcase cp_sbox = 50
li x2, 0x3232323232323232 # initialize rs1
li x30, 0x3232323232323232 # initialize rs2
aes64esm x15, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 896)

# Testcase cp_sbox = 51
li x11, 0x3333333333333333 # initialize rs1
li x25, 0x3333333333333333 # initialize rs2
aes64esm x18, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_sbox = 52
li x5, 0x3434343434343434 # initialize rs1
li x13, 0x3434343434343434 # initialize rs2
aes64esm x24, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_sbox = 53
li x14, 0x3535353535353535 # initialize rs1
li x16, 0x3535353535353535 # initialize rs2
aes64esm x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cp_sbox = 54
li x11, 0x3636363636363636 # initialize rs1
li x6, 0x3636363636363636 # initialize rs2
aes64esm x25, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

# Testcase cp_sbox = 55
li x14, 0x3737373737373737 # initialize rs1
li x3, 0x3737373737373737 # initialize rs2
aes64esm x29, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 936)

# Testcase cp_sbox = 56
li x5, 0x3838383838383838 # initialize rs1
li x9, 0x3838383838383838 # initialize rs2
aes64esm x8, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_sbox = 57
li x24, 0x3939393939393939 # initialize rs1
li x27, 0x3939393939393939 # initialize rs2
aes64esm x30, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 952)

# Testcase cp_sbox = 58
li x17, 0x3a3a3a3a3a3a3a3a # initialize rs1
li x12, 0x3a3a3a3a3a3a3a3a # initialize rs2
aes64esm x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 960)

# Testcase cp_sbox = 59
li x19, 0x3b3b3b3b3b3b3b3b # initialize rs1
li x14, 0x3b3b3b3b3b3b3b3b # initialize rs2
aes64esm x31, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_sbox = 60
li x26, 0x3c3c3c3c3c3c3c3c # initialize rs1
li x15, 0x3c3c3c3c3c3c3c3c # initialize rs2
aes64esm x22, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 976)

# Testcase cp_sbox = 61
li x10, 0x3d3d3d3d3d3d3d3d # initialize rs1
li x26, 0x3d3d3d3d3d3d3d3d # initialize rs2
aes64esm x25, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cp_sbox = 62
li x23, 0x3e3e3e3e3e3e3e3e # initialize rs1
li x27, 0x3e3e3e3e3e3e3e3e # initialize rs2
aes64esm x21, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cp_sbox = 63
li x6, 0x3f3f3f3f3f3f3f3f # initialize rs1
li x26, 0x3f3f3f3f3f3f3f3f # initialize rs2
aes64esm x20, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cp_sbox = 64
li x20, 0x4040404040404040 # initialize rs1
li x11, 0x4040404040404040 # initialize rs2
aes64esm x2, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cp_sbox = 65
li x14, 0x4141414141414141 # initialize rs1
li x16, 0x4141414141414141 # initialize rs2
aes64esm x30, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cp_sbox = 66
li x2, 0x4242424242424242 # initialize rs1
li x29, 0x4242424242424242 # initialize rs2
aes64esm x30, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cp_sbox = 67
li x25, 0x4343434343434343 # initialize rs1
li x20, 0x4343434343434343 # initialize rs2
aes64esm x8, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cp_sbox = 68
li x26, 0x4444444444444444 # initialize rs1
li x27, 0x4444444444444444 # initialize rs2
aes64esm x19, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cp_sbox = 69
li x10, 0x4545454545454545 # initialize rs1
li x8, 0x4545454545454545 # initialize rs2
aes64esm x18, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cp_sbox = 70
li x13, 0x4646464646464646 # initialize rs1
li x1, 0x4646464646464646 # initialize rs2
aes64esm x5, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cp_sbox = 71
li x18, 0x4747474747474747 # initialize rs1
li x2, 0x4747474747474747 # initialize rs2
aes64esm x21, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cp_sbox = 72
li x19, 0x4848484848484848 # initialize rs1
li x25, 0x4848484848484848 # initialize rs2
aes64esm x9, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cp_sbox = 73
li x16, 0x4949494949494949 # initialize rs1
li x30, 0x4949494949494949 # initialize rs2
aes64esm x31, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cp_sbox = 74
li x16, 0x4a4a4a4a4a4a4a4a # initialize rs1
li x8, 0x4a4a4a4a4a4a4a4a # initialize rs2
aes64esm x2, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cp_sbox = 75
li x6, 0x4b4b4b4b4b4b4b4b # initialize rs1
li x27, 0x4b4b4b4b4b4b4b4b # initialize rs2
aes64esm x20, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cp_sbox = 76
li x23, 0x4c4c4c4c4c4c4c4c # initialize rs1
li x2, 0x4c4c4c4c4c4c4c4c # initialize rs2
aes64esm x22, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cp_sbox = 77
li x21, 0x4d4d4d4d4d4d4d4d # initialize rs1
li x30, 0x4d4d4d4d4d4d4d4d # initialize rs2
aes64esm x9, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cp_sbox = 78
li x13, 0x4e4e4e4e4e4e4e4e # initialize rs1
li x6, 0x4e4e4e4e4e4e4e4e # initialize rs2
aes64esm x28, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cp_sbox = 79
li x18, 0x4f4f4f4f4f4f4f4f # initialize rs1
li x30, 0x4f4f4f4f4f4f4f4f # initialize rs2
aes64esm x9, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cp_sbox = 80
li x19, 0x5050505050505050 # initialize rs1
li x2, 0x5050505050505050 # initialize rs2
aes64esm x6, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cp_sbox = 81
li x1, 0x5151515151515151 # initialize rs1
li x13, 0x5151515151515151 # initialize rs2
aes64esm x18, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cp_sbox = 82
li x1, 0x5252525252525252 # initialize rs1
li x22, 0x5252525252525252 # initialize rs2
aes64esm x17, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cp_sbox = 83
li x8, 0x5353535353535353 # initialize rs1
li x11, 0x5353535353535353 # initialize rs2
aes64esm x19, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cp_sbox = 84
li x16, 0x5454545454545454 # initialize rs1
li x3, 0x5454545454545454 # initialize rs2
aes64esm x1, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cp_sbox = 85
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
aes64esm x14, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cp_sbox = 86
li x2, 0x5656565656565656 # initialize rs1
li x7, 0x5656565656565656 # initialize rs2
aes64esm x22, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1184)

# Testcase cp_sbox = 87
li x3, 0x5757575757575757 # initialize rs1
li x19, 0x5757575757575757 # initialize rs2
aes64esm x25, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cp_sbox = 88
li x20, 0x5858585858585858 # initialize rs1
li x22, 0x5858585858585858 # initialize rs2
aes64esm x8, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cp_sbox = 89
li x13, 0x5959595959595959 # initialize rs1
li x9, 0x5959595959595959 # initialize rs2
aes64esm x19, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1208)

# Testcase cp_sbox = 90
li x18, 0x5a5a5a5a5a5a5a5a # initialize rs1
li x7, 0x5a5a5a5a5a5a5a5a # initialize rs2
aes64esm x16, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cp_sbox = 91
li x19, 0x5b5b5b5b5b5b5b5b # initialize rs1
li x21, 0x5b5b5b5b5b5b5b5b # initialize rs2
aes64esm x6, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1224)

# Testcase cp_sbox = 92
li x14, 0x5c5c5c5c5c5c5c5c # initialize rs1
li x15, 0x5c5c5c5c5c5c5c5c # initialize rs2
aes64esm x22, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cp_sbox = 93
li x15, 0x5d5d5d5d5d5d5d5d # initialize rs1
li x2, 0x5d5d5d5d5d5d5d5d # initialize rs2
aes64esm x18, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cp_sbox = 94
li x1, 0x5e5e5e5e5e5e5e5e # initialize rs1
li x25, 0x5e5e5e5e5e5e5e5e # initialize rs2
aes64esm x13, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cp_sbox = 95
li x14, 0x5f5f5f5f5f5f5f5f # initialize rs1
li x1, 0x5f5f5f5f5f5f5f5f # initialize rs2
aes64esm x22, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cp_sbox = 96
li x26, 0x6060606060606060 # initialize rs1
li x7, 0x6060606060606060 # initialize rs2
aes64esm x9, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1264)

# Testcase cp_sbox = 97
li x3, 0x6161616161616161 # initialize rs1
li x7, 0x6161616161616161 # initialize rs2
aes64esm x19, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cp_sbox = 98
li x15, 0x6262626262626262 # initialize rs1
li x8, 0x6262626262626262 # initialize rs2
aes64esm x26, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1280)

# Testcase cp_sbox = 99
li x13, 0x6363636363636363 # initialize rs1
li x1, 0x6363636363636363 # initialize rs2
aes64esm x25, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cp_sbox = 100
li x22, 0x6464646464646464 # initialize rs1
li x27, 0x6464646464646464 # initialize rs2
aes64esm x20, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cp_sbox = 101
li x22, 0x6565656565656565 # initialize rs1
li x16, 0x6565656565656565 # initialize rs2
aes64esm x27, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1304)

# Testcase cp_sbox = 102
li x28, 0x6666666666666666 # initialize rs1
li x21, 0x6666666666666666 # initialize rs2
aes64esm x10, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cp_sbox = 103
li x30, 0x6767676767676767 # initialize rs1
li x16, 0x6767676767676767 # initialize rs2
aes64esm x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1320)

# Testcase cp_sbox = 104
li x28, 0x6868686868686868 # initialize rs1
li x31, 0x6868686868686868 # initialize rs2
aes64esm x22, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1328)

# Testcase cp_sbox = 105
li x6, 0x6969696969696969 # initialize rs1
li x14, 0x6969696969696969 # initialize rs2
aes64esm x31, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1336)

# Testcase cp_sbox = 106
li x10, 0x6a6a6a6a6a6a6a6a # initialize rs1
li x17, 0x6a6a6a6a6a6a6a6a # initialize rs2
aes64esm x25, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cp_sbox = 107
li x31, 0x6b6b6b6b6b6b6b6b # initialize rs1
li x24, 0x6b6b6b6b6b6b6b6b # initialize rs2
aes64esm x27, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cp_sbox = 108
li x28, 0x6c6c6c6c6c6c6c6c # initialize rs1
li x25, 0x6c6c6c6c6c6c6c6c # initialize rs2
aes64esm x20, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cp_sbox = 109
li x8, 0x6d6d6d6d6d6d6d6d # initialize rs1
li x29, 0x6d6d6d6d6d6d6d6d # initialize rs2
aes64esm x25, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cp_sbox = 110
li x28, 0x6e6e6e6e6e6e6e6e # initialize rs1
li x26, 0x6e6e6e6e6e6e6e6e # initialize rs2
aes64esm x29, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1376)

# Testcase cp_sbox = 111
li x20, 0x6f6f6f6f6f6f6f6f # initialize rs1
li x13, 0x6f6f6f6f6f6f6f6f # initialize rs2
aes64esm x1, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cp_sbox = 112
li x3, 0x7070707070707070 # initialize rs1
li x5, 0x7070707070707070 # initialize rs2
aes64esm x10, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1392)

# Testcase cp_sbox = 113
li x20, 0x7171717171717171 # initialize rs1
li x5, 0x7171717171717171 # initialize rs2
aes64esm x22, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cp_sbox = 114
li x5, 0x7272727272727272 # initialize rs1
li x16, 0x7272727272727272 # initialize rs2
aes64esm x3, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1408)

# Testcase cp_sbox = 115
li x16, 0x7373737373737373 # initialize rs1
li x10, 0x7373737373737373 # initialize rs2
aes64esm x21, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cp_sbox = 116
li x16, 0x7474747474747474 # initialize rs1
li x28, 0x7474747474747474 # initialize rs2
aes64esm x11, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cp_sbox = 117
li x23, 0x7575757575757575 # initialize rs1
li x29, 0x7575757575757575 # initialize rs2
aes64esm x22, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

# Testcase cp_sbox = 118
li x14, 0x7676767676767676 # initialize rs1
li x30, 0x7676767676767676 # initialize rs2
aes64esm x8, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

# Testcase cp_sbox = 119
li x23, 0x7777777777777777 # initialize rs1
li x13, 0x7777777777777777 # initialize rs2
aes64esm x27, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cp_sbox = 120
li x22, 0x7878787878787878 # initialize rs1
li x2, 0x7878787878787878 # initialize rs2
aes64esm x14, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cp_sbox = 121
li x24, 0x7979797979797979 # initialize rs1
li x23, 0x7979797979797979 # initialize rs2
aes64esm x5, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1464)

# Testcase cp_sbox = 122
li x2, 0x7a7a7a7a7a7a7a7a # initialize rs1
li x16, 0x7a7a7a7a7a7a7a7a # initialize rs2
aes64esm x5, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cp_sbox = 123
li x12, 0x7b7b7b7b7b7b7b7b # initialize rs1
li x3, 0x7b7b7b7b7b7b7b7b # initialize rs2
aes64esm x10, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cp_sbox = 124
li x30, 0x7c7c7c7c7c7c7c7c # initialize rs1
li x25, 0x7c7c7c7c7c7c7c7c # initialize rs2
aes64esm x9, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1488)

# Testcase cp_sbox = 125
li x13, 0x7d7d7d7d7d7d7d7d # initialize rs1
li x25, 0x7d7d7d7d7d7d7d7d # initialize rs2
aes64esm x8, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1496)

# Testcase cp_sbox = 126
li x1, 0x7e7e7e7e7e7e7e7e # initialize rs1
li x19, 0x7e7e7e7e7e7e7e7e # initialize rs2
aes64esm x23, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cp_sbox = 127
li x16, 0x7f7f7f7f7f7f7f7f # initialize rs1
li x18, 0x7f7f7f7f7f7f7f7f # initialize rs2
aes64esm x3, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cp_sbox = 128
li x23, 0x8080808080808080 # initialize rs1
li x30, 0x8080808080808080 # initialize rs2
aes64esm x3, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1520)

# Testcase cp_sbox = 129
li x22, 0x8181818181818181 # initialize rs1
li x28, 0x8181818181818181 # initialize rs2
aes64esm x2, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1528)

# Testcase cp_sbox = 130
li x20, 0x8282828282828282 # initialize rs1
li x19, 0x8282828282828282 # initialize rs2
aes64esm x16, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1536)

# Testcase cp_sbox = 131
li x29, 0x8383838383838383 # initialize rs1
li x11, 0x8383838383838383 # initialize rs2
aes64esm x2, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cp_sbox = 132
li x12, 0x8484848484848484 # initialize rs1
li x2, 0x8484848484848484 # initialize rs2
aes64esm x18, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cp_sbox = 133
li x29, 0x8585858585858585 # initialize rs1
li x26, 0x8585858585858585 # initialize rs2
aes64esm x1, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1560)

# Testcase cp_sbox = 134
li x11, 0x8686868686868686 # initialize rs1
li x5, 0x8686868686868686 # initialize rs2
aes64esm x19, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1568)

# Testcase cp_sbox = 135
li x3, 0x8787878787878787 # initialize rs1
li x21, 0x8787878787878787 # initialize rs2
aes64esm x28, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1576)

# Testcase cp_sbox = 136
li x19, 0x8888888888888888 # initialize rs1
li x18, 0x8888888888888888 # initialize rs2
aes64esm x17, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

# Testcase cp_sbox = 137
li x19, 0x8989898989898989 # initialize rs1
li x10, 0x8989898989898989 # initialize rs2
aes64esm x28, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1592)

# Testcase cp_sbox = 138
li x17, 0x8a8a8a8a8a8a8a8a # initialize rs1
li x20, 0x8a8a8a8a8a8a8a8a # initialize rs2
aes64esm x28, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1600)

# Testcase cp_sbox = 139
li x31, 0x8b8b8b8b8b8b8b8b # initialize rs1
li x10, 0x8b8b8b8b8b8b8b8b # initialize rs2
aes64esm x12, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1608)

# Testcase cp_sbox = 140
li x31, 0x8c8c8c8c8c8c8c8c # initialize rs1
li x28, 0x8c8c8c8c8c8c8c8c # initialize rs2
aes64esm x29, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1616)

# Testcase cp_sbox = 141
li x17, 0x8d8d8d8d8d8d8d8d # initialize rs1
li x14, 0x8d8d8d8d8d8d8d8d # initialize rs2
aes64esm x27, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1624)

# Testcase cp_sbox = 142
li x6, 0x8e8e8e8e8e8e8e8e # initialize rs1
li x2, 0x8e8e8e8e8e8e8e8e # initialize rs2
aes64esm x7, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1632)

# Testcase cp_sbox = 143
li x2, 0x8f8f8f8f8f8f8f8f # initialize rs1
li x5, 0x8f8f8f8f8f8f8f8f # initialize rs2
aes64esm x15, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1640)

# Testcase cp_sbox = 144
li x31, 0x9090909090909090 # initialize rs1
li x11, 0x9090909090909090 # initialize rs2
aes64esm x6, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1648)

# Testcase cp_sbox = 145
li x23, 0x9191919191919191 # initialize rs1
li x7, 0x9191919191919191 # initialize rs2
aes64esm x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1656)

# Testcase cp_sbox = 146
li x28, 0x9292929292929292 # initialize rs1
li x30, 0x9292929292929292 # initialize rs2
aes64esm x10, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1664)

# Testcase cp_sbox = 147
li x21, 0x9393939393939393 # initialize rs1
li x31, 0x9393939393939393 # initialize rs2
aes64esm x14, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1672)

# Testcase cp_sbox = 148
li x13, 0x9494949494949494 # initialize rs1
li x5, 0x9494949494949494 # initialize rs2
aes64esm x9, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1680)

# Testcase cp_sbox = 149
li x21, 0x9595959595959595 # initialize rs1
li x19, 0x9595959595959595 # initialize rs2
aes64esm x25, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cp_sbox = 150
li x23, 0x9696969696969696 # initialize rs1
li x16, 0x9696969696969696 # initialize rs2
aes64esm x9, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cp_sbox = 151
li x23, 0x9797979797979797 # initialize rs1
li x26, 0x9797979797979797 # initialize rs2
aes64esm x17, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1704)

# Testcase cp_sbox = 152
li x12, 0x9898989898989898 # initialize rs1
li x21, 0x9898989898989898 # initialize rs2
aes64esm x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1712)

# Testcase cp_sbox = 153
li x25, 0x9999999999999999 # initialize rs1
li x27, 0x9999999999999999 # initialize rs2
aes64esm x5, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1720)

# Testcase cp_sbox = 154
li x31, 0x9a9a9a9a9a9a9a9a # initialize rs1
li x12, 0x9a9a9a9a9a9a9a9a # initialize rs2
aes64esm x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cp_sbox = 155
li x7, 0x9b9b9b9b9b9b9b9b # initialize rs1
li x25, 0x9b9b9b9b9b9b9b9b # initialize rs2
aes64esm x10, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cp_sbox = 156
li x22, 0x9c9c9c9c9c9c9c9c # initialize rs1
li x14, 0x9c9c9c9c9c9c9c9c # initialize rs2
aes64esm x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cp_sbox = 157
li x26, 0x9d9d9d9d9d9d9d9d # initialize rs1
li x23, 0x9d9d9d9d9d9d9d9d # initialize rs2
aes64esm x7, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1752)

# Testcase cp_sbox = 158
li x3, 0x9e9e9e9e9e9e9e9e # initialize rs1
li x30, 0x9e9e9e9e9e9e9e9e # initialize rs2
aes64esm x11, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cp_sbox = 159
li x31, 0x9f9f9f9f9f9f9f9f # initialize rs1
li x9, 0x9f9f9f9f9f9f9f9f # initialize rs2
aes64esm x1, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1768)

# Testcase cp_sbox = 160
li x13, 0xa0a0a0a0a0a0a0a0 # initialize rs1
li x26, 0xa0a0a0a0a0a0a0a0 # initialize rs2
aes64esm x25, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

# Testcase cp_sbox = 161
li x20, 0xa1a1a1a1a1a1a1a1 # initialize rs1
li x19, 0xa1a1a1a1a1a1a1a1 # initialize rs2
aes64esm x21, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1784)

# Testcase cp_sbox = 162
li x24, 0xa2a2a2a2a2a2a2a2 # initialize rs1
li x13, 0xa2a2a2a2a2a2a2a2 # initialize rs2
aes64esm x8, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 163
li x30, 0xa3a3a3a3a3a3a3a3 # initialize rs1
li x19, 0xa3a3a3a3a3a3a3a3 # initialize rs2
aes64esm x23, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_sbox = 164
li x29, 0xa4a4a4a4a4a4a4a4 # initialize rs1
li x14, 0xa4a4a4a4a4a4a4a4 # initialize rs2
aes64esm x23, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_sbox = 165
li x15, 0xa5a5a5a5a5a5a5a5 # initialize rs1
li x5, 0xa5a5a5a5a5a5a5a5 # initialize rs2
aes64esm x26, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_sbox = 166
li x30, 0xa6a6a6a6a6a6a6a6 # initialize rs1
li x2, 0xa6a6a6a6a6a6a6a6 # initialize rs2
aes64esm x18, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cp_sbox = 167
li x12, 0xa7a7a7a7a7a7a7a7 # initialize rs1
li x27, 0xa7a7a7a7a7a7a7a7 # initialize rs2
aes64esm x18, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cp_sbox = 168
li x2, 0xa8a8a8a8a8a8a8a8 # initialize rs1
li x28, 0xa8a8a8a8a8a8a8a8 # initialize rs2
aes64esm x1, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cp_sbox = 169
li x13, 0xa9a9a9a9a9a9a9a9 # initialize rs1
li x14, 0xa9a9a9a9a9a9a9a9 # initialize rs2
aes64esm x23, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cp_sbox = 170
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x23, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cp_sbox = 171
li x3, 0xabababababababab # initialize rs1
li x17, 0xabababababababab # initialize rs2
aes64esm x27, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_sbox = 172
li x29, 0xacacacacacacacac # initialize rs1
li x20, 0xacacacacacacacac # initialize rs2
aes64esm x25, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cp_sbox = 173
li x26, 0xadadadadadadadad # initialize rs1
li x31, 0xadadadadadadadad # initialize rs2
aes64esm x22, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_sbox = 174
li x30, 0xaeaeaeaeaeaeaeae # initialize rs1
li x17, 0xaeaeaeaeaeaeaeae # initialize rs2
aes64esm x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_sbox = 175
li x17, 0xafafafafafafafaf # initialize rs1
li x25, 0xafafafafafafafaf # initialize rs2
aes64esm x10, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_sbox = 176
li x21, 0xb0b0b0b0b0b0b0b0 # initialize rs1
li x3, 0xb0b0b0b0b0b0b0b0 # initialize rs2
aes64esm x9, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_sbox = 177
li x31, 0xb1b1b1b1b1b1b1b1 # initialize rs1
li x28, 0xb1b1b1b1b1b1b1b1 # initialize rs2
aes64esm x2, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_sbox = 178
li x20, 0xb2b2b2b2b2b2b2b2 # initialize rs1
li x21, 0xb2b2b2b2b2b2b2b2 # initialize rs2
aes64esm x14, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_sbox = 179
li x21, 0xb3b3b3b3b3b3b3b3 # initialize rs1
li x7, 0xb3b3b3b3b3b3b3b3 # initialize rs2
aes64esm x2, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_sbox = 180
li x27, 0xb4b4b4b4b4b4b4b4 # initialize rs1
li x10, 0xb4b4b4b4b4b4b4b4 # initialize rs2
aes64esm x21, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cp_sbox = 181
li x21, 0xb5b5b5b5b5b5b5b5 # initialize rs1
li x7, 0xb5b5b5b5b5b5b5b5 # initialize rs2
aes64esm x14, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_sbox = 182
li x20, 0xb6b6b6b6b6b6b6b6 # initialize rs1
li x26, 0xb6b6b6b6b6b6b6b6 # initialize rs2
aes64esm x27, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cp_sbox = 183
li x19, 0xb7b7b7b7b7b7b7b7 # initialize rs1
li x29, 0xb7b7b7b7b7b7b7b7 # initialize rs2
aes64esm x13, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_sbox = 184
li x3, 0xb8b8b8b8b8b8b8b8 # initialize rs1
li x7, 0xb8b8b8b8b8b8b8b8 # initialize rs2
aes64esm x2, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_sbox = 185
li x16, 0xb9b9b9b9b9b9b9b9 # initialize rs1
li x2, 0xb9b9b9b9b9b9b9b9 # initialize rs2
aes64esm x23, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_sbox = 186
li x22, 0xbabababababababa # initialize rs1
li x11, 0xbabababababababa # initialize rs2
aes64esm x7, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cp_sbox = 187
li x22, 0xbbbbbbbbbbbbbbbb # initialize rs1
li x20, 0xbbbbbbbbbbbbbbbb # initialize rs2
aes64esm x21, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_sbox = 188
li x23, 0xbcbcbcbcbcbcbcbc # initialize rs1
li x14, 0xbcbcbcbcbcbcbcbc # initialize rs2
aes64esm x17, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_sbox = 189
li x29, 0xbdbdbdbdbdbdbdbd # initialize rs1
li x2, 0xbdbdbdbdbdbdbdbd # initialize rs2
aes64esm x30, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cp_sbox = 190
li x27, 0xbebebebebebebebe # initialize rs1
li x3, 0xbebebebebebebebe # initialize rs2
aes64esm x22, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_sbox = 191
li x19, 0xbfbfbfbfbfbfbfbf # initialize rs1
li x13, 0xbfbfbfbfbfbfbfbf # initialize rs2
aes64esm x6, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_sbox = 192
li x12, 0xc0c0c0c0c0c0c0c0 # initialize rs1
li x25, 0xc0c0c0c0c0c0c0c0 # initialize rs2
aes64esm x20, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_sbox = 193
li x23, 0xc1c1c1c1c1c1c1c1 # initialize rs1
li x18, 0xc1c1c1c1c1c1c1c1 # initialize rs2
aes64esm x30, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_sbox = 194
li x17, 0xc2c2c2c2c2c2c2c2 # initialize rs1
li x26, 0xc2c2c2c2c2c2c2c2 # initialize rs2
aes64esm x23, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cp_sbox = 195
li x13, 0xc3c3c3c3c3c3c3c3 # initialize rs1
li x16, 0xc3c3c3c3c3c3c3c3 # initialize rs2
aes64esm x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_sbox = 196
li x18, 0xc4c4c4c4c4c4c4c4 # initialize rs1
li x3, 0xc4c4c4c4c4c4c4c4 # initialize rs2
aes64esm x24, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_sbox = 197
li x10, 0xc5c5c5c5c5c5c5c5 # initialize rs1
li x23, 0xc5c5c5c5c5c5c5c5 # initialize rs2
aes64esm x14, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_sbox = 198
li x28, 0xc6c6c6c6c6c6c6c6 # initialize rs1
li x26, 0xc6c6c6c6c6c6c6c6 # initialize rs2
aes64esm x27, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_sbox = 199
li x15, 0xc7c7c7c7c7c7c7c7 # initialize rs1
li x2, 0xc7c7c7c7c7c7c7c7 # initialize rs2
aes64esm x23, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cp_sbox = 200
li x22, 0xc8c8c8c8c8c8c8c8 # initialize rs1
li x13, 0xc8c8c8c8c8c8c8c8 # initialize rs2
aes64esm x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cp_sbox = 201
li x6, 0xc9c9c9c9c9c9c9c9 # initialize rs1
li x14, 0xc9c9c9c9c9c9c9c9 # initialize rs2
aes64esm x25, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 304)

# Testcase cp_sbox = 202
li x24, 0xcacacacacacacaca # initialize rs1
li x21, 0xcacacacacacacaca # initialize rs2
aes64esm x3, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_sbox = 203
li x11, 0xcbcbcbcbcbcbcbcb # initialize rs1
li x30, 0xcbcbcbcbcbcbcbcb # initialize rs2
aes64esm x22, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_sbox = 204
li x17, 0xcccccccccccccccc # initialize rs1
li x15, 0xcccccccccccccccc # initialize rs2
aes64esm x26, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cp_sbox = 205
li x24, 0xcdcdcdcdcdcdcdcd # initialize rs1
li x20, 0xcdcdcdcdcdcdcdcd # initialize rs2
aes64esm x22, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_sbox = 206
li x15, 0xcececececececece # initialize rs1
li x13, 0xcececececececece # initialize rs2
aes64esm x1, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cp_sbox = 207
li x19, 0xcfcfcfcfcfcfcfcf # initialize rs1
li x24, 0xcfcfcfcfcfcfcfcf # initialize rs2
aes64esm x9, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cp_sbox = 208
li x9, 0xd0d0d0d0d0d0d0d0 # initialize rs1
li x24, 0xd0d0d0d0d0d0d0d0 # initialize rs2
aes64esm x14, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_sbox = 209
li x28, 0xd1d1d1d1d1d1d1d1 # initialize rs1
li x29, 0xd1d1d1d1d1d1d1d1 # initialize rs2
aes64esm x1, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_sbox = 210
li x24, 0xd2d2d2d2d2d2d2d2 # initialize rs1
li x5, 0xd2d2d2d2d2d2d2d2 # initialize rs2
aes64esm x18, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cp_sbox = 211
li x25, 0xd3d3d3d3d3d3d3d3 # initialize rs1
li x9, 0xd3d3d3d3d3d3d3d3 # initialize rs2
aes64esm x13, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_sbox = 212
li x10, 0xd4d4d4d4d4d4d4d4 # initialize rs1
li x1, 0xd4d4d4d4d4d4d4d4 # initialize rs2
aes64esm x31, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_sbox = 213
li x8, 0xd5d5d5d5d5d5d5d5 # initialize rs1
li x23, 0xd5d5d5d5d5d5d5d5 # initialize rs2
aes64esm x18, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_sbox = 214
li x27, 0xd6d6d6d6d6d6d6d6 # initialize rs1
li x3, 0xd6d6d6d6d6d6d6d6 # initialize rs2
aes64esm x12, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_sbox = 215
li x17, 0xd7d7d7d7d7d7d7d7 # initialize rs1
li x9, 0xd7d7d7d7d7d7d7d7 # initialize rs2
aes64esm x25, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_sbox = 216
li x16, 0xd8d8d8d8d8d8d8d8 # initialize rs1
li x24, 0xd8d8d8d8d8d8d8d8 # initialize rs2
aes64esm x11, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_sbox = 217
li x20, 0xd9d9d9d9d9d9d9d9 # initialize rs1
li x17, 0xd9d9d9d9d9d9d9d9 # initialize rs2
aes64esm x12, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_sbox = 218
li x8, 0xdadadadadadadada # initialize rs1
li x13, 0xdadadadadadadada # initialize rs2
aes64esm x30, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_sbox = 219
li x17, 0xdbdbdbdbdbdbdbdb # initialize rs1
li x5, 0xdbdbdbdbdbdbdbdb # initialize rs2
aes64esm x19, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_sbox = 220
li x18, 0xdcdcdcdcdcdcdcdc # initialize rs1
li x27, 0xdcdcdcdcdcdcdcdc # initialize rs2
aes64esm x30, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cp_sbox = 221
li x22, 0xdddddddddddddddd # initialize rs1
li x17, 0xdddddddddddddddd # initialize rs2
aes64esm x28, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_sbox = 222
li x25, 0xdededededededede # initialize rs1
li x11, 0xdededededededede # initialize rs2
aes64esm x29, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_sbox = 223
li x29, 0xdfdfdfdfdfdfdfdf # initialize rs1
li x2, 0xdfdfdfdfdfdfdfdf # initialize rs2
aes64esm x27, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 480)

# Testcase cp_sbox = 224
li x6, 0xe0e0e0e0e0e0e0e0 # initialize rs1
li x15, 0xe0e0e0e0e0e0e0e0 # initialize rs2
aes64esm x18, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cp_sbox = 225
li x24, 0xe1e1e1e1e1e1e1e1 # initialize rs1
li x29, 0xe1e1e1e1e1e1e1e1 # initialize rs2
aes64esm x2, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_sbox = 226
li x7, 0xe2e2e2e2e2e2e2e2 # initialize rs1
li x12, 0xe2e2e2e2e2e2e2e2 # initialize rs2
aes64esm x26, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cp_sbox = 227
li x25, 0xe3e3e3e3e3e3e3e3 # initialize rs1
li x16, 0xe3e3e3e3e3e3e3e3 # initialize rs2
aes64esm x18, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cp_sbox = 228
li x8, 0xe4e4e4e4e4e4e4e4 # initialize rs1
li x13, 0xe4e4e4e4e4e4e4e4 # initialize rs2
aes64esm x10, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_sbox = 229
li x21, 0xe5e5e5e5e5e5e5e5 # initialize rs1
li x25, 0xe5e5e5e5e5e5e5e5 # initialize rs2
aes64esm x26, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 528)

# Testcase cp_sbox = 230
li x23, 0xe6e6e6e6e6e6e6e6 # initialize rs1
li x6, 0xe6e6e6e6e6e6e6e6 # initialize rs2
aes64esm x31, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cp_sbox = 231
li x10, 0xe7e7e7e7e7e7e7e7 # initialize rs1
li x27, 0xe7e7e7e7e7e7e7e7 # initialize rs2
aes64esm x9, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cp_sbox = 232
li x22, 0xe8e8e8e8e8e8e8e8 # initialize rs1
li x14, 0xe8e8e8e8e8e8e8e8 # initialize rs2
aes64esm x31, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cp_sbox = 233
li x19, 0xe9e9e9e9e9e9e9e9 # initialize rs1
li x6, 0xe9e9e9e9e9e9e9e9 # initialize rs2
aes64esm x20, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cp_sbox = 234
li x13, 0xeaeaeaeaeaeaeaea # initialize rs1
li x20, 0xeaeaeaeaeaeaeaea # initialize rs2
aes64esm x15, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cp_sbox = 235
li x30, 0xebebebebebebebeb # initialize rs1
li x8, 0xebebebebebebebeb # initialize rs2
aes64esm x27, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_sbox = 236
li x2, 0xecececececececec # initialize rs1
li x5, 0xecececececececec # initialize rs2
aes64esm x23, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cp_sbox = 237
li x27, 0xedededededededed # initialize rs1
li x6, 0xedededededededed # initialize rs2
aes64esm x16, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cp_sbox = 238
li x25, 0xeeeeeeeeeeeeeeee # initialize rs1
li x3, 0xeeeeeeeeeeeeeeee # initialize rs2
aes64esm x9, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cp_sbox = 239
li x9, 0xefefefefefefefef # initialize rs1
li x21, 0xefefefefefefefef # initialize rs2
aes64esm x3, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cp_sbox = 240
li x1, 0xf0f0f0f0f0f0f0f0 # initialize rs1
li x22, 0xf0f0f0f0f0f0f0f0 # initialize rs2
aes64esm x13, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_sbox = 241
li x17, 0xf1f1f1f1f1f1f1f1 # initialize rs1
li x14, 0xf1f1f1f1f1f1f1f1 # initialize rs2
aes64esm x21, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cp_sbox = 242
li x14, 0xf2f2f2f2f2f2f2f2 # initialize rs1
li x7, 0xf2f2f2f2f2f2f2f2 # initialize rs2
aes64esm x16, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cp_sbox = 243
li x20, 0xf3f3f3f3f3f3f3f3 # initialize rs1
li x22, 0xf3f3f3f3f3f3f3f3 # initialize rs2
aes64esm x12, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cp_sbox = 244
li x15, 0xf4f4f4f4f4f4f4f4 # initialize rs1
li x24, 0xf4f4f4f4f4f4f4f4 # initialize rs2
aes64esm x13, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cp_sbox = 245
li x25, 0xf5f5f5f5f5f5f5f5 # initialize rs1
li x31, 0xf5f5f5f5f5f5f5f5 # initialize rs2
aes64esm x12, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cp_sbox = 246
li x2, 0xf6f6f6f6f6f6f6f6 # initialize rs1
li x3, 0xf6f6f6f6f6f6f6f6 # initialize rs2
aes64esm x11, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cp_sbox = 247
li x3, 0xf7f7f7f7f7f7f7f7 # initialize rs1
li x21, 0xf7f7f7f7f7f7f7f7 # initialize rs2
aes64esm x23, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 672)

# Testcase cp_sbox = 248
li x31, 0xf8f8f8f8f8f8f8f8 # initialize rs1
li x28, 0xf8f8f8f8f8f8f8f8 # initialize rs2
aes64esm x18, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 680)

# Testcase cp_sbox = 249
li x11, 0xf9f9f9f9f9f9f9f9 # initialize rs1
li x25, 0xf9f9f9f9f9f9f9f9 # initialize rs2
aes64esm x5, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 688)

# Testcase cp_sbox = 250
li x20, 0xfafafafafafafafa # initialize rs1
li x17, 0xfafafafafafafafa # initialize rs2
aes64esm x19, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 696)

# Testcase cp_sbox = 251
li x31, 0xfbfbfbfbfbfbfbfb # initialize rs1
li x29, 0xfbfbfbfbfbfbfbfb # initialize rs2
aes64esm x3, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cp_sbox = 252
li x11, 0xfcfcfcfcfcfcfcfc # initialize rs1
li x25, 0xfcfcfcfcfcfcfcfc # initialize rs2
aes64esm x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cp_sbox = 253
li x29, 0xfdfdfdfdfdfdfdfd # initialize rs1
li x25, 0xfdfdfdfdfdfdfdfd # initialize rs2
aes64esm x18, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cp_sbox = 254
li x2, 0xfefefefefefefefe # initialize rs1
li x1, 0xfefefefefefefefe # initialize rs2
aes64esm x27, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_sbox = 255
li x24, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64esm x9, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

.EQU SIGSIZE,6144


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
