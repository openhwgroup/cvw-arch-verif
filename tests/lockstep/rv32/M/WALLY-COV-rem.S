///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/M/WALLY-COV-rem.S
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
li x0, 0xbcbeb1df # initialize rs1
li x7, 0x81dccc26 # initialize rs2
rem x21, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa3a21e56 # initialize rs1
li x5, 0xfc309838 # initialize rs2
rem x12, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4eb4663f # initialize rs1
li x1, 0x4d6847aa # initialize rs2
rem x9, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x1caa9a09 # initialize rs1
li x6, 0x53144af0 # initialize rs2
rem x28, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0b353265 # initialize rs1
li x27, 0x98d261f4 # initialize rs2
rem x28, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x06d4a232 # initialize rs1
li x25, 0x677ca1ec # initialize rs2
rem x8, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x72bb5636 # initialize rs1
li x21, 0xff10743c # initialize rs2
rem x11, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2c46eab9 # initialize rs1
li x9, 0x87e09c4e # initialize rs2
rem x18, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8482dcdb # initialize rs1
li x3, 0xaea85c83 # initialize rs2
rem x7, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x5bf2d9f0 # initialize rs1
li x10, 0x144f0746 # initialize rs2
rem x22, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc37ac2c6 # initialize rs1
li x17, 0x51f4b976 # initialize rs2
rem x28, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd8ca4d03 # initialize rs1
li x27, 0x62c0ac18 # initialize rs2
rem x20, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6c5b18fe # initialize rs1
li x10, 0xee380173 # initialize rs2
rem x6, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x791770d8 # initialize rs1
li x31, 0xf90ffbb5 # initialize rs2
rem x15, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xff19d26e # initialize rs1
li x17, 0x7c823c77 # initialize rs2
rem x13, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb5660e4d # initialize rs1
li x29, 0x9d33be12 # initialize rs2
rem x3, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x30ed8e1a # initialize rs1
li x9, 0x59b6ae88 # initialize rs2
rem x11, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x98ab8ce6 # initialize rs1
li x15, 0x382fdf74 # initialize rs2
rem x22, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xf307f728 # initialize rs1
li x19, 0x80b745a5 # initialize rs2
rem x13, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x515b78ac # initialize rs1
li x13, 0xa4ef2a06 # initialize rs2
rem x24, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe6b720c4 # initialize rs1
li x19, 0xfe4a34c6 # initialize rs2
rem x14, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x58ba42da # initialize rs1
li x24, 0x935c29f5 # initialize rs2
rem x13, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xfc17f0b8 # initialize rs1
li x16, 0xa2ae4863 # initialize rs2
rem x7, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x54d2ab93 # initialize rs1
li x21, 0xfb4a5e4a # initialize rs2
rem x11, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x2683aabe # initialize rs1
li x1, 0x3f25b476 # initialize rs2
rem x30, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xbeae35e0 # initialize rs1
li x13, 0x79271f55 # initialize rs2
rem x21, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb62248e4 # initialize rs1
li x31, 0xbfa5e2fe # initialize rs2
rem x8, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xcad41667 # initialize rs1
li x2, 0xe036f61a # initialize rs2
rem x31, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xcd962d38 # initialize rs1
li x3, 0x5ae57f0b # initialize rs2
rem x6, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x38346409 # initialize rs1
li x25, 0xdf1707bc # initialize rs2
rem x13, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x8ff25750 # initialize rs1
li x17, 0xbd872e9e # initialize rs2
rem x29, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xeb8afd18 # initialize rs1
li x12, 0xae83b889 # initialize rs2
rem x11, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x11, 0xb047dbc6 # initialize rs1
li x0, 0x2658d53b # initialize rs2
rem x25, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x2, 0xbd0d3b99 # initialize rs1
li x1, 0xaac129aa # initialize rs2
rem x31, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0x24314115 # initialize rs1
li x2, 0x670177b9 # initialize rs2
rem x25, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0xec3c6d2e # initialize rs1
li x3, 0x92e8ebe9 # initialize rs2
rem x23, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x0dffaf64 # initialize rs1
li x4, 0xe39fb3a6 # initialize rs2
rem x26, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xb79e4049 # initialize rs1
li x5, 0x188a5fec # initialize rs2
rem x26, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x9b76a7e8 # initialize rs1
li x6, 0xbe4cab87 # initialize rs2
rem x18, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x9dcc9587 # initialize rs1
li x7, 0x1bc97b08 # initialize rs2
rem x24, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0xdd679f80 # initialize rs1
li x8, 0xfde3db97 # initialize rs2
rem x24, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x67e74d41 # initialize rs1
li x9, 0x4b60296d # initialize rs2
rem x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0xa2709305 # initialize rs1
li x10, 0x97e52d5a # initialize rs2
rem x29, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x7b40b535 # initialize rs1
li x11, 0x1bc91f54 # initialize rs2
rem x30, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0xcc78deea # initialize rs1
li x12, 0x76f4a95c # initialize rs2
rem x11, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0x5779dde0 # initialize rs1
li x13, 0x6a144607 # initialize rs2
rem x10, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0xe86adcd6 # initialize rs1
li x14, 0x3389b1fc # initialize rs2
rem x13, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x2, 0xe92b5596 # initialize rs1
li x15, 0x8796e483 # initialize rs2
rem x8, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0x256c94ea # initialize rs1
li x16, 0xf68369db # initialize rs2
rem x14, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x28f68308 # initialize rs1
li x17, 0x4e3e833c # initialize rs2
rem x26, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0x7b6cc44b # initialize rs1
li x18, 0x3f5e03e5 # initialize rs2
rem x29, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xe053e6ba # initialize rs1
li x19, 0x36b322bd # initialize rs2
rem x21, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x1, 0x45284cbd # initialize rs1
li x20, 0xc41bae30 # initialize rs2
rem x21, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0xfecd57ff # initialize rs1
li x21, 0x3c56aab9 # initialize rs2
rem x22, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x13, 0x790689e1 # initialize rs1
li x22, 0x51c66e88 # initialize rs2
rem x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0xedc7d053 # initialize rs1
li x23, 0xae3e28e4 # initialize rs2
rem x15, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0x722bea43 # initialize rs1
li x24, 0xcd7eb656 # initialize rs2
rem x23, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0x0832d5da # initialize rs1
li x25, 0xde965cbd # initialize rs2
rem x14, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x13, 0xffd89663 # initialize rs1
li x26, 0xd179e354 # initialize rs2
rem x15, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0xbe4843ab # initialize rs1
li x27, 0x9fc03a9f # initialize rs2
rem x31, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0x8d56b05b # initialize rs1
li x28, 0xb2752790 # initialize rs2
rem x12, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x398b740a # initialize rs1
li x29, 0x9d185e52 # initialize rs2
rem x6, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x11, 0x5feb0099 # initialize rs1
li x30, 0x05586d9f # initialize rs2
rem x25, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0x6ad07577 # initialize rs1
li x31, 0x9d0b612f # initialize rs2
rem x24, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 252)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0x05f09eef # initialize rs1
li x20, 0x745f5bae # initialize rs2
rem x0, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x2269b61f # initialize rs1
li x12, 0xd0dc5c18 # initialize rs2
rem x1, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0xc672468c # initialize rs1
li x29, 0xddacd812 # initialize rs2
rem x2, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x8bfdc246 # initialize rs1
li x24, 0xac582df4 # initialize rs2
rem x3, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x404fabe1 # initialize rs1
li x8, 0xb755f756 # initialize rs2
rem x4, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
li x4, 0x7628a55d # initialize rs1
li x23, 0xbd324e88 # initialize rs2
rem x5, x4, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xa578af8f # initialize rs1
li x9, 0x8ed7f3c2 # initialize rs2
rem x6, x16, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x10466442 # initialize rs1
li x27, 0xce628118 # initialize rs2
rem x7, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x21, 0x534c1f40 # initialize rs1
li x8, 0x75d984e2 # initialize rs2
rem x8, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x669bdfa3 # initialize rs1
li x7, 0x0fb6ac8a # initialize rs2
rem x9, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x6d12450a # initialize rs1
li x21, 0xdfd2b0fc # initialize rs2
rem x10, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0x79601a73 # initialize rs1
li x6, 0x4dacd6e1 # initialize rs2
rem x11, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0x1f2e93eb # initialize rs1
li x20, 0xf5095d74 # initialize rs2
rem x12, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x851b3a2a # initialize rs1
li x11, 0x3d594c6e # initialize rs2
rem x13, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x070dd0e7 # initialize rs1
li x23, 0x8ff011bf # initialize rs2
rem x14, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x79f97a1c # initialize rs1
li x17, 0x8bbb998f # initialize rs2
rem x15, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x7c12b188 # initialize rs1
li x20, 0x52f657aa # initialize rs2
rem x16, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x9f46a92a # initialize rs1
li x22, 0x4d1d5a92 # initialize rs2
rem x17, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0xd6f82a14 # initialize rs1
li x21, 0xa0757869 # initialize rs2
rem x18, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0x69e0bb92 # initialize rs1
li x28, 0xeccd1200 # initialize rs2
rem x19, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0xc3150152 # initialize rs1
li x17, 0x2b274dbf # initialize rs2
rem x20, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0x16a9f920 # initialize rs1
li x31, 0xed8bf42e # initialize rs2
rem x21, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x9add1822 # initialize rs1
li x5, 0x29890754 # initialize rs2
rem x22, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0xd944992d # initialize rs1
li x11, 0x0f13872c # initialize rs2
rem x23, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x12, 0x9414419e # initialize rs1
li x8, 0xdf3b4533 # initialize rs2
rem x24, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x16, 0xdb3aa975 # initialize rs1
li x13, 0x155b7e55 # initialize rs2
rem x25, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0x033b1a02 # initialize rs1
li x9, 0xbbbb5d0a # initialize rs2
rem x26, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x519d70f2 # initialize rs1
li x25, 0xfbb8abfd # initialize rs2
rem x27, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x1f8829df # initialize rs1
li x1, 0x17aaf19e # initialize rs2
rem x28, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x13, 0x4885cf03 # initialize rs1
li x12, 0x5fadce2c # initialize rs2
rem x29, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0x0cb9ef2d # initialize rs1
li x7, 0x1f64dcc3 # initialize rs2
rem x30, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x22, 0x8095b8d0 # initialize rs1
li x10, 0xb40004a6 # initialize rs2
rem x31, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
li x8, 0xd5afdb32 # initialize rs2
rem x12, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x00000001 # initialize rs1
li x20, 0x3d1f261a # initialize rs2
rem x26, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x00000002 # initialize rs1
li x18, 0x85b7682e # initialize rs2
rem x11, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x80000000 # initialize rs1
li x30, 0x13beecf2 # initialize rs2
rem x17, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x80000001 # initialize rs1
li x5, 0x3004efeb # initialize rs2
rem x7, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x7fffffff # initialize rs1
li x18, 0x3f25b65e # initialize rs2
rem x16, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
li x30, 0x53ad85e2 # initialize rs2
rem x15, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0xffffffff # initialize rs1
li x3, 0x7ac9b9bd # initialize rs2
rem x24, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0xfffffffe # initialize rs1
li x16, 0xde0ced03 # initialize rs2
rem x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x30, 0x5bbc8872 # initialize rs1
li x23, 0x8325d996 # initialize rs2
rem x9, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
li x1, 0x7d21c654 # initialize rs2
rem x11, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0x55555555 # initialize rs1
li x18, 0x93612304 # initialize rs2
rem x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x46a7366a # initialize rs1
li x25, 0x00000000 # initialize rs2
rem x3, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x9a382ebc # initialize rs1
li x6, 0x00000001 # initialize rs2
rem x25, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xcde6ef36 # initialize rs1
li x5, 0x00000002 # initialize rs2
rem x26, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x26, 0x1e8b74a0 # initialize rs1
li x28, 0x80000000 # initialize rs2
rem x21, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x23, 0x47d2abb3 # initialize rs1
li x25, 0x80000001 # initialize rs2
rem x26, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x15, 0x6c34ab80 # initialize rs1
li x21, 0x7fffffff # initialize rs2
rem x31, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x21, 0x6bd13385 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
rem x17, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0x7dfb230f # initialize rs1
li x9, 0xffffffff # initialize rs2
rem x31, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0x7a3e1d39 # initialize rs1
li x21, 0xfffffffe # initialize rs2
rem x8, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x1, 0x4e0b3064 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
rem x12, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x9, 0xa12cc85b # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
rem x25, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x7, 0x78f5f68e # initialize rs1
li x11, 0x55555555 # initialize rs2
rem x18, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
rem x7, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x7, 0x00000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
rem x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0x00000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
rem x12, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
rem x9, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x14, 0x00000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
rem x10, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x25, 0x00000000 # initialize rs1
li x18, 0x7fffffff # initialize rs2
rem x24, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x16, 0x00000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
rem x27, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x00000000 # initialize rs1
li x22, 0xffffffff # initialize rs2
rem x28, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x14, 0xfffffffe # initialize rs2
rem x24, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x19, 0x00000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
rem x20, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x22, 0x00000000 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
rem x19, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x6, 0x00000000 # initialize rs1
li x31, 0x55555555 # initialize rs2
rem x20, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x28, 0x00000001 # initialize rs1
li x19, 0x00000000 # initialize rs2
rem x30, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x00000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
rem x5, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x00000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
rem x7, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x26, 0x00000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
rem x13, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x28, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
rem x16, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x26, 0x00000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
rem x11, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x20, 0x00000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
rem x16, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x00000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
rem x17, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
rem x29, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x1, 0x00000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
rem x19, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x8, 0x00000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
rem x30, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x1, 0x00000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
rem x26, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0x00000002 # initialize rs1
li x14, 0x00000000 # initialize rs2
rem x31, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x00000002 # initialize rs1
li x8, 0x00000001 # initialize rs2
rem x18, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x12, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
rem x29, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x29, 0x00000002 # initialize rs1
li x26, 0x80000000 # initialize rs2
rem x15, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x30, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
rem x19, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x13, 0x00000002 # initialize rs1
li x1, 0x7fffffff # initialize rs2
rem x17, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x19, 0x00000002 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
rem x11, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x2, 0x00000002 # initialize rs1
li x8, 0xffffffff # initialize rs2
rem x30, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x00000002 # initialize rs1
li x29, 0xfffffffe # initialize rs2
rem x13, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x19, 0x00000002 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
rem x24, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x24, 0x00000002 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
rem x31, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x28, 0x00000002 # initialize rs1
li x23, 0x55555555 # initialize rs2
rem x5, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x17, 0x80000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
rem x19, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x16, 0x80000000 # initialize rs1
li x21, 0x00000001 # initialize rs2
rem x29, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x5, 0x80000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
rem x31, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x24, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
rem x12, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x23, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
rem x8, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x21, 0x80000000 # initialize rs1
li x28, 0x7fffffff # initialize rs2
rem x18, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x26, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
rem x16, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x11, 0x80000000 # initialize rs1
li x17, 0xffffffff # initialize rs2
rem x16, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x18, 0x80000000 # initialize rs1
li x12, 0xfffffffe # initialize rs2
rem x24, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x22, 0x80000000 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
rem x25, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x13, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
rem x31, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x14, 0x80000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
rem x21, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x15, 0x80000001 # initialize rs1
li x16, 0x00000000 # initialize rs2
rem x10, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x31, 0x80000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
rem x7, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x18, 0x80000001 # initialize rs1
li x19, 0x00000002 # initialize rs2
rem x27, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x11, 0x80000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
rem x13, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
rem x25, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x23, 0x80000001 # initialize rs1
li x6, 0x7fffffff # initialize rs2
rem x11, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x29, 0x80000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
rem x14, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x1, 0x80000001 # initialize rs1
li x14, 0xffffffff # initialize rs2
rem x7, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x18, 0x80000001 # initialize rs1
li x11, 0xfffffffe # initialize rs2
rem x7, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x17, 0x80000001 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
rem x21, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x18, 0x80000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
rem x13, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x16, 0x80000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
rem x12, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x7fffffff # initialize rs1
li x24, 0x00000000 # initialize rs2
rem x18, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x8, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
rem x15, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x20, 0x7fffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
rem x17, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x15, 0x7fffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
rem x22, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x24, 0x7fffffff # initialize rs1
li x2, 0x80000001 # initialize rs2
rem x21, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
rem x12, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x16, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
rem x28, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x22, 0x7fffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
rem x21, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0x7fffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
rem x5, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x25, 0x7fffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
rem x3, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x2, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
rem x12, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x11, 0x7fffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
rem x30, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x3, 0x7ffffffe # initialize rs1
li x7, 0x00000000 # initialize rs2
rem x25, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
rem x24, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x1, 0x7ffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
rem x29, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0x7ffffffe # initialize rs1
li x27, 0x80000000 # initialize rs2
rem x26, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x1, 0x7ffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
rem x26, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x7ffffffe # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x18, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
rem x23, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffe # initialize rs1
li x17, 0xffffffff # initialize rs2
rem x1, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
rem x18, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x30, 0x7ffffffe # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
rem x13, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x5, 0x7ffffffe # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
rem x8, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x19, 0x7ffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
rem x14, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0xffffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
rem x21, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0xffffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
rem x15, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x11, 0xffffffff # initialize rs1
li x2, 0x00000002 # initialize rs2
rem x15, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x7, 0xffffffff # initialize rs1
li x6, 0x80000000 # initialize rs2
rem x3, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
rem x27, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x2, 0xffffffff # initialize rs1
li x24, 0x7fffffff # initialize rs2
rem x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x7, 0xffffffff # initialize rs1
li x31, 0x7ffffffe # initialize rs2
rem x13, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x13, 0xffffffff # initialize rs1
li x3, 0xffffffff # initialize rs2
rem x22, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x30, 0xffffffff # initialize rs1
li x29, 0xfffffffe # initialize rs2
rem x8, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x18, 0xffffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
rem x25, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x26, 0xffffffff # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
rem x9, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x6, 0xffffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
rem x24, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x28, 0xfffffffe # initialize rs1
li x7, 0x00000000 # initialize rs2
rem x13, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xfffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
rem x19, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0xfffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
rem x26, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x21, 0xfffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
rem x13, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x3, 0xfffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
rem x21, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x17, 0xfffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
rem x18, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x1, 0xfffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
rem x14, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x1, 0xfffffffe # initialize rs1
li x22, 0xffffffff # initialize rs2
rem x26, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
rem x2, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x29, 0xfffffffe # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
rem x26, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x19, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
rem x17, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x7, 0xfffffffe # initialize rs1
li x11, 0x55555555 # initialize rs2
rem x15, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x30, 0x5bbc8872 # initialize rs1
li x15, 0x00000000 # initialize rs2
rem x2, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x31, 0x5bbc8872 # initialize rs1
li x2, 0x00000001 # initialize rs2
rem x9, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x2, 0x5bbc8872 # initialize rs1
li x6, 0x00000002 # initialize rs2
rem x11, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x20, 0x5bbc8872 # initialize rs1
li x10, 0x80000000 # initialize rs2
rem x21, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x21, 0x5bbc8872 # initialize rs1
li x27, 0x80000001 # initialize rs2
rem x24, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x27, 0x5bbc8872 # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x5, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x14, 0x5bbc8872 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
rem x27, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x7, 0x5bbc8872 # initialize rs1
li x10, 0xffffffff # initialize rs2
rem x29, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x9, 0xfffffffe # initialize rs2
rem x11, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x21, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
rem x29, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x11, 0x5bbc8872 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
rem x22, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x3, 0x5bbc8872 # initialize rs1
li x21, 0x55555555 # initialize rs2
rem x17, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x14, 0xaaaaaaaa # initialize rs1
li x27, 0x00000000 # initialize rs2
rem x31, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaa # initialize rs1
li x26, 0x00000001 # initialize rs2
rem x19, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x7, 0xaaaaaaaa # initialize rs1
li x22, 0x00000002 # initialize rs2
rem x21, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x19, 0xaaaaaaaa # initialize rs1
li x18, 0x80000000 # initialize rs2
rem x29, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x13, 0x80000001 # initialize rs2
rem x14, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x28, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
rem x25, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x17, 0xaaaaaaaa # initialize rs1
li x27, 0x7ffffffe # initialize rs2
rem x11, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x15, 0xaaaaaaaa # initialize rs1
li x25, 0xffffffff # initialize rs2
rem x8, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x9, 0xfffffffe # initialize rs2
rem x26, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x14, 0xaaaaaaaa # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
rem x13, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x16, 0xaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
rem x8, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x27, 0xaaaaaaaa # initialize rs1
li x16, 0x55555555 # initialize rs2
rem x6, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x29, 0x55555555 # initialize rs1
li x25, 0x00000000 # initialize rs2
rem x22, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x26, 0x55555555 # initialize rs1
li x8, 0x00000001 # initialize rs2
rem x12, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x12, 0x55555555 # initialize rs1
li x19, 0x00000002 # initialize rs2
rem x20, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
rem x27, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x25, 0x80000001 # initialize rs2
rem x1, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x15, 0x55555555 # initialize rs1
li x13, 0x7fffffff # initialize rs2
rem x24, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x26, 0x55555555 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
rem x6, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x2, 0x55555555 # initialize rs1
li x22, 0xffffffff # initialize rs2
rem x13, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x1, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
rem x22, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x1, 0x55555555 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
rem x6, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x20, 0x55555555 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
rem x1, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
rem x20, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x603fb414 # initialize rs1
li x0, 0x4e3cffb7 # initialize rs2
rem x29, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xb06c654e # initialize rs1
li x1, 0x5173bd23 # initialize rs2
rem x7, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x40a72bf3 # initialize rs1
li x2, 0x3f12aa03 # initialize rs2
rem x25, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6fa877b7 # initialize rs1
li x3, 0x8a3c8d02 # initialize rs2
rem x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf50f9246 # initialize rs1
li x4, 0x43db907c # initialize rs2
rem x31, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x73513e49 # initialize rs1
li x5, 0x1435f513 # initialize rs2
rem x7, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbb282147 # initialize rs1
li x6, 0xe61b1e86 # initialize rs2
rem x9, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb672520d # initialize rs1
li x7, 0x1e915a22 # initialize rs2
rem x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x54bf7b6c # initialize rs1
li x8, 0xe394b459 # initialize rs2
rem x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xaa0a48ae # initialize rs1
li x9, 0xb93ac1ab # initialize rs2
rem x25, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb731725b # initialize rs1
li x10, 0x6da628f2 # initialize rs2
rem x9, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x6a2bcb62 # initialize rs1
li x11, 0xbbbaad6a # initialize rs2
rem x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5ac80030 # initialize rs1
li x12, 0x3cd0fc61 # initialize rs2
rem x5, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xbd649e40 # initialize rs1
li x13, 0x5da616e3 # initialize rs2
rem x31, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc63834c9 # initialize rs1
li x14, 0xa1061a88 # initialize rs2
rem x5, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc127eb96 # initialize rs1
li x15, 0x458515c3 # initialize rs2
rem x1, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xd7d69359 # initialize rs1
li x16, 0x2100481d # initialize rs2
rem x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xcd2e16ec # initialize rs1
li x17, 0x43ff4e1e # initialize rs2
rem x15, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xf3fce347 # initialize rs1
li x18, 0x56db71f7 # initialize rs2
rem x22, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x39b76839 # initialize rs1
li x19, 0xcb33980a # initialize rs2
rem x25, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe1ee49ff # initialize rs1
li x20, 0x59a4f8ac # initialize rs2
rem x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1fdb5807 # initialize rs1
li x21, 0x802ca0eb # initialize rs2
rem x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x6b467a5b # initialize rs1
li x22, 0xc04f6766 # initialize rs2
rem x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xdbff6255 # initialize rs1
li x23, 0x72ab61e3 # initialize rs2
rem x1, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xdb52effc # initialize rs1
li x24, 0xa245c0fa # initialize rs2
rem x14, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe441c93c # initialize rs1
li x25, 0xbcd3f155 # initialize rs2
rem x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x73ed266a # initialize rs1
li x26, 0x38c48bff # initialize rs2
rem x31, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x3b1f9b1a # initialize rs1
li x27, 0x813a5d9a # initialize rs2
rem x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8193c294 # initialize rs1
li x28, 0x87d6ea71 # initialize rs2
rem x22, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x8b76ebdb # initialize rs1
li x29, 0xb6d423b0 # initialize rs2
rem x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xed1c31a0 # initialize rs1
li x30, 0x47db60af # initialize rs2
rem x8, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6057d08d # initialize rs1
li x31, 0xd9cd0893 # initialize rs2
rem x28, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7580d187 # initialize rs1
li x21, 0xd677676b # initialize rs2
rem x0, x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7a39ee6b # initialize rs1
li x12, 0x870c4948 # initialize rs2
rem x1, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4d114b1f # initialize rs1
li x13, 0xfeb298a2 # initialize rs2
rem x2, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x88d4fc95 # initialize rs1
li x23, 0x47ab272d # initialize rs2
rem x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4c9de66e # initialize rs1
li x12, 0x09bc56ee # initialize rs2
rem x4, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9e974ee2 # initialize rs1
li x23, 0x8bcd5500 # initialize rs2
rem x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9a595f23 # initialize rs1
li x30, 0xba2278ab # initialize rs2
rem x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x92b5426c # initialize rs1
li x2, 0xb627d52f # initialize rs2
rem x7, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8da385c3 # initialize rs1
li x27, 0xe10bb170 # initialize rs2
rem x8, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd8c55188 # initialize rs1
li x21, 0xeb0b4c7d # initialize rs2
rem x9, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6fe1c2f6 # initialize rs1
li x25, 0x7993537d # initialize rs2
rem x10, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x41fac73a # initialize rs1
li x21, 0x8d9a5a73 # initialize rs2
rem x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6d2434ca # initialize rs1
li x12, 0xd7b2cc14 # initialize rs2
rem x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1a96ba52 # initialize rs1
li x29, 0x427d1cb7 # initialize rs2
rem x13, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x123d9929 # initialize rs1
li x7, 0xcec50d64 # initialize rs2
rem x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd8382df5 # initialize rs1
li x22, 0xbb982fa8 # initialize rs2
rem x15, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x848fbaf7 # initialize rs1
li x30, 0xb4632495 # initialize rs2
rem x16, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x39e90d09 # initialize rs1
li x30, 0x24746a77 # initialize rs2
rem x17, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd696e711 # initialize rs1
li x14, 0x37788aba # initialize rs2
rem x18, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xda7ae748 # initialize rs1
li x2, 0xd7709c6e # initialize rs2
rem x19, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x77693dbd # initialize rs1
li x17, 0x212fe99e # initialize rs2
rem x20, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd9b09081 # initialize rs1
li x10, 0x6dda5d9b # initialize rs2
rem x21, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa02b8ce0 # initialize rs1
li x30, 0xc1c3fb51 # initialize rs2
rem x22, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1e1e1a63 # initialize rs1
li x6, 0x38e8002d # initialize rs2
rem x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb901dbde # initialize rs1
li x19, 0xc0763197 # initialize rs2
rem x24, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x82e2a437 # initialize rs1
li x8, 0xd88eee8a # initialize rs2
rem x25, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xee078d08 # initialize rs1
li x26, 0x32c74bff # initialize rs2
rem x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd30f5d68 # initialize rs1
li x5, 0xf44a896a # initialize rs2
rem x27, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2fe9858b # initialize rs1
li x13, 0x80236f74 # initialize rs2
rem x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x79cb2cd2 # initialize rs1
li x17, 0x8ff8ed29 # initialize rs2
rem x29, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1755cc69 # initialize rs1
li x16, 0xd5934ec1 # initialize rs2
rem x30, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfdd14eaa # initialize rs1
li x23, 0x80205491 # initialize rs2
rem x31, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x27, 0x85917499 # initialize rs1
li x0, 0xcdf7d0b8 # initialize rs2
rem x0, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x25, 0x42f848b7 # initialize rs1
li x1, 0xee0a86df # initialize rs2
rem x1, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0xaa3af219 # initialize rs1
li x2, 0xdce47268 # initialize rs2
rem x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0xcb963d07 # initialize rs1
li x3, 0x4dcf76ee # initialize rs2
rem x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xfffce622 # initialize rs1
li x4, 0x6de70787 # initialize rs2
rem x4, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xd5bf81be # initialize rs1
li x5, 0x48b10454 # initialize rs2
rem x5, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xfd2fccbb # initialize rs1
li x6, 0xdde833c3 # initialize rs2
rem x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xfc554e7f # initialize rs1
li x7, 0x0f8ba38a # initialize rs2
rem x7, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x11, 0xdaaef56c # initialize rs1
li x8, 0x015f92b2 # initialize rs2
rem x8, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x16, 0xd23ce080 # initialize rs1
li x9, 0x0bf41db3 # initialize rs2
rem x9, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x22, 0x9ad79fe6 # initialize rs1
li x10, 0x61320984 # initialize rs2
rem x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x19, 0xe46dcc75 # initialize rs1
li x11, 0x28082760 # initialize rs2
rem x11, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x28, 0xdaa04b4a # initialize rs1
li x12, 0xa6e0552a # initialize rs2
rem x12, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0x69782b93 # initialize rs1
li x13, 0x3ad04ab3 # initialize rs2
rem x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x25, 0x1a2d9eb1 # initialize rs1
li x14, 0x50a992fd # initialize rs2
rem x14, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x5, 0x017c4753 # initialize rs1
li x15, 0x7dc9d57f # initialize rs2
rem x15, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x3e9f7b8c # initialize rs1
li x16, 0x7b70e038 # initialize rs2
rem x16, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0xd467b905 # initialize rs1
li x17, 0xdb88938c # initialize rs2
rem x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xbbfaa14e # initialize rs1
li x18, 0x5aa1e54c # initialize rs2
rem x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x17, 0x0ac27ab2 # initialize rs1
li x19, 0x8dfbefa3 # initialize rs2
rem x19, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x9, 0x6ac12439 # initialize rs1
li x20, 0x8c67a05f # initialize rs2
rem x20, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0xeaf6cf52 # initialize rs1
li x21, 0x15ec6385 # initialize rs2
rem x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x31, 0xd8f8c101 # initialize rs1
li x22, 0xb939a48f # initialize rs2
rem x22, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x24, 0x1e3a8bf3 # initialize rs1
li x23, 0xde2873d0 # initialize rs2
rem x23, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0xa6b09fe6 # initialize rs1
li x24, 0x10d1cb62 # initialize rs2
rem x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x23, 0x5b9a5d5b # initialize rs1
li x25, 0x0edcd9c1 # initialize rs2
rem x25, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x12, 0x76e352e8 # initialize rs1
li x26, 0x445f05c0 # initialize rs2
rem x26, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x3, 0x81962225 # initialize rs1
li x27, 0xe95d7242 # initialize rs2
rem x27, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x26, 0x63370a5b # initialize rs1
li x28, 0x287ff379 # initialize rs2
rem x28, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0x83a650e2 # initialize rs1
li x29, 0xbb218020 # initialize rs2
rem x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x1, 0x7a5e2e13 # initialize rs1
li x30, 0x87bd075c # initialize rs2
rem x30, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x23, 0xf43c303e # initialize rs1
li x31, 0x6b7df5cc # initialize rs2
rem x31, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xf9a6ee3a # initialize rs1
li x0, 0xb8abacc8 # initialize rs2
rem x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2b404b6c # initialize rs1
li x1, 0x66aca62e # initialize rs2
rem x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xbe72252d # initialize rs1
li x2, 0xe294b9c2 # initialize rs2
rem x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xbb2700f2 # initialize rs1
li x3, 0x8dce0369 # initialize rs2
rem x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x70c15c4c # initialize rs1
li x4, 0x76dc66db # initialize rs2
rem x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5eb5d43e # initialize rs1
li x5, 0x620bcf9c # initialize rs2
rem x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9831d48e # initialize rs1
li x6, 0x711b003a # initialize rs2
rem x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbcdbc1e3 # initialize rs1
li x7, 0x38d6457d # initialize rs2
rem x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x37c66c5e # initialize rs1
li x8, 0xaafebce2 # initialize rs2
rem x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x71779bd9 # initialize rs1
li x9, 0xb9f8aa28 # initialize rs2
rem x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4a168040 # initialize rs1
li x10, 0x4a964dcc # initialize rs2
rem x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe926e407 # initialize rs1
li x11, 0x145ffed6 # initialize rs2
rem x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa4b3b794 # initialize rs1
li x12, 0xc3ad4fda # initialize rs2
rem x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x7fd8b23c # initialize rs1
li x13, 0xf16ec5d8 # initialize rs2
rem x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xfb31f1bf # initialize rs1
li x14, 0xac7f0be3 # initialize rs2
rem x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x6e43a6b6 # initialize rs1
li x15, 0x84fd1753 # initialize rs2
rem x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x82e5f257 # initialize rs1
li x16, 0xe2083f9e # initialize rs2
rem x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe01e49d5 # initialize rs1
li x17, 0x7d5503c1 # initialize rs2
rem x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xe64e6e3b # initialize rs1
li x18, 0xcc41acf3 # initialize rs2
rem x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x17f55fce # initialize rs1
li x19, 0x722036ef # initialize rs2
rem x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x29d08612 # initialize rs1
li x20, 0xd7050a19 # initialize rs2
rem x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x3a1f9893 # initialize rs1
li x21, 0x77f9c0be # initialize rs2
rem x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x867cd03f # initialize rs1
li x22, 0xb341ff86 # initialize rs2
rem x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xf345730f # initialize rs1
li x23, 0x06097f8b # initialize rs2
rem x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x5e330e8d # initialize rs1
li x24, 0x525f1ba2 # initialize rs2
rem x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb3690aec # initialize rs1
li x25, 0xeaf40fcf # initialize rs2
rem x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x6687179d # initialize rs1
li x26, 0x3ba9e136 # initialize rs2
rem x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x9dda425e # initialize rs1
li x27, 0x39c3a9bc # initialize rs2
rem x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x58d76a1d # initialize rs1
li x28, 0xa8a4154b # initialize rs2
rem x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x36fa296c # initialize rs1
li x29, 0x470fdd9c # initialize rs2
rem x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7a026832 # initialize rs1
li x30, 0x6560d8ae # initialize rs2
rem x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0486d100 # initialize rs1
li x31, 0xe0fc3117 # initialize rs2
rem x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x25, x1 # perform first operation
rem x15, x14, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x25, x19 # perform first operation
rem x31, x30, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x27, x24 # perform first operation
rem x15, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x25, x17 # perform first operation
rem x17, x20, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x14, x18 # perform first operation
rem x18, x8, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x30, x23 # perform first operation
rem x30, x3, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x3, x9 # perform first operation
rem x27, x10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x3, x19 # perform first operation
rem x2, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x12, x27 # perform first operation
rem x28, x5, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x29, x11 # perform first operation
rem x29, x3, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x13, x14 # perform first operation
rem x14, x30, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x7, x10 # perform first operation
rem x1, x30, x6 # perform second (triggering) operation

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
