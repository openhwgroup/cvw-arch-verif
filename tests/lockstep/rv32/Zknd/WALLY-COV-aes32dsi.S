///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknd/WALLY-COV-aes32dsi.S
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
li x0, 0x6d292274 # initialize rs1
li x5, 0x04871211 # initialize rs2
aes32dsi x12, x0, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xcdd06068 # initialize rs1
li x26, 0x262b1a56 # initialize rs2
aes32dsi x27, x1, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb3a5c49b # initialize rs1
li x10, 0xef38ce34 # initialize rs2
aes32dsi x30, x2, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x83e87dac # initialize rs1
li x28, 0x5344a9ae # initialize rs2
aes32dsi x14, x3, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd562ec9d # initialize rs1
li x12, 0x0fb0cb94 # initialize rs2
aes32dsi x17, x4, x12, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3ce2fa05 # initialize rs1
li x18, 0x25f00a0d # initialize rs2
aes32dsi x14, x5, x18, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x18462357 # initialize rs1
li x21, 0x795d2f5d # initialize rs2
aes32dsi x13, x6, x21, 3 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x449f6a8e # initialize rs1
li x3, 0xa908cfe4 # initialize rs2
aes32dsi x14, x7, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb8e7abc7 # initialize rs1
li x1, 0x92f3007c # initialize rs2
aes32dsi x15, x8, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf67f61be # initialize rs1
li x11, 0x948b2ba8 # initialize rs2
aes32dsi x26, x9, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x609aae47 # initialize rs1
li x31, 0x01536d7f # initialize rs2
aes32dsi x13, x10, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x08d16faa # initialize rs1
li x23, 0xb75628ab # initialize rs2
aes32dsi x24, x11, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xae8f0dd4 # initialize rs1
li x14, 0xc91e52ea # initialize rs2
aes32dsi x5, x12, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa923d6e0 # initialize rs1
li x15, 0x4814932a # initialize rs2
aes32dsi x14, x13, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x45962f83 # initialize rs1
li x9, 0xa69adb16 # initialize rs2
aes32dsi x28, x14, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x98e5eb29 # initialize rs1
li x14, 0x2e5b71a3 # initialize rs2
aes32dsi x6, x15, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0dfa59f7 # initialize rs1
li x20, 0xfdb6efdf # initialize rs2
aes32dsi x31, x16, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x31b0ca6b # initialize rs1
li x14, 0xa41eaf04 # initialize rs2
aes32dsi x23, x17, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4424c472 # initialize rs1
li x23, 0xc0b69d2d # initialize rs2
aes32dsi x20, x18, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf026dd04 # initialize rs1
li x6, 0x27c7902a # initialize rs2
aes32dsi x17, x19, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xfdc4fd2d # initialize rs1
li x1, 0xe91d30a4 # initialize rs2
aes32dsi x11, x20, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x144be366 # initialize rs1
li x26, 0x9af04268 # initialize rs2
aes32dsi x12, x21, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x92453e28 # initialize rs1
li x13, 0x020b73ef # initialize rs2
aes32dsi x27, x22, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x331cbc06 # initialize rs1
li x3, 0xa73224a5 # initialize rs2
aes32dsi x25, x23, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf1184610 # initialize rs1
li x1, 0xf1100b51 # initialize rs2
aes32dsi x16, x24, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3b551c50 # initialize rs1
li x30, 0x34e58710 # initialize rs2
aes32dsi x23, x25, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2d3b9c37 # initialize rs1
li x19, 0x59cafbfc # initialize rs2
aes32dsi x9, x26, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbad4e579 # initialize rs1
li x28, 0xaeac7a4b # initialize rs2
aes32dsi x22, x27, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe85374c9 # initialize rs1
li x1, 0xa090a57b # initialize rs2
aes32dsi x27, x28, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x27e4ebdc # initialize rs1
li x3, 0xb5b1813d # initialize rs2
aes32dsi x12, x29, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x098e2991 # initialize rs1
li x2, 0x3990a08f # initialize rs2
aes32dsi x12, x30, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x36ed9d40 # initialize rs1
li x13, 0x4b7e976a # initialize rs2
aes32dsi x3, x31, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0x3c172925 # initialize rs1
li x0, 0xc33557ca # initialize rs2
aes32dsi x5, x26, x0, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x1449a0a7 # initialize rs1
li x1, 0x16aafb50 # initialize rs2
aes32dsi x25, x28, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x26, 0xd9f47274 # initialize rs1
li x2, 0x08a8959c # initialize rs2
aes32dsi x12, x26, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0x1c08707a # initialize rs1
li x3, 0xb4e9bd79 # initialize rs2
aes32dsi x19, x25, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x7ce055df # initialize rs1
li x4, 0xc65883ae # initialize rs2
aes32dsi x12, x13, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x99105c5a # initialize rs1
li x5, 0x07fa040a # initialize rs2
aes32dsi x31, x14, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x1aca4f4c # initialize rs1
li x6, 0xd30312a5 # initialize rs2
aes32dsi x10, x19, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x07f27221 # initialize rs1
li x7, 0x921c85c5 # initialize rs2
aes32dsi x11, x15, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x87aae60f # initialize rs1
li x8, 0x89d24cca # initialize rs2
aes32dsi x26, x24, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x12, 0x09639cf1 # initialize rs1
li x9, 0x0eb78323 # initialize rs2
aes32dsi x8, x12, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0x230c0c46 # initialize rs1
li x10, 0x555a3d44 # initialize rs2
aes32dsi x11, x25, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x13, 0xfb9354aa # initialize rs1
li x11, 0xc8760aed # initialize rs2
aes32dsi x6, x13, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x9544b9f1 # initialize rs1
li x12, 0x2a56c9f8 # initialize rs2
aes32dsi x24, x28, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0xf840fd23 # initialize rs1
li x13, 0x86da1d0f # initialize rs2
aes32dsi x6, x2, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x25, 0x49eb85b3 # initialize rs1
li x14, 0x2c009bc1 # initialize rs2
aes32dsi x6, x25, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0xefc21ac5 # initialize rs1
li x15, 0x6698326d # initialize rs2
aes32dsi x16, x5, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0xbcd5a55b # initialize rs1
li x16, 0xdcc00ad9 # initialize rs2
aes32dsi x21, x10, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x3c009585 # initialize rs1
li x17, 0x2ed2b6ef # initialize rs2
aes32dsi x25, x22, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x93796471 # initialize rs1
li x18, 0x1afc3895 # initialize rs2
aes32dsi x7, x13, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0x5faf53e7 # initialize rs1
li x19, 0xb70d31ab # initialize rs2
aes32dsi x18, x12, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x2a07a2b9 # initialize rs1
li x20, 0xc68a2ded # initialize rs2
aes32dsi x23, x17, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0x3d03b426 # initialize rs1
li x21, 0x87a2a626 # initialize rs2
aes32dsi x5, x20, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x1376c4c5 # initialize rs1
li x22, 0xac0c5f2c # initialize rs2
aes32dsi x31, x24, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x21, 0x9bc5575d # initialize rs1
li x23, 0x01f05fc6 # initialize rs2
aes32dsi x20, x21, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x7, 0x66058cf9 # initialize rs1
li x24, 0x580bbbf5 # initialize rs2
aes32dsi x6, x7, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0x4025f9cb # initialize rs1
li x25, 0x661b97da # initialize rs2
aes32dsi x12, x30, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0x0f3aa83b # initialize rs1
li x26, 0x702ab32d # initialize rs2
aes32dsi x12, x6, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x29, 0xc1df7c72 # initialize rs1
li x27, 0xae1601b8 # initialize rs2
aes32dsi x24, x29, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xdc54cce5 # initialize rs1
li x28, 0x1123753a # initialize rs2
aes32dsi x22, x19, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0x31230115 # initialize rs1
li x29, 0x89ee9c38 # initialize rs2
aes32dsi x25, x17, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0xe0739e36 # initialize rs1
li x30, 0xb1ab44f5 # initialize rs2
aes32dsi x24, x6, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0xfafeb48a # initialize rs1
li x31, 0x9d1763ce # initialize rs2
aes32dsi x30, x12, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 252)

# Testcase cp_rd (Test destination rd = x0)
li x5, 0xdcb84798 # initialize rs1
li x22, 0xcad8c168 # initialize rs2
aes32dsi x0, x5, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x09f163dd # initialize rs1
li x7, 0x672bbfa0 # initialize rs2
aes32dsi x1, x1, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x0e4ba9e3 # initialize rs1
li x2, 0xfe3bfa43 # initialize rs2
aes32dsi x2, x16, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0xa6bbf998 # initialize rs1
li x8, 0x03758796 # initialize rs2
aes32dsi x3, x22, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x3530dd9c # initialize rs1
li x17, 0x51908413 # initialize rs2
aes32dsi x4, x15, x17, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xbfd3c8c8 # initialize rs1
li x6, 0xb6f081b6 # initialize rs2
aes32dsi x5, x20, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
li x2, 0xeef507dd # initialize rs1
li x3, 0x4a4be877 # initialize rs2
aes32dsi x6, x2, x3, 3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x12fbc9c7 # initialize rs1
li x26, 0x21ee938e # initialize rs2
aes32dsi x7, x5, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x9a3f2a49 # initialize rs1
li x31, 0x4eeaa32e # initialize rs2
aes32dsi x8, x11, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x20, 0x522b0088 # initialize rs1
li x19, 0x804f878d # initialize rs2
aes32dsi x9, x20, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x758d5c12 # initialize rs1
li x24, 0xeca20c36 # initialize rs2
aes32dsi x10, x21, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x7d4a062d # initialize rs1
li x15, 0xac300f24 # initialize rs2
aes32dsi x11, x8, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xf1b6ba9a # initialize rs1
li x27, 0x161e984b # initialize rs2
aes32dsi x12, x28, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x3bfcc505 # initialize rs1
li x31, 0xd88a8ebb # initialize rs2
aes32dsi x13, x5, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x7dd497de # initialize rs1
li x10, 0x72bac0ce # initialize rs2
aes32dsi x14, x29, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0xe0b0821b # initialize rs1
li x12, 0xecd8ad56 # initialize rs2
aes32dsi x15, x14, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0x12e46f3d # initialize rs1
li x6, 0xac5eefc0 # initialize rs2
aes32dsi x16, x15, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0x1d3d9d4c # initialize rs1
li x10, 0x4774cc0c # initialize rs2
aes32dsi x17, x29, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x5a5745f2 # initialize rs1
li x6, 0xa2dcc5b9 # initialize rs2
aes32dsi x18, x21, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0x3598f983 # initialize rs1
li x14, 0xd6134f93 # initialize rs2
aes32dsi x19, x10, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xbb809767 # initialize rs1
li x30, 0x06a0d5b7 # initialize rs2
aes32dsi x20, x2, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x18, 0x71c3b4c6 # initialize rs1
li x8, 0x6770c063 # initialize rs2
aes32dsi x21, x18, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0xb1af5453 # initialize rs1
li x19, 0xd8957e13 # initialize rs2
aes32dsi x22, x30, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x22882a7f # initialize rs1
li x29, 0x1d6ed248 # initialize rs2
aes32dsi x23, x9, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0xd4a3c900 # initialize rs1
li x30, 0xe9db9344 # initialize rs2
aes32dsi x24, x17, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x2fa15dfc # initialize rs1
li x14, 0xa0fa5c99 # initialize rs2
aes32dsi x25, x1, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x27, 0x5fdc66a5 # initialize rs1
li x7, 0x35b7877d # initialize rs2
aes32dsi x26, x27, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xcfd1e523 # initialize rs1
li x23, 0x8e0ef0d5 # initialize rs2
aes32dsi x27, x27, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0x8417ed73 # initialize rs1
li x31, 0x667f2f4e # initialize rs2
aes32dsi x28, x25, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0x38629a46 # initialize rs1
li x7, 0x46163b04 # initialize rs2
aes32dsi x29, x3, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0xfbe5b352 # initialize rs1
li x22, 0x4594de34 # initialize rs2
aes32dsi x30, x25, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0xf472e4f2 # initialize rs1
li x18, 0x4e0b5a5b # initialize rs2
aes32dsi x31, x27, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x00000000 # initialize rs1
li x8, 0x2247f730 # initialize rs2
aes32dsi x31, x9, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x27, 0x4506aa51 # initialize rs2
aes32dsi x23, x22, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002 # initialize rs1
li x24, 0x0e35f8b4 # initialize rs2
aes32dsi x1, x11, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x29, 0x80000000 # initialize rs1
li x13, 0x66c7645c # initialize rs2
aes32dsi x2, x29, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x18, 0x80000001 # initialize rs1
li x14, 0x10c67180 # initialize rs2
aes32dsi x11, x18, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
li x27, 0x40e21e03 # initialize rs2
aes32dsi x30, x2, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
li x5, 0x170a2da6 # initialize rs2
aes32dsi x16, x25, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x13, 0xcc5cdf3d # initialize rs2
aes32dsi x14, x28, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x25, 0x46c435cd # initialize rs2
aes32dsi x6, x12, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x21, 0x5bbc8872 # initialize rs1
li x27, 0x76c81376 # initialize rs2
aes32dsi x1, x21, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs1
li x25, 0xd42eba3e # initialize rs2
aes32dsi x7, x8, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x8, 0x64b09b97 # initialize rs2
aes32dsi x15, x31, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x757b2793 # initialize rs1
li x9, 0x00000000 # initialize rs2
aes32dsi x13, x22, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0xe2bbe686 # initialize rs1
li x14, 0x00000001 # initialize rs2
aes32dsi x21, x18, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x917cd4f5 # initialize rs1
li x28, 0x00000002 # initialize rs2
aes32dsi x12, x9, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x20, 0x5ae1b104 # initialize rs1
li x22, 0x80000000 # initialize rs2
aes32dsi x17, x20, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x7a9efdd2 # initialize rs1
li x6, 0x80000001 # initialize rs2
aes32dsi x19, x10, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0x5be30d62 # initialize rs1
li x10, 0x7fffffff # initialize rs2
aes32dsi x11, x17, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x8, 0xad6196f0 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
aes32dsi x17, x8, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xff2bd946 # initialize rs1
li x16, 0xffffffff # initialize rs2
aes32dsi x27, x13, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0x32c0cedd # initialize rs1
li x26, 0xfffffffe # initialize rs2
aes32dsi x18, x22, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x22, 0x63367729 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
aes32dsi x10, x22, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x7, 0x2e38a05f # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
aes32dsi x19, x7, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x17, 0x42fb2fd6 # initialize rs1
li x9, 0x55555555 # initialize rs2
aes32dsi x11, x17, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x10, 0x00000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
aes32dsi x7, x10, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x23, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
aes32dsi x19, x23, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x00000000 # initialize rs1
li x8, 0x00000002 # initialize rs2
aes32dsi x20, x28, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x00000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
aes32dsi x6, x2, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x26, 0x00000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
aes32dsi x15, x26, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x28, 0x00000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
aes32dsi x29, x28, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x23, 0x00000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
aes32dsi x17, x23, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x30, 0x00000000 # initialize rs1
li x15, 0xffffffff # initialize rs2
aes32dsi x6, x30, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x00000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
aes32dsi x11, x27, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x27, 0x00000000 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
aes32dsi x14, x27, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x3, 0x00000000 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
aes32dsi x8, x3, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x3, 0x00000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
aes32dsi x10, x3, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x00000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
aes32dsi x2, x8, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x28, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
aes32dsi x1, x28, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x31, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
aes32dsi x18, x31, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x19, 0x00000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
aes32dsi x3, x19, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
aes32dsi x16, x26, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x2, 0x00000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
aes32dsi x10, x2, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x30, 0x00000001 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
aes32dsi x25, x30, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x26, 0x00000001 # initialize rs1
li x9, 0xffffffff # initialize rs2
aes32dsi x3, x26, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001 # initialize rs1
li x27, 0xfffffffe # initialize rs2
aes32dsi x15, x21, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x25, 0x00000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
aes32dsi x11, x25, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x00000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
aes32dsi x22, x31, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x13, 0x00000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
aes32dsi x22, x13, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
aes32dsi x24, x29, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x00000002 # initialize rs1
li x5, 0x00000001 # initialize rs2
aes32dsi x14, x27, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x1, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
aes32dsi x2, x1, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x25, 0x00000002 # initialize rs1
li x24, 0x80000000 # initialize rs2
aes32dsi x10, x25, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x13, 0x00000002 # initialize rs1
li x22, 0x80000001 # initialize rs2
aes32dsi x16, x13, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x11, 0x00000002 # initialize rs1
li x18, 0x7fffffff # initialize rs2
aes32dsi x3, x11, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x26, 0x00000002 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
aes32dsi x30, x26, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x14, 0x00000002 # initialize rs1
li x8, 0xffffffff # initialize rs2
aes32dsi x17, x14, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x00000002 # initialize rs1
li x6, 0xfffffffe # initialize rs2
aes32dsi x21, x15, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x20, 0x00000002 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
aes32dsi x25, x20, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x7, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
aes32dsi x1, x7, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x3, 0x00000002 # initialize rs1
li x1, 0x55555555 # initialize rs2
aes32dsi x6, x3, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x12, 0x80000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
aes32dsi x8, x12, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x19, 0x80000000 # initialize rs1
li x17, 0x00000001 # initialize rs2
aes32dsi x31, x19, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x29, 0x80000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
aes32dsi x18, x29, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x14, 0x80000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
aes32dsi x17, x14, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
aes32dsi x23, x28, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x27, 0x80000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
aes32dsi x26, x27, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x14, 0x80000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
aes32dsi x30, x14, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x23, 0x80000000 # initialize rs1
li x22, 0xffffffff # initialize rs2
aes32dsi x31, x23, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x18, 0x80000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
aes32dsi x17, x18, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x6, 0x80000000 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
aes32dsi x9, x6, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x3, 0x80000000 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
aes32dsi x30, x3, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x1, 0x80000000 # initialize rs1
li x10, 0x55555555 # initialize rs2
aes32dsi x13, x1, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x15, 0x80000001 # initialize rs1
li x26, 0x00000000 # initialize rs2
aes32dsi x1, x15, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x15, 0x80000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
aes32dsi x25, x15, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0x80000001 # initialize rs1
li x12, 0x00000002 # initialize rs2
aes32dsi x13, x1, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x11, 0x80000001 # initialize rs1
li x17, 0x80000000 # initialize rs2
aes32dsi x5, x11, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x15, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
aes32dsi x10, x15, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x5, 0x80000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
aes32dsi x27, x5, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x31, 0x80000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
aes32dsi x24, x31, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x3, 0x80000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
aes32dsi x18, x3, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x80000001 # initialize rs1
li x14, 0xfffffffe # initialize rs2
aes32dsi x27, x21, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x24, 0x80000001 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
aes32dsi x2, x24, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x17, 0x80000001 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
aes32dsi x3, x17, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x23, 0x80000001 # initialize rs1
li x22, 0x55555555 # initialize rs2
aes32dsi x3, x23, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x24, 0x7fffffff # initialize rs1
li x2, 0x00000000 # initialize rs2
aes32dsi x29, x24, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x12, 0x7fffffff # initialize rs1
li x5, 0x00000001 # initialize rs2
aes32dsi x21, x12, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x27, 0x7fffffff # initialize rs1
li x29, 0x00000002 # initialize rs2
aes32dsi x5, x27, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x1, 0x7fffffff # initialize rs1
li x13, 0x80000000 # initialize rs2
aes32dsi x21, x1, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x9, 0x7fffffff # initialize rs1
li x13, 0x80000001 # initialize rs2
aes32dsi x5, x9, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
aes32dsi x21, x9, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x7, 0x7fffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
aes32dsi x26, x7, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x26, 0x7fffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
aes32dsi x13, x26, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x24, 0x7fffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
aes32dsi x10, x24, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x12, 0x7fffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
aes32dsi x24, x12, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0x7fffffff # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
aes32dsi x16, x6, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x3, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
aes32dsi x16, x3, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x29, 0x7ffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
aes32dsi x15, x29, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x2, 0x7ffffffe # initialize rs1
li x9, 0x00000001 # initialize rs2
aes32dsi x18, x2, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x15, 0x7ffffffe # initialize rs1
li x7, 0x00000002 # initialize rs2
aes32dsi x28, x15, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x7, 0x7ffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
aes32dsi x14, x7, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x14, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
aes32dsi x5, x14, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x3, 0x7ffffffe # initialize rs1
li x25, 0x7fffffff # initialize rs2
aes32dsi x19, x3, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
aes32dsi x15, x22, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffe # initialize rs1
li x27, 0xffffffff # initialize rs2
aes32dsi x23, x17, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
aes32dsi x26, x31, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x28, 0x7ffffffe # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
aes32dsi x2, x28, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x11, 0x7ffffffe # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
aes32dsi x12, x11, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x15, 0x7ffffffe # initialize rs1
li x3, 0x55555555 # initialize rs2
aes32dsi x22, x15, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0xffffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
aes32dsi x7, x24, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0xffffffff # initialize rs1
li x28, 0x00000001 # initialize rs2
aes32dsi x29, x3, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0xffffffff # initialize rs1
li x21, 0x00000002 # initialize rs2
aes32dsi x9, x27, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x7, 0xffffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
aes32dsi x19, x7, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x23, 0xffffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
aes32dsi x11, x23, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x21, 0xffffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
aes32dsi x20, x21, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x14, 0xffffffff # initialize rs1
li x27, 0x7ffffffe # initialize rs2
aes32dsi x6, x14, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x31, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
aes32dsi x3, x31, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x30, 0xffffffff # initialize rs1
li x8, 0xfffffffe # initialize rs2
aes32dsi x13, x30, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x20, 0xffffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
aes32dsi x26, x20, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x24, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
aes32dsi x15, x24, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x30, 0xffffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
aes32dsi x12, x30, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0xfffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
aes32dsi x17, x11, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0xfffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
aes32dsi x9, x17, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0xfffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
aes32dsi x2, x10, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x20, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
aes32dsi x16, x20, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x10, 0xfffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
aes32dsi x11, x10, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x7, 0xfffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
aes32dsi x3, x7, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x13, 0xfffffffe # initialize rs1
li x2, 0x7ffffffe # initialize rs2
aes32dsi x7, x13, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0xfffffffe # initialize rs1
li x2, 0xffffffff # initialize rs2
aes32dsi x17, x9, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
aes32dsi x19, x24, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x23, 0xfffffffe # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
aes32dsi x2, x23, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x25, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
aes32dsi x18, x25, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x18, 0xfffffffe # initialize rs1
li x19, 0x55555555 # initialize rs2
aes32dsi x24, x18, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x1, 0x5bbc8872 # initialize rs1
li x7, 0x00000000 # initialize rs2
aes32dsi x11, x1, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x17, 0x5bbc8872 # initialize rs1
li x14, 0x00000001 # initialize rs2
aes32dsi x10, x17, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x12, 0x5bbc8872 # initialize rs1
li x27, 0x00000002 # initialize rs2
aes32dsi x29, x12, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x8, 0x5bbc8872 # initialize rs1
li x12, 0x80000000 # initialize rs2
aes32dsi x19, x8, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x15, 0x5bbc8872 # initialize rs1
li x22, 0x80000001 # initialize rs2
aes32dsi x20, x15, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x19, 0x5bbc8872 # initialize rs1
li x23, 0x7fffffff # initialize rs2
aes32dsi x31, x19, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x12, 0x5bbc8872 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
aes32dsi x6, x12, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x7, 0x5bbc8872 # initialize rs1
li x23, 0xffffffff # initialize rs2
aes32dsi x15, x7, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x15, 0xfffffffe # initialize rs2
aes32dsi x24, x3, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
aes32dsi x15, x7, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x1, 0x5bbc8872 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
aes32dsi x3, x1, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x15, 0x5bbc8872 # initialize rs1
li x7, 0x55555555 # initialize rs2
aes32dsi x13, x15, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x2, 0xaaaaaaaa # initialize rs1
li x18, 0x00000000 # initialize rs2
aes32dsi x29, x2, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x26, 0xaaaaaaaa # initialize rs1
li x5, 0x00000001 # initialize rs2
aes32dsi x6, x26, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaa # initialize rs1
li x21, 0x00000002 # initialize rs2
aes32dsi x31, x16, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x28, 0xaaaaaaaa # initialize rs1
li x31, 0x80000000 # initialize rs2
aes32dsi x27, x28, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x25, 0xaaaaaaaa # initialize rs1
li x23, 0x80000001 # initialize rs2
aes32dsi x2, x25, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x29, 0xaaaaaaaa # initialize rs1
li x7, 0x7fffffff # initialize rs2
aes32dsi x17, x29, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x15, 0x7ffffffe # initialize rs2
aes32dsi x19, x23, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x1, 0xffffffff # initialize rs2
aes32dsi x20, x31, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x12, 0xaaaaaaaa # initialize rs1
li x23, 0xfffffffe # initialize rs2
aes32dsi x10, x12, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x1, 0xaaaaaaaa # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
aes32dsi x29, x1, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
aes32dsi x26, x1, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x31, 0xaaaaaaaa # initialize rs1
li x18, 0x55555555 # initialize rs2
aes32dsi x1, x31, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x16, 0x55555555 # initialize rs1
li x12, 0x00000000 # initialize rs2
aes32dsi x18, x16, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x27, 0x55555555 # initialize rs1
li x18, 0x00000001 # initialize rs2
aes32dsi x26, x27, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x22, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
aes32dsi x9, x22, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x20, 0x80000000 # initialize rs2
aes32dsi x24, x13, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x26, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
aes32dsi x23, x26, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x18, 0x55555555 # initialize rs1
li x11, 0x7fffffff # initialize rs2
aes32dsi x22, x18, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x15, 0x55555555 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
aes32dsi x1, x15, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x5, 0x55555555 # initialize rs1
li x28, 0xffffffff # initialize rs2
aes32dsi x16, x5, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x24, 0x55555555 # initialize rs1
li x21, 0xfffffffe # initialize rs2
aes32dsi x1, x24, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x1, 0x55555555 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
aes32dsi x24, x1, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x22, 0x55555555 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
aes32dsi x28, x22, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x2, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
aes32dsi x7, x2, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x98f1517f # initialize rs1
li x0, 0x0c69af1e # initialize rs2
aes32dsi x21, x0, x0, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x76fb1a8b # initialize rs1
li x1, 0x6f594404 # initialize rs2
aes32dsi x23, x1, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x67371548 # initialize rs1
li x2, 0xeedf87b3 # initialize rs2
aes32dsi x1, x2, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x70e2f342 # initialize rs1
li x3, 0xf1792eb3 # initialize rs2
aes32dsi x16, x3, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xad5353ef # initialize rs1
li x4, 0x6b43fd0b # initialize rs2
aes32dsi x31, x4, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x773c1b20 # initialize rs1
li x5, 0x534110bd # initialize rs2
aes32dsi x25, x5, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbbc22aad # initialize rs1
li x6, 0x84ebf440 # initialize rs2
aes32dsi x21, x6, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9b8a0640 # initialize rs1
li x7, 0x892aff24 # initialize rs2
aes32dsi x31, x7, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x5562a37b # initialize rs1
li x8, 0x3fe3751f # initialize rs2
aes32dsi x23, x8, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xaf66603d # initialize rs1
li x9, 0x7bdcad00 # initialize rs2
aes32dsi x16, x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe6ee04b1 # initialize rs1
li x10, 0x150c24ea # initialize rs2
aes32dsi x5, x10, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb57d6ddd # initialize rs1
li x11, 0xc3514b99 # initialize rs2
aes32dsi x16, x11, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x85349afb # initialize rs1
li x12, 0x1ea6fb33 # initialize rs2
aes32dsi x12, x12, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x04f4446b # initialize rs1
li x13, 0x009588ea # initialize rs2
aes32dsi x25, x13, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7ccac41c # initialize rs1
li x14, 0xb503e29b # initialize rs2
aes32dsi x8, x14, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x49a60a08 # initialize rs1
li x15, 0xb54f85af # initialize rs2
aes32dsi x28, x15, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x3201b69e # initialize rs1
li x16, 0x978c3150 # initialize rs2
aes32dsi x27, x16, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x838e7026 # initialize rs1
li x17, 0xbd45ef32 # initialize rs2
aes32dsi x16, x17, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x977ebcc6 # initialize rs1
li x18, 0x30a7c96c # initialize rs2
aes32dsi x26, x18, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xfdc482d8 # initialize rs1
li x19, 0x707a1730 # initialize rs2
aes32dsi x19, x19, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x18f1ff48 # initialize rs1
li x20, 0x901bcc2e # initialize rs2
aes32dsi x28, x20, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1b0e1f17 # initialize rs1
li x21, 0x420aeee2 # initialize rs2
aes32dsi x16, x21, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x54780cfd # initialize rs1
li x22, 0xb6563d22 # initialize rs2
aes32dsi x19, x22, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xee5b5b89 # initialize rs1
li x23, 0x40f15d8b # initialize rs2
aes32dsi x6, x23, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x77d2bfab # initialize rs1
li x24, 0x111a4620 # initialize rs2
aes32dsi x10, x24, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd4ff0f7b # initialize rs1
li x25, 0xd160d280 # initialize rs2
aes32dsi x10, x25, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x72a59edb # initialize rs1
li x26, 0x9b0ea7ea # initialize rs2
aes32dsi x9, x26, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x5157b1d0 # initialize rs1
li x27, 0x90d1345e # initialize rs2
aes32dsi x3, x27, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xc112b7df # initialize rs1
li x28, 0xc528cbc8 # initialize rs2
aes32dsi x29, x28, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc9c39c3c # initialize rs1
li x29, 0x10b3c64c # initialize rs2
aes32dsi x16, x29, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x94ef62d0 # initialize rs1
li x30, 0x90133466 # initialize rs2
aes32dsi x17, x30, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x4fca7615 # initialize rs1
li x31, 0xc546b623 # initialize rs2
aes32dsi x26, x31, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf8f11219 # initialize rs1
li x30, 0xb7e6a052 # initialize rs2
aes32dsi x0, x0, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xaa28f0c9 # initialize rs1
li x13, 0x93340d42 # initialize rs2
aes32dsi x1, x1, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4c98586e # initialize rs1
li x30, 0xf2c0ba3e # initialize rs2
aes32dsi x2, x2, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x35467ab5 # initialize rs1
li x27, 0x0b4c092f # initialize rs2
aes32dsi x3, x3, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcc21b4c2 # initialize rs1
li x2, 0xa54fe762 # initialize rs2
aes32dsi x4, x4, x2, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6edadbad # initialize rs1
li x12, 0xbaa51ff0 # initialize rs2
aes32dsi x5, x5, x12, 1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd6683af5 # initialize rs1
li x31, 0xa0d6b009 # initialize rs2
aes32dsi x6, x6, x31, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa9ffd398 # initialize rs1
li x29, 0x7dd93c7c # initialize rs2
aes32dsi x7, x7, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9938d1fc # initialize rs1
li x18, 0x04974f59 # initialize rs2
aes32dsi x8, x8, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2a2b5ca7 # initialize rs1
li x9, 0x32469afa # initialize rs2
aes32dsi x9, x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x524763fc # initialize rs1
li x15, 0x5f801e32 # initialize rs2
aes32dsi x10, x10, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa49cdda3 # initialize rs1
li x16, 0xa7143157 # initialize rs2
aes32dsi x11, x11, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf34dc94c # initialize rs1
li x25, 0x37c9f56b # initialize rs2
aes32dsi x12, x12, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1b365a42 # initialize rs1
li x12, 0xbe06b42a # initialize rs2
aes32dsi x13, x13, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x986b967a # initialize rs1
li x7, 0x61d910d2 # initialize rs2
aes32dsi x14, x14, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdd80c139 # initialize rs1
li x30, 0x9f99a763 # initialize rs2
aes32dsi x15, x15, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3894d951 # initialize rs1
li x18, 0xb2cadd2b # initialize rs2
aes32dsi x16, x16, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe62f1d87 # initialize rs1
li x7, 0x555e04b1 # initialize rs2
aes32dsi x17, x17, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x04866b76 # initialize rs1
li x22, 0x5b3ba7b3 # initialize rs2
aes32dsi x18, x18, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x63726643 # initialize rs1
li x6, 0xea442ef2 # initialize rs2
aes32dsi x19, x19, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2632149c # initialize rs1
li x12, 0x7dcf1b57 # initialize rs2
aes32dsi x20, x20, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x64fdd11c # initialize rs1
li x15, 0xb8ef1a41 # initialize rs2
aes32dsi x21, x21, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x30b826f6 # initialize rs1
li x27, 0xc060988d # initialize rs2
aes32dsi x22, x22, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x673cab67 # initialize rs1
li x13, 0xb1dc8966 # initialize rs2
aes32dsi x23, x23, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7f92cd96 # initialize rs1
li x23, 0xef9a675f # initialize rs2
aes32dsi x24, x24, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf25ac2c4 # initialize rs1
li x18, 0xaed88554 # initialize rs2
aes32dsi x25, x25, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x94c312f0 # initialize rs1
li x7, 0x76407c81 # initialize rs2
aes32dsi x26, x26, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcb1a8c4f # initialize rs1
li x22, 0xcca3277d # initialize rs2
aes32dsi x27, x27, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x32acf588 # initialize rs1
li x3, 0xed2e13b3 # initialize rs2
aes32dsi x28, x28, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb09840d6 # initialize rs1
li x28, 0x77293e86 # initialize rs2
aes32dsi x29, x29, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xed14b1c4 # initialize rs1
li x30, 0xfd9f7a95 # initialize rs2
aes32dsi x30, x30, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa727fb8b # initialize rs1
li x12, 0x854cf82d # initialize rs2
aes32dsi x31, x31, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x30, 0x53c77f16 # initialize rs1
li x0, 0x88514861 # initialize rs2
aes32dsi x0, x30, x0, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x29a6236d # initialize rs1
li x1, 0x039d3ba9 # initialize rs2
aes32dsi x1, x8, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x5bb1caea # initialize rs1
li x2, 0x5543f319 # initialize rs2
aes32dsi x2, x24, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x19, 0xc9ffeb26 # initialize rs1
li x3, 0x844fcccd # initialize rs2
aes32dsi x3, x19, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xff59fd26 # initialize rs1
li x4, 0x5c8445cd # initialize rs2
aes32dsi x4, x30, x4, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x497c4593 # initialize rs1
li x5, 0x220bf2ff # initialize rs2
aes32dsi x5, x29, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xf53027ea # initialize rs1
li x6, 0xe687de50 # initialize rs2
aes32dsi x6, x30, x6, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x19844c84 # initialize rs1
li x7, 0x5240719d # initialize rs2
aes32dsi x7, x22, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0xd5729153 # initialize rs1
li x8, 0xe26cdd51 # initialize rs2
aes32dsi x8, x22, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x11, 0x05ca2220 # initialize rs1
li x9, 0x2390fb94 # initialize rs2
aes32dsi x9, x11, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x7, 0x6f68f66b # initialize rs1
li x10, 0x5d1546db # initialize rs2
aes32dsi x10, x7, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x9, 0x34ec5d08 # initialize rs1
li x11, 0xc5ea08c1 # initialize rs2
aes32dsi x11, x9, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x26, 0xd2456f76 # initialize rs1
li x12, 0x40d61f1d # initialize rs2
aes32dsi x12, x26, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0xd6cf0f94 # initialize rs1
li x13, 0x5c372e0a # initialize rs2
aes32dsi x13, x12, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x2da60a5a # initialize rs1
li x14, 0x52e48609 # initialize rs2
aes32dsi x14, x31, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0x9f1fc892 # initialize rs1
li x15, 0x882a7a17 # initialize rs2
aes32dsi x15, x1, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x4a446c9c # initialize rs1
li x16, 0xf4d291ad # initialize rs2
aes32dsi x16, x14, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x30, 0x37cd71c2 # initialize rs1
li x17, 0x1b7f564a # initialize rs2
aes32dsi x17, x30, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x20, 0x0133e634 # initialize rs1
li x18, 0x6dbf5a00 # initialize rs2
aes32dsi x18, x20, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x23, 0xd5343dfc # initialize rs1
li x19, 0x415fc317 # initialize rs2
aes32dsi x19, x23, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x2, 0x7f9a78da # initialize rs1
li x20, 0x42a79bdb # initialize rs2
aes32dsi x20, x2, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x26, 0x4a67ff91 # initialize rs1
li x21, 0x914050de # initialize rs2
aes32dsi x21, x26, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x20, 0x65db0f1d # initialize rs1
li x22, 0xc341a203 # initialize rs2
aes32dsi x22, x20, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x2, 0xdf54b98c # initialize rs1
li x23, 0x13b86e72 # initialize rs2
aes32dsi x23, x2, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x23, 0x105fc6a9 # initialize rs1
li x24, 0x8b3d446a # initialize rs2
aes32dsi x24, x23, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x22, 0xd1bbeedc # initialize rs1
li x25, 0x76c77cda # initialize rs2
aes32dsi x25, x22, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x22, 0x4cebfade # initialize rs1
li x26, 0xe811396d # initialize rs2
aes32dsi x26, x22, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x28, 0x32ebdf56 # initialize rs1
li x27, 0xb0497417 # initialize rs2
aes32dsi x27, x28, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x9, 0x971ce1c1 # initialize rs1
li x28, 0x0bf4756b # initialize rs2
aes32dsi x28, x9, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x1a7c01ae # initialize rs1
li x29, 0x40dcc276 # initialize rs2
aes32dsi x29, x29, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x18, 0x549abff0 # initialize rs1
li x30, 0x40eeb388 # initialize rs2
aes32dsi x30, x18, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x14, 0x9f46eeab # initialize rs1
li x31, 0xb12ea42c # initialize rs2
aes32dsi x31, x14, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xabec66b0 # initialize rs1
li x0, 0x1e680a58 # initialize rs2
aes32dsi x0, x0, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd08eea9e # initialize rs1
li x1, 0x5ae8cd86 # initialize rs2
aes32dsi x1, x1, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7e7586b9 # initialize rs1
li x2, 0xf2340e5c # initialize rs2
aes32dsi x2, x2, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xe08a9059 # initialize rs1
li x3, 0x67e508b6 # initialize rs2
aes32dsi x3, x3, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4ce92ab6 # initialize rs1
li x4, 0xbec75c12 # initialize rs2
aes32dsi x4, x4, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdb712e6f # initialize rs1
li x5, 0x0ed6a424 # initialize rs2
aes32dsi x5, x5, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1f401ae8 # initialize rs1
li x6, 0xc82f6ab7 # initialize rs2
aes32dsi x6, x6, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1da329da # initialize rs1
li x7, 0xf64a4e65 # initialize rs2
aes32dsi x7, x7, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x9b85c4d5 # initialize rs1
li x8, 0x2520b3dd # initialize rs2
aes32dsi x8, x8, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xcd79fdd6 # initialize rs1
li x9, 0x5c2919fa # initialize rs2
aes32dsi x9, x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xd02abce5 # initialize rs1
li x10, 0xa0fd1076 # initialize rs2
aes32dsi x10, x10, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x67e7eae9 # initialize rs1
li x11, 0x7066c07a # initialize rs2
aes32dsi x11, x11, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb8f7dffc # initialize rs1
li x12, 0x820e5099 # initialize rs2
aes32dsi x12, x12, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x93230440 # initialize rs1
li x13, 0x970428da # initialize rs2
aes32dsi x13, x13, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x35df3834 # initialize rs1
li x14, 0xec12249d # initialize rs2
aes32dsi x14, x14, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x78322d3d # initialize rs1
li x15, 0x259713b9 # initialize rs2
aes32dsi x15, x15, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xcee58d67 # initialize rs1
li x16, 0xe74958d6 # initialize rs2
aes32dsi x16, x16, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x26aceefd # initialize rs1
li x17, 0x7ba8f5ae # initialize rs2
aes32dsi x17, x17, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa2079185 # initialize rs1
li x18, 0x1bff1768 # initialize rs2
aes32dsi x18, x18, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x56681536 # initialize rs1
li x19, 0xa4dcb3e7 # initialize rs2
aes32dsi x19, x19, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x8994b340 # initialize rs1
li x20, 0xcbdfe3d2 # initialize rs2
aes32dsi x20, x20, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xbc9444db # initialize rs1
li x21, 0xaed2bae8 # initialize rs2
aes32dsi x21, x21, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc2c884d5 # initialize rs1
li x22, 0x2e023bd2 # initialize rs2
aes32dsi x22, x22, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x08e43f8f # initialize rs1
li x23, 0xe732b753 # initialize rs2
aes32dsi x23, x23, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7a04cfc0 # initialize rs1
li x24, 0x8686223c # initialize rs2
aes32dsi x24, x24, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x6d0aaa3c # initialize rs1
li x25, 0x289f3d80 # initialize rs2
aes32dsi x25, x25, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x00818251 # initialize rs1
li x26, 0xb8ffda54 # initialize rs2
aes32dsi x26, x26, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xdeda7679 # initialize rs1
li x27, 0x15c50889 # initialize rs2
aes32dsi x27, x27, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xbf805e16 # initialize rs1
li x28, 0x61cf5293 # initialize rs2
aes32dsi x28, x28, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1591d0f4 # initialize rs1
li x29, 0x48862c98 # initialize rs2
aes32dsi x29, x29, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc5f626da # initialize rs1
li x30, 0xd619d023 # initialize rs2
aes32dsi x30, x30, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe2bcee40 # initialize rs1
li x31, 0x1b4fbe1b # initialize rs2
aes32dsi x31, x31, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_bs = 0
li x23, 0x3eccd259 # initialize rs1
li x6, 0x2d62eff6 # initialize rs2
aes32dsi x15, x23, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1568)

# Testcase cp_bs = 1
li x8, 0x5438f9fe # initialize rs1
li x7, 0x327c2531 # initialize rs2
aes32dsi x14, x8, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1572)

# Testcase cp_bs = 2
li x9, 0x786890dc # initialize rs1
li x21, 0xff82d3cf # initialize rs2
aes32dsi x5, x9, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cp_bs = 3
li x10, 0x5ff913f2 # initialize rs1
li x24, 0x1ca16508 # initialize rs2
aes32dsi x20, x10, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1580)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x11, x31 # perform first operation
aes32dsi x17, x25, x6, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x31, x22 # perform first operation
aes32dsi x27, x18, x12, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x25, x22 # perform first operation
aes32dsi x8, x15, x1, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x21, x14 # perform first operation
aes32dsi x6, x6, x31, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x13, x14 # perform first operation
aes32dsi x14, x12, x29, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x9, x25 # perform first operation
aes32dsi x25, x17, x29, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x12, x25 # perform first operation
aes32dsi x10, x1, x3, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x13, x17 # perform first operation
aes32dsi x30, x7, x26, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x20, x1 # perform first operation
aes32dsi x28, x16, x21, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x8, x22 # perform first operation
aes32dsi x8, x25, x19, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x5, x1 # perform first operation
aes32dsi x1, x8, x15, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x8, x7 # perform first operation
aes32dsi x6, x14, x27, 1 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x28, 0x00000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
aes32dsi x16, x28, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1584)

# Testcase cp_sbox = 1
li x6, 0x01010101 # initialize rs1
li x14, 0x01010101 # initialize rs2
aes32dsi x31, x6, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1588)

# Testcase cp_sbox = 2
li x5, 0x02020202 # initialize rs1
li x15, 0x02020202 # initialize rs2
aes32dsi x31, x5, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1592)

# Testcase cp_sbox = 3
li x20, 0x03030303 # initialize rs1
li x23, 0x03030303 # initialize rs2
aes32dsi x8, x20, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1596)

# Testcase cp_sbox = 4
li x23, 0x04040404 # initialize rs1
li x14, 0x04040404 # initialize rs2
aes32dsi x3, x23, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1600)

# Testcase cp_sbox = 5
li x12, 0x05050505 # initialize rs1
li x1, 0x05050505 # initialize rs2
aes32dsi x5, x12, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1604)

# Testcase cp_sbox = 6
li x31, 0x06060606 # initialize rs1
li x7, 0x06060606 # initialize rs2
aes32dsi x1, x31, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1608)

# Testcase cp_sbox = 7
li x24, 0x07070707 # initialize rs1
li x30, 0x07070707 # initialize rs2
aes32dsi x6, x24, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1612)

# Testcase cp_sbox = 8
li x28, 0x08080808 # initialize rs1
li x26, 0x08080808 # initialize rs2
aes32dsi x16, x28, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cp_sbox = 9
li x22, 0x09090909 # initialize rs1
li x20, 0x09090909 # initialize rs2
aes32dsi x10, x22, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1620)

# Testcase cp_sbox = 10
li x17, 0x0a0a0a0a # initialize rs1
li x19, 0x0a0a0a0a # initialize rs2
aes32dsi x30, x17, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1624)

# Testcase cp_sbox = 11
li x30, 0x0b0b0b0b # initialize rs1
li x17, 0x0b0b0b0b # initialize rs2
aes32dsi x14, x30, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1628)

# Testcase cp_sbox = 12
li x20, 0x0c0c0c0c # initialize rs1
li x1, 0x0c0c0c0c # initialize rs2
aes32dsi x17, x20, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1632)

# Testcase cp_sbox = 13
li x25, 0x0d0d0d0d # initialize rs1
li x2, 0x0d0d0d0d # initialize rs2
aes32dsi x28, x25, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1636)

# Testcase cp_sbox = 14
li x5, 0x0e0e0e0e # initialize rs1
li x27, 0x0e0e0e0e # initialize rs2
aes32dsi x30, x5, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cp_sbox = 15
li x1, 0x0f0f0f0f # initialize rs1
li x7, 0x0f0f0f0f # initialize rs2
aes32dsi x27, x1, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1644)

# Testcase cp_sbox = 16
li x20, 0x10101010 # initialize rs1
li x6, 0x10101010 # initialize rs2
aes32dsi x26, x20, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1648)

# Testcase cp_sbox = 17
li x1, 0x11111111 # initialize rs1
li x20, 0x11111111 # initialize rs2
aes32dsi x17, x1, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1652)

# Testcase cp_sbox = 18
li x8, 0x12121212 # initialize rs1
li x28, 0x12121212 # initialize rs2
aes32dsi x22, x8, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1656)

# Testcase cp_sbox = 19
li x24, 0x13131313 # initialize rs1
li x9, 0x13131313 # initialize rs2
aes32dsi x30, x24, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1660)

# Testcase cp_sbox = 20
li x22, 0x14141414 # initialize rs1
li x2, 0x14141414 # initialize rs2
aes32dsi x8, x22, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1664)

# Testcase cp_sbox = 21
li x6, 0x15151515 # initialize rs1
li x9, 0x15151515 # initialize rs2
aes32dsi x11, x6, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1668)

# Testcase cp_sbox = 22
li x26, 0x16161616 # initialize rs1
li x13, 0x16161616 # initialize rs2
aes32dsi x12, x26, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1672)

# Testcase cp_sbox = 23
li x27, 0x17171717 # initialize rs1
li x26, 0x17171717 # initialize rs2
aes32dsi x8, x27, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1676)

# Testcase cp_sbox = 24
li x8, 0x18181818 # initialize rs1
li x19, 0x18181818 # initialize rs2
aes32dsi x9, x8, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1680)

# Testcase cp_sbox = 25
li x13, 0x19191919 # initialize rs1
li x30, 0x19191919 # initialize rs2
aes32dsi x2, x13, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1684)

# Testcase cp_sbox = 26
li x13, 0x1a1a1a1a # initialize rs1
li x15, 0x1a1a1a1a # initialize rs2
aes32dsi x17, x13, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1688)

# Testcase cp_sbox = 27
li x14, 0x1b1b1b1b # initialize rs1
li x25, 0x1b1b1b1b # initialize rs2
aes32dsi x30, x14, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1692)

# Testcase cp_sbox = 28
li x27, 0x1c1c1c1c # initialize rs1
li x7, 0x1c1c1c1c # initialize rs2
aes32dsi x8, x27, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cp_sbox = 29
li x5, 0x1d1d1d1d # initialize rs1
li x9, 0x1d1d1d1d # initialize rs2
aes32dsi x20, x5, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1700)

# Testcase cp_sbox = 30
li x9, 0x1e1e1e1e # initialize rs1
li x19, 0x1e1e1e1e # initialize rs2
aes32dsi x14, x9, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1704)

# Testcase cp_sbox = 31
li x17, 0x1f1f1f1f # initialize rs1
li x14, 0x1f1f1f1f # initialize rs2
aes32dsi x5, x17, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1708)

# Testcase cp_sbox = 32
li x10, 0x20202020 # initialize rs1
li x2, 0x20202020 # initialize rs2
aes32dsi x22, x10, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cp_sbox = 33
li x12, 0x21212121 # initialize rs1
li x6, 0x21212121 # initialize rs2
aes32dsi x29, x12, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1716)

# Testcase cp_sbox = 34
li x18, 0x22222222 # initialize rs1
li x15, 0x22222222 # initialize rs2
aes32dsi x21, x18, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1720)

# Testcase cp_sbox = 35
li x17, 0x23232323 # initialize rs1
li x5, 0x23232323 # initialize rs2
aes32dsi x12, x17, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1724)

# Testcase cp_sbox = 36
li x16, 0x24242424 # initialize rs1
li x13, 0x24242424 # initialize rs2
aes32dsi x1, x16, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1728)

# Testcase cp_sbox = 37
li x11, 0x25252525 # initialize rs1
li x5, 0x25252525 # initialize rs2
aes32dsi x15, x11, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1732)

# Testcase cp_sbox = 38
li x21, 0x26262626 # initialize rs1
li x31, 0x26262626 # initialize rs2
aes32dsi x28, x21, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

# Testcase cp_sbox = 39
li x17, 0x27272727 # initialize rs1
li x8, 0x27272727 # initialize rs2
aes32dsi x2, x17, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1740)

# Testcase cp_sbox = 40
li x24, 0x28282828 # initialize rs1
li x2, 0x28282828 # initialize rs2
aes32dsi x28, x24, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1744)

# Testcase cp_sbox = 41
li x24, 0x29292929 # initialize rs1
li x1, 0x29292929 # initialize rs2
aes32dsi x9, x24, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1748)

# Testcase cp_sbox = 42
li x28, 0x2a2a2a2a # initialize rs1
li x10, 0x2a2a2a2a # initialize rs2
aes32dsi x1, x28, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1752)

# Testcase cp_sbox = 43
li x29, 0x2b2b2b2b # initialize rs1
li x20, 0x2b2b2b2b # initialize rs2
aes32dsi x16, x29, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1756)

# Testcase cp_sbox = 44
li x7, 0x2c2c2c2c # initialize rs1
li x27, 0x2c2c2c2c # initialize rs2
aes32dsi x22, x7, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1760)

# Testcase cp_sbox = 45
li x27, 0x2d2d2d2d # initialize rs1
li x31, 0x2d2d2d2d # initialize rs2
aes32dsi x15, x27, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1764)

# Testcase cp_sbox = 46
li x19, 0x2e2e2e2e # initialize rs1
li x8, 0x2e2e2e2e # initialize rs2
aes32dsi x12, x19, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1768)

# Testcase cp_sbox = 47
li x22, 0x2f2f2f2f # initialize rs1
li x27, 0x2f2f2f2f # initialize rs2
aes32dsi x8, x22, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1772)

# Testcase cp_sbox = 48
li x26, 0x30303030 # initialize rs1
li x25, 0x30303030 # initialize rs2
aes32dsi x19, x26, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

# Testcase cp_sbox = 49
li x13, 0x31313131 # initialize rs1
li x24, 0x31313131 # initialize rs2
aes32dsi x17, x13, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1780)

# Testcase cp_sbox = 50
li x6, 0x32323232 # initialize rs1
li x5, 0x32323232 # initialize rs2
aes32dsi x3, x6, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1784)

# Testcase cp_sbox = 51
li x26, 0x33333333 # initialize rs1
li x13, 0x33333333 # initialize rs2
aes32dsi x5, x26, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1788)

# Testcase cp_sbox = 52
li x10, 0x34343434 # initialize rs1
li x22, 0x34343434 # initialize rs2
aes32dsi x17, x10, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1792)

# Testcase cp_sbox = 53
li x20, 0x35353535 # initialize rs1
li x23, 0x35353535 # initialize rs2
aes32dsi x19, x20, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1796)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 54
li x7, 0x36363636 # initialize rs1
li x19, 0x36363636 # initialize rs2
aes32dsi x12, x7, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_sbox = 55
li x19, 0x37373737 # initialize rs1
li x23, 0x37373737 # initialize rs2
aes32dsi x14, x19, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_sbox = 56
li x17, 0x38383838 # initialize rs1
li x27, 0x38383838 # initialize rs2
aes32dsi x10, x17, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_sbox = 57
li x3, 0x39393939 # initialize rs1
li x10, 0x39393939 # initialize rs2
aes32dsi x16, x3, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 12)

# Testcase cp_sbox = 58
li x16, 0x3a3a3a3a # initialize rs1
li x31, 0x3a3a3a3a # initialize rs2
aes32dsi x10, x16, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_sbox = 59
li x17, 0x3b3b3b3b # initialize rs1
li x18, 0x3b3b3b3b # initialize rs2
aes32dsi x19, x17, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 20)

# Testcase cp_sbox = 60
li x25, 0x3c3c3c3c # initialize rs1
li x22, 0x3c3c3c3c # initialize rs2
aes32dsi x19, x25, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_sbox = 61
li x1, 0x3d3d3d3d # initialize rs1
li x29, 0x3d3d3d3d # initialize rs2
aes32dsi x14, x1, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_sbox = 62
li x21, 0x3e3e3e3e # initialize rs1
li x15, 0x3e3e3e3e # initialize rs2
aes32dsi x10, x21, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_sbox = 63
li x17, 0x3f3f3f3f # initialize rs1
li x3, 0x3f3f3f3f # initialize rs2
aes32dsi x13, x17, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_sbox = 64
li x22, 0x40404040 # initialize rs1
li x3, 0x40404040 # initialize rs2
aes32dsi x2, x22, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase cp_sbox = 65
li x15, 0x41414141 # initialize rs1
li x25, 0x41414141 # initialize rs2
aes32dsi x23, x15, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase cp_sbox = 66
li x15, 0x42424242 # initialize rs1
li x16, 0x42424242 # initialize rs2
aes32dsi x30, x15, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_sbox = 67
li x23, 0x43434343 # initialize rs1
li x20, 0x43434343 # initialize rs2
aes32dsi x10, x23, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 52)

# Testcase cp_sbox = 68
li x21, 0x44444444 # initialize rs1
li x10, 0x44444444 # initialize rs2
aes32dsi x14, x21, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_sbox = 69
li x13, 0x45454545 # initialize rs1
li x21, 0x45454545 # initialize rs2
aes32dsi x28, x13, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_sbox = 70
li x17, 0x46464646 # initialize rs1
li x27, 0x46464646 # initialize rs2
aes32dsi x29, x17, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cp_sbox = 71
li x28, 0x47474747 # initialize rs1
li x27, 0x47474747 # initialize rs2
aes32dsi x13, x28, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 68)

# Testcase cp_sbox = 72
li x26, 0x48484848 # initialize rs1
li x13, 0x48484848 # initialize rs2
aes32dsi x5, x26, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_sbox = 73
li x31, 0x49494949 # initialize rs1
li x23, 0x49494949 # initialize rs2
aes32dsi x30, x31, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_sbox = 74
li x21, 0x4a4a4a4a # initialize rs1
li x3, 0x4a4a4a4a # initialize rs2
aes32dsi x12, x21, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_sbox = 75
li x10, 0x4b4b4b4b # initialize rs1
li x13, 0x4b4b4b4b # initialize rs2
aes32dsi x25, x10, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 84)

# Testcase cp_sbox = 76
li x23, 0x4c4c4c4c # initialize rs1
li x2, 0x4c4c4c4c # initialize rs2
aes32dsi x3, x23, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cp_sbox = 77
li x11, 0x4d4d4d4d # initialize rs1
li x9, 0x4d4d4d4d # initialize rs2
aes32dsi x18, x11, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 92)

# Testcase cp_sbox = 78
li x21, 0x4e4e4e4e # initialize rs1
li x26, 0x4e4e4e4e # initialize rs2
aes32dsi x16, x21, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_sbox = 79
li x22, 0x4f4f4f4f # initialize rs1
li x20, 0x4f4f4f4f # initialize rs2
aes32dsi x28, x22, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 100)

# Testcase cp_sbox = 80
li x5, 0x50505050 # initialize rs1
li x10, 0x50505050 # initialize rs2
aes32dsi x19, x5, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_sbox = 81
li x7, 0x51515151 # initialize rs1
li x17, 0x51515151 # initialize rs2
aes32dsi x8, x7, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_sbox = 82
li x13, 0x52525252 # initialize rs1
li x27, 0x52525252 # initialize rs2
aes32dsi x28, x13, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_sbox = 83
li x21, 0x53535353 # initialize rs1
li x3, 0x53535353 # initialize rs2
aes32dsi x10, x21, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_sbox = 84
li x5, 0x54545454 # initialize rs1
li x31, 0x54545454 # initialize rs2
aes32dsi x8, x5, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_sbox = 85
li x24, 0x55555555 # initialize rs1
li x29, 0x55555555 # initialize rs2
aes32dsi x8, x24, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 124)

# Testcase cp_sbox = 86
li x19, 0x56565656 # initialize rs1
li x26, 0x56565656 # initialize rs2
aes32dsi x12, x19, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_sbox = 87
li x23, 0x57575757 # initialize rs1
li x29, 0x57575757 # initialize rs2
aes32dsi x26, x23, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_sbox = 88
li x19, 0x58585858 # initialize rs1
li x1, 0x58585858 # initialize rs2
aes32dsi x22, x19, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_sbox = 89
li x20, 0x59595959 # initialize rs1
li x5, 0x59595959 # initialize rs2
aes32dsi x13, x20, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 140)

# Testcase cp_sbox = 90
li x5, 0x5a5a5a5a # initialize rs1
li x11, 0x5a5a5a5a # initialize rs2
aes32dsi x2, x5, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_sbox = 91
li x31, 0x5b5b5b5b # initialize rs1
li x20, 0x5b5b5b5b # initialize rs2
aes32dsi x13, x31, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cp_sbox = 92
li x25, 0x5c5c5c5c # initialize rs1
li x22, 0x5c5c5c5c # initialize rs2
aes32dsi x9, x25, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_sbox = 93
li x1, 0x5d5d5d5d # initialize rs1
li x10, 0x5d5d5d5d # initialize rs2
aes32dsi x25, x1, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 156)

# Testcase cp_sbox = 94
li x3, 0x5e5e5e5e # initialize rs1
li x25, 0x5e5e5e5e # initialize rs2
aes32dsi x23, x3, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_sbox = 95
li x8, 0x5f5f5f5f # initialize rs1
li x22, 0x5f5f5f5f # initialize rs2
aes32dsi x1, x8, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 164)

# Testcase cp_sbox = 96
li x14, 0x60606060 # initialize rs1
li x25, 0x60606060 # initialize rs2
aes32dsi x11, x14, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_sbox = 97
li x25, 0x61616161 # initialize rs1
li x30, 0x61616161 # initialize rs2
aes32dsi x9, x25, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 172)

# Testcase cp_sbox = 98
li x15, 0x62626262 # initialize rs1
li x8, 0x62626262 # initialize rs2
aes32dsi x19, x15, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_sbox = 99
li x24, 0x63636363 # initialize rs1
li x14, 0x63636363 # initialize rs2
aes32dsi x25, x24, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 180)

# Testcase cp_sbox = 100
li x25, 0x64646464 # initialize rs1
li x31, 0x64646464 # initialize rs2
aes32dsi x10, x25, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_sbox = 101
li x11, 0x65656565 # initialize rs1
li x27, 0x65656565 # initialize rs2
aes32dsi x31, x11, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 188)

# Testcase cp_sbox = 102
li x31, 0x66666666 # initialize rs1
li x1, 0x66666666 # initialize rs2
aes32dsi x22, x31, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_sbox = 103
li x28, 0x67676767 # initialize rs1
li x14, 0x67676767 # initialize rs2
aes32dsi x18, x28, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_sbox = 104
li x30, 0x68686868 # initialize rs1
li x22, 0x68686868 # initialize rs2
aes32dsi x31, x30, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_sbox = 105
li x11, 0x69696969 # initialize rs1
li x31, 0x69696969 # initialize rs2
aes32dsi x28, x11, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 204)

# Testcase cp_sbox = 106
li x31, 0x6a6a6a6a # initialize rs1
li x13, 0x6a6a6a6a # initialize rs2
aes32dsi x20, x31, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_sbox = 107
li x10, 0x6b6b6b6b # initialize rs1
li x12, 0x6b6b6b6b # initialize rs2
aes32dsi x22, x10, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_sbox = 108
li x30, 0x6c6c6c6c # initialize rs1
li x21, 0x6c6c6c6c # initialize rs2
aes32dsi x18, x30, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_sbox = 109
li x13, 0x6d6d6d6d # initialize rs1
li x27, 0x6d6d6d6d # initialize rs2
aes32dsi x30, x13, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 220)

# Testcase cp_sbox = 110
li x1, 0x6e6e6e6e # initialize rs1
li x31, 0x6e6e6e6e # initialize rs2
aes32dsi x18, x1, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_sbox = 111
li x8, 0x6f6f6f6f # initialize rs1
li x10, 0x6f6f6f6f # initialize rs2
aes32dsi x26, x8, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_sbox = 112
li x10, 0x70707070 # initialize rs1
li x28, 0x70707070 # initialize rs2
aes32dsi x11, x10, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cp_sbox = 113
li x23, 0x71717171 # initialize rs1
li x10, 0x71717171 # initialize rs2
aes32dsi x24, x23, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 236)

# Testcase cp_sbox = 114
li x28, 0x72727272 # initialize rs1
li x30, 0x72727272 # initialize rs2
aes32dsi x16, x28, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_sbox = 115
li x13, 0x73737373 # initialize rs1
li x7, 0x73737373 # initialize rs2
aes32dsi x16, x13, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 244)

# Testcase cp_sbox = 116
li x7, 0x74747474 # initialize rs1
li x28, 0x74747474 # initialize rs2
aes32dsi x20, x7, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cp_sbox = 117
li x29, 0x75757575 # initialize rs1
li x17, 0x75757575 # initialize rs2
aes32dsi x9, x29, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cp_sbox = 118
li x28, 0x76767676 # initialize rs1
li x14, 0x76767676 # initialize rs2
aes32dsi x20, x28, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_sbox = 119
li x15, 0x77777777 # initialize rs1
li x28, 0x77777777 # initialize rs2
aes32dsi x1, x15, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_sbox = 120
li x23, 0x78787878 # initialize rs1
li x7, 0x78787878 # initialize rs2
aes32dsi x15, x23, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_sbox = 121
li x20, 0x79797979 # initialize rs1
li x31, 0x79797979 # initialize rs2
aes32dsi x12, x20, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 268)

# Testcase cp_sbox = 122
li x20, 0x7a7a7a7a # initialize rs1
li x31, 0x7a7a7a7a # initialize rs2
aes32dsi x28, x20, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cp_sbox = 123
li x11, 0x7b7b7b7b # initialize rs1
li x25, 0x7b7b7b7b # initialize rs2
aes32dsi x27, x11, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 276)

# Testcase cp_sbox = 124
li x3, 0x7c7c7c7c # initialize rs1
li x30, 0x7c7c7c7c # initialize rs2
aes32dsi x28, x3, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cp_sbox = 125
li x22, 0x7d7d7d7d # initialize rs1
li x14, 0x7d7d7d7d # initialize rs2
aes32dsi x2, x22, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 284)

# Testcase cp_sbox = 126
li x26, 0x7e7e7e7e # initialize rs1
li x2, 0x7e7e7e7e # initialize rs2
aes32dsi x31, x26, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cp_sbox = 127
li x15, 0x7f7f7f7f # initialize rs1
li x30, 0x7f7f7f7f # initialize rs2
aes32dsi x8, x15, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 292)

# Testcase cp_sbox = 128
li x19, 0x80808080 # initialize rs1
li x24, 0x80808080 # initialize rs2
aes32dsi x7, x19, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cp_sbox = 129
li x27, 0x81818181 # initialize rs1
li x5, 0x81818181 # initialize rs2
aes32dsi x28, x27, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 300)

# Testcase cp_sbox = 130
li x28, 0x82828282 # initialize rs1
li x6, 0x82828282 # initialize rs2
aes32dsi x22, x28, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cp_sbox = 131
li x25, 0x83838383 # initialize rs1
li x19, 0x83838383 # initialize rs2
aes32dsi x15, x25, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 308)

# Testcase cp_sbox = 132
li x9, 0x84848484 # initialize rs1
li x11, 0x84848484 # initialize rs2
aes32dsi x1, x9, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 312)

# Testcase cp_sbox = 133
li x31, 0x85858585 # initialize rs1
li x12, 0x85858585 # initialize rs2
aes32dsi x7, x31, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 316)

# Testcase cp_sbox = 134
li x1, 0x86868686 # initialize rs1
li x15, 0x86868686 # initialize rs2
aes32dsi x11, x1, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 320)

# Testcase cp_sbox = 135
li x22, 0x87878787 # initialize rs1
li x1, 0x87878787 # initialize rs2
aes32dsi x28, x22, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 324)

# Testcase cp_sbox = 136
li x14, 0x88888888 # initialize rs1
li x22, 0x88888888 # initialize rs2
aes32dsi x9, x14, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_sbox = 137
li x1, 0x89898989 # initialize rs1
li x17, 0x89898989 # initialize rs2
aes32dsi x8, x1, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 332)

# Testcase cp_sbox = 138
li x18, 0x8a8a8a8a # initialize rs1
li x3, 0x8a8a8a8a # initialize rs2
aes32dsi x24, x18, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 336)

# Testcase cp_sbox = 139
li x15, 0x8b8b8b8b # initialize rs1
li x23, 0x8b8b8b8b # initialize rs2
aes32dsi x22, x15, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 340)

# Testcase cp_sbox = 140
li x17, 0x8c8c8c8c # initialize rs1
li x20, 0x8c8c8c8c # initialize rs2
aes32dsi x6, x17, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_sbox = 141
li x5, 0x8d8d8d8d # initialize rs1
li x11, 0x8d8d8d8d # initialize rs2
aes32dsi x29, x5, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 348)

# Testcase cp_sbox = 142
li x25, 0x8e8e8e8e # initialize rs1
li x9, 0x8e8e8e8e # initialize rs2
aes32dsi x29, x25, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cp_sbox = 143
li x7, 0x8f8f8f8f # initialize rs1
li x30, 0x8f8f8f8f # initialize rs2
aes32dsi x23, x7, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 356)

# Testcase cp_sbox = 144
li x6, 0x90909090 # initialize rs1
li x3, 0x90909090 # initialize rs2
aes32dsi x2, x6, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_sbox = 145
li x7, 0x91919191 # initialize rs1
li x21, 0x91919191 # initialize rs2
aes32dsi x14, x7, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 364)

# Testcase cp_sbox = 146
li x19, 0x92929292 # initialize rs1
li x10, 0x92929292 # initialize rs2
aes32dsi x26, x19, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cp_sbox = 147
li x30, 0x93939393 # initialize rs1
li x14, 0x93939393 # initialize rs2
aes32dsi x1, x30, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 372)

# Testcase cp_sbox = 148
li x15, 0x94949494 # initialize rs1
li x18, 0x94949494 # initialize rs2
aes32dsi x22, x15, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cp_sbox = 149
li x5, 0x95959595 # initialize rs1
li x13, 0x95959595 # initialize rs2
aes32dsi x25, x5, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 380)

# Testcase cp_sbox = 150
li x31, 0x96969696 # initialize rs1
li x11, 0x96969696 # initialize rs2
aes32dsi x26, x31, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_sbox = 151
li x31, 0x97979797 # initialize rs1
li x7, 0x97979797 # initialize rs2
aes32dsi x1, x31, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 388)

# Testcase cp_sbox = 152
li x2, 0x98989898 # initialize rs1
li x12, 0x98989898 # initialize rs2
aes32dsi x3, x2, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cp_sbox = 153
li x1, 0x99999999 # initialize rs1
li x9, 0x99999999 # initialize rs2
aes32dsi x18, x1, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 396)

# Testcase cp_sbox = 154
li x12, 0x9a9a9a9a # initialize rs1
li x30, 0x9a9a9a9a # initialize rs2
aes32dsi x9, x12, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_sbox = 155
li x16, 0x9b9b9b9b # initialize rs1
li x11, 0x9b9b9b9b # initialize rs2
aes32dsi x31, x16, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cp_sbox = 156
li x10, 0x9c9c9c9c # initialize rs1
li x3, 0x9c9c9c9c # initialize rs2
aes32dsi x11, x10, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cp_sbox = 157
li x13, 0x9d9d9d9d # initialize rs1
li x25, 0x9d9d9d9d # initialize rs2
aes32dsi x9, x13, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 412)

# Testcase cp_sbox = 158
li x22, 0x9e9e9e9e # initialize rs1
li x15, 0x9e9e9e9e # initialize rs2
aes32dsi x13, x22, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_sbox = 159
li x27, 0x9f9f9f9f # initialize rs1
li x23, 0x9f9f9f9f # initialize rs2
aes32dsi x17, x27, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 420)

# Testcase cp_sbox = 160
li x18, 0xa0a0a0a0 # initialize rs1
li x21, 0xa0a0a0a0 # initialize rs2
aes32dsi x7, x18, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_sbox = 161
li x18, 0xa1a1a1a1 # initialize rs1
li x6, 0xa1a1a1a1 # initialize rs2
aes32dsi x14, x18, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 428)

# Testcase cp_sbox = 162
li x18, 0xa2a2a2a2 # initialize rs1
li x2, 0xa2a2a2a2 # initialize rs2
aes32dsi x14, x18, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_sbox = 163
li x5, 0xa3a3a3a3 # initialize rs1
li x13, 0xa3a3a3a3 # initialize rs2
aes32dsi x16, x5, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 436)

# Testcase cp_sbox = 164
li x8, 0xa4a4a4a4 # initialize rs1
li x21, 0xa4a4a4a4 # initialize rs2
aes32dsi x1, x8, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cp_sbox = 165
li x1, 0xa5a5a5a5 # initialize rs1
li x11, 0xa5a5a5a5 # initialize rs2
aes32dsi x26, x1, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 444)

# Testcase cp_sbox = 166
li x5, 0xa6a6a6a6 # initialize rs1
li x22, 0xa6a6a6a6 # initialize rs2
aes32dsi x10, x5, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_sbox = 167
li x25, 0xa7a7a7a7 # initialize rs1
li x24, 0xa7a7a7a7 # initialize rs2
aes32dsi x5, x25, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 452)

# Testcase cp_sbox = 168
li x5, 0xa8a8a8a8 # initialize rs1
li x8, 0xa8a8a8a8 # initialize rs2
aes32dsi x31, x5, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_sbox = 169
li x2, 0xa9a9a9a9 # initialize rs1
li x18, 0xa9a9a9a9 # initialize rs2
aes32dsi x1, x2, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 460)

# Testcase cp_sbox = 170
li x28, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
aes32dsi x11, x28, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_sbox = 171
li x2, 0xabababab # initialize rs1
li x18, 0xabababab # initialize rs2
aes32dsi x28, x2, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 468)

# Testcase cp_sbox = 172
li x14, 0xacacacac # initialize rs1
li x1, 0xacacacac # initialize rs2
aes32dsi x7, x14, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cp_sbox = 173
li x19, 0xadadadad # initialize rs1
li x21, 0xadadadad # initialize rs2
aes32dsi x29, x19, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cp_sbox = 174
li x21, 0xaeaeaeae # initialize rs1
li x8, 0xaeaeaeae # initialize rs2
aes32dsi x16, x21, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cp_sbox = 175
li x31, 0xafafafaf # initialize rs1
li x13, 0xafafafaf # initialize rs2
aes32dsi x26, x31, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 484)

# Testcase cp_sbox = 176
li x20, 0xb0b0b0b0 # initialize rs1
li x27, 0xb0b0b0b0 # initialize rs2
aes32dsi x17, x20, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cp_sbox = 177
li x29, 0xb1b1b1b1 # initialize rs1
li x20, 0xb1b1b1b1 # initialize rs2
aes32dsi x7, x29, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 492)

# Testcase cp_sbox = 178
li x28, 0xb2b2b2b2 # initialize rs1
li x18, 0xb2b2b2b2 # initialize rs2
aes32dsi x3, x28, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_sbox = 179
li x10, 0xb3b3b3b3 # initialize rs1
li x1, 0xb3b3b3b3 # initialize rs2
aes32dsi x12, x10, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cp_sbox = 180
li x25, 0xb4b4b4b4 # initialize rs1
li x18, 0xb4b4b4b4 # initialize rs2
aes32dsi x2, x25, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cp_sbox = 181
li x27, 0xb5b5b5b5 # initialize rs1
li x18, 0xb5b5b5b5 # initialize rs2
aes32dsi x19, x27, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 508)

# Testcase cp_sbox = 182
li x24, 0xb6b6b6b6 # initialize rs1
li x7, 0xb6b6b6b6 # initialize rs2
aes32dsi x3, x24, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cp_sbox = 183
li x6, 0xb7b7b7b7 # initialize rs1
li x10, 0xb7b7b7b7 # initialize rs2
aes32dsi x7, x6, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 516)

# Testcase cp_sbox = 184
li x14, 0xb8b8b8b8 # initialize rs1
li x16, 0xb8b8b8b8 # initialize rs2
aes32dsi x20, x14, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cp_sbox = 185
li x17, 0xb9b9b9b9 # initialize rs1
li x31, 0xb9b9b9b9 # initialize rs2
aes32dsi x27, x17, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 524)

# Testcase cp_sbox = 186
li x10, 0xbabababa # initialize rs1
li x9, 0xbabababa # initialize rs2
aes32dsi x7, x10, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cp_sbox = 187
li x8, 0xbbbbbbbb # initialize rs1
li x14, 0xbbbbbbbb # initialize rs2
aes32dsi x23, x8, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 532)

# Testcase cp_sbox = 188
li x9, 0xbcbcbcbc # initialize rs1
li x2, 0xbcbcbcbc # initialize rs2
aes32dsi x17, x9, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cp_sbox = 189
li x3, 0xbdbdbdbd # initialize rs1
li x14, 0xbdbdbdbd # initialize rs2
aes32dsi x6, x3, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 540)

# Testcase cp_sbox = 190
li x24, 0xbebebebe # initialize rs1
li x9, 0xbebebebe # initialize rs2
aes32dsi x28, x24, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_sbox = 191
li x9, 0xbfbfbfbf # initialize rs1
li x27, 0xbfbfbfbf # initialize rs2
aes32dsi x1, x9, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 548)

# Testcase cp_sbox = 192
li x30, 0xc0c0c0c0 # initialize rs1
li x21, 0xc0c0c0c0 # initialize rs2
aes32dsi x13, x30, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_sbox = 193
li x31, 0xc1c1c1c1 # initialize rs1
li x24, 0xc1c1c1c1 # initialize rs2
aes32dsi x11, x31, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 556)

# Testcase cp_sbox = 194
li x11, 0xc2c2c2c2 # initialize rs1
li x21, 0xc2c2c2c2 # initialize rs2
aes32dsi x30, x11, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cp_sbox = 195
li x7, 0xc3c3c3c3 # initialize rs1
li x21, 0xc3c3c3c3 # initialize rs2
aes32dsi x31, x7, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 564)

# Testcase cp_sbox = 196
li x13, 0xc4c4c4c4 # initialize rs1
li x2, 0xc4c4c4c4 # initialize rs2
aes32dsi x22, x13, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cp_sbox = 197
li x21, 0xc5c5c5c5 # initialize rs1
li x25, 0xc5c5c5c5 # initialize rs2
aes32dsi x10, x21, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 572)

# Testcase cp_sbox = 198
li x25, 0xc6c6c6c6 # initialize rs1
li x11, 0xc6c6c6c6 # initialize rs2
aes32dsi x8, x25, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_sbox = 199
li x19, 0xc7c7c7c7 # initialize rs1
li x25, 0xc7c7c7c7 # initialize rs2
aes32dsi x23, x19, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 580)

# Testcase cp_sbox = 200
li x28, 0xc8c8c8c8 # initialize rs1
li x6, 0xc8c8c8c8 # initialize rs2
aes32dsi x27, x28, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 584)

# Testcase cp_sbox = 201
li x24, 0xc9c9c9c9 # initialize rs1
li x14, 0xc9c9c9c9 # initialize rs2
aes32dsi x15, x24, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 588)

# Testcase cp_sbox = 202
li x3, 0xcacacaca # initialize rs1
li x24, 0xcacacaca # initialize rs2
aes32dsi x18, x3, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cp_sbox = 203
li x17, 0xcbcbcbcb # initialize rs1
li x10, 0xcbcbcbcb # initialize rs2
aes32dsi x9, x17, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 596)

# Testcase cp_sbox = 204
li x7, 0xcccccccc # initialize rs1
li x25, 0xcccccccc # initialize rs2
aes32dsi x2, x7, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cp_sbox = 205
li x11, 0xcdcdcdcd # initialize rs1
li x15, 0xcdcdcdcd # initialize rs2
aes32dsi x6, x11, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 604)

# Testcase cp_sbox = 206
li x11, 0xcececece # initialize rs1
li x21, 0xcececece # initialize rs2
aes32dsi x6, x11, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cp_sbox = 207
li x14, 0xcfcfcfcf # initialize rs1
li x1, 0xcfcfcfcf # initialize rs2
aes32dsi x28, x14, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 612)

# Testcase cp_sbox = 208
li x31, 0xd0d0d0d0 # initialize rs1
li x15, 0xd0d0d0d0 # initialize rs2
aes32dsi x1, x31, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cp_sbox = 209
li x6, 0xd1d1d1d1 # initialize rs1
li x26, 0xd1d1d1d1 # initialize rs2
aes32dsi x28, x6, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cp_sbox = 210
li x15, 0xd2d2d2d2 # initialize rs1
li x14, 0xd2d2d2d2 # initialize rs2
aes32dsi x29, x15, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_sbox = 211
li x12, 0xd3d3d3d3 # initialize rs1
li x9, 0xd3d3d3d3 # initialize rs2
aes32dsi x20, x12, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 628)

# Testcase cp_sbox = 212
li x30, 0xd4d4d4d4 # initialize rs1
li x10, 0xd4d4d4d4 # initialize rs2
aes32dsi x18, x30, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cp_sbox = 213
li x16, 0xd5d5d5d5 # initialize rs1
li x19, 0xd5d5d5d5 # initialize rs2
aes32dsi x12, x16, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 636)

# Testcase cp_sbox = 214
li x2, 0xd6d6d6d6 # initialize rs1
li x18, 0xd6d6d6d6 # initialize rs2
aes32dsi x17, x2, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_sbox = 215
li x15, 0xd7d7d7d7 # initialize rs1
li x12, 0xd7d7d7d7 # initialize rs2
aes32dsi x21, x15, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 644)

# Testcase cp_sbox = 216
li x14, 0xd8d8d8d8 # initialize rs1
li x30, 0xd8d8d8d8 # initialize rs2
aes32dsi x1, x14, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cp_sbox = 217
li x13, 0xd9d9d9d9 # initialize rs1
li x15, 0xd9d9d9d9 # initialize rs2
aes32dsi x16, x13, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cp_sbox = 218
li x10, 0xdadadada # initialize rs1
li x21, 0xdadadada # initialize rs2
aes32dsi x13, x10, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 656)

# Testcase cp_sbox = 219
li x30, 0xdbdbdbdb # initialize rs1
li x17, 0xdbdbdbdb # initialize rs2
aes32dsi x25, x30, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 660)

# Testcase cp_sbox = 220
li x18, 0xdcdcdcdc # initialize rs1
li x22, 0xdcdcdcdc # initialize rs2
aes32dsi x23, x18, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cp_sbox = 221
li x26, 0xdddddddd # initialize rs1
li x28, 0xdddddddd # initialize rs2
aes32dsi x12, x26, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 668)

# Testcase cp_sbox = 222
li x5, 0xdededede # initialize rs1
li x19, 0xdededede # initialize rs2
aes32dsi x14, x5, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cp_sbox = 223
li x28, 0xdfdfdfdf # initialize rs1
li x9, 0xdfdfdfdf # initialize rs2
aes32dsi x29, x28, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cp_sbox = 224
li x28, 0xe0e0e0e0 # initialize rs1
li x16, 0xe0e0e0e0 # initialize rs2
aes32dsi x9, x28, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cp_sbox = 225
li x14, 0xe1e1e1e1 # initialize rs1
li x17, 0xe1e1e1e1 # initialize rs2
aes32dsi x12, x14, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 684)

# Testcase cp_sbox = 226
li x22, 0xe2e2e2e2 # initialize rs1
li x2, 0xe2e2e2e2 # initialize rs2
aes32dsi x28, x22, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cp_sbox = 227
li x24, 0xe3e3e3e3 # initialize rs1
li x22, 0xe3e3e3e3 # initialize rs2
aes32dsi x16, x24, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cp_sbox = 228
li x2, 0xe4e4e4e4 # initialize rs1
li x9, 0xe4e4e4e4 # initialize rs2
aes32dsi x20, x2, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cp_sbox = 229
li x16, 0xe5e5e5e5 # initialize rs1
li x15, 0xe5e5e5e5 # initialize rs2
aes32dsi x18, x16, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 700)

# Testcase cp_sbox = 230
li x15, 0xe6e6e6e6 # initialize rs1
li x18, 0xe6e6e6e6 # initialize rs2
aes32dsi x7, x15, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cp_sbox = 231
li x3, 0xe7e7e7e7 # initialize rs1
li x14, 0xe7e7e7e7 # initialize rs2
aes32dsi x1, x3, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 708)

# Testcase cp_sbox = 232
li x14, 0xe8e8e8e8 # initialize rs1
li x8, 0xe8e8e8e8 # initialize rs2
aes32dsi x18, x14, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cp_sbox = 233
li x20, 0xe9e9e9e9 # initialize rs1
li x28, 0xe9e9e9e9 # initialize rs2
aes32dsi x6, x20, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 716)

# Testcase cp_sbox = 234
li x10, 0xeaeaeaea # initialize rs1
li x1, 0xeaeaeaea # initialize rs2
aes32dsi x31, x10, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cp_sbox = 235
li x5, 0xebebebeb # initialize rs1
li x8, 0xebebebeb # initialize rs2
aes32dsi x11, x5, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 724)

# Testcase cp_sbox = 236
li x11, 0xecececec # initialize rs1
li x12, 0xecececec # initialize rs2
aes32dsi x14, x11, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cp_sbox = 237
li x14, 0xedededed # initialize rs1
li x11, 0xedededed # initialize rs2
aes32dsi x19, x14, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 732)

# Testcase cp_sbox = 238
li x7, 0xeeeeeeee # initialize rs1
li x19, 0xeeeeeeee # initialize rs2
aes32dsi x9, x7, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cp_sbox = 239
li x20, 0xefefefef # initialize rs1
li x9, 0xefefefef # initialize rs2
aes32dsi x18, x20, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 740)

# Testcase cp_sbox = 240
li x18, 0xf0f0f0f0 # initialize rs1
li x11, 0xf0f0f0f0 # initialize rs2
aes32dsi x6, x18, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 744)

# Testcase cp_sbox = 241
li x17, 0xf1f1f1f1 # initialize rs1
li x22, 0xf1f1f1f1 # initialize rs2
aes32dsi x10, x17, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 748)

# Testcase cp_sbox = 242
li x11, 0xf2f2f2f2 # initialize rs1
li x22, 0xf2f2f2f2 # initialize rs2
aes32dsi x20, x11, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cp_sbox = 243
li x18, 0xf3f3f3f3 # initialize rs1
li x14, 0xf3f3f3f3 # initialize rs2
aes32dsi x19, x18, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 756)

# Testcase cp_sbox = 244
li x27, 0xf4f4f4f4 # initialize rs1
li x12, 0xf4f4f4f4 # initialize rs2
aes32dsi x25, x27, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 760)

# Testcase cp_sbox = 245
li x15, 0xf5f5f5f5 # initialize rs1
li x22, 0xf5f5f5f5 # initialize rs2
aes32dsi x10, x15, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 764)

# Testcase cp_sbox = 246
li x20, 0xf6f6f6f6 # initialize rs1
li x28, 0xf6f6f6f6 # initialize rs2
aes32dsi x26, x20, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cp_sbox = 247
li x24, 0xf7f7f7f7 # initialize rs1
li x17, 0xf7f7f7f7 # initialize rs2
aes32dsi x26, x24, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cp_sbox = 248
li x13, 0xf8f8f8f8 # initialize rs1
li x8, 0xf8f8f8f8 # initialize rs2
aes32dsi x7, x13, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_sbox = 249
li x29, 0xf9f9f9f9 # initialize rs1
li x8, 0xf9f9f9f9 # initialize rs2
aes32dsi x6, x29, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 780)

# Testcase cp_sbox = 250
li x16, 0xfafafafa # initialize rs1
li x22, 0xfafafafa # initialize rs2
aes32dsi x18, x16, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cp_sbox = 251
li x5, 0xfbfbfbfb # initialize rs1
li x7, 0xfbfbfbfb # initialize rs2
aes32dsi x8, x5, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 788)

# Testcase cp_sbox = 252
li x29, 0xfcfcfcfc # initialize rs1
li x21, 0xfcfcfcfc # initialize rs2
aes32dsi x27, x29, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cp_sbox = 253
li x17, 0xfdfdfdfd # initialize rs1
li x15, 0xfdfdfdfd # initialize rs2
aes32dsi x21, x17, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 796)

# Testcase cp_sbox = 254
li x23, 0xfefefefe # initialize rs1
li x30, 0xfefefefe # initialize rs2
aes32dsi x8, x23, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 800)

# Testcase cp_sbox = 255
li x5, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
aes32dsi x22, x5, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 804)

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
