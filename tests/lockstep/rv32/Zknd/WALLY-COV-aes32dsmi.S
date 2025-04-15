///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknd/WALLY-COV-aes32dsmi.S
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
li x0, 0x047de8b3 # initialize rs1
li x17, 0x96e751a9 # initialize rs2
aes32dsmi x8, x0, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x3f0122d2 # initialize rs1
li x22, 0xf4ff758f # initialize rs2
aes32dsmi x21, x1, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x816cb254 # initialize rs1
li x9, 0x137185b9 # initialize rs2
aes32dsmi x12, x2, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9c9da0b1 # initialize rs1
li x28, 0x54fdcbf8 # initialize rs2
aes32dsmi x8, x3, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5c1ee76c # initialize rs1
li x10, 0xdf27f7e9 # initialize rs2
aes32dsmi x7, x4, x10, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x258a1d77 # initialize rs1
li x28, 0x600fc35d # initialize rs2
aes32dsmi x8, x5, x28, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6a345b76 # initialize rs1
li x5, 0x7c45f009 # initialize rs2
aes32dsmi x25, x6, x5, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x354abde0 # initialize rs1
li x13, 0x4a080e71 # initialize rs2
aes32dsmi x31, x7, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6f906d23 # initialize rs1
li x15, 0xa97d1552 # initialize rs2
aes32dsmi x22, x8, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x5af4b33b # initialize rs1
li x29, 0xc9e1bb96 # initialize rs2
aes32dsmi x10, x9, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe4c5ea9b # initialize rs1
li x16, 0xc6137b08 # initialize rs2
aes32dsmi x3, x10, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x41b816aa # initialize rs1
li x1, 0x4a4767c6 # initialize rs2
aes32dsmi x29, x11, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xb2f3978d # initialize rs1
li x21, 0x7f0439ef # initialize rs2
aes32dsmi x23, x12, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x9c36a993 # initialize rs1
li x15, 0xef8ff129 # initialize rs2
aes32dsmi x2, x13, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x331772b6 # initialize rs1
li x12, 0x4ef277d4 # initialize rs2
aes32dsmi x17, x14, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa40192d3 # initialize rs1
li x31, 0x3ab050b6 # initialize rs2
aes32dsmi x25, x15, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x829fdcac # initialize rs1
li x23, 0x84e0eba5 # initialize rs2
aes32dsmi x26, x16, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2e741e61 # initialize rs1
li x25, 0x361b779b # initialize rs2
aes32dsmi x21, x17, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0d39a324 # initialize rs1
li x8, 0xfb3e1038 # initialize rs2
aes32dsmi x13, x18, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa8221ec5 # initialize rs1
li x10, 0x9b8db60e # initialize rs2
aes32dsmi x17, x19, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcf3ff535 # initialize rs1
li x18, 0xc39720ac # initialize rs2
aes32dsmi x15, x20, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x81790e1c # initialize rs1
li x25, 0x40898932 # initialize rs2
aes32dsmi x6, x21, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x44688374 # initialize rs1
li x6, 0x4aedee70 # initialize rs2
aes32dsmi x11, x22, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe4bc1575 # initialize rs1
li x6, 0xf2bb508f # initialize rs2
aes32dsmi x2, x23, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1c76004f # initialize rs1
li x10, 0x7af2eccf # initialize rs2
aes32dsmi x23, x24, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf77a1600 # initialize rs1
li x2, 0xf2a7caab # initialize rs2
aes32dsmi x23, x25, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x881b76dc # initialize rs1
li x25, 0xfad7e331 # initialize rs2
aes32dsmi x8, x26, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd53f0922 # initialize rs1
li x17, 0x3dfe28a9 # initialize rs2
aes32dsmi x24, x27, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5b605182 # initialize rs1
li x29, 0xaaba2f42 # initialize rs2
aes32dsmi x9, x28, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x40f81a4a # initialize rs1
li x11, 0x67f2d60c # initialize rs2
aes32dsmi x5, x29, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x4291b0a3 # initialize rs1
li x7, 0xc2b53880 # initialize rs2
aes32dsmi x11, x30, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9f93a32a # initialize rs1
li x25, 0x09007871 # initialize rs2
aes32dsmi x12, x31, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x29, 0xc300cda6 # initialize rs1
li x0, 0x682b7d78 # initialize rs2
aes32dsmi x20, x29, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0x981c5877 # initialize rs1
li x1, 0xac95cca6 # initialize rs2
aes32dsmi x11, x6, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0x884386cf # initialize rs1
li x2, 0x7ce9297e # initialize rs2
aes32dsmi x22, x10, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0xf6e71a04 # initialize rs1
li x3, 0x9032af0e # initialize rs2
aes32dsmi x14, x11, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x434cef07 # initialize rs1
li x4, 0x729a8c02 # initialize rs2
aes32dsmi x11, x25, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x3d9c251b # initialize rs1
li x5, 0x9c633391 # initialize rs2
aes32dsmi x31, x28, x5, 1 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x29709959 # initialize rs1
li x6, 0x9a466644 # initialize rs2
aes32dsmi x30, x17, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xf6add724 # initialize rs1
li x7, 0x14cef6a1 # initialize rs2
aes32dsmi x25, x14, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x136a75d1 # initialize rs1
li x8, 0xc06a5b21 # initialize rs2
aes32dsmi x28, x12, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x8, 0x20b61245 # initialize rs1
li x9, 0x5a05d4f0 # initialize rs2
aes32dsmi x18, x8, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x86deb63b # initialize rs1
li x10, 0xf1977f60 # initialize rs2
aes32dsmi x9, x14, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0x0711d743 # initialize rs1
li x11, 0x4c072f22 # initialize rs2
aes32dsmi x26, x16, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0x3df67e46 # initialize rs1
li x12, 0x592579b2 # initialize rs2
aes32dsmi x11, x17, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xef54505b # initialize rs1
li x13, 0x9fdc5bf9 # initialize rs2
aes32dsmi x2, x29, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0xc3dc7bc1 # initialize rs1
li x14, 0x082f5f2b # initialize rs2
aes32dsmi x5, x28, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x15fcfb70 # initialize rs1
li x15, 0x95203ff7 # initialize rs2
aes32dsmi x10, x18, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0x4d1897fc # initialize rs1
li x16, 0xe6dc28b2 # initialize rs2
aes32dsmi x11, x30, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0x43a10efc # initialize rs1
li x17, 0xe5534c47 # initialize rs2
aes32dsmi x8, x20, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0xa189cfce # initialize rs1
li x18, 0x520925de # initialize rs2
aes32dsmi x10, x14, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x2c826cf2 # initialize rs1
li x19, 0xac0eb7d4 # initialize rs2
aes32dsmi x5, x29, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0xf8e0d438 # initialize rs1
li x20, 0xf2af088c # initialize rs2
aes32dsmi x11, x22, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0x54567a2f # initialize rs1
li x21, 0x1f4bb150 # initialize rs2
aes32dsmi x13, x22, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x64902219 # initialize rs1
li x22, 0xe75aa602 # initialize rs2
aes32dsmi x18, x27, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x27200b7b # initialize rs1
li x23, 0xec3b7b59 # initialize rs2
aes32dsmi x19, x27, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0xaf5fa32c # initialize rs1
li x24, 0x9403e92e # initialize rs2
aes32dsmi x7, x10, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x12, 0xe0171392 # initialize rs1
li x25, 0x97276bf4 # initialize rs2
aes32dsmi x29, x12, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x7, 0x07134589 # initialize rs1
li x26, 0x125ad2f5 # initialize rs2
aes32dsmi x5, x7, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0xedd38189 # initialize rs1
li x27, 0xd870b87c # initialize rs2
aes32dsmi x1, x5, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0xa8246723 # initialize rs1
li x28, 0x88556985 # initialize rs2
aes32dsmi x2, x18, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0xa72286d8 # initialize rs1
li x29, 0x640250fd # initialize rs2
aes32dsmi x13, x18, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x17, 0xd4bb14db # initialize rs1
li x30, 0x4b95b970 # initialize rs2
aes32dsmi x27, x17, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0xc5963ccd # initialize rs1
li x31, 0xa686cd56 # initialize rs2
aes32dsmi x1, x16, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x425889b1 # initialize rs1
li x29, 0xfae287c0 # initialize rs2
aes32dsmi x0, x21, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x6cf5b6fd # initialize rs1
li x9, 0x0501548b # initialize rs2
aes32dsmi x1, x25, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x6f3f1e33 # initialize rs1
li x5, 0x2ba1b7be # initialize rs2
aes32dsmi x2, x7, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xffdd6e7c # initialize rs1
li x5, 0xb828703f # initialize rs2
aes32dsmi x3, x17, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xd0d29230 # initialize rs1
li x2, 0xb837c8c7 # initialize rs2
aes32dsmi x4, x22, x2, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x74362361 # initialize rs1
li x23, 0x231fc9f8 # initialize rs2
aes32dsmi x5, x16, x23, 1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x13e69f38 # initialize rs1
li x20, 0xc0ef28d5 # initialize rs2
aes32dsmi x6, x30, x20, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x02f92705 # initialize rs1
li x31, 0xe53e5f11 # initialize rs2
aes32dsmi x7, x23, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x3, 0x19a6d86a # initialize rs1
li x23, 0x99a273c5 # initialize rs2
aes32dsmi x8, x3, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0x03b9d784 # initialize rs1
li x14, 0xcfbcdb44 # initialize rs2
aes32dsmi x9, x28, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x62580caa # initialize rs1
li x11, 0xa6da40ad # initialize rs2
aes32dsmi x10, x1, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0x2eda9a7e # initialize rs1
li x19, 0x96df406a # initialize rs2
aes32dsmi x11, x15, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x6e0bde8b # initialize rs1
li x19, 0xc80198ed # initialize rs2
aes32dsmi x12, x11, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x21795899 # initialize rs1
li x11, 0x15ea8350 # initialize rs2
aes32dsmi x13, x28, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x32dfc2cf # initialize rs1
li x10, 0x5378d88d # initialize rs2
aes32dsmi x14, x27, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0xe618ee77 # initialize rs1
li x9, 0x81e109e9 # initialize rs2
aes32dsmi x15, x28, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x25, 0x2ca50b23 # initialize rs1
li x5, 0x3b3b02f1 # initialize rs2
aes32dsmi x16, x25, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0xefa99482 # initialize rs1
li x13, 0x86fa012f # initialize rs2
aes32dsmi x17, x9, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0xf04d2eef # initialize rs1
li x18, 0x32aefeb7 # initialize rs2
aes32dsmi x18, x15, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x16bc3cbb # initialize rs1
li x24, 0x744b2f0d # initialize rs2
aes32dsmi x19, x14, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x212fb8b9 # initialize rs1
li x30, 0x96954e7c # initialize rs2
aes32dsmi x20, x17, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0x27aa340b # initialize rs1
li x24, 0x826dcd95 # initialize rs2
aes32dsmi x21, x19, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x24, 0xd2d81e69 # initialize rs1
li x9, 0x6ba518a8 # initialize rs2
aes32dsmi x22, x24, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x2fb0494e # initialize rs1
li x26, 0x1be0f380 # initialize rs2
aes32dsmi x23, x11, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x150ec2f9 # initialize rs1
li x12, 0xb6ce4d6b # initialize rs2
aes32dsmi x24, x19, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x23, 0xa1be1562 # initialize rs1
li x8, 0x1b9b2900 # initialize rs2
aes32dsmi x25, x23, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x25, 0x653f74d6 # initialize rs1
li x31, 0x7f2945b6 # initialize rs2
aes32dsmi x26, x25, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x062addc3 # initialize rs1
li x19, 0xd9fed899 # initialize rs2
aes32dsmi x27, x7, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0x492f0489 # initialize rs1
li x14, 0x980a1c8d # initialize rs2
aes32dsmi x28, x25, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0xa4b7b0f7 # initialize rs1
li x1, 0xead60b73 # initialize rs2
aes32dsmi x29, x30, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0xe54ed587 # initialize rs1
li x15, 0xc73d62ed # initialize rs2
aes32dsmi x30, x10, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0xac4cc029 # initialize rs1
li x22, 0xaf47ab72 # initialize rs2
aes32dsmi x31, x10, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x00000000 # initialize rs1
li x1, 0x772354a7 # initialize rs2
aes32dsmi x6, x30, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x26, 0x5fce4369 # initialize rs2
aes32dsmi x6, x22, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x00000002 # initialize rs1
li x17, 0xb988d495 # initialize rs2
aes32dsmi x2, x22, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x17, 0x80000000 # initialize rs1
li x14, 0x9b925aad # initialize rs2
aes32dsmi x10, x17, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x80000001 # initialize rs1
li x21, 0x1e7343e2 # initialize rs2
aes32dsmi x12, x9, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x16, 0x956d397a # initialize rs2
aes32dsmi x31, x11, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x6, 0x7ffffffe # initialize rs1
li x26, 0x781fd448 # initialize rs2
aes32dsmi x3, x6, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x25, 0xd54a97c4 # initialize rs2
aes32dsmi x24, x28, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x25, 0x5e7ba655 # initialize rs2
aes32dsmi x8, x24, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs1
li x24, 0x2f9ade2d # initialize rs2
aes32dsmi x18, x10, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x16, 0x3b427912 # initialize rs2
aes32dsmi x3, x9, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x28, 0x7f8bf1b3 # initialize rs2
aes32dsmi x2, x11, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x317ace18 # initialize rs1
li x16, 0x00000000 # initialize rs2
aes32dsmi x3, x23, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0xc74120be # initialize rs1
li x23, 0x00000001 # initialize rs2
aes32dsmi x19, x31, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x32366752 # initialize rs1
li x18, 0x00000002 # initialize rs2
aes32dsmi x15, x3, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0x76bcdf67 # initialize rs1
li x30, 0x80000000 # initialize rs2
aes32dsmi x14, x12, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x1, 0x6e7476be # initialize rs1
li x9, 0x80000001 # initialize rs2
aes32dsmi x29, x1, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0xadc099d4 # initialize rs1
li x1, 0x7fffffff # initialize rs2
aes32dsmi x2, x17, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x21, 0xaa021bea # initialize rs1
li x19, 0x7ffffffe # initialize rs2
aes32dsmi x31, x21, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xb850f9a4 # initialize rs1
li x31, 0xffffffff # initialize rs2
aes32dsmi x26, x24, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0xc2ead025 # initialize rs1
li x1, 0xfffffffe # initialize rs2
aes32dsmi x9, x26, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x18, 0x565c90ad # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
aes32dsmi x10, x18, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x7, 0x9340f92a # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
aes32dsmi x17, x7, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0xf673544c # initialize rs1
li x27, 0x55555555 # initialize rs2
aes32dsmi x14, x13, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
aes32dsmi x3, x15, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x31, 0x00000000 # initialize rs1
li x12, 0x00000001 # initialize rs2
aes32dsmi x26, x31, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x00000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
aes32dsmi x15, x10, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x3, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
aes32dsmi x12, x3, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x26, 0x00000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
aes32dsmi x12, x26, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x13, 0x00000000 # initialize rs1
li x20, 0x7fffffff # initialize rs2
aes32dsmi x22, x13, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x30, 0x00000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
aes32dsmi x14, x30, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x6, 0x00000000 # initialize rs1
li x25, 0xffffffff # initialize rs2
aes32dsmi x11, x6, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
aes32dsmi x9, x14, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x17, 0x00000000 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
aes32dsmi x8, x17, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x11, 0x00000000 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
aes32dsmi x13, x11, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x5, 0x00000000 # initialize rs1
li x25, 0x55555555 # initialize rs2
aes32dsmi x18, x5, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x24, 0x00000001 # initialize rs1
li x20, 0x00000000 # initialize rs2
aes32dsmi x31, x24, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
aes32dsmi x10, x16, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x1, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
aes32dsmi x14, x1, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x6, 0x00000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
aes32dsmi x9, x6, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x2, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
aes32dsmi x28, x2, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
aes32dsmi x19, x16, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x8, 0x00000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
aes32dsmi x12, x8, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
aes32dsmi x7, x17, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x00000001 # initialize rs1
li x3, 0xfffffffe # initialize rs2
aes32dsmi x17, x12, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x19, 0x00000001 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
aes32dsmi x2, x19, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x6, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
aes32dsmi x9, x6, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
aes32dsmi x29, x9, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x22, 0x00000002 # initialize rs1
li x24, 0x00000000 # initialize rs2
aes32dsmi x3, x22, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x00000002 # initialize rs1
li x5, 0x00000001 # initialize rs2
aes32dsmi x18, x7, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
aes32dsmi x15, x25, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x28, 0x00000002 # initialize rs1
li x12, 0x80000000 # initialize rs2
aes32dsmi x5, x28, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
aes32dsmi x20, x25, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x18, 0x7fffffff # initialize rs2
aes32dsmi x26, x19, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x7, 0x00000002 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
aes32dsmi x2, x7, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x00000002 # initialize rs1
li x24, 0xffffffff # initialize rs2
aes32dsmi x7, x25, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x13, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
aes32dsmi x22, x13, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x14, 0x00000002 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
aes32dsmi x12, x14, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x26, 0x00000002 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
aes32dsmi x1, x26, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x23, 0x55555555 # initialize rs2
aes32dsmi x31, x9, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x11, 0x80000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
aes32dsmi x9, x11, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0x80000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
aes32dsmi x7, x10, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x8, 0x80000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
aes32dsmi x12, x8, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x30, 0x80000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
aes32dsmi x15, x30, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x10, 0x80000000 # initialize rs1
li x3, 0x80000001 # initialize rs2
aes32dsmi x27, x10, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x6, 0x80000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
aes32dsmi x2, x6, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x23, 0x80000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
aes32dsmi x14, x23, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x3, 0x80000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
aes32dsmi x26, x3, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x10, 0x80000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
aes32dsmi x11, x10, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x24, 0x80000000 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
aes32dsmi x15, x24, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
aes32dsmi x18, x22, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x30, 0x80000000 # initialize rs1
li x27, 0x55555555 # initialize rs2
aes32dsmi x25, x30, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x17, 0x80000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
aes32dsmi x23, x17, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x14, 0x80000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
aes32dsmi x13, x14, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x29, 0x80000001 # initialize rs1
li x3, 0x00000002 # initialize rs2
aes32dsmi x27, x29, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x80000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
aes32dsmi x7, x1, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x30, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
aes32dsmi x16, x30, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x3, 0x80000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
aes32dsmi x19, x3, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x6, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
aes32dsmi x23, x6, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x13, 0x80000001 # initialize rs1
li x15, 0xffffffff # initialize rs2
aes32dsmi x14, x13, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0x80000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
aes32dsmi x24, x27, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x14, 0x80000001 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
aes32dsmi x24, x14, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x7, 0x80000001 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
aes32dsmi x16, x7, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x20, 0x80000001 # initialize rs1
li x27, 0x55555555 # initialize rs2
aes32dsmi x12, x20, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
aes32dsmi x6, x5, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff # initialize rs1
li x7, 0x00000001 # initialize rs2
aes32dsmi x8, x10, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x18, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
aes32dsmi x5, x18, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x5, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
aes32dsmi x23, x5, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x23, 0x7fffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
aes32dsmi x15, x23, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
aes32dsmi x28, x25, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x28, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
aes32dsmi x29, x28, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x8, 0x7fffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
aes32dsmi x17, x8, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x11, 0x7fffffff # initialize rs1
li x31, 0xfffffffe # initialize rs2
aes32dsmi x12, x11, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x28, 0x7fffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
aes32dsmi x30, x28, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x17, 0x7fffffff # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
aes32dsmi x8, x17, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x30, 0x7fffffff # initialize rs1
li x5, 0x55555555 # initialize rs2
aes32dsmi x26, x30, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x14, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
aes32dsmi x25, x14, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x14, 0x7ffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
aes32dsmi x19, x14, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x30, 0x7ffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
aes32dsmi x6, x30, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x29, 0x7ffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
aes32dsmi x26, x29, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x29, 0x7ffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
aes32dsmi x1, x29, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x25, 0x7ffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
aes32dsmi x5, x25, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x14, 0x7ffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
aes32dsmi x11, x14, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x29, 0x7ffffffe # initialize rs1
li x23, 0xffffffff # initialize rs2
aes32dsmi x26, x29, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
aes32dsmi x31, x25, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x25, 0x7ffffffe # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
aes32dsmi x6, x25, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x16, 0x7ffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
aes32dsmi x27, x16, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x16, 0x7ffffffe # initialize rs1
li x10, 0x55555555 # initialize rs2
aes32dsmi x23, x16, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0xffffffff # initialize rs1
li x14, 0x00000000 # initialize rs2
aes32dsmi x17, x23, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x23, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
aes32dsmi x8, x23, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x29, 0xffffffff # initialize rs1
li x31, 0x00000002 # initialize rs2
aes32dsmi x1, x29, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x17, 0xffffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
aes32dsmi x31, x17, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x25, 0x80000001 # initialize rs2
aes32dsmi x21, x19, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x18, 0xffffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
aes32dsmi x27, x18, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xffffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
aes32dsmi x16, x6, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x12, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
aes32dsmi x17, x12, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0xffffffff # initialize rs1
li x16, 0xfffffffe # initialize rs2
aes32dsmi x31, x18, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x27, 0xffffffff # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
aes32dsmi x20, x27, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x31, 0xffffffff # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
aes32dsmi x11, x31, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0xffffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
aes32dsmi x25, x28, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x22, 0xfffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
aes32dsmi x25, x22, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x9, 0xfffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
aes32dsmi x27, x9, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x18, 0xfffffffe # initialize rs1
li x29, 0x00000002 # initialize rs2
aes32dsmi x7, x18, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x8, 0xfffffffe # initialize rs1
li x26, 0x80000000 # initialize rs2
aes32dsmi x17, x8, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xfffffffe # initialize rs1
li x16, 0x80000001 # initialize rs2
aes32dsmi x20, x27, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x16, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
aes32dsmi x20, x16, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x10, 0xfffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
aes32dsmi x19, x10, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0xfffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
aes32dsmi x10, x17, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
aes32dsmi x21, x14, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x29, 0xfffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
aes32dsmi x20, x29, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x7, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
aes32dsmi x12, x7, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x28, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
aes32dsmi x11, x28, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x22, 0x5bbc8872 # initialize rs1
li x3, 0x00000000 # initialize rs2
aes32dsmi x18, x22, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x2, 0x00000001 # initialize rs2
aes32dsmi x24, x20, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x5, 0x00000002 # initialize rs2
aes32dsmi x1, x19, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x6, 0x5bbc8872 # initialize rs1
li x23, 0x80000000 # initialize rs2
aes32dsmi x30, x6, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x30, 0x5bbc8872 # initialize rs1
li x22, 0x80000001 # initialize rs2
aes32dsmi x16, x30, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x28, 0x5bbc8872 # initialize rs1
li x12, 0x7fffffff # initialize rs2
aes32dsmi x15, x28, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x11, 0x5bbc8872 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
aes32dsmi x6, x11, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x3, 0x5bbc8872 # initialize rs1
li x18, 0xffffffff # initialize rs2
aes32dsmi x10, x3, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x18, 0x5bbc8872 # initialize rs1
li x11, 0xfffffffe # initialize rs2
aes32dsmi x13, x18, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
aes32dsmi x18, x13, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x16, 0x5bbc8872 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
aes32dsmi x19, x16, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x28, 0x5bbc8872 # initialize rs1
li x14, 0x55555555 # initialize rs2
aes32dsmi x12, x28, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaa # initialize rs1
li x13, 0x00000000 # initialize rs2
aes32dsmi x15, x25, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x16, 0xaaaaaaaa # initialize rs1
li x22, 0x00000001 # initialize rs2
aes32dsmi x17, x16, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x21, 0xaaaaaaaa # initialize rs1
li x6, 0x00000002 # initialize rs2
aes32dsmi x27, x21, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x23, 0xaaaaaaaa # initialize rs1
li x27, 0x80000000 # initialize rs2
aes32dsmi x29, x23, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x21, 0xaaaaaaaa # initialize rs1
li x9, 0x80000001 # initialize rs2
aes32dsmi x20, x21, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x15, 0xaaaaaaaa # initialize rs1
li x30, 0x7fffffff # initialize rs2
aes32dsmi x11, x15, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x13, 0xaaaaaaaa # initialize rs1
li x23, 0x7ffffffe # initialize rs2
aes32dsmi x21, x13, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x26, 0xaaaaaaaa # initialize rs1
li x1, 0xffffffff # initialize rs2
aes32dsmi x14, x26, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaa # initialize rs1
li x17, 0xfffffffe # initialize rs2
aes32dsmi x24, x16, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x19, 0xaaaaaaaa # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
aes32dsmi x5, x19, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
aes32dsmi x9, x10, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x11, 0xaaaaaaaa # initialize rs1
li x12, 0x55555555 # initialize rs2
aes32dsmi x26, x11, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x18, 0x55555555 # initialize rs1
li x14, 0x00000000 # initialize rs2
aes32dsmi x25, x18, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x21, 0x55555555 # initialize rs1
li x19, 0x00000001 # initialize rs2
aes32dsmi x15, x21, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x20, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
aes32dsmi x19, x20, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x16, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
aes32dsmi x20, x16, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x9, 0x80000001 # initialize rs2
aes32dsmi x23, x19, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x31, 0x55555555 # initialize rs1
li x13, 0x7fffffff # initialize rs2
aes32dsmi x10, x31, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x2, 0x55555555 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
aes32dsmi x1, x2, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x20, 0x55555555 # initialize rs1
li x19, 0xffffffff # initialize rs2
aes32dsmi x2, x20, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x28, 0x55555555 # initialize rs1
li x15, 0xfffffffe # initialize rs2
aes32dsmi x29, x28, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x23, 0x55555555 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
aes32dsmi x9, x23, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x15, 0x55555555 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
aes32dsmi x8, x15, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x2, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
aes32dsmi x17, x2, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xd79168ee # initialize rs1
li x0, 0x66bbc56c # initialize rs2
aes32dsmi x14, x0, x0, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xe7a03f18 # initialize rs1
li x1, 0xb29740c0 # initialize rs2
aes32dsmi x9, x1, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x93bd0393 # initialize rs1
li x2, 0x748bb349 # initialize rs2
aes32dsmi x31, x2, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xeb2aecaa # initialize rs1
li x3, 0xb403b882 # initialize rs2
aes32dsmi x5, x3, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8613afe8 # initialize rs1
li x4, 0x7e531b12 # initialize rs2
aes32dsmi x5, x4, x4, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0x80f65aed # initialize rs1
li x5, 0x4ed6a5ae # initialize rs2
aes32dsmi x17, x5, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xaf0bc9ae # initialize rs1
li x6, 0xe87e2f6c # initialize rs2
aes32dsmi x7, x6, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0x9b1d2c58 # initialize rs1
li x7, 0xcfcc3902 # initialize rs2
aes32dsmi x16, x7, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x49d70589 # initialize rs1
li x8, 0x17b680e5 # initialize rs2
aes32dsmi x5, x8, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8e75c1df # initialize rs1
li x9, 0xf305bbab # initialize rs2
aes32dsmi x28, x9, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7bb9f3e7 # initialize rs1
li x10, 0x00499148 # initialize rs2
aes32dsmi x2, x10, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xcc521d47 # initialize rs1
li x11, 0xa8fc8c89 # initialize rs2
aes32dsmi x11, x11, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x251c9463 # initialize rs1
li x12, 0x75089673 # initialize rs2
aes32dsmi x17, x12, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x26c98b62 # initialize rs1
li x13, 0x2b82e789 # initialize rs2
aes32dsmi x22, x13, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x98e44ef7 # initialize rs1
li x14, 0x948a41a2 # initialize rs2
aes32dsmi x13, x14, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9f30c027 # initialize rs1
li x15, 0xa94fa861 # initialize rs2
aes32dsmi x22, x15, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xf2173984 # initialize rs1
li x16, 0xf202a255 # initialize rs2
aes32dsmi x28, x16, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1a2f96b9 # initialize rs1
li x17, 0x42452acb # initialize rs2
aes32dsmi x16, x17, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6b913f00 # initialize rs1
li x18, 0x60971975 # initialize rs2
aes32dsmi x31, x18, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xca992637 # initialize rs1
li x19, 0x175956b9 # initialize rs2
aes32dsmi x15, x19, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x650a8d3f # initialize rs1
li x20, 0xc5bf7168 # initialize rs2
aes32dsmi x11, x20, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4017ffcc # initialize rs1
li x21, 0xadad860e # initialize rs2
aes32dsmi x25, x21, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x834a7585 # initialize rs1
li x22, 0xdb5f53d2 # initialize rs2
aes32dsmi x9, x22, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x77789ef2 # initialize rs1
li x23, 0xc911daa2 # initialize rs2
aes32dsmi x24, x23, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x437402ac # initialize rs1
li x24, 0xaaa55f7d # initialize rs2
aes32dsmi x22, x24, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x09ecdb70 # initialize rs1
li x25, 0xc2ac5802 # initialize rs2
aes32dsmi x1, x25, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd6e5255e # initialize rs1
li x26, 0xfc377d62 # initialize rs2
aes32dsmi x27, x26, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1c23cfd2 # initialize rs1
li x27, 0x5648d9df # initialize rs2
aes32dsmi x9, x27, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xec5433f1 # initialize rs1
li x28, 0xb8435d11 # initialize rs2
aes32dsmi x17, x28, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb08ea123 # initialize rs1
li x29, 0xcee83c91 # initialize rs2
aes32dsmi x7, x29, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x63ef3d0b # initialize rs1
li x30, 0x9ee4caa4 # initialize rs2
aes32dsmi x23, x30, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xec704b90 # initialize rs1
li x31, 0x16886e14 # initialize rs2
aes32dsmi x18, x31, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x18650030 # initialize rs1
li x31, 0x74958146 # initialize rs2
aes32dsmi x0, x0, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x491b3e4e # initialize rs1
li x24, 0xbadb4bdc # initialize rs2
aes32dsmi x1, x1, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x70ce3570 # initialize rs1
li x18, 0x82f0df05 # initialize rs2
aes32dsmi x2, x2, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x274cec59 # initialize rs1
li x5, 0x740ade3b # initialize rs2
aes32dsmi x3, x3, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf4c83206 # initialize rs1
li x26, 0xa8afc08c # initialize rs2
aes32dsmi x4, x4, x26, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x178d7153 # initialize rs1
li x10, 0x263eb957 # initialize rs2
aes32dsmi x5, x5, x10, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc5fa57a1 # initialize rs1
li x4, 0xbd06756a # initialize rs2
aes32dsmi x6, x6, x4, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x50b26d26 # initialize rs1
li x30, 0x2d7dfc11 # initialize rs2
aes32dsmi x7, x7, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x5cfbe2c5 # initialize rs1
li x2, 0xecd3bb0f # initialize rs2
aes32dsmi x8, x8, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc13f4040 # initialize rs1
li x30, 0xa0b7ab74 # initialize rs2
aes32dsmi x9, x9, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf9b49dad # initialize rs1
li x22, 0xcef47488 # initialize rs2
aes32dsmi x10, x10, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9197dcb7 # initialize rs1
li x31, 0x553be741 # initialize rs2
aes32dsmi x11, x11, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa597b0e3 # initialize rs1
li x14, 0x0a221577 # initialize rs2
aes32dsmi x12, x12, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x36c4b188 # initialize rs1
li x6, 0x0e3555ce # initialize rs2
aes32dsmi x13, x13, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xee92c92c # initialize rs1
li x14, 0x5c946550 # initialize rs2
aes32dsmi x14, x14, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf7944884 # initialize rs1
li x27, 0xeee2735e # initialize rs2
aes32dsmi x15, x15, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe9998bcb # initialize rs1
li x19, 0xa22af0b7 # initialize rs2
aes32dsmi x16, x16, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc0e8773f # initialize rs1
li x7, 0x1f212d60 # initialize rs2
aes32dsmi x17, x17, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdbeaeca5 # initialize rs1
li x29, 0x8e931d87 # initialize rs2
aes32dsmi x18, x18, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xdcfda270 # initialize rs1
li x1, 0x52b2a9e6 # initialize rs2
aes32dsmi x19, x19, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xda804676 # initialize rs1
li x22, 0x17f0a334 # initialize rs2
aes32dsmi x20, x20, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x090989aa # initialize rs1
li x20, 0x255d6d23 # initialize rs2
aes32dsmi x21, x21, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xff1bbbeb # initialize rs1
li x23, 0x2ae132a7 # initialize rs2
aes32dsmi x22, x22, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x02d94b81 # initialize rs1
li x18, 0xe5846792 # initialize rs2
aes32dsmi x23, x23, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x54ac9dcf # initialize rs1
li x26, 0xac12e027 # initialize rs2
aes32dsmi x24, x24, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe550950f # initialize rs1
li x24, 0x0f27ac64 # initialize rs2
aes32dsmi x25, x25, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcc154329 # initialize rs1
li x6, 0xd2ef6203 # initialize rs2
aes32dsmi x26, x26, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6225e0ce # initialize rs1
li x5, 0xb0a1b99a # initialize rs2
aes32dsmi x27, x27, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc5422240 # initialize rs1
li x6, 0x2d618dc6 # initialize rs2
aes32dsmi x28, x28, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x4b00f6ec # initialize rs1
li x6, 0xed22e3e1 # initialize rs2
aes32dsmi x29, x29, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2c4867a4 # initialize rs1
li x8, 0xc7e1d901 # initialize rs2
aes32dsmi x30, x30, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb02f786a # initialize rs1
li x29, 0x4a59578f # initialize rs2
aes32dsmi x31, x31, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x6, 0x2848556a # initialize rs1
li x0, 0x10945e08 # initialize rs2
aes32dsmi x0, x6, x0, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x20, 0x49444dd9 # initialize rs1
li x1, 0x85223dbd # initialize rs2
aes32dsmi x1, x20, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0xa731638f # initialize rs1
li x2, 0xf6aceaee # initialize rs2
aes32dsmi x2, x22, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x25, 0x5f83f52d # initialize rs1
li x3, 0xde20fe67 # initialize rs2
aes32dsmi x3, x25, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x16ed5f72 # initialize rs1
li x4, 0x97734881 # initialize rs2
aes32dsmi x4, x11, x4, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x0fc086bd # initialize rs1
li x5, 0x9b81daac # initialize rs2
aes32dsmi x5, x12, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xfab5a300 # initialize rs1
li x6, 0xe3e344d5 # initialize rs2
aes32dsmi x6, x10, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xb0b5ae34 # initialize rs1
li x7, 0xad6dfa84 # initialize rs2
aes32dsmi x7, x19, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x13, 0x0779f837 # initialize rs1
li x8, 0x33eb975f # initialize rs2
aes32dsmi x8, x13, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x17, 0x6d4e8dde # initialize rs1
li x9, 0xace98b06 # initialize rs2
aes32dsmi x9, x17, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x11, 0xdd8b5a93 # initialize rs1
li x10, 0xc58ca898 # initialize rs2
aes32dsmi x10, x11, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0xe9897b98 # initialize rs1
li x11, 0x0c093c15 # initialize rs2
aes32dsmi x11, x20, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0x7df787b3 # initialize rs1
li x12, 0xe0ccdb74 # initialize rs2
aes32dsmi x12, x1, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x5, 0x04e6699b # initialize rs1
li x13, 0x57eea884 # initialize rs2
aes32dsmi x13, x5, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x20, 0x40a8e99b # initialize rs1
li x14, 0xe8e7a683 # initialize rs2
aes32dsmi x14, x20, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x28, 0xe02ef0a3 # initialize rs1
li x15, 0xe3a0ab36 # initialize rs2
aes32dsmi x15, x28, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x10, 0x651a236f # initialize rs1
li x16, 0xbb3cb343 # initialize rs2
aes32dsmi x16, x10, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xc8189d1a # initialize rs1
li x17, 0x3dc6de35 # initialize rs2
aes32dsmi x17, x17, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x13, 0x087ae32c # initialize rs1
li x18, 0x6082b2be # initialize rs2
aes32dsmi x18, x13, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x13, 0x586e5517 # initialize rs1
li x19, 0xcc78495d # initialize rs2
aes32dsmi x19, x13, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x15, 0x1db07356 # initialize rs1
li x20, 0x5eae122b # initialize rs2
aes32dsmi x20, x15, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0xda59cd76 # initialize rs1
li x21, 0x67b2ad4d # initialize rs2
aes32dsmi x21, x22, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x2, 0x74d0f8d1 # initialize rs1
li x22, 0x41e57f6b # initialize rs2
aes32dsmi x22, x2, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x14, 0xa8119e2e # initialize rs1
li x23, 0xaf357156 # initialize rs2
aes32dsmi x23, x14, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x23, 0xd1bef096 # initialize rs1
li x24, 0x8f445024 # initialize rs2
aes32dsmi x24, x23, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x31, 0xb194547b # initialize rs1
li x25, 0xcb34360e # initialize rs2
aes32dsmi x25, x31, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0x3c6fe2d5 # initialize rs1
li x26, 0xcf5ecb42 # initialize rs2
aes32dsmi x26, x9, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x25, 0x66ac6a16 # initialize rs1
li x27, 0x1d10b31f # initialize rs2
aes32dsmi x27, x25, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x25, 0x448eaafa # initialize rs1
li x28, 0xe545a087 # initialize rs2
aes32dsmi x28, x25, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x23, 0x7006d052 # initialize rs1
li x29, 0x9ed08fd7 # initialize rs2
aes32dsmi x29, x23, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x31, 0x12d724cd # initialize rs1
li x30, 0x310467f1 # initialize rs2
aes32dsmi x30, x31, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x16, 0x6508a480 # initialize rs1
li x31, 0xcd99a4ad # initialize rs2
aes32dsmi x31, x16, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x93386985 # initialize rs1
li x0, 0x7d7d961e # initialize rs2
aes32dsmi x0, x0, x0, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x0d3f5ba6 # initialize rs1
li x1, 0x7aaaa08a # initialize rs2
aes32dsmi x1, x1, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x41612941 # initialize rs1
li x2, 0x3b40c141 # initialize rs2
aes32dsmi x2, x2, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1a99a4c7 # initialize rs1
li x3, 0xfcba9f3a # initialize rs2
aes32dsmi x3, x3, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9abdd7c2 # initialize rs1
li x4, 0x3e93c97a # initialize rs2
aes32dsmi x4, x4, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x51d9c634 # initialize rs1
li x5, 0x2b38fecc # initialize rs2
aes32dsmi x5, x5, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x92522dde # initialize rs1
li x6, 0x962157db # initialize rs2
aes32dsmi x6, x6, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x066047be # initialize rs1
li x7, 0x84fb859e # initialize rs2
aes32dsmi x7, x7, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe3b85717 # initialize rs1
li x8, 0x8ce8e51b # initialize rs2
aes32dsmi x8, x8, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x4eff567e # initialize rs1
li x9, 0x1bb32a3f # initialize rs2
aes32dsmi x9, x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xd66a3b2d # initialize rs1
li x10, 0x844af4ca # initialize rs2
aes32dsmi x10, x10, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7f11dcf2 # initialize rs1
li x11, 0x93e92a64 # initialize rs2
aes32dsmi x11, x11, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x154e2eb6 # initialize rs1
li x12, 0x62471e87 # initialize rs2
aes32dsmi x12, x12, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x15f06809 # initialize rs1
li x13, 0x239c9d30 # initialize rs2
aes32dsmi x13, x13, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x80cf310c # initialize rs1
li x14, 0xd5e33a93 # initialize rs2
aes32dsmi x14, x14, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4b3fca2e # initialize rs1
li x15, 0x4db344ab # initialize rs2
aes32dsmi x15, x15, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x202e80d8 # initialize rs1
li x16, 0xb5142112 # initialize rs2
aes32dsmi x16, x16, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xa0f72132 # initialize rs1
li x17, 0xee7af142 # initialize rs2
aes32dsmi x17, x17, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x8005086d # initialize rs1
li x18, 0xe9631ff8 # initialize rs2
aes32dsmi x18, x18, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xbb0af344 # initialize rs1
li x19, 0x8ac21a86 # initialize rs2
aes32dsmi x19, x19, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x286758c0 # initialize rs1
li x20, 0xb3f655d2 # initialize rs2
aes32dsmi x20, x20, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xe1a82033 # initialize rs1
li x21, 0x825dc4e9 # initialize rs2
aes32dsmi x21, x21, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xb4dc5066 # initialize rs1
li x22, 0x245bebb0 # initialize rs2
aes32dsmi x22, x22, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8873d266 # initialize rs1
li x23, 0x713d6d35 # initialize rs2
aes32dsmi x23, x23, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x257b8b80 # initialize rs1
li x24, 0xfbd81f6d # initialize rs2
aes32dsmi x24, x24, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x2e35dd4a # initialize rs1
li x25, 0x1f41397e # initialize rs2
aes32dsmi x25, x25, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe38bc332 # initialize rs1
li x26, 0x8d8217cf # initialize rs2
aes32dsmi x26, x26, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5d48c285 # initialize rs1
li x27, 0xbf781c4c # initialize rs2
aes32dsmi x27, x27, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x55b8d600 # initialize rs1
li x28, 0x169ee08e # initialize rs2
aes32dsmi x28, x28, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xaeb922da # initialize rs1
li x29, 0xac4959b0 # initialize rs2
aes32dsmi x29, x29, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9a612df4 # initialize rs1
li x30, 0x1b81a783 # initialize rs2
aes32dsmi x30, x30, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9303ca2a # initialize rs1
li x31, 0x0cf14032 # initialize rs2
aes32dsmi x31, x31, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_bs = 0
li x27, 0xcbddf3a3 # initialize rs1
li x16, 0x9c1844c3 # initialize rs2
aes32dsmi x2, x27, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1568)

# Testcase cp_bs = 1
li x13, 0x1d038a34 # initialize rs1
li x1, 0xf7bfe2d6 # initialize rs2
aes32dsmi x23, x13, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1572)

# Testcase cp_bs = 2
li x7, 0xd49961ec # initialize rs1
li x9, 0x2b86dded # initialize rs2
aes32dsmi x25, x7, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1576)

# Testcase cp_bs = 3
li x29, 0x34a09d1e # initialize rs1
li x2, 0xbcf2f0fb # initialize rs2
aes32dsmi x25, x29, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1580)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x17, x23 # perform first operation
aes32dsmi x11, x18, x31, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x25, x8 # perform first operation
aes32dsmi x26, x2, x10, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x25, x26 # perform first operation
aes32dsmi x20, x7, x13, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x9, x3 # perform first operation
aes32dsmi x3, x15, x30, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x11, x5 # perform first operation
aes32dsmi x20, x12, x20, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x27, x11 # perform first operation
aes32dsmi x12, x5, x16, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x8, x30 # perform first operation
aes32dsmi x25, x26, x24, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x25, x28 # perform first operation
aes32dsmi x23, x10, x21, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x26, x2 # perform first operation
aes32dsmi x16, x1, x11, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x29, x15 # perform first operation
aes32dsmi x29, x17, x25, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x26, x16 # perform first operation
aes32dsmi x16, x1, x14, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x1, x17 # perform first operation
aes32dsmi x14, x15, x12, 0 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x28, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
aes32dsmi x11, x28, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1584)

# Testcase cp_sbox = 1
li x17, 0x01010101 # initialize rs1
li x20, 0x01010101 # initialize rs2
aes32dsmi x3, x17, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1588)

# Testcase cp_sbox = 2
li x11, 0x02020202 # initialize rs1
li x2, 0x02020202 # initialize rs2
aes32dsmi x21, x11, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1592)

# Testcase cp_sbox = 3
li x23, 0x03030303 # initialize rs1
li x26, 0x03030303 # initialize rs2
aes32dsmi x17, x23, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1596)

# Testcase cp_sbox = 4
li x20, 0x04040404 # initialize rs1
li x1, 0x04040404 # initialize rs2
aes32dsmi x22, x20, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1600)

# Testcase cp_sbox = 5
li x23, 0x05050505 # initialize rs1
li x12, 0x05050505 # initialize rs2
aes32dsmi x29, x23, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1604)

# Testcase cp_sbox = 6
li x24, 0x06060606 # initialize rs1
li x5, 0x06060606 # initialize rs2
aes32dsmi x29, x24, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cp_sbox = 7
li x2, 0x07070707 # initialize rs1
li x15, 0x07070707 # initialize rs2
aes32dsmi x16, x2, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1612)

# Testcase cp_sbox = 8
li x13, 0x08080808 # initialize rs1
li x3, 0x08080808 # initialize rs2
aes32dsmi x10, x13, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1616)

# Testcase cp_sbox = 9
li x24, 0x09090909 # initialize rs1
li x23, 0x09090909 # initialize rs2
aes32dsmi x15, x24, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1620)

# Testcase cp_sbox = 10
li x14, 0x0a0a0a0a # initialize rs1
li x31, 0x0a0a0a0a # initialize rs2
aes32dsmi x3, x14, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1624)

# Testcase cp_sbox = 11
li x28, 0x0b0b0b0b # initialize rs1
li x23, 0x0b0b0b0b # initialize rs2
aes32dsmi x6, x28, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1628)

# Testcase cp_sbox = 12
li x23, 0x0c0c0c0c # initialize rs1
li x6, 0x0c0c0c0c # initialize rs2
aes32dsmi x20, x23, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1632)

# Testcase cp_sbox = 13
li x8, 0x0d0d0d0d # initialize rs1
li x22, 0x0d0d0d0d # initialize rs2
aes32dsmi x19, x8, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1636)

# Testcase cp_sbox = 14
li x26, 0x0e0e0e0e # initialize rs1
li x2, 0x0e0e0e0e # initialize rs2
aes32dsmi x25, x26, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1640)

# Testcase cp_sbox = 15
li x1, 0x0f0f0f0f # initialize rs1
li x25, 0x0f0f0f0f # initialize rs2
aes32dsmi x5, x1, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1644)

# Testcase cp_sbox = 16
li x24, 0x10101010 # initialize rs1
li x23, 0x10101010 # initialize rs2
aes32dsmi x6, x24, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1648)

# Testcase cp_sbox = 17
li x3, 0x11111111 # initialize rs1
li x19, 0x11111111 # initialize rs2
aes32dsmi x20, x3, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1652)

# Testcase cp_sbox = 18
li x15, 0x12121212 # initialize rs1
li x26, 0x12121212 # initialize rs2
aes32dsmi x14, x15, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1656)

# Testcase cp_sbox = 19
li x8, 0x13131313 # initialize rs1
li x17, 0x13131313 # initialize rs2
aes32dsmi x10, x8, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1660)

# Testcase cp_sbox = 20
li x13, 0x14141414 # initialize rs1
li x27, 0x14141414 # initialize rs2
aes32dsmi x26, x13, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1664)

# Testcase cp_sbox = 21
li x3, 0x15151515 # initialize rs1
li x1, 0x15151515 # initialize rs2
aes32dsmi x19, x3, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1668)

# Testcase cp_sbox = 22
li x21, 0x16161616 # initialize rs1
li x27, 0x16161616 # initialize rs2
aes32dsmi x2, x21, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1672)

# Testcase cp_sbox = 23
li x13, 0x17171717 # initialize rs1
li x15, 0x17171717 # initialize rs2
aes32dsmi x25, x13, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1676)

# Testcase cp_sbox = 24
li x2, 0x18181818 # initialize rs1
li x17, 0x18181818 # initialize rs2
aes32dsmi x13, x2, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1680)

# Testcase cp_sbox = 25
li x15, 0x19191919 # initialize rs1
li x30, 0x19191919 # initialize rs2
aes32dsmi x7, x15, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1684)

# Testcase cp_sbox = 26
li x29, 0x1a1a1a1a # initialize rs1
li x18, 0x1a1a1a1a # initialize rs2
aes32dsmi x30, x29, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1688)

# Testcase cp_sbox = 27
li x16, 0x1b1b1b1b # initialize rs1
li x27, 0x1b1b1b1b # initialize rs2
aes32dsmi x5, x16, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1692)

# Testcase cp_sbox = 28
li x17, 0x1c1c1c1c # initialize rs1
li x2, 0x1c1c1c1c # initialize rs2
aes32dsmi x3, x17, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1696)

# Testcase cp_sbox = 29
li x28, 0x1d1d1d1d # initialize rs1
li x16, 0x1d1d1d1d # initialize rs2
aes32dsmi x23, x28, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1700)

# Testcase cp_sbox = 30
li x17, 0x1e1e1e1e # initialize rs1
li x1, 0x1e1e1e1e # initialize rs2
aes32dsmi x27, x17, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1704)

# Testcase cp_sbox = 31
li x9, 0x1f1f1f1f # initialize rs1
li x28, 0x1f1f1f1f # initialize rs2
aes32dsmi x10, x9, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1708)

# Testcase cp_sbox = 32
li x13, 0x20202020 # initialize rs1
li x22, 0x20202020 # initialize rs2
aes32dsmi x11, x13, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cp_sbox = 33
li x24, 0x21212121 # initialize rs1
li x3, 0x21212121 # initialize rs2
aes32dsmi x29, x24, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1716)

# Testcase cp_sbox = 34
li x18, 0x22222222 # initialize rs1
li x24, 0x22222222 # initialize rs2
aes32dsmi x8, x18, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1720)

# Testcase cp_sbox = 35
li x27, 0x23232323 # initialize rs1
li x5, 0x23232323 # initialize rs2
aes32dsmi x14, x27, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1724)

# Testcase cp_sbox = 36
li x3, 0x24242424 # initialize rs1
li x18, 0x24242424 # initialize rs2
aes32dsmi x10, x3, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1728)

# Testcase cp_sbox = 37
li x2, 0x25252525 # initialize rs1
li x29, 0x25252525 # initialize rs2
aes32dsmi x22, x2, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1732)

# Testcase cp_sbox = 38
li x18, 0x26262626 # initialize rs1
li x12, 0x26262626 # initialize rs2
aes32dsmi x14, x18, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1736)

# Testcase cp_sbox = 39
li x29, 0x27272727 # initialize rs1
li x8, 0x27272727 # initialize rs2
aes32dsmi x24, x29, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1740)

# Testcase cp_sbox = 40
li x21, 0x28282828 # initialize rs1
li x7, 0x28282828 # initialize rs2
aes32dsmi x30, x21, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1744)

# Testcase cp_sbox = 41
li x22, 0x29292929 # initialize rs1
li x18, 0x29292929 # initialize rs2
aes32dsmi x25, x22, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1748)

# Testcase cp_sbox = 42
li x8, 0x2a2a2a2a # initialize rs1
li x25, 0x2a2a2a2a # initialize rs2
aes32dsmi x3, x8, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1752)

# Testcase cp_sbox = 43
li x19, 0x2b2b2b2b # initialize rs1
li x8, 0x2b2b2b2b # initialize rs2
aes32dsmi x24, x19, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1756)

# Testcase cp_sbox = 44
li x15, 0x2c2c2c2c # initialize rs1
li x27, 0x2c2c2c2c # initialize rs2
aes32dsmi x21, x15, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1760)

# Testcase cp_sbox = 45
li x18, 0x2d2d2d2d # initialize rs1
li x25, 0x2d2d2d2d # initialize rs2
aes32dsmi x9, x18, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1764)

# Testcase cp_sbox = 46
li x10, 0x2e2e2e2e # initialize rs1
li x8, 0x2e2e2e2e # initialize rs2
aes32dsmi x13, x10, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1768)

# Testcase cp_sbox = 47
li x10, 0x2f2f2f2f # initialize rs1
li x1, 0x2f2f2f2f # initialize rs2
aes32dsmi x25, x10, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1772)

# Testcase cp_sbox = 48
li x15, 0x30303030 # initialize rs1
li x26, 0x30303030 # initialize rs2
aes32dsmi x27, x15, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1776)

# Testcase cp_sbox = 49
li x25, 0x31313131 # initialize rs1
li x26, 0x31313131 # initialize rs2
aes32dsmi x16, x25, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1780)

# Testcase cp_sbox = 50
li x28, 0x32323232 # initialize rs1
li x6, 0x32323232 # initialize rs2
aes32dsmi x27, x28, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1784)

# Testcase cp_sbox = 51
li x3, 0x33333333 # initialize rs1
li x31, 0x33333333 # initialize rs2
aes32dsmi x13, x3, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1788)

# Testcase cp_sbox = 52
li x24, 0x34343434 # initialize rs1
li x1, 0x34343434 # initialize rs2
aes32dsmi x14, x24, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1792)

# Testcase cp_sbox = 53
li x2, 0x35353535 # initialize rs1
li x18, 0x35353535 # initialize rs2
aes32dsmi x20, x2, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1796)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 54
li x19, 0x36363636 # initialize rs1
li x18, 0x36363636 # initialize rs2
aes32dsmi x24, x19, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_sbox = 55
li x7, 0x37373737 # initialize rs1
li x12, 0x37373737 # initialize rs2
aes32dsmi x13, x7, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 4)

# Testcase cp_sbox = 56
li x26, 0x38383838 # initialize rs1
li x31, 0x38383838 # initialize rs2
aes32dsmi x16, x26, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_sbox = 57
li x27, 0x39393939 # initialize rs1
li x18, 0x39393939 # initialize rs2
aes32dsmi x8, x27, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_sbox = 58
li x10, 0x3a3a3a3a # initialize rs1
li x12, 0x3a3a3a3a # initialize rs2
aes32dsmi x19, x10, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase cp_sbox = 59
li x26, 0x3b3b3b3b # initialize rs1
li x29, 0x3b3b3b3b # initialize rs2
aes32dsmi x9, x26, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_sbox = 60
li x14, 0x3c3c3c3c # initialize rs1
li x7, 0x3c3c3c3c # initialize rs2
aes32dsmi x3, x14, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_sbox = 61
li x12, 0x3d3d3d3d # initialize rs1
li x28, 0x3d3d3d3d # initialize rs2
aes32dsmi x6, x12, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 28)

# Testcase cp_sbox = 62
li x16, 0x3e3e3e3e # initialize rs1
li x27, 0x3e3e3e3e # initialize rs2
aes32dsmi x10, x16, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_sbox = 63
li x3, 0x3f3f3f3f # initialize rs1
li x29, 0x3f3f3f3f # initialize rs2
aes32dsmi x27, x3, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 36)

# Testcase cp_sbox = 64
li x13, 0x40404040 # initialize rs1
li x24, 0x40404040 # initialize rs2
aes32dsmi x25, x13, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_sbox = 65
li x20, 0x41414141 # initialize rs1
li x21, 0x41414141 # initialize rs2
aes32dsmi x7, x20, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 44)

# Testcase cp_sbox = 66
li x1, 0x42424242 # initialize rs1
li x3, 0x42424242 # initialize rs2
aes32dsmi x22, x1, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cp_sbox = 67
li x7, 0x43434343 # initialize rs1
li x17, 0x43434343 # initialize rs2
aes32dsmi x13, x7, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_sbox = 68
li x30, 0x44444444 # initialize rs1
li x23, 0x44444444 # initialize rs2
aes32dsmi x15, x30, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_sbox = 69
li x18, 0x45454545 # initialize rs1
li x12, 0x45454545 # initialize rs2
aes32dsmi x17, x18, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_sbox = 70
li x2, 0x46464646 # initialize rs1
li x27, 0x46464646 # initialize rs2
aes32dsmi x7, x2, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_sbox = 71
li x25, 0x47474747 # initialize rs1
li x26, 0x47474747 # initialize rs2
aes32dsmi x1, x25, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_sbox = 72
li x25, 0x48484848 # initialize rs1
li x22, 0x48484848 # initialize rs2
aes32dsmi x16, x25, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cp_sbox = 73
li x6, 0x49494949 # initialize rs1
li x10, 0x49494949 # initialize rs2
aes32dsmi x9, x6, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_sbox = 74
li x25, 0x4a4a4a4a # initialize rs1
li x31, 0x4a4a4a4a # initialize rs2
aes32dsmi x8, x25, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_sbox = 75
li x30, 0x4b4b4b4b # initialize rs1
li x9, 0x4b4b4b4b # initialize rs2
aes32dsmi x7, x30, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 84)

# Testcase cp_sbox = 76
li x15, 0x4c4c4c4c # initialize rs1
li x9, 0x4c4c4c4c # initialize rs2
aes32dsmi x5, x15, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cp_sbox = 77
li x22, 0x4d4d4d4d # initialize rs1
li x10, 0x4d4d4d4d # initialize rs2
aes32dsmi x13, x22, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 92)

# Testcase cp_sbox = 78
li x24, 0x4e4e4e4e # initialize rs1
li x21, 0x4e4e4e4e # initialize rs2
aes32dsmi x19, x24, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_sbox = 79
li x1, 0x4f4f4f4f # initialize rs1
li x28, 0x4f4f4f4f # initialize rs2
aes32dsmi x6, x1, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_sbox = 80
li x7, 0x50505050 # initialize rs1
li x17, 0x50505050 # initialize rs2
aes32dsmi x15, x7, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_sbox = 81
li x14, 0x51515151 # initialize rs1
li x29, 0x51515151 # initialize rs2
aes32dsmi x28, x14, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_sbox = 82
li x26, 0x52525252 # initialize rs1
li x5, 0x52525252 # initialize rs2
aes32dsmi x20, x26, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_sbox = 83
li x13, 0x53535353 # initialize rs1
li x30, 0x53535353 # initialize rs2
aes32dsmi x24, x13, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 116)

# Testcase cp_sbox = 84
li x11, 0x54545454 # initialize rs1
li x12, 0x54545454 # initialize rs2
aes32dsmi x3, x11, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_sbox = 85
li x7, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
aes32dsmi x21, x7, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 124)

# Testcase cp_sbox = 86
li x31, 0x56565656 # initialize rs1
li x10, 0x56565656 # initialize rs2
aes32dsmi x6, x31, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_sbox = 87
li x10, 0x57575757 # initialize rs1
li x14, 0x57575757 # initialize rs2
aes32dsmi x12, x10, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_sbox = 88
li x15, 0x58585858 # initialize rs1
li x6, 0x58585858 # initialize rs2
aes32dsmi x24, x15, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cp_sbox = 89
li x11, 0x59595959 # initialize rs1
li x2, 0x59595959 # initialize rs2
aes32dsmi x6, x11, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 140)

# Testcase cp_sbox = 90
li x25, 0x5a5a5a5a # initialize rs1
li x17, 0x5a5a5a5a # initialize rs2
aes32dsmi x15, x25, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_sbox = 91
li x31, 0x5b5b5b5b # initialize rs1
li x12, 0x5b5b5b5b # initialize rs2
aes32dsmi x14, x31, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 148)

# Testcase cp_sbox = 92
li x5, 0x5c5c5c5c # initialize rs1
li x12, 0x5c5c5c5c # initialize rs2
aes32dsmi x28, x5, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 152)

# Testcase cp_sbox = 93
li x31, 0x5d5d5d5d # initialize rs1
li x28, 0x5d5d5d5d # initialize rs2
aes32dsmi x16, x31, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 156)

# Testcase cp_sbox = 94
li x5, 0x5e5e5e5e # initialize rs1
li x30, 0x5e5e5e5e # initialize rs2
aes32dsmi x18, x5, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_sbox = 95
li x10, 0x5f5f5f5f # initialize rs1
li x23, 0x5f5f5f5f # initialize rs2
aes32dsmi x24, x10, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 164)

# Testcase cp_sbox = 96
li x16, 0x60606060 # initialize rs1
li x30, 0x60606060 # initialize rs2
aes32dsmi x10, x16, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_sbox = 97
li x13, 0x61616161 # initialize rs1
li x3, 0x61616161 # initialize rs2
aes32dsmi x30, x13, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 172)

# Testcase cp_sbox = 98
li x28, 0x62626262 # initialize rs1
li x14, 0x62626262 # initialize rs2
aes32dsmi x11, x28, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_sbox = 99
li x9, 0x63636363 # initialize rs1
li x20, 0x63636363 # initialize rs2
aes32dsmi x25, x9, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 180)

# Testcase cp_sbox = 100
li x13, 0x64646464 # initialize rs1
li x23, 0x64646464 # initialize rs2
aes32dsmi x27, x13, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_sbox = 101
li x1, 0x65656565 # initialize rs1
li x3, 0x65656565 # initialize rs2
aes32dsmi x25, x1, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 188)

# Testcase cp_sbox = 102
li x14, 0x66666666 # initialize rs1
li x24, 0x66666666 # initialize rs2
aes32dsmi x29, x14, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_sbox = 103
li x20, 0x67676767 # initialize rs1
li x14, 0x67676767 # initialize rs2
aes32dsmi x9, x20, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 196)

# Testcase cp_sbox = 104
li x14, 0x68686868 # initialize rs1
li x11, 0x68686868 # initialize rs2
aes32dsmi x31, x14, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_sbox = 105
li x18, 0x69696969 # initialize rs1
li x1, 0x69696969 # initialize rs2
aes32dsmi x11, x18, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 204)

# Testcase cp_sbox = 106
li x29, 0x6a6a6a6a # initialize rs1
li x9, 0x6a6a6a6a # initialize rs2
aes32dsmi x10, x29, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_sbox = 107
li x8, 0x6b6b6b6b # initialize rs1
li x31, 0x6b6b6b6b # initialize rs2
aes32dsmi x9, x8, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_sbox = 108
li x28, 0x6c6c6c6c # initialize rs1
li x12, 0x6c6c6c6c # initialize rs2
aes32dsmi x19, x28, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_sbox = 109
li x24, 0x6d6d6d6d # initialize rs1
li x7, 0x6d6d6d6d # initialize rs2
aes32dsmi x10, x24, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 220)

# Testcase cp_sbox = 110
li x23, 0x6e6e6e6e # initialize rs1
li x15, 0x6e6e6e6e # initialize rs2
aes32dsmi x19, x23, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_sbox = 111
li x3, 0x6f6f6f6f # initialize rs1
li x11, 0x6f6f6f6f # initialize rs2
aes32dsmi x25, x3, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_sbox = 112
li x7, 0x70707070 # initialize rs1
li x27, 0x70707070 # initialize rs2
aes32dsmi x21, x7, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_sbox = 113
li x28, 0x71717171 # initialize rs1
li x7, 0x71717171 # initialize rs2
aes32dsmi x24, x28, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 236)

# Testcase cp_sbox = 114
li x12, 0x72727272 # initialize rs1
li x15, 0x72727272 # initialize rs2
aes32dsmi x11, x12, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_sbox = 115
li x29, 0x73737373 # initialize rs1
li x16, 0x73737373 # initialize rs2
aes32dsmi x12, x29, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 244)

# Testcase cp_sbox = 116
li x29, 0x74747474 # initialize rs1
li x31, 0x74747474 # initialize rs2
aes32dsmi x12, x29, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_sbox = 117
li x9, 0x75757575 # initialize rs1
li x6, 0x75757575 # initialize rs2
aes32dsmi x22, x9, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 252)

# Testcase cp_sbox = 118
li x10, 0x76767676 # initialize rs1
li x27, 0x76767676 # initialize rs2
aes32dsmi x22, x10, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cp_sbox = 119
li x14, 0x77777777 # initialize rs1
li x13, 0x77777777 # initialize rs2
aes32dsmi x17, x14, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 260)

# Testcase cp_sbox = 120
li x3, 0x78787878 # initialize rs1
li x14, 0x78787878 # initialize rs2
aes32dsmi x22, x3, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 264)

# Testcase cp_sbox = 121
li x18, 0x79797979 # initialize rs1
li x31, 0x79797979 # initialize rs2
aes32dsmi x7, x18, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 268)

# Testcase cp_sbox = 122
li x12, 0x7a7a7a7a # initialize rs1
li x18, 0x7a7a7a7a # initialize rs2
aes32dsmi x17, x12, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cp_sbox = 123
li x15, 0x7b7b7b7b # initialize rs1
li x19, 0x7b7b7b7b # initialize rs2
aes32dsmi x16, x15, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 276)

# Testcase cp_sbox = 124
li x22, 0x7c7c7c7c # initialize rs1
li x24, 0x7c7c7c7c # initialize rs2
aes32dsmi x14, x22, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_sbox = 125
li x14, 0x7d7d7d7d # initialize rs1
li x23, 0x7d7d7d7d # initialize rs2
aes32dsmi x5, x14, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 284)

# Testcase cp_sbox = 126
li x13, 0x7e7e7e7e # initialize rs1
li x14, 0x7e7e7e7e # initialize rs2
aes32dsmi x6, x13, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 288)

# Testcase cp_sbox = 127
li x25, 0x7f7f7f7f # initialize rs1
li x29, 0x7f7f7f7f # initialize rs2
aes32dsmi x2, x25, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 292)

# Testcase cp_sbox = 128
li x6, 0x80808080 # initialize rs1
li x17, 0x80808080 # initialize rs2
aes32dsmi x23, x6, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cp_sbox = 129
li x23, 0x81818181 # initialize rs1
li x27, 0x81818181 # initialize rs2
aes32dsmi x3, x23, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 300)

# Testcase cp_sbox = 130
li x1, 0x82828282 # initialize rs1
li x7, 0x82828282 # initialize rs2
aes32dsmi x10, x1, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cp_sbox = 131
li x19, 0x83838383 # initialize rs1
li x13, 0x83838383 # initialize rs2
aes32dsmi x25, x19, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 308)

# Testcase cp_sbox = 132
li x22, 0x84848484 # initialize rs1
li x11, 0x84848484 # initialize rs2
aes32dsmi x23, x22, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_sbox = 133
li x17, 0x85858585 # initialize rs1
li x23, 0x85858585 # initialize rs2
aes32dsmi x16, x17, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 316)

# Testcase cp_sbox = 134
li x6, 0x86868686 # initialize rs1
li x5, 0x86868686 # initialize rs2
aes32dsmi x24, x6, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_sbox = 135
li x19, 0x87878787 # initialize rs1
li x26, 0x87878787 # initialize rs2
aes32dsmi x10, x19, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 324)

# Testcase cp_sbox = 136
li x19, 0x88888888 # initialize rs1
li x11, 0x88888888 # initialize rs2
aes32dsmi x1, x19, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cp_sbox = 137
li x10, 0x89898989 # initialize rs1
li x28, 0x89898989 # initialize rs2
aes32dsmi x31, x10, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 332)

# Testcase cp_sbox = 138
li x14, 0x8a8a8a8a # initialize rs1
li x9, 0x8a8a8a8a # initialize rs2
aes32dsmi x1, x14, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 336)

# Testcase cp_sbox = 139
li x13, 0x8b8b8b8b # initialize rs1
li x7, 0x8b8b8b8b # initialize rs2
aes32dsmi x25, x13, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 340)

# Testcase cp_sbox = 140
li x3, 0x8c8c8c8c # initialize rs1
li x5, 0x8c8c8c8c # initialize rs2
aes32dsmi x20, x3, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cp_sbox = 141
li x27, 0x8d8d8d8d # initialize rs1
li x16, 0x8d8d8d8d # initialize rs2
aes32dsmi x17, x27, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 348)

# Testcase cp_sbox = 142
li x15, 0x8e8e8e8e # initialize rs1
li x27, 0x8e8e8e8e # initialize rs2
aes32dsmi x13, x15, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_sbox = 143
li x28, 0x8f8f8f8f # initialize rs1
li x22, 0x8f8f8f8f # initialize rs2
aes32dsmi x18, x28, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 356)

# Testcase cp_sbox = 144
li x25, 0x90909090 # initialize rs1
li x5, 0x90909090 # initialize rs2
aes32dsmi x27, x25, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cp_sbox = 145
li x18, 0x91919191 # initialize rs1
li x24, 0x91919191 # initialize rs2
aes32dsmi x13, x18, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 364)

# Testcase cp_sbox = 146
li x15, 0x92929292 # initialize rs1
li x31, 0x92929292 # initialize rs2
aes32dsmi x14, x15, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_sbox = 147
li x16, 0x93939393 # initialize rs1
li x30, 0x93939393 # initialize rs2
aes32dsmi x8, x16, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 372)

# Testcase cp_sbox = 148
li x13, 0x94949494 # initialize rs1
li x19, 0x94949494 # initialize rs2
aes32dsmi x18, x13, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cp_sbox = 149
li x18, 0x95959595 # initialize rs1
li x31, 0x95959595 # initialize rs2
aes32dsmi x14, x18, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 380)

# Testcase cp_sbox = 150
li x10, 0x96969696 # initialize rs1
li x8, 0x96969696 # initialize rs2
aes32dsmi x3, x10, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_sbox = 151
li x24, 0x97979797 # initialize rs1
li x21, 0x97979797 # initialize rs2
aes32dsmi x26, x24, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 388)

# Testcase cp_sbox = 152
li x18, 0x98989898 # initialize rs1
li x21, 0x98989898 # initialize rs2
aes32dsmi x14, x18, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_sbox = 153
li x25, 0x99999999 # initialize rs1
li x11, 0x99999999 # initialize rs2
aes32dsmi x12, x25, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 396)

# Testcase cp_sbox = 154
li x31, 0x9a9a9a9a # initialize rs1
li x24, 0x9a9a9a9a # initialize rs2
aes32dsmi x16, x31, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_sbox = 155
li x28, 0x9b9b9b9b # initialize rs1
li x20, 0x9b9b9b9b # initialize rs2
aes32dsmi x5, x28, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 404)

# Testcase cp_sbox = 156
li x7, 0x9c9c9c9c # initialize rs1
li x5, 0x9c9c9c9c # initialize rs2
aes32dsmi x18, x7, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase cp_sbox = 157
li x6, 0x9d9d9d9d # initialize rs1
li x17, 0x9d9d9d9d # initialize rs2
aes32dsmi x12, x6, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 412)

# Testcase cp_sbox = 158
li x7, 0x9e9e9e9e # initialize rs1
li x21, 0x9e9e9e9e # initialize rs2
aes32dsmi x26, x7, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cp_sbox = 159
li x21, 0x9f9f9f9f # initialize rs1
li x7, 0x9f9f9f9f # initialize rs2
aes32dsmi x16, x21, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 420)

# Testcase cp_sbox = 160
li x28, 0xa0a0a0a0 # initialize rs1
li x3, 0xa0a0a0a0 # initialize rs2
aes32dsmi x15, x28, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_sbox = 161
li x1, 0xa1a1a1a1 # initialize rs1
li x21, 0xa1a1a1a1 # initialize rs2
aes32dsmi x16, x1, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 428)

# Testcase cp_sbox = 162
li x18, 0xa2a2a2a2 # initialize rs1
li x2, 0xa2a2a2a2 # initialize rs2
aes32dsmi x17, x18, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cp_sbox = 163
li x20, 0xa3a3a3a3 # initialize rs1
li x21, 0xa3a3a3a3 # initialize rs2
aes32dsmi x28, x20, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 436)

# Testcase cp_sbox = 164
li x6, 0xa4a4a4a4 # initialize rs1
li x13, 0xa4a4a4a4 # initialize rs2
aes32dsmi x2, x6, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_sbox = 165
li x10, 0xa5a5a5a5 # initialize rs1
li x26, 0xa5a5a5a5 # initialize rs2
aes32dsmi x23, x10, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 444)

# Testcase cp_sbox = 166
li x25, 0xa6a6a6a6 # initialize rs1
li x14, 0xa6a6a6a6 # initialize rs2
aes32dsmi x5, x25, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_sbox = 167
li x22, 0xa7a7a7a7 # initialize rs1
li x16, 0xa7a7a7a7 # initialize rs2
aes32dsmi x10, x22, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 452)

# Testcase cp_sbox = 168
li x8, 0xa8a8a8a8 # initialize rs1
li x7, 0xa8a8a8a8 # initialize rs2
aes32dsmi x31, x8, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_sbox = 169
li x7, 0xa9a9a9a9 # initialize rs1
li x24, 0xa9a9a9a9 # initialize rs2
aes32dsmi x12, x7, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 460)

# Testcase cp_sbox = 170
li x9, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
aes32dsmi x17, x9, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_sbox = 171
li x3, 0xabababab # initialize rs1
li x19, 0xabababab # initialize rs2
aes32dsmi x1, x3, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 468)

# Testcase cp_sbox = 172
li x3, 0xacacacac # initialize rs1
li x6, 0xacacacac # initialize rs2
aes32dsmi x27, x3, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_sbox = 173
li x17, 0xadadadad # initialize rs1
li x8, 0xadadadad # initialize rs2
aes32dsmi x19, x17, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 476)

# Testcase cp_sbox = 174
li x13, 0xaeaeaeae # initialize rs1
li x3, 0xaeaeaeae # initialize rs2
aes32dsmi x24, x13, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cp_sbox = 175
li x26, 0xafafafaf # initialize rs1
li x18, 0xafafafaf # initialize rs2
aes32dsmi x28, x26, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 484)

# Testcase cp_sbox = 176
li x30, 0xb0b0b0b0 # initialize rs1
li x15, 0xb0b0b0b0 # initialize rs2
aes32dsmi x9, x30, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cp_sbox = 177
li x3, 0xb1b1b1b1 # initialize rs1
li x8, 0xb1b1b1b1 # initialize rs2
aes32dsmi x20, x3, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 492)

# Testcase cp_sbox = 178
li x15, 0xb2b2b2b2 # initialize rs1
li x12, 0xb2b2b2b2 # initialize rs2
aes32dsmi x28, x15, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cp_sbox = 179
li x20, 0xb3b3b3b3 # initialize rs1
li x25, 0xb3b3b3b3 # initialize rs2
aes32dsmi x19, x20, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 500)

# Testcase cp_sbox = 180
li x16, 0xb4b4b4b4 # initialize rs1
li x6, 0xb4b4b4b4 # initialize rs2
aes32dsmi x8, x16, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cp_sbox = 181
li x14, 0xb5b5b5b5 # initialize rs1
li x31, 0xb5b5b5b5 # initialize rs2
aes32dsmi x21, x14, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 508)

# Testcase cp_sbox = 182
li x15, 0xb6b6b6b6 # initialize rs1
li x24, 0xb6b6b6b6 # initialize rs2
aes32dsmi x25, x15, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 512)

# Testcase cp_sbox = 183
li x21, 0xb7b7b7b7 # initialize rs1
li x27, 0xb7b7b7b7 # initialize rs2
aes32dsmi x20, x21, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 516)

# Testcase cp_sbox = 184
li x23, 0xb8b8b8b8 # initialize rs1
li x12, 0xb8b8b8b8 # initialize rs2
aes32dsmi x1, x23, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_sbox = 185
li x13, 0xb9b9b9b9 # initialize rs1
li x11, 0xb9b9b9b9 # initialize rs2
aes32dsmi x3, x13, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 524)

# Testcase cp_sbox = 186
li x31, 0xbabababa # initialize rs1
li x7, 0xbabababa # initialize rs2
aes32dsmi x8, x31, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cp_sbox = 187
li x24, 0xbbbbbbbb # initialize rs1
li x29, 0xbbbbbbbb # initialize rs2
aes32dsmi x18, x24, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 532)

# Testcase cp_sbox = 188
li x7, 0xbcbcbcbc # initialize rs1
li x16, 0xbcbcbcbc # initialize rs2
aes32dsmi x11, x7, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_sbox = 189
li x29, 0xbdbdbdbd # initialize rs1
li x14, 0xbdbdbdbd # initialize rs2
aes32dsmi x15, x29, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 540)

# Testcase cp_sbox = 190
li x9, 0xbebebebe # initialize rs1
li x16, 0xbebebebe # initialize rs2
aes32dsmi x15, x9, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_sbox = 191
li x19, 0xbfbfbfbf # initialize rs1
li x12, 0xbfbfbfbf # initialize rs2
aes32dsmi x16, x19, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 548)

# Testcase cp_sbox = 192
li x17, 0xc0c0c0c0 # initialize rs1
li x2, 0xc0c0c0c0 # initialize rs2
aes32dsmi x30, x17, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 552)

# Testcase cp_sbox = 193
li x8, 0xc1c1c1c1 # initialize rs1
li x29, 0xc1c1c1c1 # initialize rs2
aes32dsmi x17, x8, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 556)

# Testcase cp_sbox = 194
li x18, 0xc2c2c2c2 # initialize rs1
li x1, 0xc2c2c2c2 # initialize rs2
aes32dsmi x14, x18, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_sbox = 195
li x12, 0xc3c3c3c3 # initialize rs1
li x25, 0xc3c3c3c3 # initialize rs2
aes32dsmi x14, x12, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 564)

# Testcase cp_sbox = 196
li x22, 0xc4c4c4c4 # initialize rs1
li x25, 0xc4c4c4c4 # initialize rs2
aes32dsmi x2, x22, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cp_sbox = 197
li x19, 0xc5c5c5c5 # initialize rs1
li x2, 0xc5c5c5c5 # initialize rs2
aes32dsmi x20, x19, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 572)

# Testcase cp_sbox = 198
li x9, 0xc6c6c6c6 # initialize rs1
li x16, 0xc6c6c6c6 # initialize rs2
aes32dsmi x22, x9, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 576)

# Testcase cp_sbox = 199
li x24, 0xc7c7c7c7 # initialize rs1
li x29, 0xc7c7c7c7 # initialize rs2
aes32dsmi x2, x24, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 580)

# Testcase cp_sbox = 200
li x9, 0xc8c8c8c8 # initialize rs1
li x30, 0xc8c8c8c8 # initialize rs2
aes32dsmi x18, x9, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cp_sbox = 201
li x9, 0xc9c9c9c9 # initialize rs1
li x21, 0xc9c9c9c9 # initialize rs2
aes32dsmi x28, x9, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 588)

# Testcase cp_sbox = 202
li x16, 0xcacacaca # initialize rs1
li x24, 0xcacacaca # initialize rs2
aes32dsmi x8, x16, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cp_sbox = 203
li x5, 0xcbcbcbcb # initialize rs1
li x20, 0xcbcbcbcb # initialize rs2
aes32dsmi x11, x5, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 596)

# Testcase cp_sbox = 204
li x11, 0xcccccccc # initialize rs1
li x28, 0xcccccccc # initialize rs2
aes32dsmi x15, x11, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cp_sbox = 205
li x23, 0xcdcdcdcd # initialize rs1
li x18, 0xcdcdcdcd # initialize rs2
aes32dsmi x19, x23, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 604)

# Testcase cp_sbox = 206
li x2, 0xcececece # initialize rs1
li x28, 0xcececece # initialize rs2
aes32dsmi x17, x2, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cp_sbox = 207
li x5, 0xcfcfcfcf # initialize rs1
li x6, 0xcfcfcfcf # initialize rs2
aes32dsmi x31, x5, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 612)

# Testcase cp_sbox = 208
li x25, 0xd0d0d0d0 # initialize rs1
li x10, 0xd0d0d0d0 # initialize rs2
aes32dsmi x19, x25, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cp_sbox = 209
li x26, 0xd1d1d1d1 # initialize rs1
li x11, 0xd1d1d1d1 # initialize rs2
aes32dsmi x28, x26, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cp_sbox = 210
li x13, 0xd2d2d2d2 # initialize rs1
li x19, 0xd2d2d2d2 # initialize rs2
aes32dsmi x7, x13, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cp_sbox = 211
li x1, 0xd3d3d3d3 # initialize rs1
li x29, 0xd3d3d3d3 # initialize rs2
aes32dsmi x2, x1, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 628)

# Testcase cp_sbox = 212
li x27, 0xd4d4d4d4 # initialize rs1
li x31, 0xd4d4d4d4 # initialize rs2
aes32dsmi x23, x27, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 632)

# Testcase cp_sbox = 213
li x10, 0xd5d5d5d5 # initialize rs1
li x12, 0xd5d5d5d5 # initialize rs2
aes32dsmi x16, x10, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 636)

# Testcase cp_sbox = 214
li x17, 0xd6d6d6d6 # initialize rs1
li x7, 0xd6d6d6d6 # initialize rs2
aes32dsmi x14, x17, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cp_sbox = 215
li x5, 0xd7d7d7d7 # initialize rs1
li x13, 0xd7d7d7d7 # initialize rs2
aes32dsmi x19, x5, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 644)

# Testcase cp_sbox = 216
li x24, 0xd8d8d8d8 # initialize rs1
li x11, 0xd8d8d8d8 # initialize rs2
aes32dsmi x9, x24, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cp_sbox = 217
li x24, 0xd9d9d9d9 # initialize rs1
li x8, 0xd9d9d9d9 # initialize rs2
aes32dsmi x18, x24, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 652)

# Testcase cp_sbox = 218
li x7, 0xdadadada # initialize rs1
li x22, 0xdadadada # initialize rs2
aes32dsmi x30, x7, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 656)

# Testcase cp_sbox = 219
li x14, 0xdbdbdbdb # initialize rs1
li x16, 0xdbdbdbdb # initialize rs2
aes32dsmi x21, x14, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 660)

# Testcase cp_sbox = 220
li x13, 0xdcdcdcdc # initialize rs1
li x20, 0xdcdcdcdc # initialize rs2
aes32dsmi x1, x13, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cp_sbox = 221
li x3, 0xdddddddd # initialize rs1
li x27, 0xdddddddd # initialize rs2
aes32dsmi x20, x3, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 668)

# Testcase cp_sbox = 222
li x29, 0xdededede # initialize rs1
li x22, 0xdededede # initialize rs2
aes32dsmi x25, x29, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cp_sbox = 223
li x15, 0xdfdfdfdf # initialize rs1
li x1, 0xdfdfdfdf # initialize rs2
aes32dsmi x16, x15, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 676)

# Testcase cp_sbox = 224
li x2, 0xe0e0e0e0 # initialize rs1
li x23, 0xe0e0e0e0 # initialize rs2
aes32dsmi x29, x2, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 680)

# Testcase cp_sbox = 225
li x19, 0xe1e1e1e1 # initialize rs1
li x14, 0xe1e1e1e1 # initialize rs2
aes32dsmi x5, x19, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 684)

# Testcase cp_sbox = 226
li x31, 0xe2e2e2e2 # initialize rs1
li x1, 0xe2e2e2e2 # initialize rs2
aes32dsmi x29, x31, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cp_sbox = 227
li x18, 0xe3e3e3e3 # initialize rs1
li x20, 0xe3e3e3e3 # initialize rs2
aes32dsmi x26, x18, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 692)

# Testcase cp_sbox = 228
li x2, 0xe4e4e4e4 # initialize rs1
li x14, 0xe4e4e4e4 # initialize rs2
aes32dsmi x11, x2, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cp_sbox = 229
li x8, 0xe5e5e5e5 # initialize rs1
li x28, 0xe5e5e5e5 # initialize rs2
aes32dsmi x3, x8, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 700)

# Testcase cp_sbox = 230
li x7, 0xe6e6e6e6 # initialize rs1
li x27, 0xe6e6e6e6 # initialize rs2
aes32dsmi x11, x7, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cp_sbox = 231
li x5, 0xe7e7e7e7 # initialize rs1
li x18, 0xe7e7e7e7 # initialize rs2
aes32dsmi x24, x5, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 708)

# Testcase cp_sbox = 232
li x31, 0xe8e8e8e8 # initialize rs1
li x29, 0xe8e8e8e8 # initialize rs2
aes32dsmi x9, x31, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cp_sbox = 233
li x18, 0xe9e9e9e9 # initialize rs1
li x9, 0xe9e9e9e9 # initialize rs2
aes32dsmi x2, x18, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 716)

# Testcase cp_sbox = 234
li x24, 0xeaeaeaea # initialize rs1
li x11, 0xeaeaeaea # initialize rs2
aes32dsmi x5, x24, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cp_sbox = 235
li x2, 0xebebebeb # initialize rs1
li x25, 0xebebebeb # initialize rs2
aes32dsmi x29, x2, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 724)

# Testcase cp_sbox = 236
li x9, 0xecececec # initialize rs1
li x19, 0xecececec # initialize rs2
aes32dsmi x13, x9, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cp_sbox = 237
li x12, 0xedededed # initialize rs1
li x23, 0xedededed # initialize rs2
aes32dsmi x31, x12, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 732)

# Testcase cp_sbox = 238
li x10, 0xeeeeeeee # initialize rs1
li x16, 0xeeeeeeee # initialize rs2
aes32dsmi x29, x10, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cp_sbox = 239
li x6, 0xefefefef # initialize rs1
li x7, 0xefefefef # initialize rs2
aes32dsmi x20, x6, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 740)

# Testcase cp_sbox = 240
li x25, 0xf0f0f0f0 # initialize rs1
li x26, 0xf0f0f0f0 # initialize rs2
aes32dsmi x27, x25, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 744)

# Testcase cp_sbox = 241
li x29, 0xf1f1f1f1 # initialize rs1
li x19, 0xf1f1f1f1 # initialize rs2
aes32dsmi x13, x29, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 748)

# Testcase cp_sbox = 242
li x22, 0xf2f2f2f2 # initialize rs1
li x6, 0xf2f2f2f2 # initialize rs2
aes32dsmi x30, x22, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_sbox = 243
li x19, 0xf3f3f3f3 # initialize rs1
li x18, 0xf3f3f3f3 # initialize rs2
aes32dsmi x14, x19, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cp_sbox = 244
li x30, 0xf4f4f4f4 # initialize rs1
li x12, 0xf4f4f4f4 # initialize rs2
aes32dsmi x8, x30, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

# Testcase cp_sbox = 245
li x19, 0xf5f5f5f5 # initialize rs1
li x5, 0xf5f5f5f5 # initialize rs2
aes32dsmi x15, x19, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 764)

# Testcase cp_sbox = 246
li x10, 0xf6f6f6f6 # initialize rs1
li x17, 0xf6f6f6f6 # initialize rs2
aes32dsmi x26, x10, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cp_sbox = 247
li x12, 0xf7f7f7f7 # initialize rs1
li x7, 0xf7f7f7f7 # initialize rs2
aes32dsmi x6, x12, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 772)

# Testcase cp_sbox = 248
li x6, 0xf8f8f8f8 # initialize rs1
li x2, 0xf8f8f8f8 # initialize rs2
aes32dsmi x16, x6, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cp_sbox = 249
li x19, 0xf9f9f9f9 # initialize rs1
li x20, 0xf9f9f9f9 # initialize rs2
aes32dsmi x13, x19, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 780)

# Testcase cp_sbox = 250
li x22, 0xfafafafa # initialize rs1
li x19, 0xfafafafa # initialize rs2
aes32dsmi x27, x22, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cp_sbox = 251
li x5, 0xfbfbfbfb # initialize rs1
li x16, 0xfbfbfbfb # initialize rs2
aes32dsmi x8, x5, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 788)

# Testcase cp_sbox = 252
li x21, 0xfcfcfcfc # initialize rs1
li x1, 0xfcfcfcfc # initialize rs2
aes32dsmi x19, x21, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cp_sbox = 253
li x13, 0xfdfdfdfd # initialize rs1
li x11, 0xfdfdfdfd # initialize rs2
aes32dsmi x27, x13, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

# Testcase cp_sbox = 254
li x19, 0xfefefefe # initialize rs1
li x27, 0xfefefefe # initialize rs2
aes32dsmi x13, x19, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_sbox = 255
li x21, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
aes32dsmi x27, x21, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 804)

.EQU SIGSIZE,2608


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
