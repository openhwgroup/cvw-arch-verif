///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-mulh.S
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
li x0, 0x2b019a472427a489 # initialize rs1
li x28, 0x8485b837997ad6ba # initialize rs2
mulh x6, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x6e655f7bd0b5e046 # initialize rs1
li x19, 0x7c7a9d921805a1fe # initialize rs2
mulh x11, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7d4baa849f2f4d50 # initialize rs1
li x28, 0x6298ca94867e144d # initialize rs2
mulh x31, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x666fea99f21fc3ca # initialize rs1
li x5, 0x96b1fcce09192ea4 # initialize rs2
mulh x25, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7d0e26bbfde00c9f # initialize rs1
li x28, 0x79475491aabb9ad9 # initialize rs2
mulh x2, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6b6b24e41542bc61 # initialize rs1
li x19, 0x79eb1a64ee88d7e2 # initialize rs2
mulh x18, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x261e1964ae39a125 # initialize rs1
li x13, 0xeed6d5e13cd264e5 # initialize rs2
mulh x2, x6, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe18465033e05bf6d # initialize rs1
li x5, 0x1a986d5eeca0ed92 # initialize rs2
mulh x19, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9253d902e89942fb # initialize rs1
li x9, 0xa544c1895e6b4a1e # initialize rs2
mulh x16, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x47b6d67ca5e563a5 # initialize rs1
li x28, 0x3b99970057f94609 # initialize rs2
mulh x23, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb22665080a975b25 # initialize rs1
li x12, 0x01e948c7369b5850 # initialize rs2
mulh x15, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0a10e7b097dfd12e # initialize rs1
li x25, 0xef688bb672674e91 # initialize rs2
mulh x9, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xab833c81fb4c8460 # initialize rs1
li x2, 0x761445addccaaa21 # initialize rs2
mulh x24, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbde1aea89c1711eb # initialize rs1
li x6, 0x8812c4477cc47cfb # initialize rs2
mulh x8, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x89a52996258848de # initialize rs1
li x19, 0x07d4b04601688718 # initialize rs2
mulh x21, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2335539a3625cf85 # initialize rs1
li x29, 0xb7ce2441a7b78a5c # initialize rs2
mulh x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x898dd4da4f248690 # initialize rs1
li x1, 0x615762beb179d2b5 # initialize rs2
mulh x8, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x4b81a1f3fdb89b23 # initialize rs1
li x7, 0x7d3d9f68d88fc697 # initialize rs2
mulh x27, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe6735012cee645c4 # initialize rs1
li x23, 0x708bbac82ce1d522 # initialize rs2
mulh x10, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc43ac81ad4e59d53 # initialize rs1
li x14, 0x0b9c6987bc4b94d2 # initialize rs2
mulh x23, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xee0b80241ad72223 # initialize rs1
li x3, 0xdd5a0460f3777de3 # initialize rs2
mulh x26, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x429dee92bd8887b2 # initialize rs1
li x28, 0xf821c629e1e65407 # initialize rs2
mulh x23, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x4c8c367ae4b2bd6c # initialize rs1
li x2, 0xc0f6689621dbd3bc # initialize rs2
mulh x27, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb4b0bf0ec7d47be5 # initialize rs1
li x7, 0x7c5356b00e40f52d # initialize rs2
mulh x2, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x72a8c02b093be98a # initialize rs1
li x17, 0x4104d2ec8c133751 # initialize rs2
mulh x30, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x664878c038fb17e2 # initialize rs1
li x1, 0x68b60bce03736311 # initialize rs2
mulh x22, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbc6b6a6c54607916 # initialize rs1
li x30, 0xdddfacf7c0f599b8 # initialize rs2
mulh x6, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xeddad03428ecc72c # initialize rs1
li x11, 0x0c268657e260c599 # initialize rs2
mulh x1, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc8b6089538ff6774 # initialize rs1
li x11, 0x82a7ab543208eb09 # initialize rs2
mulh x14, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb99b54fb9dbaf5a4 # initialize rs1
li x28, 0x3db5eacda028c872 # initialize rs2
mulh x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x71b0a2fd262d898d # initialize rs1
li x18, 0xa5ba2b1046a795c1 # initialize rs2
mulh x11, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8c3d01d3c8189b9e # initialize rs1
li x14, 0xb51631acdd8a5cb1 # initialize rs2
mulh x12, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x23, 0xbfab06704afb61cf # initialize rs1
li x0, 0x4e146f60cdd24804 # initialize rs2
mulh x11, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0x39a54f677fb430e0 # initialize rs1
li x1, 0xdfbac7af97fea15e # initialize rs2
mulh x16, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0xab85d3444e02d517 # initialize rs1
li x2, 0xed1d35cec17c5eb0 # initialize rs2
mulh x14, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x31, 0xfd01fd2d88e4941d # initialize rs1
li x3, 0x24b7e490ec396390 # initialize rs2
mulh x16, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x779e428cf5ebb374 # initialize rs1
li x4, 0x318f4537259ddf32 # initialize rs2
mulh x20, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0x58ce66f99bd01326 # initialize rs1
li x5, 0x381f009fb7af5f2b # initialize rs2
mulh x12, x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x08431d66d84c3920 # initialize rs1
li x6, 0x969609902bdf41aa # initialize rs2
mulh x15, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x4a753bb2c6e61c70 # initialize rs1
li x7, 0x430ba67114ecd7cf # initialize rs2
mulh x20, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x8b5b6b8c425fb278 # initialize rs1
li x8, 0x5f70248616bacd46 # initialize rs2
mulh x19, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x30e705558967a6af # initialize rs1
li x9, 0x0f6802394795aba5 # initialize rs2
mulh x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x015c66bb993ec6d7 # initialize rs1
li x10, 0xc3483849a98b85a0 # initialize rs2
mulh x8, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0x8430693ab87a1334 # initialize rs1
li x11, 0x4f5307a0fd50bcbf # initialize rs2
mulh x12, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x66a336574fc23c18 # initialize rs1
li x12, 0x9f614e9ca0cfd601 # initialize rs2
mulh x23, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x3f2eeaeead464bfc # initialize rs1
li x13, 0xa8e0dd0008d58be0 # initialize rs2
mulh x2, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xab05d7c6c4dce3d9 # initialize rs1
li x14, 0x5431bbf333eca370 # initialize rs2
mulh x27, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x858d7fd070242b66 # initialize rs1
li x15, 0x5a439106652bd99b # initialize rs2
mulh x8, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x9860181ecb2330c6 # initialize rs1
li x16, 0xe4279381ecf298ba # initialize rs2
mulh x22, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x5, 0xf5a8bd94e3b915f1 # initialize rs1
li x17, 0x32b4e31f9e63cd66 # initialize rs2
mulh x18, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0xacbb3252d0511cd6 # initialize rs1
li x18, 0xbbf193d12d5bb516 # initialize rs2
mulh x15, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0xe9b3a823aea1bc69 # initialize rs1
li x19, 0x24bf121a8538d60a # initialize rs2
mulh x24, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0x0eafa30b57fe91a5 # initialize rs1
li x20, 0x771b3f5dbdd6ed3f # initialize rs2
mulh x13, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0xa94d6f60bc2f6776 # initialize rs1
li x21, 0x4edbc0150a690ab9 # initialize rs2
mulh x26, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0x00b08e4385a2a4e7 # initialize rs1
li x22, 0xfcc3ade7130db407 # initialize rs2
mulh x14, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x1e98b148526c5c86 # initialize rs1
li x23, 0xe427a162893736b1 # initialize rs2
mulh x20, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x02eb60b103cfc76c # initialize rs1
li x24, 0x84077a151cc9e701 # initialize rs2
mulh x15, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x4413cc5a2ccf450f # initialize rs1
li x25, 0xd74ead0956e7fcad # initialize rs2
mulh x1, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x12, 0x62bbc6f2f9160df6 # initialize rs1
li x26, 0x102c128072ac1148 # initialize rs2
mulh x15, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0xb9bc82be9a4ac26d # initialize rs1
li x27, 0x165932a8069f9ae3 # initialize rs2
mulh x17, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0x8f64d362a239c983 # initialize rs1
li x28, 0x0795143c8e75850a # initialize rs2
mulh x18, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0xeac9dbc48d076b48 # initialize rs1
li x29, 0x07a62358d448d7f9 # initialize rs2
mulh x16, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x7, 0xac17d17700b560f0 # initialize rs1
li x30, 0x695945bcf51ce3cd # initialize rs2
mulh x15, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0xb806f811f5704e3d # initialize rs1
li x31, 0xafa0ec9ce11cceb8 # initialize rs2
mulh x2, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0x12ecff13fe2374c2 # initialize rs1
li x26, 0xef56bd7fc2a2219b # initialize rs2
mulh x0, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0xaeeb6b1551bb8654 # initialize rs1
li x20, 0x2dd93a8b4dad7b11 # initialize rs2
mulh x1, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xa6726023e6619f41 # initialize rs1
li x12, 0xc86bc0a5aef65f26 # initialize rs2
mulh x2, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0x6066526b0f5e54b3 # initialize rs1
li x10, 0x03c6638b9dc7ff71 # initialize rs2
mulh x3, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x52036ca0152524ee # initialize rs1
li x3, 0xced705b8dd1bba7c # initialize rs2
mulh x4, x29, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x0036db379bf8d7a6 # initialize rs1
li x28, 0x22b233fbedc9c5c1 # initialize rs2
mulh x5, x4, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x414c08638ce1ef6a # initialize rs1
li x20, 0x3225365c6ddcc441 # initialize rs2
mulh x6, x1, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x97fd24bc9787b78d # initialize rs1
li x16, 0xa448ef8f1a92037b # initialize rs2
mulh x7, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x49c11412c7dd4c0a # initialize rs1
li x14, 0x24e2038eedee4423 # initialize rs2
mulh x8, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0x151cb813c899b951 # initialize rs1
li x6, 0x242b4e96edfae4c8 # initialize rs2
mulh x9, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x414c4f4146bd93cc # initialize rs1
li x25, 0x44a9c534865371d1 # initialize rs2
mulh x10, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0xf7a5fbade48043f9 # initialize rs1
li x27, 0xf2d40041d66d4d65 # initialize rs2
mulh x11, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x43a7f82ee717aadb # initialize rs1
li x25, 0x5cc7cee8e6c651ac # initialize rs2
mulh x12, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x2a8ff92f1c68d10a # initialize rs1
li x26, 0xdced3d09a848fa2c # initialize rs2
mulh x13, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x5, 0x85d4b39ce42c1a9d # initialize rs1
li x13, 0x0d6b2757195693f4 # initialize rs2
mulh x14, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0xa124af07ef465cf1 # initialize rs1
li x24, 0xb85190f2f123bdb1 # initialize rs2
mulh x15, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x24cad08ad4069144 # initialize rs1
li x12, 0x713bd3bb7603814e # initialize rs2
mulh x16, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0xdd3b7acd2659bb91 # initialize rs1
li x31, 0x8cd340c105c2221e # initialize rs2
mulh x17, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x3fa4497f709165c8 # initialize rs1
li x15, 0x1ce583e9587572a5 # initialize rs2
mulh x18, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x433744369b6fb262 # initialize rs1
li x19, 0xb2719c073bf6e0a0 # initialize rs2
mulh x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x95b73873e30cb8b2 # initialize rs1
li x15, 0x63695d535091df15 # initialize rs2
mulh x20, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x2, 0x35dd75772ed7cf5c # initialize rs1
li x18, 0x437c48e954546ae8 # initialize rs2
mulh x21, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0x70067fa6c4fb22b9 # initialize rs1
li x16, 0xb3e207b27dcb36cc # initialize rs2
mulh x22, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x9c815873aecf1ff4 # initialize rs1
li x15, 0x933c043f9ec4fcac # initialize rs2
mulh x23, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0xc299898295a7643e # initialize rs1
li x24, 0x4cd5def89098841a # initialize rs2
mulh x24, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x23, 0x6e7a19da658d5339 # initialize rs1
li x28, 0xfbbcb5e8983a6064 # initialize rs2
mulh x25, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0xc164f04e3e17d0cc # initialize rs1
li x16, 0x92d0dc7d8019f4d0 # initialize rs2
mulh x26, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0x69ea1e2cafe2e712 # initialize rs1
li x25, 0xd09c2f96648622a2 # initialize rs2
mulh x27, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x579c364c369171a3 # initialize rs1
li x21, 0xb91bc27e54899c80 # initialize rs2
mulh x28, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0x50dfe1831a5788e7 # initialize rs1
li x16, 0x2ed698be2de939d2 # initialize rs2
mulh x29, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0xc6327d80a4ade92a # initialize rs1
li x2, 0xd9d288d9d1630bae # initialize rs2
mulh x30, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xdeab4569045e9b9e # initialize rs1
li x3, 0x1fcb8f1042437bd7 # initialize rs2
mulh x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x6ee88c3ba9bf6168 # initialize rs2
mulh x21, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001 # initialize rs1
li x19, 0x13a093b587bd98be # initialize rs2
mulh x17, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x0000000000000002 # initialize rs1
li x12, 0x2329ef0378765941 # initialize rs2
mulh x6, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
li x6, 0x3e3b8c2ab26d9560 # initialize rs2
mulh x5, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x31, 0x33d09a272d64f896 # initialize rs2
mulh x19, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x9, 0x3b2f8a0fcdbd0c53 # initialize rs2
mulh x17, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x14, 0x969094273f449174 # initialize rs2
mulh x17, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x7, 0x869cb5b96cd7859b # initialize rs2
mulh x27, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x2, 0x8dcb53087ea567b5 # initialize rs2
mulh x17, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x40cd562935ff866c # initialize rs2
mulh x5, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x22376c86a69f46aa # initialize rs2
mulh x15, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
li x25, 0x5ba7cb5758b075ce # initialize rs2
mulh x20, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x2, 0x9a84b10bb068e326 # initialize rs2
mulh x25, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x17, 0xd11c42c22591fa20 # initialize rs2
mulh x31, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x20, 0x3550b2ff432e4576 # initialize rs2
mulh x15, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x1, 0x0000000100000001 # initialize rs1
li x6, 0xe82ea1c09836a063 # initialize rs2
mulh x2, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0x017f2442ff4d0c32 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulh x23, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0xb43e6d47639e5b5a # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mulh x2, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x6, 0xd7766b87859e5e43 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulh x3, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0x85f6e4231818fe18 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulh x19, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x16, 0xb643797f33f152e1 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulh x13, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x13, 0xcf9a91461410525a # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulh x19, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0x9ebf9df5a1268d54 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mulh x1, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x8, 0xbab63708b061b6e8 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulh x6, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x28, 0xea8b6d1c3ff193f5 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulh x17, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x29, 0x717471ae72bdc953 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mulh x31, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0x1275e0c46088c541 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x21, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0x8ba22b82bb1dcb6c # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mulh x31, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0x16e42fccc486b4b9 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mulh x28, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x2bddaf6088146880 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulh x25, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0xf96167053e1d6b4b # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulh x13, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0x89e6c75eae4961a9 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mulh x16, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulh x23, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x21, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mulh x25, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
mulh x1, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x10, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
mulh x13, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x16, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulh x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
mulh x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulh x21, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
mulh x7, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulh x17, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulh x14, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x2, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x8, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulh x21, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mulh x10, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mulh x27, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulh x8, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x6, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulh x9, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulh x6, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulh x12, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
mulh x23, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x11, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulh x18, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x24, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulh x9, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
mulh x17, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
mulh x11, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
mulh x17, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
mulh x6, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulh x27, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x28, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x0000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulh x18, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
mulh x27, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulh x25, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x1, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
mulh x5, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0x0000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulh x10, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
mulh x22, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mulh x10, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
mulh x10, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x12, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
mulh x9, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x21, 0x0000000000000002 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulh x17, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
mulh x18, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mulh x30, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mulh x25, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mulh x31, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000002 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mulh x29, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x3, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x28, 0x0000000000000002 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
mulh x9, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
mulh x19, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulh x3, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x2, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulh x7, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x19, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mulh x14, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x19, 0x8000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
mulh x6, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulh x14, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x6, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulh x22, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulh x10, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
mulh x5, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
mulh x5, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
mulh x23, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulh x22, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulh x23, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
mulh x10, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x12, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x2, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulh x16, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
mulh x17, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x18, 0x8000000000000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulh x21, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x5, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mulh x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x7, 0x8000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulh x15, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x15, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulh x24, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulh x24, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
mulh x18, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulh x2, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
mulh x17, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mulh x29, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulh x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
mulh x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mulh x26, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulh x22, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x16, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x18, 0x8000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulh x10, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulh x19, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
mulh x2, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulh x16, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x26, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulh x5, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x23, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mulh x26, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x20, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
mulh x8, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x9, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mulh x5, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulh x25, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x26, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulh x16, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulh x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x7fffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulh x28, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulh x25, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mulh x13, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x7fffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
mulh x14, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7fffffffffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x13, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x7fffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
mulh x19, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mulh x18, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulh x11, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulh x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x21, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
mulh x26, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x16, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulh x6, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mulh x25, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x6, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mulh x3, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulh x2, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulh x5, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
mulh x12, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulh x19, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x26, 0x7ffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulh x16, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulh x7, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulh x5, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7ffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x16, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0x7ffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
mulh x27, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mulh x14, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulh x24, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x5, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulh x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
mulh x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x27, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mulh x11, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mulh x8, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
mulh x11, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulh x31, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x3, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulh x18, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mulh x6, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulh x20, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulh x29, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mulh x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
mulh x26, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xffffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x26, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x1, 0xffffffffffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulh x7, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulh x23, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulh x21, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x19, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mulh x10, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
mulh x30, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x11, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mulh x13, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x2, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulh x27, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulh x19, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulh x5, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
mulh x11, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mulh x31, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulh x13, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mulh x1, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
mulh x19, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0xfffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mulh x25, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfffffffffffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x27, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x27, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulh x21, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulh x12, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulh x10, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
mulh x31, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mulh x2, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulh x21, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
mulh x9, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulh x26, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulh x3, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulh x19, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
mulh x27, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mulh x20, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mulh x25, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
mulh x27, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
mulh x30, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
mulh x2, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mulh x15, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
mulh x24, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mulh x18, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mulh x24, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mulh x15, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
mulh x17, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulh x7, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mulh x6, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulh x24, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulh x6, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulh x26, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulh x1, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulh x13, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
mulh x17, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x30, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulh x2, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
mulh x3, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulh x14, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulh x12, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mulh x30, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x31, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
mulh x1, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
mulh x6, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulh x25, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x25, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulh x23, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x19, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulh x24, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulh x29, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x17, 0x5555555555555555 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulh x10, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
mulh x29, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
mulh x25, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
mulh x18, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5555555555555555 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x22, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulh x13, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x13, 0x5555555555555555 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulh x24, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulh x2, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x20, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
mulh x31, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x13, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulh x22, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
mulh x19, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mulh x17, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulh x24, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x24, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
mulh x22, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x2, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
mulh x16, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mulh x16, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
mulh x3, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulh x9, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x19, 0x00000000ffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulh x7, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x00000000ffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
mulh x1, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000ffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x18, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x20, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
mulh x28, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mulh x7, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mulh x9, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulh x13, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x27, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mulh x6, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x8, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
mulh x18, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
mulh x5, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
mulh x5, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x17, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulh x26, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulh x31, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x14, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
mulh x10, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulh x24, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x24, 0x00000000fffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulh x16, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
mulh x20, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x22, 0x00000000fffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
mulh x20, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulh x27, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulh x30, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulh x31, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x25, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulh x18, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x6, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mulh x1, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x19, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
mulh x28, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x23, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulh x6, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x31, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulh x18, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulh x19, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x0000000100000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
mulh x12, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulh x30, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulh x7, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulh x5, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000100000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulh x23, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000100000000 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
mulh x8, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x12, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x14, 0x0000000100000000 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulh x3, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulh x19, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulh x13, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulh x19, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x22, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
mulh x2, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
mulh x16, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x8, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
mulh x20, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x7, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
mulh x21, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulh x16, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x3, 0x0000000100000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulh x27, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulh x5, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulh x25, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x31, 0x0000000100000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulh x27, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mulh x10, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mulh x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000100000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x13, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x29, 0x0000000100000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mulh x14, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
mulh x27, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x16, 0x0000000100000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
mulh x5, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x7, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
mulh x17, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
mulh x23, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x46f6fa23e2cabe95 # initialize rs1
li x0, 0x10e3c45ff3440172 # initialize rs2
mulh x25, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x81d9beac1fa8b005 # initialize rs1
li x1, 0xcc7ab83db7c95d82 # initialize rs2
mulh x14, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe9c0a2de96485efb # initialize rs1
li x2, 0xa016e42d474cdc1d # initialize rs2
mulh x17, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2841b1753102fa8d # initialize rs1
li x3, 0x5decd66c31908462 # initialize rs2
mulh x18, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x410f838dc2c37ad5 # initialize rs1
li x4, 0xa2b66ab57663cabb # initialize rs2
mulh x8, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfc1303dec2bc6da6 # initialize rs1
li x5, 0x9aec81f7d70fa652 # initialize rs2
mulh x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcaa92c375dfbab2d # initialize rs1
li x6, 0x31ca4557137ef6d6 # initialize rs2
mulh x18, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9d8e12968f9ee381 # initialize rs1
li x7, 0xb1cc357ce02e20d0 # initialize rs2
mulh x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd1c185da3a62d836 # initialize rs1
li x8, 0x3696e975948e20dc # initialize rs2
mulh x1, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa4c726d34d7a6c73 # initialize rs1
li x9, 0x1c914720c26b3a13 # initialize rs2
mulh x24, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5240e7e798d26634 # initialize rs1
li x10, 0x776649469ec485b8 # initialize rs2
mulh x17, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x7e52dd50e727a890 # initialize rs1
li x11, 0x15a044584ab09a9a # initialize rs2
mulh x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xad84b30026306a54 # initialize rs1
li x12, 0x092cc1bc6fe4cd52 # initialize rs2
mulh x31, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2ed81e4a26168f5a # initialize rs1
li x13, 0xa9fc2dcdd8eaa04c # initialize rs2
mulh x29, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x92f67c6622d086db # initialize rs1
li x14, 0x3bf22102676b038c # initialize rs2
mulh x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1ca49456fe4a8cfa # initialize rs1
li x15, 0xa60b38616603b80f # initialize rs2
mulh x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xcc1ce131e2a288c9 # initialize rs1
li x16, 0x92c6808fee1d81ff # initialize rs2
mulh x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3032c25d688de187 # initialize rs1
li x17, 0x38b0674ee19635ce # initialize rs2
mulh x30, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x37c4616e669b4e6d # initialize rs1
li x18, 0xa50d11d4a6ffa349 # initialize rs2
mulh x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1fae67ec7ffa5b97 # initialize rs1
li x19, 0xa7c3f5848cce8253 # initialize rs2
mulh x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3353c0c7245f8684 # initialize rs1
li x20, 0xc8cf9c6e5480b616 # initialize rs2
mulh x25, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x781330d026ceaf8b # initialize rs1
li x21, 0xfe94e72107124eb0 # initialize rs2
mulh x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xfbc3f296d443426c # initialize rs1
li x22, 0x5cb8913e0ee88bba # initialize rs2
mulh x29, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xeb82df99a801cead # initialize rs1
li x23, 0xd265ab21b7f0c949 # initialize rs2
mulh x27, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x735a215047003e73 # initialize rs1
li x24, 0x97d558893e6c235e # initialize rs2
mulh x23, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xeaa4df51bdfc44ed # initialize rs1
li x25, 0xc2f717eadc06b44f # initialize rs2
mulh x26, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xac17cedbb6ef0d97 # initialize rs1
li x26, 0x862d73138ee9b780 # initialize rs2
mulh x9, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xd00c2af1f0cd076c # initialize rs1
li x27, 0xc904615eed1a0433 # initialize rs2
mulh x13, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3aa643cecd490f13 # initialize rs1
li x28, 0xf3c6ee4ca0b33107 # initialize rs2
mulh x26, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x1794fc8a6d71ef34 # initialize rs1
li x29, 0x28e87ef9bff4e16d # initialize rs2
mulh x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x306a0d7c5e842a3d # initialize rs1
li x30, 0xb94dd85f8a2ab94c # initialize rs2
mulh x5, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8b806cc3be02fca7 # initialize rs1
li x31, 0xb6d1443d22aae32b # initialize rs2
mulh x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x3350a7b5f00ce5e8 # initialize rs1
li x15, 0x228af073e60d0993 # initialize rs2
mulh x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xbb41430de19ffc1e # initialize rs1
li x22, 0x2ed2d9cb51a3eb35 # initialize rs2
mulh x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfd892c4791b0a659 # initialize rs1
li x21, 0xccf6a4a6d8bb7246 # initialize rs2
mulh x2, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x98800b4ba5fb4f27 # initialize rs1
li x27, 0x239cd86ccfe132e4 # initialize rs2
mulh x3, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47f1a837c7eae7a8 # initialize rs1
li x16, 0x7aa0bbddab29439a # initialize rs2
mulh x4, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4ff40ca7fc49caa8 # initialize rs1
li x21, 0x0123186f1c42fcfe # initialize rs2
mulh x5, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xff8237be7cf8e91b # initialize rs1
li x8, 0x2cb78c3510b714d8 # initialize rs2
mulh x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf04522276363f8c5 # initialize rs1
li x30, 0xed61a5b52176b627 # initialize rs2
mulh x7, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6d3150d300371a1c # initialize rs1
li x13, 0x9c78c849a5ba3c2e # initialize rs2
mulh x8, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf4c838019ea5acc0 # initialize rs1
li x26, 0x92ee0a9c29aa71d3 # initialize rs2
mulh x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3e4187f60a910672 # initialize rs1
li x20, 0x8956c0e2aeecd037 # initialize rs2
mulh x10, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xfb07154fe916c1d3 # initialize rs1
li x1, 0x7852809b78212236 # initialize rs2
mulh x11, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x824beec65e5198fb # initialize rs1
li x13, 0x53442a402186f938 # initialize rs2
mulh x12, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4e1cad42fd9095f5 # initialize rs1
li x8, 0xea04bbe46e49db05 # initialize rs2
mulh x13, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x78f5a6dd45811470 # initialize rs1
li x8, 0x35b023b69d041895 # initialize rs2
mulh x14, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa6f940243043a29b # initialize rs1
li x26, 0x46b53dcb0e8ab7b1 # initialize rs2
mulh x15, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x73a6e1f65344de1c # initialize rs1
li x20, 0x9da39293a545e3be # initialize rs2
mulh x16, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1fee855ef05d1045 # initialize rs1
li x25, 0xdf07fdbf54715b7a # initialize rs2
mulh x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4a29d7450135bf8a # initialize rs1
li x23, 0x3229570dc12ae81c # initialize rs2
mulh x18, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa22e2592360488f4 # initialize rs1
li x23, 0x448fa278175a84e3 # initialize rs2
mulh x19, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6b0e65496fd0a6bb # initialize rs1
li x19, 0x383c8ce5fcc63b82 # initialize rs2
mulh x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5a1b8fc54d27c7b5 # initialize rs1
li x15, 0xa5a58f7e3ab1ae3c # initialize rs2
mulh x21, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbe85c940b5b2636c # initialize rs1
li x15, 0x9486cca53c5e6f64 # initialize rs2
mulh x22, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xaf8134f30cae0be9 # initialize rs1
li x29, 0xcee968a165cfc01c # initialize rs2
mulh x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x04619b78280b2d72 # initialize rs1
li x28, 0x8d89682b34509af4 # initialize rs2
mulh x24, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc1545b646b76104c # initialize rs1
li x31, 0x6ade29fa9ae93a40 # initialize rs2
mulh x25, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x59835a17b6ef81c7 # initialize rs1
li x29, 0x53e77dcb268606b8 # initialize rs2
mulh x26, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x04db5ec8c4f8fb19 # initialize rs1
li x20, 0x500926bde4f393cf # initialize rs2
mulh x27, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x87b7a199ac8c2e9f # initialize rs1
li x6, 0x052943ee0fb4cd1c # initialize rs2
mulh x28, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3f7bcf58d1dc7e82 # initialize rs1
li x6, 0x504c1b72d29693c0 # initialize rs2
mulh x29, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x028f554acbefbe19 # initialize rs1
li x11, 0xbfb6cafd77c6b978 # initialize rs2
mulh x30, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x74cb8c3218f202ad # initialize rs1
li x25, 0xcaeb820a80536a69 # initialize rs2
mulh x31, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0x105be4385f7bb6af # initialize rs1
li x0, 0x2d1b3758fe7832dc # initialize rs2
mulh x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x13, 0x59a9e94c9a9c144e # initialize rs1
li x1, 0xe1ff3e8b0ed3e4e2 # initialize rs2
mulh x1, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x15, 0xca8d59592e633f32 # initialize rs1
li x2, 0x756f75c6bf0fae52 # initialize rs2
mulh x2, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x15, 0xa445b18a6872f06d # initialize rs1
li x3, 0x1d1455e2e2019382 # initialize rs2
mulh x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x5b0c813b09f8ca9b # initialize rs1
li x4, 0x4bfaa00c82edeb53 # initialize rs2
mulh x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xc8f05b7c594993be # initialize rs1
li x5, 0xdeccc8bb0fa8f157 # initialize rs2
mulh x5, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x765f10ac21013f8c # initialize rs1
li x6, 0xf0687d74e3e1f00c # initialize rs2
mulh x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x8b7f58eea3c47092 # initialize rs1
li x7, 0x245dfd6dd8279e34 # initialize rs2
mulh x7, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xe25a6c9db27b0b1b # initialize rs1
li x8, 0xa9cb77101a6fbbe6 # initialize rs2
mulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0x3f386544894711b2 # initialize rs1
li x9, 0xce0c8d863c06aafc # initialize rs2
mulh x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x24, 0x88b70c8a1ea8963d # initialize rs1
li x10, 0x87cb9cae545a7ad3 # initialize rs2
mulh x10, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x26, 0x752d43c4c8116817 # initialize rs1
li x11, 0x12cac251b86a78fe # initialize rs2
mulh x11, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x8b87d26fdee56f4f # initialize rs1
li x12, 0x97cf00cc73f186cf # initialize rs2
mulh x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x74a144feabaf39e4 # initialize rs1
li x13, 0x6a87155a749eb570 # initialize rs2
mulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0xaf3522151ebe711c # initialize rs1
li x14, 0xf17e092a756693ad # initialize rs2
mulh x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x19, 0x51efdd773259896c # initialize rs1
li x15, 0x5f3daa6b082f4568 # initialize rs2
mulh x15, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x20, 0x597a0cbbeae94862 # initialize rs1
li x16, 0x8b50d279ccb96d74 # initialize rs2
mulh x16, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0xd4cd445b1414a986 # initialize rs1
li x17, 0x029fca87e54473b3 # initialize rs2
mulh x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0x02b2f4d7c3a544b1 # initialize rs1
li x18, 0x179096804fc67324 # initialize rs2
mulh x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x6, 0x08ef23fff526610d # initialize rs1
li x19, 0xd074dd9b24ea9dc0 # initialize rs2
mulh x19, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0x7b04e09394eaf686 # initialize rs1
li x20, 0xad384ee6ce6d022c # initialize rs2
mulh x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0x5c89dbc508c42b85 # initialize rs1
li x21, 0x2479cc70f8b21669 # initialize rs2
mulh x21, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x8, 0x5b3d8646fb51f7a5 # initialize rs1
li x22, 0xf826e77578142fea # initialize rs2
mulh x22, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x21, 0x84188cce1b9ac6c0 # initialize rs1
li x23, 0xa582cd9f6a06fdf8 # initialize rs2
mulh x23, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0x7e89fc9abc37c671 # initialize rs1
li x24, 0x53af92a38261ef8c # initialize rs2
mulh x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0xd82c9bf84d583179 # initialize rs1
li x25, 0xd4b809781b0eb013 # initialize rs2
mulh x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x21, 0x0f453a966e581ea3 # initialize rs1
li x26, 0x175713a0c421d636 # initialize rs2
mulh x26, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x19, 0xe2f43ce9f281956e # initialize rs1
li x27, 0x2063ed2cf6e898a3 # initialize rs2
mulh x27, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x25, 0xee693d0d53142e79 # initialize rs1
li x28, 0xeb3c6b85c42465aa # initialize rs2
mulh x28, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x5, 0x8fa49583b2b3d5f8 # initialize rs1
li x29, 0x1640bd6982fec86e # initialize rs2
mulh x29, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x25, 0xe68d0551e2b722e0 # initialize rs1
li x30, 0xbf5fa0242c5b7d61 # initialize rs2
mulh x30, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x19, 0x8e83bd00f577afac # initialize rs1
li x31, 0x240f53bc9bf2bdae # initialize rs2
mulh x31, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa37c692214d92711 # initialize rs1
li x0, 0x5f4b311b6116cb0a # initialize rs2
mulh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcb3ca9b87fba235e # initialize rs1
li x1, 0x71ac07c6abf530fe # initialize rs2
mulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7f3080ace4fd3183 # initialize rs1
li x2, 0x9692d62a31bedecb # initialize rs2
mulh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x332374d9fe6fc5c6 # initialize rs1
li x3, 0x3a4140867affb924 # initialize rs2
mulh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1d3cc3c9f3f370dd # initialize rs1
li x4, 0x860098fd725a5da6 # initialize rs2
mulh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbfc95372cd6d0733 # initialize rs1
li x5, 0x54d2e4b5d347e8a5 # initialize rs2
mulh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x54c93f35103654d2 # initialize rs1
li x6, 0x4cc1baf245852541 # initialize rs2
mulh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x40a16b0e4c6737d2 # initialize rs1
li x7, 0xc3e1c88d6b6048ea # initialize rs2
mulh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x721071a44921a77f # initialize rs1
li x8, 0x13ea96e441ba1464 # initialize rs2
mulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xdc9889409b83b268 # initialize rs1
li x9, 0xcbf70e2cf70c8e4e # initialize rs2
mulh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x25834e1b75e82f13 # initialize rs1
li x10, 0x8cc6cd075b17e3e7 # initialize rs2
mulh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa96b94fe29404f6d # initialize rs1
li x11, 0xb5af8a221ba0d8d7 # initialize rs2
mulh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd92e2a16e2ad81cd # initialize rs1
li x12, 0x8e4514a39d7ff459 # initialize rs2
mulh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x6ef49cfd096ab144 # initialize rs1
li x13, 0xcc91ba99f4ee432d # initialize rs2
mulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8695025623091afc # initialize rs1
li x14, 0xb8b319eb1f8047db # initialize rs2
mulh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd06f7da6929ae5b2 # initialize rs1
li x15, 0x1ad532a619eb8390 # initialize rs2
mulh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xda0738f4d5cf3684 # initialize rs1
li x16, 0xab9cf3fc5ded9910 # initialize rs2
mulh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x767a0a323d7fdfe7 # initialize rs1
li x17, 0x44248a5b38023ef9 # initialize rs2
mulh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1f711f8b8972e86c # initialize rs1
li x18, 0xaa29276d8eacd35e # initialize rs2
mulh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6f18f5bbfe7f4336 # initialize rs1
li x19, 0x3c976e0795082284 # initialize rs2
mulh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x909de8f7cfd931d9 # initialize rs1
li x20, 0x8569f7c753b2e1be # initialize rs2
mulh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x433c6ec79253fce4 # initialize rs1
li x21, 0xd8361018f6f20147 # initialize rs2
mulh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x49f069102bb2006e # initialize rs1
li x22, 0x1190f0820683918e # initialize rs2
mulh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x686b59bbd645ebda # initialize rs1
li x23, 0x3966615acaba130b # initialize rs2
mulh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe71423a4965e8375 # initialize rs1
li x24, 0xedcdbba4dceb7238 # initialize rs2
mulh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xaea7996ea0d9bc80 # initialize rs1
li x25, 0x86346546a275c1fd # initialize rs2
mulh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd1c5448f8ee62eb0 # initialize rs1
li x26, 0x8940aa4962a07d51 # initialize rs2
mulh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x6a4d65b1650103ca # initialize rs1
li x27, 0xee6ee9b5f3b91e35 # initialize rs2
mulh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8c98bf534f32a2d2 # initialize rs1
li x28, 0x5455b2585c5b7cfb # initialize rs2
mulh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x53aa8d6dbbdfb8c1 # initialize rs1
li x29, 0x1317c3d0992bb3d2 # initialize rs2
mulh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd1f871093407622c # initialize rs1
li x30, 0xd178193eed606253 # initialize rs2
mulh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc16a512ebd337404 # initialize rs1
li x31, 0x86d2bf620b06b33f # initialize rs2
mulh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x12, x30 # perform first operation
mulh x23, x20, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x13, x15 # perform first operation
mulh x27, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x27, x29 # perform first operation
mulh x14, x18, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x29, x14 # perform first operation
mulh x14, x11, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x9, x31 # perform first operation
mulh x9, x13, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x7, x24 # perform first operation
mulh x7, x14, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x1, x5 # perform first operation
mulh x27, x14, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x14, x11 # perform first operation
mulh x19, x8, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x24, x23 # perform first operation
mulh x8, x12, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x29, x1 # perform first operation
mulh x29, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x16, x21 # perform first operation
mulh x21, x14, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x10, x13 # perform first operation
mulh x26, x8, x5 # perform second (triggering) operation

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
