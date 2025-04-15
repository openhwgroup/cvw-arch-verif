///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha512sig1l.S
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
li x0, 0x003ee678 # initialize rs1
li x30, 0x25ebd378 # initialize rs2
sha512sig1l x14, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb1d39ab3 # initialize rs1
li x7, 0x3ad144d0 # initialize rs2
sha512sig1l x19, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x47984654 # initialize rs1
li x11, 0x307574fc # initialize rs2
sha512sig1l x16, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2c1c7905 # initialize rs1
li x31, 0x131f62ff # initialize rs2
sha512sig1l x21, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf9a5caaa # initialize rs1
li x18, 0xfaf91994 # initialize rs2
sha512sig1l x26, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa750cffb # initialize rs1
li x3, 0x506c13f9 # initialize rs2
sha512sig1l x6, x5, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x222300d2 # initialize rs1
li x23, 0x8f804c81 # initialize rs2
sha512sig1l x11, x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfe02d701 # initialize rs1
li x27, 0xb5216400 # initialize rs2
sha512sig1l x29, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3486a197 # initialize rs1
li x17, 0xaef3a237 # initialize rs2
sha512sig1l x31, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc8ae7ad9 # initialize rs1
li x5, 0x65bda74d # initialize rs2
sha512sig1l x16, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9eeb246b # initialize rs1
li x2, 0xe44575b9 # initialize rs2
sha512sig1l x14, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3eae5edc # initialize rs1
li x22, 0xa4255f83 # initialize rs2
sha512sig1l x13, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xaa744c08 # initialize rs1
li x24, 0x70c11276 # initialize rs2
sha512sig1l x3, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe3f3729e # initialize rs1
li x16, 0x165f8c80 # initialize rs2
sha512sig1l x27, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe249a2da # initialize rs1
li x3, 0x9f86b661 # initialize rs2
sha512sig1l x15, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa2bb8fdb # initialize rs1
li x24, 0xb845ba52 # initialize rs2
sha512sig1l x16, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa61a0efc # initialize rs1
li x20, 0xa36b3be7 # initialize rs2
sha512sig1l x9, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x05a00b92 # initialize rs1
li x24, 0xdbf33fba # initialize rs2
sha512sig1l x9, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0f44bf84 # initialize rs1
li x15, 0xa82346ae # initialize rs2
sha512sig1l x11, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc8522279 # initialize rs1
li x2, 0x4777d295 # initialize rs2
sha512sig1l x6, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf58cbe46 # initialize rs1
li x19, 0xbd5ff767 # initialize rs2
sha512sig1l x22, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xcc2e59ee # initialize rs1
li x11, 0x29b2f8f7 # initialize rs2
sha512sig1l x13, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9f699635 # initialize rs1
li x19, 0x5c4d4759 # initialize rs2
sha512sig1l x12, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe3bc0ab9 # initialize rs1
li x24, 0x680a94e4 # initialize rs2
sha512sig1l x17, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc553fa2a # initialize rs1
li x21, 0xf0dab223 # initialize rs2
sha512sig1l x11, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x56d3178c # initialize rs1
li x23, 0x17741ac6 # initialize rs2
sha512sig1l x19, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x682e46a2 # initialize rs1
li x21, 0x9aef6716 # initialize rs2
sha512sig1l x22, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x875999cf # initialize rs1
li x14, 0x5defe309 # initialize rs2
sha512sig1l x11, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfb6cffc7 # initialize rs1
li x10, 0xd11fd309 # initialize rs2
sha512sig1l x24, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0daa42e3 # initialize rs1
li x5, 0x94bd14b6 # initialize rs2
sha512sig1l x2, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe0e9f648 # initialize rs1
li x5, 0x093e26c6 # initialize rs2
sha512sig1l x6, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x93e9a15f # initialize rs1
li x12, 0x49fcd6cf # initialize rs2
sha512sig1l x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0xc25011e5 # initialize rs1
li x0, 0x8f82f6a0 # initialize rs2
sha512sig1l x24, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0x0c5b3651 # initialize rs1
li x1, 0xaa9a882e # initialize rs2
sha512sig1l x5, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0xddab14c0 # initialize rs1
li x2, 0xbf87fa3c # initialize rs2
sha512sig1l x14, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x54c5fba9 # initialize rs1
li x3, 0xa2a063ac # initialize rs2
sha512sig1l x29, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xe00c6283 # initialize rs1
li x4, 0x08bd789a # initialize rs2
sha512sig1l x11, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x28fdac76 # initialize rs1
li x5, 0xd47ef3e8 # initialize rs2
sha512sig1l x4, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0xa168832f # initialize rs1
li x6, 0x0e8f9caa # initialize rs2
sha512sig1l x2, x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0xf92022db # initialize rs1
li x7, 0x0549138e # initialize rs2
sha512sig1l x9, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x5, 0xc9fb9d20 # initialize rs1
li x8, 0xdb23eaa9 # initialize rs2
sha512sig1l x3, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x64f8815a # initialize rs1
li x9, 0x7b47b00a # initialize rs2
sha512sig1l x28, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x2dbb4ba2 # initialize rs1
li x10, 0xd01d21be # initialize rs2
sha512sig1l x1, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x651154b6 # initialize rs1
li x11, 0x40e40ad8 # initialize rs2
sha512sig1l x13, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0xf1760562 # initialize rs1
li x12, 0xd701b3e5 # initialize rs2
sha512sig1l x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0xe9ef9213 # initialize rs1
li x13, 0x75f94825 # initialize rs2
sha512sig1l x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0xa7703db9 # initialize rs1
li x14, 0x6ca5b749 # initialize rs2
sha512sig1l x11, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0x6179ca3c # initialize rs1
li x15, 0x784333b9 # initialize rs2
sha512sig1l x21, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x11, 0xb6df63a5 # initialize rs1
li x16, 0xdbd26d22 # initialize rs2
sha512sig1l x9, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x625803fd # initialize rs1
li x17, 0xc8852877 # initialize rs2
sha512sig1l x6, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0xc2a25a2d # initialize rs1
li x18, 0x7596cf99 # initialize rs2
sha512sig1l x22, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0xcf19aad1 # initialize rs1
li x19, 0xc0823404 # initialize rs2
sha512sig1l x15, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xcffc666c # initialize rs1
li x20, 0x2e7f1b49 # initialize rs2
sha512sig1l x10, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x55ed3101 # initialize rs1
li x21, 0x2a31dbe9 # initialize rs2
sha512sig1l x13, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x3708bc02 # initialize rs1
li x22, 0xdcc33c35 # initialize rs2
sha512sig1l x29, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x9c4257b0 # initialize rs1
li x23, 0x5b98f521 # initialize rs2
sha512sig1l x18, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x0119358b # initialize rs1
li x24, 0x23690c32 # initialize rs2
sha512sig1l x31, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0x9148f653 # initialize rs1
li x25, 0x1211d78d # initialize rs2
sha512sig1l x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0xd0559cf6 # initialize rs1
li x26, 0xdbdd566c # initialize rs2
sha512sig1l x6, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x748adc65 # initialize rs1
li x27, 0x98a35099 # initialize rs2
sha512sig1l x19, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0xe6d20398 # initialize rs1
li x28, 0xe9529e9d # initialize rs2
sha512sig1l x17, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0x31c09769 # initialize rs1
li x29, 0x7bae788c # initialize rs2
sha512sig1l x13, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x1afc3fa0 # initialize rs1
li x30, 0x4cbda7fb # initialize rs2
sha512sig1l x14, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0x0712b39e # initialize rs1
li x31, 0xc8f01d0d # initialize rs2
sha512sig1l x17, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xe474d257 # initialize rs1
li x25, 0xbb97463f # initialize rs2
sha512sig1l x0, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0xc7dd018d # initialize rs1
li x14, 0x36fae105 # initialize rs2
sha512sig1l x1, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x293dae1c # initialize rs1
li x5, 0x65ef6a7c # initialize rs2
sha512sig1l x2, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x6e66493f # initialize rs1
li x27, 0xcb38b7ec # initialize rs2
sha512sig1l x3, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x507258e3 # initialize rs1
li x22, 0x23d17972 # initialize rs2
sha512sig1l x4, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0xf8cd10b0 # initialize rs1
li x31, 0x39967204 # initialize rs2
sha512sig1l x5, x26, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xc046abbd # initialize rs1
li x5, 0xfb598320 # initialize rs2
sha512sig1l x6, x1, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x3e7a6ad3 # initialize rs1
li x26, 0x1ee234ea # initialize rs2
sha512sig1l x7, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0xa1922177 # initialize rs1
li x21, 0x6bc7fcfd # initialize rs2
sha512sig1l x8, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0xb4b4b57f # initialize rs1
li x27, 0xb0ac0cd4 # initialize rs2
sha512sig1l x9, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0xc502338e # initialize rs1
li x9, 0xb2f9dd11 # initialize rs2
sha512sig1l x10, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0xef57df03 # initialize rs1
li x22, 0x70ece0e4 # initialize rs2
sha512sig1l x11, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x1a28a259 # initialize rs1
li x12, 0x53cb66c2 # initialize rs2
sha512sig1l x12, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x5e764a75 # initialize rs1
li x21, 0x7f1f3aef # initialize rs2
sha512sig1l x13, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x5103c8c2 # initialize rs1
li x24, 0x61703333 # initialize rs2
sha512sig1l x14, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0x59c6420b # initialize rs1
li x16, 0x45cdf9ce # initialize rs2
sha512sig1l x15, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0xbf2e876b # initialize rs1
li x8, 0xc773b42e # initialize rs2
sha512sig1l x16, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0xe5abd9cb # initialize rs1
li x20, 0xe26b7fb2 # initialize rs2
sha512sig1l x17, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0xddc28171 # initialize rs1
li x20, 0x6639499a # initialize rs2
sha512sig1l x18, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0x84c6671e # initialize rs1
li x17, 0x940657c5 # initialize rs2
sha512sig1l x19, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0xe5a7eae8 # initialize rs1
li x17, 0xb29b0b4c # initialize rs2
sha512sig1l x20, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xa64e0577 # initialize rs1
li x18, 0x1df880a6 # initialize rs2
sha512sig1l x21, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0xee26a12c # initialize rs1
li x29, 0x1350f61b # initialize rs2
sha512sig1l x22, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xd5287f1b # initialize rs1
li x14, 0x45c067a4 # initialize rs2
sha512sig1l x23, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x15, 0x5c59d20d # initialize rs1
li x9, 0x3640e36e # initialize rs2
sha512sig1l x24, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x22, 0xfab9c105 # initialize rs1
li x27, 0x8889742f # initialize rs2
sha512sig1l x25, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0xdacb206c # initialize rs1
li x15, 0x8a33bff0 # initialize rs2
sha512sig1l x26, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0x6a4062b6 # initialize rs1
li x11, 0x8c30ba1f # initialize rs2
sha512sig1l x27, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0x25a65bc7 # initialize rs1
li x6, 0xd91d384b # initialize rs2
sha512sig1l x28, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x302b12e9 # initialize rs1
li x28, 0x58b03131 # initialize rs2
sha512sig1l x29, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0xe62dfd6b # initialize rs1
li x24, 0xd8b00b35 # initialize rs2
sha512sig1l x30, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x65c1c074 # initialize rs1
li x1, 0xa7cdc7a4 # initialize rs2
sha512sig1l x31, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
li x29, 0x2eb5017b # initialize rs2
sha512sig1l x16, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x00000001 # initialize rs1
li x15, 0x8f74e809 # initialize rs2
sha512sig1l x19, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x00000002 # initialize rs1
li x16, 0x32642ae9 # initialize rs2
sha512sig1l x1, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x7, 0x80000000 # initialize rs1
li x27, 0xc622b1b6 # initialize rs2
sha512sig1l x13, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rs1
li x16, 0xbc5878b7 # initialize rs2
sha512sig1l x26, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x21, 0x4a85b26c # initialize rs2
sha512sig1l x10, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rs1
li x6, 0xa4c0e51c # initialize rs2
sha512sig1l x14, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0xffffffff # initialize rs1
li x24, 0x0f1b9a40 # initialize rs2
sha512sig1l x10, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
li x10, 0x4dc1a506 # initialize rs2
sha512sig1l x30, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x27, 0x6e8cf0fb # initialize rs2
sha512sig1l x3, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
li x24, 0xa2a9634c # initialize rs2
sha512sig1l x27, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x14, 0x87aedf63 # initialize rs2
sha512sig1l x1, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0x6817b962 # initialize rs1
li x28, 0x00000000 # initialize rs2
sha512sig1l x7, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x900b66f9 # initialize rs1
li x9, 0x00000001 # initialize rs2
sha512sig1l x20, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x6f4121b5 # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig1l x21, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x31, 0x2c08e96f # initialize rs1
li x21, 0x80000000 # initialize rs2
sha512sig1l x2, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x23, 0x95a01cb8 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig1l x10, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x21, 0xfa79dcbf # initialize rs1
li x16, 0x7fffffff # initialize rs2
sha512sig1l x19, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x20, 0xd433cc9f # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sha512sig1l x19, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0x12e0f74a # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sig1l x21, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0xacea41a5 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sig1l x31, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x21, 0x23576ee8 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sha512sig1l x20, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0x539c5e51 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
sha512sig1l x26, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0x43d89525 # initialize rs1
li x17, 0x55555555 # initialize rs2
sha512sig1l x15, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
sha512sig1l x19, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x00000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sig1l x27, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x00000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
sha512sig1l x25, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x31, 0x00000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
sha512sig1l x27, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x2, 0x00000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sig1l x31, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x15, 0x00000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sha512sig1l x1, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x14, 0x00000000 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sig1l x16, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x00000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sig1l x12, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig1l x23, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x9, 0x00000000 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sha512sig1l x18, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x25, 0x00000000 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sha512sig1l x29, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x16, 0x00000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
sha512sig1l x2, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sig1l x27, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x19, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig1l x3, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x00000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sig1l x20, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x15, 0x00000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
sha512sig1l x2, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x11, 0x00000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sig1l x19, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x22, 0x00000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sha512sig1l x10, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x5, 0x00000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sig1l x24, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x2, 0x00000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sig1l x20, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x15, 0x00000001 # initialize rs1
li x25, 0xfffffffe # initialize rs2
sha512sig1l x5, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x13, 0x00000001 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sig1l x14, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x28, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
sha512sig1l x18, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig1l x13, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x13, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig1l x29, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x00000002 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sig1l x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
sha512sig1l x31, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x13, 0x00000002 # initialize rs1
li x26, 0x80000000 # initialize rs2
sha512sig1l x20, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x5, 0x00000002 # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig1l x18, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig1l x15, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0x00000002 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sha512sig1l x29, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x20, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
sha512sig1l x19, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x24, 0x00000002 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sig1l x3, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sha512sig1l x14, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x23, 0x00000002 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig1l x25, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x14, 0x00000002 # initialize rs1
li x28, 0x55555555 # initialize rs2
sha512sig1l x6, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x3, 0x80000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
sha512sig1l x18, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x25, 0x80000000 # initialize rs1
li x29, 0x00000001 # initialize rs2
sha512sig1l x28, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sig1l x2, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x23, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sig1l x2, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x11, 0x80000000 # initialize rs1
li x13, 0x80000001 # initialize rs2
sha512sig1l x3, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x29, 0x80000000 # initialize rs1
li x5, 0x7fffffff # initialize rs2
sha512sig1l x21, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sha512sig1l x21, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x1, 0x80000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig1l x27, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sig1l x7, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x21, 0x80000000 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sig1l x5, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x17, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig1l x23, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x29, 0x80000000 # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sig1l x27, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x2, 0x80000001 # initialize rs1
li x29, 0x00000000 # initialize rs2
sha512sig1l x14, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x20, 0x80000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
sha512sig1l x19, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x13, 0x80000001 # initialize rs1
li x7, 0x00000002 # initialize rs2
sha512sig1l x31, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sig1l x27, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sig1l x31, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x25, 0x80000001 # initialize rs1
li x8, 0x7fffffff # initialize rs2
sha512sig1l x12, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x25, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1l x10, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x15, 0x80000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
sha512sig1l x3, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x80000001 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sha512sig1l x15, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig1l x7, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0x80000001 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig1l x30, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x80000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
sha512sig1l x21, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x29, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig1l x3, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x17, 0x7fffffff # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sig1l x30, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x18, 0x7fffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sig1l x2, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x15, 0x7fffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
sha512sig1l x17, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x12, 0x7fffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sig1l x27, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
sha512sig1l x30, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sha512sig1l x23, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x22, 0x7fffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sig1l x25, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x25, 0x7fffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
sha512sig1l x13, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x6, 0x7fffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig1l x25, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x2, 0x7fffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sha512sig1l x29, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x15, 0x7fffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
sha512sig1l x9, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x18, 0x7ffffffe # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sig1l x17, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig1l x26, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x7, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
sha512sig1l x26, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x28, 0x7ffffffe # initialize rs1
li x26, 0x80000000 # initialize rs2
sha512sig1l x3, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x24, 0x7ffffffe # initialize rs1
li x7, 0x80000001 # initialize rs2
sha512sig1l x28, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x17, 0x7ffffffe # initialize rs1
li x23, 0x7fffffff # initialize rs2
sha512sig1l x5, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sha512sig1l x7, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig1l x24, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sig1l x15, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x8, 0x7ffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig1l x12, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x7ffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
sha512sig1l x7, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x15, 0x7ffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sig1l x20, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
sha512sig1l x2, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
sha512sig1l x27, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x10, 0xffffffff # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sig1l x1, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x8, 0xffffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
sha512sig1l x13, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x29, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
sha512sig1l x17, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
sha512sig1l x6, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sig1l x9, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
sha512sig1l x29, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0xffffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
sha512sig1l x20, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x6, 0xffffffff # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig1l x25, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0xffffffff # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
sha512sig1l x10, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x19, 0xffffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sig1l x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0xfffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
sha512sig1l x20, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0xfffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
sha512sig1l x14, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0xfffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sig1l x13, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x31, 0xfffffffe # initialize rs1
li x20, 0x80000000 # initialize rs2
sha512sig1l x23, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x18, 0xfffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
sha512sig1l x5, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
sha512sig1l x23, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x1, 0xfffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sha512sig1l x19, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
sha512sig1l x29, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sig1l x28, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x10, 0xfffffffe # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig1l x24, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x28, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sha512sig1l x7, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x9, 0xfffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
sha512sig1l x31, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x17, 0x5bbc8872 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig1l x12, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x9, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig1l x17, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x31, 0x5bbc8872 # initialize rs1
li x29, 0x00000002 # initialize rs2
sha512sig1l x14, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x80000000 # initialize rs2
sha512sig1l x20, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x13, 0x5bbc8872 # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sig1l x12, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x13, 0x5bbc8872 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sig1l x11, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x16, 0x5bbc8872 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sha512sig1l x6, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x17, 0x5bbc8872 # initialize rs1
li x22, 0xffffffff # initialize rs2
sha512sig1l x27, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x18, 0x5bbc8872 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig1l x13, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sha512sig1l x14, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x18, 0x5bbc8872 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sha512sig1l x12, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x16, 0x5bbc8872 # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sig1l x18, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaa # initialize rs1
li x18, 0x00000000 # initialize rs2
sha512sig1l x3, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x18, 0xaaaaaaaa # initialize rs1
li x7, 0x00000001 # initialize rs2
sha512sig1l x29, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sig1l x9, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0xaaaaaaaa # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1l x21, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x26, 0xaaaaaaaa # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sig1l x22, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x23, 0xaaaaaaaa # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig1l x25, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sha512sig1l x26, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x3, 0xffffffff # initialize rs2
sha512sig1l x27, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x18, 0xaaaaaaaa # initialize rs1
li x24, 0xfffffffe # initialize rs2
sha512sig1l x9, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x6, 0xaaaaaaaa # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sig1l x3, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x22, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sha512sig1l x20, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x18, 0xaaaaaaaa # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig1l x25, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x2, 0x55555555 # initialize rs1
li x3, 0x00000000 # initialize rs2
sha512sig1l x18, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x25, 0x00000001 # initialize rs2
sha512sig1l x6, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x16, 0x00000002 # initialize rs2
sha512sig1l x20, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x19, 0x55555555 # initialize rs1
li x30, 0x80000000 # initialize rs2
sha512sig1l x21, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x28, 0x55555555 # initialize rs1
li x21, 0x80000001 # initialize rs2
sha512sig1l x1, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x55555555 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sha512sig1l x24, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x55555555 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sig1l x8, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x3, 0x55555555 # initialize rs1
li x1, 0xffffffff # initialize rs2
sha512sig1l x30, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x28, 0x55555555 # initialize rs1
li x6, 0xfffffffe # initialize rs2
sha512sig1l x3, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x21, 0x55555555 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sig1l x23, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x6, 0x55555555 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sha512sig1l x23, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sig1l x16, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x524c9740 # initialize rs1
li x0, 0xdfbe1d2d # initialize rs2
sha512sig1l x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x984f7ccc # initialize rs1
li x1, 0x9b05b151 # initialize rs2
sha512sig1l x18, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc046e552 # initialize rs1
li x2, 0x5bd610f2 # initialize rs2
sha512sig1l x3, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xfe004e1c # initialize rs1
li x3, 0x3223a0f0 # initialize rs2
sha512sig1l x6, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x58e36a12 # initialize rs1
li x4, 0xd22fe2c9 # initialize rs2
sha512sig1l x12, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x83d222f3 # initialize rs1
li x5, 0xa6d73607 # initialize rs2
sha512sig1l x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x64fa94e6 # initialize rs1
li x6, 0xe14ef39d # initialize rs2
sha512sig1l x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd7a5be92 # initialize rs1
li x7, 0x9e139cfa # initialize rs2
sha512sig1l x6, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6c1e4fb4 # initialize rs1
li x8, 0x5e320fdb # initialize rs2
sha512sig1l x24, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfa04b019 # initialize rs1
li x9, 0xd9d3da78 # initialize rs2
sha512sig1l x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa6c75eec # initialize rs1
li x10, 0x107357ee # initialize rs2
sha512sig1l x5, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x85ce8d42 # initialize rs1
li x11, 0x6b9508c9 # initialize rs2
sha512sig1l x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x711a9649 # initialize rs1
li x12, 0x86846d28 # initialize rs2
sha512sig1l x11, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xb4dcc0c7 # initialize rs1
li x13, 0xd14ddc66 # initialize rs2
sha512sig1l x9, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9f402c29 # initialize rs1
li x14, 0x6e6570d5 # initialize rs2
sha512sig1l x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x85abbeb8 # initialize rs1
li x15, 0x26e58648 # initialize rs2
sha512sig1l x28, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xbce8778b # initialize rs1
li x16, 0xbbadffc1 # initialize rs2
sha512sig1l x19, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xf77c7f54 # initialize rs1
li x17, 0xd79f203c # initialize rs2
sha512sig1l x2, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa4391e3f # initialize rs1
li x18, 0xfa2e1a0d # initialize rs2
sha512sig1l x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x366ff17b # initialize rs1
li x19, 0x41a6e590 # initialize rs2
sha512sig1l x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc9a61f01 # initialize rs1
li x20, 0x2d3265c6 # initialize rs2
sha512sig1l x14, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe3dff881 # initialize rs1
li x21, 0x7d7c4132 # initialize rs2
sha512sig1l x9, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xbadb7a83 # initialize rs1
li x22, 0x636e876d # initialize rs2
sha512sig1l x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xbdc3f62a # initialize rs1
li x23, 0xb27f02ae # initialize rs2
sha512sig1l x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x2f4ca176 # initialize rs1
li x24, 0x260b1ef4 # initialize rs2
sha512sig1l x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xbf569e97 # initialize rs1
li x25, 0x075e2325 # initialize rs2
sha512sig1l x24, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x72ce7291 # initialize rs1
li x26, 0x6c94e82d # initialize rs2
sha512sig1l x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x07190bed # initialize rs1
li x27, 0x6578eaf4 # initialize rs2
sha512sig1l x23, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x85ae8bcc # initialize rs1
li x28, 0x74a1640a # initialize rs2
sha512sig1l x9, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x511539c7 # initialize rs1
li x29, 0x33be9cfc # initialize rs2
sha512sig1l x28, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2dfa959a # initialize rs1
li x30, 0x0461c44e # initialize rs2
sha512sig1l x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6bb3adb0 # initialize rs1
li x31, 0xf3199b4b # initialize rs2
sha512sig1l x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x00794710 # initialize rs1
li x28, 0x01aed80d # initialize rs2
sha512sig1l x0, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x57810d24 # initialize rs1
li x14, 0x69df8555 # initialize rs2
sha512sig1l x1, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3dc27b75 # initialize rs1
li x14, 0xb86f93bf # initialize rs2
sha512sig1l x2, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x34d8c1a3 # initialize rs1
li x20, 0xefa3c23f # initialize rs2
sha512sig1l x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd9b4d4e4 # initialize rs1
li x10, 0x8ae944cb # initialize rs2
sha512sig1l x4, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7715b9d9 # initialize rs1
li x4, 0x6b5e1241 # initialize rs2
sha512sig1l x5, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2a9d4051 # initialize rs1
li x13, 0xbf09b66c # initialize rs2
sha512sig1l x6, x6, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3faf50cc # initialize rs1
li x28, 0x6025cc78 # initialize rs2
sha512sig1l x7, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xaefd0e46 # initialize rs1
li x18, 0xd2cb3701 # initialize rs2
sha512sig1l x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc0b9eaf6 # initialize rs1
li x10, 0x5b265b5b # initialize rs2
sha512sig1l x9, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x08c8b26c # initialize rs1
li x8, 0x723937aa # initialize rs2
sha512sig1l x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xec3311ac # initialize rs1
li x5, 0xa268028f # initialize rs2
sha512sig1l x11, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6ed24a18 # initialize rs1
li x28, 0x9af520ed # initialize rs2
sha512sig1l x12, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb23e2384 # initialize rs1
li x1, 0xc1756a26 # initialize rs2
sha512sig1l x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x74628b3c # initialize rs1
li x30, 0xbe962caa # initialize rs2
sha512sig1l x14, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0246550e # initialize rs1
li x13, 0xfd4fa4e3 # initialize rs2
sha512sig1l x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0dff1b4c # initialize rs1
li x21, 0x5359d423 # initialize rs2
sha512sig1l x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x27f44e08 # initialize rs1
li x11, 0xd144496b # initialize rs2
sha512sig1l x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x36ee9313 # initialize rs1
li x13, 0xefb34d56 # initialize rs2
sha512sig1l x18, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7f609cb3 # initialize rs1
li x9, 0x46480684 # initialize rs2
sha512sig1l x19, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd39a98e9 # initialize rs1
li x20, 0xd319baa6 # initialize rs2
sha512sig1l x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xcb5eac60 # initialize rs1
li x29, 0x9d4efe2b # initialize rs2
sha512sig1l x21, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x67993379 # initialize rs1
li x17, 0x21ffb782 # initialize rs2
sha512sig1l x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc1372c8e # initialize rs1
li x6, 0xb8df7b97 # initialize rs2
sha512sig1l x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe41bff18 # initialize rs1
li x1, 0x9a9f3f0d # initialize rs2
sha512sig1l x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x115b2c77 # initialize rs1
li x1, 0x30f10f57 # initialize rs2
sha512sig1l x25, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4662e63b # initialize rs1
li x6, 0xefa557c3 # initialize rs2
sha512sig1l x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x74848a68 # initialize rs1
li x11, 0xb7c7a8ac # initialize rs2
sha512sig1l x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd756f58f # initialize rs1
li x14, 0x5edb649d # initialize rs2
sha512sig1l x28, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc7c621ad # initialize rs1
li x5, 0xfd6548f7 # initialize rs2
sha512sig1l x29, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7e7c8e79 # initialize rs1
li x12, 0xa9de2eba # initialize rs2
sha512sig1l x30, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4d82fd3f # initialize rs1
li x27, 0x208ef902 # initialize rs2
sha512sig1l x31, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x18, 0xce54c45c # initialize rs1
li x0, 0x549a02a1 # initialize rs2
sha512sig1l x0, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0xe3f046b9 # initialize rs1
li x1, 0xd270f3a3 # initialize rs2
sha512sig1l x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x28, 0xcc7e46a2 # initialize rs1
li x2, 0x10a48b33 # initialize rs2
sha512sig1l x2, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x28, 0x476db184 # initialize rs1
li x3, 0x1e5985da # initialize rs2
sha512sig1l x3, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x8572c465 # initialize rs1
li x4, 0xc52f6e08 # initialize rs2
sha512sig1l x4, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
li x10, 0x7a57675a # initialize rs1
li x5, 0x4e930ad8 # initialize rs2
sha512sig1l x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x2efe8c55 # initialize rs1
li x6, 0x548e7ae9 # initialize rs2
sha512sig1l x6, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xac110754 # initialize rs1
li x7, 0x71fcec81 # initialize rs2
sha512sig1l x7, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0xa5f71185 # initialize rs1
li x8, 0xfb1fd67b # initialize rs2
sha512sig1l x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0x969a9e25 # initialize rs1
li x9, 0x7d22fdbb # initialize rs2
sha512sig1l x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x27, 0x4f975af2 # initialize rs1
li x10, 0x5f4824f1 # initialize rs2
sha512sig1l x10, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0x4ba8cc22 # initialize rs1
li x11, 0xe9d8a90d # initialize rs2
sha512sig1l x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0x203adb48 # initialize rs1
li x12, 0x71bab9e4 # initialize rs2
sha512sig1l x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0x189a39e6 # initialize rs1
li x13, 0x16bec94e # initialize rs2
sha512sig1l x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0xb491ea45 # initialize rs1
li x14, 0x78e06691 # initialize rs2
sha512sig1l x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0x922777db # initialize rs1
li x15, 0x05b619cd # initialize rs2
sha512sig1l x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x8, 0x5dbd2d75 # initialize rs1
li x16, 0x12f273f1 # initialize rs2
sha512sig1l x16, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0x9955ab0a # initialize rs1
li x17, 0xcad33e83 # initialize rs2
sha512sig1l x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x12, 0x0f8bfe84 # initialize rs1
li x18, 0x048c1948 # initialize rs2
sha512sig1l x18, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0x3787124f # initialize rs1
li x19, 0x2688c891 # initialize rs2
sha512sig1l x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0xd7cc9338 # initialize rs1
li x20, 0x60249f9c # initialize rs2
sha512sig1l x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0xab2b6881 # initialize rs1
li x21, 0xb0ef7213 # initialize rs2
sha512sig1l x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x9, 0x2748aaa3 # initialize rs1
li x22, 0xb57c431d # initialize rs2
sha512sig1l x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x22, 0xf93b56da # initialize rs1
li x23, 0x03339b83 # initialize rs2
sha512sig1l x23, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0x6d6e2890 # initialize rs1
li x24, 0x97943d64 # initialize rs2
sha512sig1l x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0xa3ae8800 # initialize rs1
li x25, 0xd74d6a4d # initialize rs2
sha512sig1l x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x7a77c2fa # initialize rs1
li x26, 0x6339f381 # initialize rs2
sha512sig1l x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x15, 0x78dd187a # initialize rs1
li x27, 0x36a98bd1 # initialize rs2
sha512sig1l x27, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x1, 0x41ccb4f0 # initialize rs1
li x28, 0x7f6db7ef # initialize rs2
sha512sig1l x28, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0x55627c65 # initialize rs1
li x29, 0xe78f8e67 # initialize rs2
sha512sig1l x29, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xb47b522e # initialize rs1
li x30, 0x6727fed2 # initialize rs2
sha512sig1l x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x30, 0xc31bef23 # initialize rs1
li x31, 0x64869319 # initialize rs2
sha512sig1l x31, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd493ace4 # initialize rs1
li x0, 0x4f4f1fe7 # initialize rs2
sha512sig1l x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xbc6d3bf0 # initialize rs1
li x1, 0x1d8c1f3b # initialize rs2
sha512sig1l x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x05e7990d # initialize rs1
li x2, 0x53e43bac # initialize rs2
sha512sig1l x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa9f25c71 # initialize rs1
li x3, 0x7452a278 # initialize rs2
sha512sig1l x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x873f24d2 # initialize rs1
li x4, 0x651885af # initialize rs2
sha512sig1l x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1eb6752c # initialize rs1
li x5, 0x5298d27c # initialize rs2
sha512sig1l x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84897e67 # initialize rs1
li x6, 0x5a6b7b44 # initialize rs2
sha512sig1l x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x186a7168 # initialize rs1
li x7, 0x57501c33 # initialize rs2
sha512sig1l x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcce2a6a1 # initialize rs1
li x8, 0x9aa6888f # initialize rs2
sha512sig1l x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x65f2634a # initialize rs1
li x9, 0x702a1599 # initialize rs2
sha512sig1l x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4d9f42da # initialize rs1
li x10, 0x085d25c3 # initialize rs2
sha512sig1l x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x62e54b88 # initialize rs1
li x11, 0x23f3d7c7 # initialize rs2
sha512sig1l x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xadf199bc # initialize rs1
li x12, 0xe9fdcf76 # initialize rs2
sha512sig1l x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x161db494 # initialize rs1
li x13, 0x95fde202 # initialize rs2
sha512sig1l x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa5a3e70c # initialize rs1
li x14, 0xb4e15954 # initialize rs2
sha512sig1l x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7a2ca0d2 # initialize rs1
li x15, 0x51094e92 # initialize rs2
sha512sig1l x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xb35ab70f # initialize rs1
li x16, 0x4371de11 # initialize rs2
sha512sig1l x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7e58b308 # initialize rs1
li x17, 0x85f10ae6 # initialize rs2
sha512sig1l x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2fad17ef # initialize rs1
li x18, 0x56c81c28 # initialize rs2
sha512sig1l x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc03cf2c1 # initialize rs1
li x19, 0x45c79fae # initialize rs2
sha512sig1l x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6626a01d # initialize rs1
li x20, 0x61c8bbe5 # initialize rs2
sha512sig1l x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x55b33b28 # initialize rs1
li x21, 0x6062a04a # initialize rs2
sha512sig1l x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x579ea50a # initialize rs1
li x22, 0x2e29ad3b # initialize rs2
sha512sig1l x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x78543675 # initialize rs1
li x23, 0x8d5bc2ac # initialize rs2
sha512sig1l x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe106da2d # initialize rs1
li x24, 0x65c9bfcc # initialize rs2
sha512sig1l x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x842f480a # initialize rs1
li x25, 0xbbce14d1 # initialize rs2
sha512sig1l x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1d0b9893 # initialize rs1
li x26, 0xd954c05d # initialize rs2
sha512sig1l x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4182524f # initialize rs1
li x27, 0xcb4fa687 # initialize rs2
sha512sig1l x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xebecaeee # initialize rs1
li x28, 0xd92d54df # initialize rs2
sha512sig1l x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x46159ecc # initialize rs1
li x29, 0x16a50737 # initialize rs2
sha512sig1l x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa8fc2361 # initialize rs1
li x30, 0xbba5dddb # initialize rs2
sha512sig1l x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7d8ab73d # initialize rs1
li x31, 0x0d4c0121 # initialize rs2
sha512sig1l x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x11, x16 # perform first operation
sha512sig1l x29, x2, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x18, x24 # perform first operation
sha512sig1l x10, x6, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x10, x31 # perform first operation
sha512sig1l x16, x5, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x24, x22 # perform first operation
sha512sig1l x19, x2, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x23, x15 # perform first operation
sha512sig1l x31, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x3, x31 # perform first operation
sha512sig1l x18, x28, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x31, x8 # perform first operation
sha512sig1l x11, x24, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x22, x26 # perform first operation
sha512sig1l x31, x2, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x21, x2 # perform first operation
sha512sig1l x30, x1, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x15, x5 # perform first operation
sha512sig1l x15, x21, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x18, x21 # perform first operation
sha512sig1l x21, x26, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x9, x10 # perform first operation
sha512sig1l x26, x5, x30 # perform second (triggering) operation

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
