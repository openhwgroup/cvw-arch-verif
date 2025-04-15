///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-add.S
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
li x0, 0xb4e96718 # initialize rs1
li x24, 0xeaa512b3 # initialize rs2
add x25, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x81c4ef2a # initialize rs1
li x6, 0x917cfa69 # initialize rs2
add x7, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x6ec5c7fc # initialize rs1
li x24, 0x8cc9fc60 # initialize rs2
add x31, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x7103a60c # initialize rs1
li x11, 0x6637281b # initialize rs2
add x19, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa6a21865 # initialize rs1
li x31, 0xb2c0b170 # initialize rs2
add x24, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf1f178b8 # initialize rs1
li x16, 0x0ddcce40 # initialize rs2
add x1, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9856a7fa # initialize rs1
li x27, 0xa8c9c006 # initialize rs2
add x16, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x6, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb6fe088a # initialize rs1
li x5, 0x8f865f5c # initialize rs2
add x4, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf0a493f3 # initialize rs1
li x28, 0xfc076872 # initialize rs2
add x11, x8, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf6c6e227 # initialize rs1
li x4, 0x7a1129a5 # initialize rs2
add x5, x9, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9483c110 # initialize rs1
li x13, 0x5293d68b # initialize rs2
add x8, x10, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2be63122 # initialize rs1
li x28, 0xb6ec53d3 # initialize rs2
add x31, x11, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xdbc60702 # initialize rs1
li x15, 0x429ebecd # initialize rs2
add x4, x12, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa7bb3ee5 # initialize rs1
li x7, 0x3f955895 # initialize rs2
add x3, x13, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x471a0e78 # initialize rs1
li x10, 0xedccfc10 # initialize rs2
add x21, x14, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa7de3f8b # initialize rs1
li x2, 0xbaf03ed8 # initialize rs2
add x19, x15, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x29fe1b24 # initialize rs1
li x3, 0xdee8e75a # initialize rs2
add x27, x16, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf80c75e2 # initialize rs1
li x3, 0x6a018c23 # initialize rs2
add x1, x17, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x25adead4 # initialize rs1
li x12, 0xc7d46f1f # initialize rs2
add x16, x18, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4dd37fa5 # initialize rs1
li x15, 0x96cabe72 # initialize rs2
add x3, x19, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9ce08a13 # initialize rs1
li x23, 0x8edeb8fa # initialize rs2
add x15, x20, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3eb3eb8e # initialize rs1
li x25, 0x4bec5ef9 # initialize rs2
add x17, x21, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x1903fcbe # initialize rs1
li x10, 0x78a72569 # initialize rs2
add x19, x22, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x0678e676 # initialize rs1
li x29, 0x44a57e92 # initialize rs2
add x18, x23, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0f514c8f # initialize rs1
li x4, 0xc0374f99 # initialize rs2
add x23, x24, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc31c0d20 # initialize rs1
li x17, 0x54de2add # initialize rs2
add x28, x25, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xc87725fc # initialize rs1
li x8, 0x8457042b # initialize rs2
add x23, x26, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x381188b9 # initialize rs1
li x10, 0x00448477 # initialize rs2
add x9, x27, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x99fdf848 # initialize rs1
li x11, 0x41ef048b # initialize rs2
add x29, x28, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8ad34df6 # initialize rs1
li x8, 0xf56bba98 # initialize rs2
add x26, x29, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe6a75541 # initialize rs1
li x18, 0x2418752b # initialize rs2
add x15, x30, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe899a96d # initialize rs1
li x5, 0x72f41290 # initialize rs2
add x28, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x31, 0xc1f4ddd5 # initialize rs1
li x0, 0xc1cae6f0 # initialize rs2
add x12, x31, x0 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xff3dab23 # initialize rs1
li x1, 0x8281b902 # initialize rs2
add x26, x23, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0xcea14c52 # initialize rs1
li x2, 0xabde2cae # initialize rs2
add x21, x16, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0xb1b6ca4c # initialize rs1
li x3, 0x05346635 # initialize rs2
add x7, x9, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
li x5, 0x8818ebd1 # initialize rs1
li x4, 0xce48467d # initialize rs2
add x10, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x25, 0xe20229e8 # initialize rs1
li x5, 0x049c2462 # initialize rs2
add x13, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xdf0316e5 # initialize rs1
li x6, 0x128e3c15 # initialize rs2
add x18, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x6ce184e8 # initialize rs1
li x7, 0xc21eccb0 # initialize rs2
add x15, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0x8888734f # initialize rs1
li x8, 0xf0dfca4a # initialize rs2
add x27, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x24571a9b # initialize rs1
li x9, 0xbf00be87 # initialize rs2
add x12, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x50caec3b # initialize rs1
li x10, 0xf006b21d # initialize rs2
add x16, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0x84beb586 # initialize rs1
li x11, 0x1723a2d1 # initialize rs2
add x7, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0xca9cd9de # initialize rs1
li x12, 0xf14599fc # initialize rs2
add x29, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0xdfcf6182 # initialize rs1
li x13, 0x87d2aa1e # initialize rs2
add x29, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x3cef98f6 # initialize rs1
li x14, 0x9f739800 # initialize rs2
add x17, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0xbfe747d1 # initialize rs1
li x15, 0x410379d1 # initialize rs2
add x21, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0x8aac8f33 # initialize rs1
li x16, 0x55fe5f7c # initialize rs2
add x17, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0xc926c93f # initialize rs1
li x17, 0x687221de # initialize rs2
add x3, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0x7161c407 # initialize rs1
li x18, 0xd113fbe6 # initialize rs2
add x29, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0x4625cae6 # initialize rs1
li x19, 0x375ee341 # initialize rs2
add x1, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0xd2df78e8 # initialize rs1
li x20, 0x317ae68a # initialize rs2
add x6, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0xbd2ad466 # initialize rs1
li x21, 0x722b4f26 # initialize rs2
add x25, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0x99a2fbad # initialize rs1
li x22, 0x7edce4c7 # initialize rs2
add x12, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0x3a5bdf67 # initialize rs1
li x23, 0xd5c19963 # initialize rs2
add x1, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x27, 0x1e8ad341 # initialize rs1
li x24, 0xed932367 # initialize rs2
add x8, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0xb3640322 # initialize rs1
li x25, 0xa0ff60c4 # initialize rs2
add x8, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0x909efac7 # initialize rs1
li x26, 0x27d03286 # initialize rs2
add x15, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0x52f47fdd # initialize rs1
li x27, 0xe1b6486a # initialize rs2
add x31, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0xe0638b6c # initialize rs1
li x28, 0x3c46a9b4 # initialize rs2
add x13, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0xabf5a092 # initialize rs1
li x29, 0xac3e4a28 # initialize rs2
add x20, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x12, 0x35ed0a3a # initialize rs1
li x30, 0xfbe305b1 # initialize rs2
add x11, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0x0a5091cf # initialize rs1
li x31, 0xe3451cb6 # initialize rs2
add x24, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 252)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x1d01c852 # initialize rs1
li x9, 0x1bfbf146 # initialize rs2
add x0, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0x1e3aafcf # initialize rs1
li x19, 0x986da37b # initialize rs2
add x1, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x7cc9c425 # initialize rs1
li x6, 0x11c98bc0 # initialize rs2
add x2, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0x21460692 # initialize rs1
li x18, 0x330ad053 # initialize rs2
add x3, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x7b275442 # initialize rs1
li x26, 0x2d1db3d5 # initialize rs2
add x4, x9, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xe20b6023 # initialize rs1
li x27, 0x37f42108 # initialize rs2
add x5, x14, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xf1a7383d # initialize rs1
li x28, 0x96b85b2a # initialize rs2
add x6, x3, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x84507ba2 # initialize rs1
li x15, 0xef638255 # initialize rs2
add x7, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x1d1babbf # initialize rs1
li x10, 0xe9a3c3e4 # initialize rs2
add x8, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0xb0c5d011 # initialize rs1
li x1, 0xbd29e745 # initialize rs2
add x9, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x21f003f9 # initialize rs1
li x28, 0x36ae688a # initialize rs2
add x10, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0x570241be # initialize rs1
li x18, 0x99c4e084 # initialize rs2
add x11, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x72af9519 # initialize rs1
li x18, 0x3babc7ce # initialize rs2
add x12, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x884481cc # initialize rs1
li x25, 0xabd547b5 # initialize rs2
add x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x0a12ef56 # initialize rs1
li x24, 0x10cf6c7c # initialize rs2
add x14, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x4d82a97a # initialize rs1
li x18, 0x82eb8fbc # initialize rs2
add x15, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0x383d042f # initialize rs1
li x12, 0xe2cf0268 # initialize rs2
add x16, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x506e0cb7 # initialize rs1
li x20, 0x201edcfa # initialize rs2
add x17, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0x3d45c2ea # initialize rs1
li x6, 0x39fa9f15 # initialize rs2
add x18, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x4a1d5f9b # initialize rs1
li x24, 0x80c0c484 # initialize rs2
add x19, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x27404389 # initialize rs1
li x25, 0xa5b71193 # initialize rs2
add x20, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x2b3caf9a # initialize rs1
li x16, 0x752b6ef5 # initialize rs2
add x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0x28680b1b # initialize rs1
li x1, 0x17177d13 # initialize rs2
add x22, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x91ca2a0c # initialize rs1
li x10, 0x35bf5f07 # initialize rs2
add x23, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x12, 0x8fcd92b3 # initialize rs1
li x23, 0xbc945c70 # initialize rs2
add x24, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xbe0e448a # initialize rs1
li x11, 0x97939303 # initialize rs2
add x25, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0x21a2605b # initialize rs1
li x25, 0xfc04152e # initialize rs2
add x26, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x31, 0x053b5ca6 # initialize rs1
li x7, 0xc4f19aa7 # initialize rs2
add x27, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x21, 0x5570113f # initialize rs1
li x15, 0x9048ca9a # initialize rs2
add x28, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x14, 0x00a5ba69 # initialize rs1
li x19, 0xc4a12a8b # initialize rs2
add x29, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x11cf1954 # initialize rs1
li x28, 0x307ebfa4 # initialize rs2
add x30, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xbcf0ced0 # initialize rs1
li x11, 0x559df4df # initialize rs2
add x31, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x00000000 # initialize rs1
li x11, 0x535942e8 # initialize rs2
add x26, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x00000001 # initialize rs1
li x3, 0x07bbf8de # initialize rs2
add x13, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x00000002 # initialize rs1
li x30, 0x7875c18d # initialize rs2
add x12, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x80000000 # initialize rs1
li x24, 0x197ecbd3 # initialize rs2
add x6, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x14, 0x80000001 # initialize rs1
li x5, 0x8ebb2ebf # initialize rs2
add x2, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x24, 0x7fffffff # initialize rs1
li x1, 0xab6c279e # initialize rs2
add x13, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x25, 0x557b6abf # initialize rs2
add x24, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rs1
li x3, 0xdb9fb0b7 # initialize rs2
add x30, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0xfffffffe # initialize rs1
li x15, 0x0b23e84d # initialize rs2
add x12, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs1
li x26, 0x65a6240e # initialize rs2
add x13, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x14, 0xaaaaaaaa # initialize rs1
li x1, 0x68485e50 # initialize rs2
add x31, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x27, 0x55555555 # initialize rs1
li x20, 0x17b42fab # initialize rs2
add x9, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0xa80726a0 # initialize rs1
li x16, 0x00000000 # initialize rs2
add x12, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x8c1af93b # initialize rs1
li x13, 0x00000001 # initialize rs2
add x29, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x8f9c8721 # initialize rs1
li x11, 0x00000002 # initialize rs2
add x5, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x26, 0x1cb92ff7 # initialize rs1
li x5, 0x80000000 # initialize rs2
add x28, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x18, 0x3715541d # initialize rs1
li x1, 0x80000001 # initialize rs2
add x31, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x15, 0x707daeff # initialize rs1
li x28, 0x7fffffff # initialize rs2
add x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x8, 0x09d344b9 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
add x13, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x7, 0x1aff4ae6 # initialize rs1
li x18, 0xffffffff # initialize rs2
add x2, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x60a566cb # initialize rs1
li x29, 0xfffffffe # initialize rs2
add x13, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x18, 0x252b832e # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
add x13, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x15, 0x47a917cf # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
add x28, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x2, 0x4f5cd28c # initialize rs1
li x17, 0x55555555 # initialize rs2
add x29, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
add x11, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x1, 0x00000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
add x20, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x27, 0x00000000 # initialize rs1
li x3, 0x00000002 # initialize rs2
add x11, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x8, 0x00000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
add x16, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x27, 0x00000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
add x25, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x13, 0x00000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
add x8, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x6, 0x00000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
add x19, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x00000000 # initialize rs1
li x7, 0xffffffff # initialize rs2
add x2, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
add x11, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x17, 0x00000000 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
add x30, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
add x18, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x18, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
add x8, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x00000001 # initialize rs1
li x21, 0x00000000 # initialize rs2
add x30, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x15, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
add x12, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x00000001 # initialize rs1
li x3, 0x00000002 # initialize rs2
add x31, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x17, 0x00000001 # initialize rs1
li x15, 0x80000000 # initialize rs2
add x3, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x5, 0x00000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
add x16, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x24, 0x00000001 # initialize rs1
li x30, 0x7fffffff # initialize rs2
add x3, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x24, 0x00000001 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
add x9, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x00000001 # initialize rs1
li x13, 0xffffffff # initialize rs2
add x28, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0x00000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
add x11, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x12, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
add x14, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x5, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
add x15, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x11, 0x00000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
add x24, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x00000002 # initialize rs1
li x22, 0x00000000 # initialize rs2
add x26, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x00000002 # initialize rs1
li x12, 0x00000001 # initialize rs2
add x29, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
add x16, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x9, 0x00000002 # initialize rs1
li x7, 0x80000000 # initialize rs2
add x18, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x2, 0x00000002 # initialize rs1
li x28, 0x80000001 # initialize rs2
add x9, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x26, 0x00000002 # initialize rs1
li x16, 0x7fffffff # initialize rs2
add x17, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x19, 0x00000002 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
add x2, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x00000002 # initialize rs1
li x20, 0xffffffff # initialize rs2
add x19, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x19, 0xfffffffe # initialize rs2
add x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
add x15, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x30, 0x00000002 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
add x13, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x14, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
add x12, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x14, 0x80000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
add x5, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x21, 0x80000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
add x10, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x6, 0x80000000 # initialize rs1
li x24, 0x00000002 # initialize rs2
add x11, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x7, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
add x11, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x23, 0x80000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
add x14, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x29, 0x80000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
add x9, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x28, 0x80000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
add x31, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x80000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
add x30, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x80000000 # initialize rs1
li x10, 0xfffffffe # initialize rs2
add x2, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x19, 0x80000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
add x5, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x17, 0x80000000 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
add x22, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x11, 0x80000000 # initialize rs1
li x21, 0x55555555 # initialize rs2
add x17, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x12, 0x80000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
add x20, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x7, 0x80000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
add x29, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x21, 0x80000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
add x12, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x20, 0x80000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
add x21, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
add x19, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x19, 0x80000001 # initialize rs1
li x28, 0x7fffffff # initialize rs2
add x2, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x21, 0x80000001 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
add x16, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x9, 0x80000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
add x24, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
add x5, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x25, 0x80000001 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
add x3, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
add x29, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x8, 0x80000001 # initialize rs1
li x15, 0x55555555 # initialize rs2
add x6, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x16, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
add x24, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
add x11, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x13, 0x7fffffff # initialize rs1
li x6, 0x00000002 # initialize rs2
add x10, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x28, 0x7fffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
add x15, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x13, 0x7fffffff # initialize rs1
li x1, 0x80000001 # initialize rs2
add x18, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x22, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
add x20, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x7, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
add x21, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x5, 0x7fffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
add x11, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x14, 0x7fffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
add x12, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x12, 0x7fffffff # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
add x21, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x15, 0x7fffffff # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
add x14, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x21, 0x7fffffff # initialize rs1
li x26, 0x55555555 # initialize rs2
add x16, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
add x23, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
add x17, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x22, 0x7ffffffe # initialize rs1
li x23, 0x00000002 # initialize rs2
add x21, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x16, 0x7ffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
add x20, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x13, 0x7ffffffe # initialize rs1
li x21, 0x80000001 # initialize rs2
add x11, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x1, 0x7ffffffe # initialize rs1
li x27, 0x7fffffff # initialize rs2
add x10, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
add x27, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x10, 0x7ffffffe # initialize rs1
li x28, 0xffffffff # initialize rs2
add x6, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
add x15, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x25, 0x7ffffffe # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
add x28, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x25, 0x7ffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
add x28, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x14, 0x7ffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
add x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x26, 0xffffffff # initialize rs1
li x11, 0x00000000 # initialize rs2
add x5, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x5, 0xffffffff # initialize rs1
li x26, 0x00000001 # initialize rs2
add x27, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
add x28, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
add x8, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x25, 0xffffffff # initialize rs1
li x31, 0x80000001 # initialize rs2
add x5, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x3, 0xffffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
add x2, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x20, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
add x31, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
add x31, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0xffffffff # initialize rs1
li x31, 0xfffffffe # initialize rs2
add x29, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x1, 0xffffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
add x28, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x3, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
add x16, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x8, 0xffffffff # initialize rs1
li x1, 0x55555555 # initialize rs2
add x26, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
add x13, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xfffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
add x30, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
add x30, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x20, 0xfffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
add x6, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x25, 0xfffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
add x22, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x14, 0xfffffffe # initialize rs1
li x31, 0x7fffffff # initialize rs2
add x24, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
add x25, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x25, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
add x18, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x23, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
add x18, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x5, 0xfffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
add x30, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
add x27, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x31, 0xfffffffe # initialize rs1
li x23, 0x55555555 # initialize rs2
add x3, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x6, 0x5bbc8872 # initialize rs1
li x3, 0x00000000 # initialize rs2
add x31, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x8, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
add x12, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x15, 0x5bbc8872 # initialize rs1
li x10, 0x00000002 # initialize rs2
add x3, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x30, 0x5bbc8872 # initialize rs1
li x9, 0x80000000 # initialize rs2
add x25, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x1, 0x5bbc8872 # initialize rs1
li x7, 0x80000001 # initialize rs2
add x2, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x13, 0x5bbc8872 # initialize rs1
li x8, 0x7fffffff # initialize rs2
add x20, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x7, 0x5bbc8872 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
add x19, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x22, 0x5bbc8872 # initialize rs1
li x2, 0xffffffff # initialize rs2
add x1, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x24, 0x5bbc8872 # initialize rs1
li x26, 0xfffffffe # initialize rs2
add x8, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
add x29, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x9, 0x5bbc8872 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
add x15, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x23, 0x5bbc8872 # initialize rs1
li x8, 0x55555555 # initialize rs2
add x2, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaa # initialize rs1
li x1, 0x00000000 # initialize rs2
add x18, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
add x24, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x8, 0xaaaaaaaa # initialize rs1
li x10, 0x00000002 # initialize rs2
add x16, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x10, 0xaaaaaaaa # initialize rs1
li x7, 0x80000000 # initialize rs2
add x23, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x22, 0xaaaaaaaa # initialize rs1
li x5, 0x80000001 # initialize rs2
add x9, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x12, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
add x17, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x8, 0xaaaaaaaa # initialize rs1
li x15, 0x7ffffffe # initialize rs2
add x6, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x10, 0xaaaaaaaa # initialize rs1
li x31, 0xffffffff # initialize rs2
add x16, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x11, 0xaaaaaaaa # initialize rs1
li x1, 0xfffffffe # initialize rs2
add x9, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x10, 0xaaaaaaaa # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
add x1, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
add x29, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x31, 0x55555555 # initialize rs2
add x6, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x6, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
add x27, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x30, 0x55555555 # initialize rs1
li x17, 0x00000001 # initialize rs2
add x25, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x21, 0x55555555 # initialize rs1
li x7, 0x00000002 # initialize rs2
add x16, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x25, 0x80000000 # initialize rs2
add x22, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x30, 0x55555555 # initialize rs1
li x31, 0x80000001 # initialize rs2
add x26, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x25, 0x55555555 # initialize rs1
li x27, 0x7fffffff # initialize rs2
add x19, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x26, 0x55555555 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
add x25, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x5, 0x55555555 # initialize rs1
li x6, 0xffffffff # initialize rs2
add x21, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x2, 0x55555555 # initialize rs1
li x27, 0xfffffffe # initialize rs2
add x8, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x26, 0x55555555 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
add x1, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x12, 0x55555555 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
add x6, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
add x19, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x1c1927b0 # initialize rs1
li x0, 0xab1adbb8 # initialize rs2
add x25, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6f1df1ea # initialize rs1
li x1, 0x3eca5ac0 # initialize rs2
add x14, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x44d71f0a # initialize rs1
li x2, 0x2307a3a6 # initialize rs2
add x7, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xec26f19f # initialize rs1
li x3, 0x1f2dfcf9 # initialize rs2
add x30, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbc52b5ec # initialize rs1
li x4, 0x221abb0a # initialize rs2
add x17, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x82695c89 # initialize rs1
li x5, 0x86d68808 # initialize rs2
add x10, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9eb33c93 # initialize rs1
li x6, 0xfd37bcdb # initialize rs2
add x31, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbc55197b # initialize rs1
li x7, 0x70c129c5 # initialize rs2
add x19, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd05c1fff # initialize rs1
li x8, 0x4e8dfdfa # initialize rs2
add x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfeeb3eac # initialize rs1
li x9, 0xd41c0d73 # initialize rs2
add x30, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5488c840 # initialize rs1
li x10, 0x51af0476 # initialize rs2
add x20, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbb3d4d8c # initialize rs1
li x11, 0x2bebf081 # initialize rs2
add x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x36f26b28 # initialize rs1
li x12, 0x01b08eca # initialize rs2
add x22, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8cc35e40 # initialize rs1
li x13, 0xd0774cbf # initialize rs2
add x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xcfd7fb75 # initialize rs1
li x14, 0x799de966 # initialize rs2
add x3, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x54954596 # initialize rs1
li x15, 0x6e3415fd # initialize rs2
add x16, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1643bcfa # initialize rs1
li x16, 0xfc8061f5 # initialize rs2
add x3, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe4566dca # initialize rs1
li x17, 0x67ca12e6 # initialize rs2
add x22, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xf0c3f3b2 # initialize rs1
li x18, 0xa93c5fbd # initialize rs2
add x14, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9c2b3e88 # initialize rs1
li x19, 0x063984b8 # initialize rs2
add x15, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9d37cfe0 # initialize rs1
li x20, 0x2a7e9926 # initialize rs2
add x6, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x21797878 # initialize rs1
li x21, 0xa16de89e # initialize rs2
add x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xeb318db6 # initialize rs1
li x22, 0xd8ee2a9c # initialize rs2
add x19, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xbe5871d9 # initialize rs1
li x23, 0x795b6a3f # initialize rs2
add x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x5391cfcd # initialize rs1
li x24, 0x71d4c07f # initialize rs2
add x21, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x21b08058 # initialize rs1
li x25, 0x5accf892 # initialize rs2
add x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3e02ecb4 # initialize rs1
li x26, 0x99de3cc3 # initialize rs2
add x27, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb1487535 # initialize rs1
li x27, 0x65b1f8a3 # initialize rs2
add x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x33ecc6d5 # initialize rs1
li x28, 0xf66a7247 # initialize rs2
add x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3173bc29 # initialize rs1
li x29, 0xa61478ba # initialize rs2
add x15, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x8fd8229b # initialize rs1
li x30, 0xc20019e2 # initialize rs2
add x18, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd5c40c43 # initialize rs1
li x31, 0xd9d93464 # initialize rs2
add x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x58fde627 # initialize rs1
li x7, 0x93d230a8 # initialize rs2
add x0, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x94d2b4ae # initialize rs1
li x22, 0xdd56df05 # initialize rs2
add x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xe13ea7f8 # initialize rs1
li x9, 0x3bfc5568 # initialize rs2
add x2, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x54856578 # initialize rs1
li x13, 0xcb83d603 # initialize rs2
add x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x54473d9e # initialize rs1
li x7, 0x9435e05b # initialize rs2
add x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3649d65a # initialize rs1
li x22, 0x9011eede # initialize rs2
add x5, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf4b65606 # initialize rs1
li x2, 0x4721d506 # initialize rs2
add x6, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe7a9bd49 # initialize rs1
li x13, 0xe6558aa0 # initialize rs2
add x7, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8615f89c # initialize rs1
li x7, 0x52153d95 # initialize rs2
add x8, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe5175ec0 # initialize rs1
li x28, 0xc3dd9edc # initialize rs2
add x9, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0a29a4e0 # initialize rs1
li x19, 0x19c8cf97 # initialize rs2
add x10, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd096c87a # initialize rs1
li x21, 0xbb849585 # initialize rs2
add x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf4de262e # initialize rs1
li x21, 0x6822b9d5 # initialize rs2
add x12, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf370dd1a # initialize rs1
li x31, 0x85df0d07 # initialize rs2
add x13, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4bb3e49c # initialize rs1
li x16, 0xb8b30e43 # initialize rs2
add x14, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xff6630a3 # initialize rs1
li x19, 0xc4922a7a # initialize rs2
add x15, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1e380349 # initialize rs1
li x27, 0x73844b43 # initialize rs2
add x16, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8c770301 # initialize rs1
li x28, 0xbc8dbaa5 # initialize rs2
add x17, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xceaccce5 # initialize rs1
li x25, 0x43106aef # initialize rs2
add x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb547f6cb # initialize rs1
li x2, 0x918b4624 # initialize rs2
add x19, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x88c8561c # initialize rs1
li x6, 0x421d48d8 # initialize rs2
add x20, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd2f3aab5 # initialize rs1
li x20, 0x5a555082 # initialize rs2
add x21, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe23cebc6 # initialize rs1
li x31, 0xa79f5489 # initialize rs2
add x22, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0e02fb2b # initialize rs1
li x9, 0xfe760b32 # initialize rs2
add x23, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0e581f1e # initialize rs1
li x26, 0x25e64dc2 # initialize rs2
add x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4c4da662 # initialize rs1
li x24, 0xb308a521 # initialize rs2
add x25, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x76cfd600 # initialize rs1
li x18, 0x9a21f598 # initialize rs2
add x26, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x467ce88c # initialize rs1
li x25, 0xea6ea20b # initialize rs2
add x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x79762167 # initialize rs1
li x6, 0xa29e0fd1 # initialize rs2
add x28, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0d82a1c4 # initialize rs1
li x29, 0x666096b1 # initialize rs2
add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1d5eb960 # initialize rs1
li x3, 0xa127a38f # initialize rs2
add x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7e4d9a8b # initialize rs1
li x25, 0x87c6633c # initialize rs2
add x31, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x12, 0xecadc7ef # initialize rs1
li x0, 0x55775b36 # initialize rs2
add x0, x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0x64375136 # initialize rs1
li x1, 0x71705bad # initialize rs2
add x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x11, 0xd538b3f1 # initialize rs1
li x2, 0xd9d4f8a3 # initialize rs2
add x2, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x29, 0x477fe9ff # initialize rs1
li x3, 0xc1df21e3 # initialize rs2
add x3, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0xd84665f8 # initialize rs1
li x4, 0x220cbdac # initialize rs2
add x4, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x72239287 # initialize rs1
li x5, 0x053fd25e # initialize rs2
add x5, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x794bb74f # initialize rs1
li x6, 0x3140a3b3 # initialize rs2
add x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x222c5472 # initialize rs1
li x7, 0x74e0b141 # initialize rs2
add x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x30, 0xacb3eb5a # initialize rs1
li x8, 0x56e5f23c # initialize rs2
add x8, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x14, 0xb204c113 # initialize rs1
li x9, 0xc24c15fb # initialize rs2
add x9, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x9, 0xe2afbf47 # initialize rs1
li x10, 0xe2ddfd98 # initialize rs2
add x10, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x13, 0xe7058c65 # initialize rs1
li x11, 0x3d20f74a # initialize rs2
add x11, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0x83700c3f # initialize rs1
li x12, 0x58d021ba # initialize rs2
add x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x17, 0xbf8a8dee # initialize rs1
li x13, 0x5a4e0f92 # initialize rs2
add x13, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x7, 0xbc552c59 # initialize rs1
li x14, 0xacbce605 # initialize rs2
add x14, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x3, 0x5dec4416 # initialize rs1
li x15, 0x186f23eb # initialize rs2
add x15, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x9, 0xa25e2a95 # initialize rs1
li x16, 0x8b8ea9f4 # initialize rs2
add x16, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x8e25e8dd # initialize rs1
li x17, 0x7576b404 # initialize rs2
add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x28, 0x44111b30 # initialize rs1
li x18, 0xf7e13f78 # initialize rs2
add x18, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x3, 0x31fb9fab # initialize rs1
li x19, 0x04237203 # initialize rs2
add x19, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x17, 0xf3db2d03 # initialize rs1
li x20, 0x69a740c9 # initialize rs2
add x20, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0xbb0c5f7d # initialize rs1
li x21, 0x06d3082a # initialize rs2
add x21, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x9, 0x1d109a11 # initialize rs1
li x22, 0x094c920d # initialize rs2
add x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x19, 0xfc9fe035 # initialize rs1
li x23, 0x86e286f1 # initialize rs2
add x23, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x12, 0x496e4797 # initialize rs1
li x24, 0xcc62605b # initialize rs2
add x24, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x23, 0x26cf2eb9 # initialize rs1
li x25, 0xbbc0208c # initialize rs2
add x25, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0xde118590 # initialize rs1
li x26, 0xc7c3b4db # initialize rs2
add x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x11, 0x84c7d362 # initialize rs1
li x27, 0x4e361317 # initialize rs2
add x27, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x18, 0x8fb8f04f # initialize rs1
li x28, 0x4fdf99df # initialize rs2
add x28, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0xf8c27a82 # initialize rs1
li x29, 0x3ab2c839 # initialize rs2
add x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x23, 0x230a44ac # initialize rs1
li x30, 0x884948b0 # initialize rs2
add x30, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x16, 0xd5e90698 # initialize rs1
li x31, 0x105dd08d # initialize rs2
add x31, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0b13b9da # initialize rs1
li x0, 0x941db913 # initialize rs2
add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x52d8a3b0 # initialize rs1
li x1, 0xe478d982 # initialize rs2
add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xe902a31d # initialize rs1
li x2, 0x6a842f48 # initialize rs2
add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x68b32256 # initialize rs1
li x3, 0x7021ba8d # initialize rs2
add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x55f5feed # initialize rs1
li x4, 0x0c4f3600 # initialize rs2
add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x26adb99d # initialize rs1
li x5, 0xf520de87 # initialize rs2
add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36dea232 # initialize rs1
li x6, 0xe12bb546 # initialize rs2
add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xffe74790 # initialize rs1
li x7, 0xf6e210e9 # initialize rs2
add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x120b6e3a # initialize rs1
li x8, 0x65a24262 # initialize rs2
add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x38c8c322 # initialize rs1
li x9, 0x3dc0a76c # initialize rs2
add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x25c1f4e6 # initialize rs1
li x10, 0xba249ffd # initialize rs2
add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7f10bb19 # initialize rs1
li x11, 0x84b9e694 # initialize rs2
add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7e88380b # initialize rs1
li x12, 0xa7b7876b # initialize rs2
add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x2f02e3de # initialize rs1
li x13, 0x27e35133 # initialize rs2
add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x7566eddf # initialize rs1
li x14, 0xfcb860c3 # initialize rs2
add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x085990fe # initialize rs1
li x15, 0x8aed84f6 # initialize rs2
add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xdc3e8dcc # initialize rs1
li x16, 0xb81d51c6 # initialize rs2
add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x84ec3cd5 # initialize rs1
li x17, 0x11bbaf11 # initialize rs2
add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x5b1b0245 # initialize rs1
li x18, 0x7a870c95 # initialize rs2
add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa9a11cc4 # initialize rs1
li x19, 0xe8925767 # initialize rs2
add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x70a6d495 # initialize rs1
li x20, 0x5e6494f9 # initialize rs2
add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x01bd2cfc # initialize rs1
li x21, 0x89b7feee # initialize rs2
add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xda147754 # initialize rs1
li x22, 0xa2a3973b # initialize rs2
add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1ff20d67 # initialize rs1
li x23, 0x855f44b0 # initialize rs2
add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x16daf3a2 # initialize rs1
li x24, 0x00b91ba9 # initialize rs2
add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x2118a052 # initialize rs1
li x25, 0x07b08895 # initialize rs2
add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1ad59fe9 # initialize rs1
li x26, 0x6a81085d # initialize rs2
add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xaa5948e4 # initialize rs1
li x27, 0x21a5ae2e # initialize rs2
add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xf5944673 # initialize rs1
li x28, 0x7f01e13f # initialize rs2
add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x17ddb1a5 # initialize rs1
li x29, 0x9fa6b3f5 # initialize rs2
add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x56b70555 # initialize rs1
li x30, 0x994bba06 # initialize rs2
add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x09e210bb # initialize rs1
li x31, 0xcc0d3c4f # initialize rs2
add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x3, x26 # perform first operation
add x31, x28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x1, x20 # perform first operation
add x25, x17, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x20, x8 # perform first operation
add x27, x12, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x26, x30 # perform first operation
add x19, x13, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x21, x3 # perform first operation
add x3, x16, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x20, x8 # perform first operation
add x25, x1, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x11, x23 # perform first operation
add x24, x17, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x12, x20 # perform first operation
add x13, x9, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x12, x18 # perform first operation
add x24, x19, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x28, x13 # perform first operation
add x28, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x20, x29 # perform first operation
add x29, x11, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x9, x26 # perform first operation
add x2, x17, x19 # perform second (triggering) operation

.EQU SIGSIZE,1568


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
