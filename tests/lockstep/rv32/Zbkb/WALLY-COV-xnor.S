///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-xnor.S
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
li x0, 0x4e62ed27 # initialize rs1
li x3, 0x5c82f1cc # initialize rs2
xnor x1, x0, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbda58480 # initialize rs1
li x31, 0x5054423b # initialize rs2
xnor x22, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x39150fd8 # initialize rs1
li x12, 0xf6dc876a # initialize rs2
xnor x8, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd54d62d7 # initialize rs1
li x6, 0xd80ab5fd # initialize rs2
xnor x12, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x02c0a162 # initialize rs1
li x16, 0x363fc73e # initialize rs2
xnor x6, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfc007494 # initialize rs1
li x11, 0xc344f2eb # initialize rs2
xnor x9, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe4b42fc # initialize rs1
li x31, 0x9dd70968 # initialize rs2
xnor x29, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6b84f15d # initialize rs1
li x15, 0xfa8446f1 # initialize rs2
xnor x3, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf0397234 # initialize rs1
li x5, 0xb44c42b6 # initialize rs2
xnor x22, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x7e0f6332 # initialize rs1
li x12, 0x5a4e2984 # initialize rs2
xnor x6, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x063971aa # initialize rs1
li x20, 0xc3406a99 # initialize rs2
xnor x3, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa8dc95e9 # initialize rs1
li x2, 0x95395d91 # initialize rs2
xnor x23, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9b9ce845 # initialize rs1
li x26, 0x9026c916 # initialize rs2
xnor x18, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbd090e58 # initialize rs1
li x25, 0x687b68de # initialize rs2
xnor x6, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe2041dc0 # initialize rs1
li x3, 0x7f9dbc16 # initialize rs2
xnor x15, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa35a6547 # initialize rs1
li x21, 0x9a801d0e # initialize rs2
xnor x29, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0779f613 # initialize rs1
li x9, 0xe4446442 # initialize rs2
xnor x8, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb00778b6 # initialize rs1
li x24, 0x9d1f446a # initialize rs2
xnor x3, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xbb5b022b # initialize rs1
li x29, 0xfbc30433 # initialize rs2
xnor x23, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x172cdb41 # initialize rs1
li x2, 0xef75aa97 # initialize rs2
xnor x18, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb75c1cfd # initialize rs1
li x15, 0xfcd2693d # initialize rs2
xnor x12, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x25ddfa35 # initialize rs1
li x15, 0xc5f1dc95 # initialize rs2
xnor x3, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb870526f # initialize rs1
li x24, 0xf1d70d27 # initialize rs2
xnor x8, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x95714718 # initialize rs1
li x7, 0xdf630047 # initialize rs2
xnor x31, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x2b48ae6b # initialize rs1
li x20, 0x476aa42d # initialize rs2
xnor x28, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x0814a009 # initialize rs1
li x10, 0x8621d01b # initialize rs2
xnor x29, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2d395344 # initialize rs1
li x12, 0xcddba2bf # initialize rs2
xnor x11, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf1f5aeb8 # initialize rs1
li x2, 0x8fa45248 # initialize rs2
xnor x5, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc08e0f6b # initialize rs1
li x12, 0xbfd82613 # initialize rs2
xnor x13, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3a5a7e84 # initialize rs1
li x24, 0xbf778953 # initialize rs2
xnor x2, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe6502b5a # initialize rs1
li x8, 0xfd222327 # initialize rs2
xnor x26, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x11c7c8ea # initialize rs1
li x27, 0xac3576c8 # initialize rs2
xnor x6, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x10, 0x799e8247 # initialize rs1
li x0, 0x5805599f # initialize rs2
xnor x1, x10, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0xef0c8609 # initialize rs1
li x1, 0x033ba6c6 # initialize rs2
xnor x21, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xadd1322b # initialize rs1
li x2, 0x1b761941 # initialize rs2
xnor x28, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0xcea02f0f # initialize rs1
li x3, 0xf2f6c525 # initialize rs2
xnor x21, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0xe79bf8e7 # initialize rs1
li x4, 0x223f26ec # initialize rs2
xnor x31, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x9ba962a7 # initialize rs1
li x5, 0x83a899eb # initialize rs2
xnor x13, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xbcd61a8f # initialize rs1
li x6, 0x35416f4c # initialize rs2
xnor x25, x15, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xbb2f1e24 # initialize rs1
li x7, 0xbfdde02e # initialize rs2
xnor x30, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0xf378206f # initialize rs1
li x8, 0x7a67e593 # initialize rs2
xnor x14, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0x6c6d1bd1 # initialize rs1
li x9, 0x47d7738d # initialize rs2
xnor x20, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0xd6864b06 # initialize rs1
li x10, 0x7af9d7b6 # initialize rs2
xnor x6, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x8c3a501d # initialize rs1
li x11, 0x1981632a # initialize rs2
xnor x30, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x14, 0x04d24ceb # initialize rs1
li x12, 0x5655f50c # initialize rs2
xnor x19, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x6fd9b87e # initialize rs1
li x13, 0x7ca847bd # initialize rs2
xnor x18, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xaa5dc8f5 # initialize rs1
li x14, 0x8ac0d585 # initialize rs2
xnor x12, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x1, 0xa76f21c7 # initialize rs1
li x15, 0xa362e219 # initialize rs2
xnor x12, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0xad495b76 # initialize rs1
li x16, 0x2519eca9 # initialize rs2
xnor x9, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0x8f9de353 # initialize rs1
li x17, 0x71c1687f # initialize rs2
xnor x9, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0xff31cf92 # initialize rs1
li x18, 0x83f2cfb0 # initialize rs2
xnor x3, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xb6e6602b # initialize rs1
li x19, 0x772c7c84 # initialize rs2
xnor x25, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0xa0d8f7d6 # initialize rs1
li x20, 0x778842d9 # initialize rs2
xnor x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x5, 0x7a1949c9 # initialize rs1
li x21, 0xbe309260 # initialize rs2
xnor x22, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x1, 0xf402c51a # initialize rs1
li x22, 0x351a7d8d # initialize rs2
xnor x18, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0xaf6ca63f # initialize rs1
li x23, 0x7b421d34 # initialize rs2
xnor x22, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0x73479245 # initialize rs1
li x24, 0x772f798f # initialize rs2
xnor x23, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0x1c4ed382 # initialize rs1
li x25, 0xe9288a89 # initialize rs2
xnor x14, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0x3968826e # initialize rs1
li x26, 0xe8d60aa4 # initialize rs2
xnor x19, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x06556b23 # initialize rs1
li x27, 0xa9064162 # initialize rs2
xnor x25, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xb45f4000 # initialize rs1
li x28, 0x1b6762a8 # initialize rs2
xnor x24, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xd497ea73 # initialize rs1
li x29, 0x476c66ed # initialize rs2
xnor x20, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x7, 0x9459d94e # initialize rs1
li x30, 0xc799d985 # initialize rs2
xnor x22, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x27cca63f # initialize rs1
li x31, 0xd17fdab4 # initialize rs2
xnor x19, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 252)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0x38e71339 # initialize rs1
li x23, 0x5952a4cb # initialize rs2
xnor x0, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x8b82b6e8 # initialize rs1
li x7, 0x9a1d6d93 # initialize rs2
xnor x1, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x25, 0x947ff6aa # initialize rs1
li x9, 0xc00b799e # initialize rs2
xnor x2, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x683a3697 # initialize rs1
li x1, 0xf22e1ece # initialize rs2
xnor x3, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xbe201ba2 # initialize rs1
li x7, 0x771c7d0d # initialize rs2
xnor x4, x12, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x2ffeca7f # initialize rs1
li x22, 0x558a7f91 # initialize rs2
xnor x5, x1, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xbb09748f # initialize rs1
li x31, 0xa67fe767 # initialize rs2
xnor x6, x27, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x97506c63 # initialize rs1
li x22, 0x61470251 # initialize rs2
xnor x7, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0xbe4addcf # initialize rs1
li x20, 0xefa9355f # initialize rs2
xnor x8, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xf0a79e30 # initialize rs1
li x11, 0x1eb3abe7 # initialize rs2
xnor x9, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x412b97f1 # initialize rs1
li x5, 0x7dc4f759 # initialize rs2
xnor x10, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0x4b872871 # initialize rs1
li x19, 0x6f8b3751 # initialize rs2
xnor x11, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xf620802f # initialize rs1
li x24, 0xcbf6c283 # initialize rs2
xnor x12, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x89da9a6f # initialize rs1
li x6, 0x4514799f # initialize rs2
xnor x13, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x49ed3b19 # initialize rs1
li x7, 0x234f430f # initialize rs2
xnor x14, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0xdaf7f5fb # initialize rs1
li x5, 0xecc924f0 # initialize rs2
xnor x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0x70a45415 # initialize rs1
li x29, 0xea95fd01 # initialize rs2
xnor x16, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x3d209bda # initialize rs1
li x8, 0x8dbe6c6c # initialize rs2
xnor x17, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0xb7c49825 # initialize rs1
li x9, 0x621525fb # initialize rs2
xnor x18, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0x12e22db6 # initialize rs1
li x22, 0x3b2f697b # initialize rs2
xnor x19, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x636a3356 # initialize rs1
li x3, 0xcce3058c # initialize rs2
xnor x20, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0xcc78ab67 # initialize rs1
li x30, 0xfae12c2d # initialize rs2
xnor x21, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x13a7ee93 # initialize rs1
li x16, 0x10aa0133 # initialize rs2
xnor x22, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xe874d828 # initialize rs1
li x8, 0xa0db6592 # initialize rs2
xnor x23, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x9, 0xc15baf70 # initialize rs1
li x22, 0x55885ae7 # initialize rs2
xnor x24, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0xa68a58d6 # initialize rs1
li x30, 0x55d7cf03 # initialize rs2
xnor x25, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0xa1529bd1 # initialize rs1
li x17, 0x7705cc0d # initialize rs2
xnor x26, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x8aacf401 # initialize rs1
li x19, 0x60556ca1 # initialize rs2
xnor x27, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x97b1fc1f # initialize rs1
li x12, 0xd68a02e9 # initialize rs2
xnor x28, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x48bc8cf6 # initialize rs1
li x14, 0x4de18781 # initialize rs2
xnor x29, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x21, 0x09b2d105 # initialize rs1
li x13, 0xb19241a8 # initialize rs2
xnor x30, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x8df61ade # initialize rs1
li x29, 0x2c2f6071 # initialize rs2
xnor x31, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x00000000 # initialize rs1
li x24, 0x0e3ee785 # initialize rs2
xnor x17, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x00000001 # initialize rs1
li x31, 0x78ba6729 # initialize rs2
xnor x13, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0x00000002 # initialize rs1
li x5, 0x2b55934d # initialize rs2
xnor x10, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x23, 0x80000000 # initialize rs1
li x19, 0x10d2f671 # initialize rs2
xnor x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x6, 0x8a90101c # initialize rs2
xnor x23, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff # initialize rs1
li x8, 0xd5ee122e # initialize rs2
xnor x2, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x11, 0x7111125b # initialize rs2
xnor x26, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x24, 0x4dbcf215 # initialize rs2
xnor x11, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x26, 0x30fe3e8d # initialize rs2
xnor x24, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x6, 0xcdd9f332 # initialize rs2
xnor x1, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x14, 0x14285ffa # initialize rs2
xnor x28, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x8, 0xce638e37 # initialize rs2
xnor x13, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0xbb7f35c8 # initialize rs1
li x13, 0x00000000 # initialize rs2
xnor x26, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x730d9401 # initialize rs1
li x19, 0x00000001 # initialize rs2
xnor x30, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x38bd453f # initialize rs1
li x15, 0x00000002 # initialize rs2
xnor x6, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x978a4007 # initialize rs1
li x18, 0x80000000 # initialize rs2
xnor x22, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x1903013e # initialize rs1
li x7, 0x80000001 # initialize rs2
xnor x29, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x21, 0x3500b4cc # initialize rs1
li x20, 0x7fffffff # initialize rs2
xnor x22, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x9, 0x734ad1b7 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xnor x26, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x8a35cf66 # initialize rs1
li x22, 0xffffffff # initialize rs2
xnor x7, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xd2446660 # initialize rs1
li x20, 0xfffffffe # initialize rs2
xnor x28, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xd81f2b31 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
xnor x31, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0x15f435b9 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
xnor x8, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0x135f8bcc # initialize rs1
li x10, 0x55555555 # initialize rs2
xnor x16, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
xnor x15, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0x00000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
xnor x21, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x00000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
xnor x20, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x23, 0x00000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
xnor x3, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x10, 0x00000000 # initialize rs1
li x3, 0x80000001 # initialize rs2
xnor x12, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x8, 0x00000000 # initialize rs1
li x11, 0x7fffffff # initialize rs2
xnor x22, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x6, 0x00000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
xnor x28, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x29, 0x00000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
xnor x1, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x00000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
xnor x6, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
xnor x31, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x00000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
xnor x15, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x20, 0x00000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
xnor x16, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x20, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
xnor x23, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x00000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
xnor x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
xnor x10, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x00000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
xnor x7, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x5, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
xnor x16, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x29, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
xnor x19, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x11, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
xnor x28, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
xnor x9, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x00000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
xnor x23, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x16, 0x00000001 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
xnor x19, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0x00000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
xnor x23, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x11, 0x00000001 # initialize rs1
li x27, 0x55555555 # initialize rs2
xnor x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x00000002 # initialize rs1
li x29, 0x00000000 # initialize rs2
xnor x20, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x00000002 # initialize rs1
li x16, 0x00000001 # initialize rs2
xnor x9, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
xnor x29, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x2, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
xnor x12, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x5, 0x00000002 # initialize rs1
li x10, 0x80000001 # initialize rs2
xnor x6, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x1, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
xnor x2, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x7, 0x00000002 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
xnor x2, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x5, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
xnor x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x21, 0x00000002 # initialize rs1
li x30, 0xfffffffe # initialize rs2
xnor x15, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x25, 0x00000002 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
xnor x19, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xnor x6, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x25, 0x00000002 # initialize rs1
li x10, 0x55555555 # initialize rs2
xnor x20, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x9, 0x80000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
xnor x7, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x18, 0x80000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
xnor x22, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x15, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
xnor x20, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
xnor x5, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x22, 0x80000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
xnor x8, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x23, 0x80000000 # initialize rs1
li x11, 0x7fffffff # initialize rs2
xnor x7, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
xnor x9, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x24, 0x80000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
xnor x13, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x28, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
xnor x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x26, 0x80000000 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
xnor x12, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x7, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
xnor x5, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0x80000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
xnor x13, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x3, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
xnor x26, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x31, 0x80000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
xnor x29, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
xnor x8, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x15, 0x80000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
xnor x22, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x9, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
xnor x30, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x7, 0x80000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
xnor x27, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x6, 0x80000001 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
xnor x5, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x21, 0x80000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
xnor x27, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x29, 0x80000001 # initialize rs1
li x24, 0xfffffffe # initialize rs2
xnor x20, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x17, 0x80000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
xnor x15, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x80000001 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xnor x30, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x80000001 # initialize rs1
li x30, 0x55555555 # initialize rs2
xnor x21, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x28, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
xnor x19, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x16, 0x7fffffff # initialize rs1
li x29, 0x00000001 # initialize rs2
xnor x13, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x28, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
xnor x8, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x30, 0x7fffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
xnor x3, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x7fffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
xnor x21, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x30, 0x7fffffff # initialize rs1
li x24, 0x7fffffff # initialize rs2
xnor x3, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x9, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
xnor x16, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x7fffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
xnor x26, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x21, 0xfffffffe # initialize rs2
xnor x17, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x27, 0x7fffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
xnor x31, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x7, 0x7fffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
xnor x24, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x17, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
xnor x1, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x26, 0x7ffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
xnor x30, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x1, 0x7ffffffe # initialize rs1
li x20, 0x00000001 # initialize rs2
xnor x7, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x26, 0x7ffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
xnor x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x28, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
xnor x15, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x29, 0x7ffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
xnor x6, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x17, 0x7ffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
xnor x12, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
xnor x30, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x18, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
xnor x29, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
xnor x30, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x2, 0x7ffffffe # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
xnor x16, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x10, 0x7ffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
xnor x21, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x18, 0x7ffffffe # initialize rs1
li x17, 0x55555555 # initialize rs2
xnor x15, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
xnor x25, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
xnor x31, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
xnor x1, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
xnor x9, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x21, 0xffffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
xnor x28, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x5, 0xffffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
xnor x25, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x27, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xnor x21, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x2, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
xnor x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0xffffffff # initialize rs1
li x5, 0xfffffffe # initialize rs2
xnor x6, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x16, 0xffffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
xnor x3, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xffffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
xnor x30, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x3, 0xffffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
xnor x10, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0xfffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
xnor x28, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0xfffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
xnor x29, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0xfffffffe # initialize rs1
li x28, 0x00000002 # initialize rs2
xnor x8, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x27, 0xfffffffe # initialize rs1
li x31, 0x80000000 # initialize rs2
xnor x30, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x16, 0xfffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
xnor x15, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x25, 0xfffffffe # initialize rs1
li x22, 0x7fffffff # initialize rs2
xnor x14, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x17, 0xfffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
xnor x1, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x13, 0xfffffffe # initialize rs1
li x22, 0xffffffff # initialize rs2
xnor x14, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
xnor x2, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x2, 0xfffffffe # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
xnor x8, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x1, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
xnor x18, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x13, 0xfffffffe # initialize rs1
li x10, 0x55555555 # initialize rs2
xnor x8, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x15, 0x5bbc8872 # initialize rs1
li x11, 0x00000000 # initialize rs2
xnor x9, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x1, 0x5bbc8872 # initialize rs1
li x8, 0x00000001 # initialize rs2
xnor x6, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x16, 0x5bbc8872 # initialize rs1
li x14, 0x00000002 # initialize rs2
xnor x29, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x10, 0x5bbc8872 # initialize rs1
li x23, 0x80000000 # initialize rs2
xnor x9, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x30, 0x5bbc8872 # initialize rs1
li x20, 0x80000001 # initialize rs2
xnor x27, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x8, 0x5bbc8872 # initialize rs1
li x30, 0x7fffffff # initialize rs2
xnor x15, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x26, 0x5bbc8872 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
xnor x19, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x9, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
xnor x26, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x20, 0x5bbc8872 # initialize rs1
li x28, 0xfffffffe # initialize rs2
xnor x8, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x19, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
xnor x7, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x30, 0x5bbc8872 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
xnor x9, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x18, 0x5bbc8872 # initialize rs1
li x23, 0x55555555 # initialize rs2
xnor x30, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x6, 0xaaaaaaaa # initialize rs1
li x16, 0x00000000 # initialize rs2
xnor x17, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x21, 0xaaaaaaaa # initialize rs1
li x27, 0x00000001 # initialize rs2
xnor x29, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x13, 0xaaaaaaaa # initialize rs1
li x6, 0x00000002 # initialize rs2
xnor x21, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x8, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
xnor x21, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x30, 0x80000001 # initialize rs2
xnor x2, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x24, 0xaaaaaaaa # initialize rs1
li x14, 0x7fffffff # initialize rs2
xnor x1, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x5, 0xaaaaaaaa # initialize rs1
li x22, 0x7ffffffe # initialize rs2
xnor x3, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaa # initialize rs1
li x19, 0xffffffff # initialize rs2
xnor x22, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
xnor x5, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x24, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
xnor x18, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
xnor x3, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
xnor x27, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x14, 0x00000000 # initialize rs2
xnor x3, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x15, 0x55555555 # initialize rs1
li x5, 0x00000001 # initialize rs2
xnor x25, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x22, 0x55555555 # initialize rs1
li x12, 0x00000002 # initialize rs2
xnor x27, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x31, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
xnor x14, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x5, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
xnor x23, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x12, 0x55555555 # initialize rs1
li x7, 0x7fffffff # initialize rs2
xnor x19, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x5, 0x55555555 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
xnor x9, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x3, 0x55555555 # initialize rs1
li x7, 0xffffffff # initialize rs2
xnor x1, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x21, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
xnor x3, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x26, 0x55555555 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
xnor x31, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x15, 0x55555555 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
xnor x5, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
xnor x23, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x857ff315 # initialize rs1
li x0, 0x59b18549 # initialize rs2
xnor x5, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0f5d77d9 # initialize rs1
li x1, 0x8e84a4e4 # initialize rs2
xnor x27, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x38b4868d # initialize rs1
li x2, 0x88335237 # initialize rs2
xnor x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc4ceabfd # initialize rs1
li x3, 0xe5937e85 # initialize rs2
xnor x8, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0bfaf7ad # initialize rs1
li x4, 0x434dcb0e # initialize rs2
xnor x21, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e1ffecd # initialize rs1
li x5, 0x643a0695 # initialize rs2
xnor x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc006fff8 # initialize rs1
li x6, 0x46ed4aa4 # initialize rs2
xnor x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x46194f6a # initialize rs1
li x7, 0x319f2020 # initialize rs2
xnor x18, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1b3f5663 # initialize rs1
li x8, 0x2891c86e # initialize rs2
xnor x19, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x26f9dc62 # initialize rs1
li x9, 0xdb5304c0 # initialize rs2
xnor x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x6fd5516f # initialize rs1
li x10, 0xf9305ad7 # initialize rs2
xnor x6, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xab0103d0 # initialize rs1
li x11, 0xa63e257a # initialize rs2
xnor x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdff0cebb # initialize rs1
li x12, 0x6aabfb0f # initialize rs2
xnor x23, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xbbe438d6 # initialize rs1
li x13, 0x62d772fc # initialize rs2
xnor x25, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9f7547b1 # initialize rs1
li x14, 0xc8986b6f # initialize rs2
xnor x11, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc4b71cc2 # initialize rs1
li x15, 0xf309c068 # initialize rs2
xnor x7, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x81e83520 # initialize rs1
li x16, 0xa4f11333 # initialize rs2
xnor x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe69b08f2 # initialize rs1
li x17, 0xe1f7d694 # initialize rs2
xnor x27, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xbc1f2261 # initialize rs1
li x18, 0xaf14adea # initialize rs2
xnor x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x2ffe7bdf # initialize rs1
li x19, 0x3e584653 # initialize rs2
xnor x15, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x25fe4097 # initialize rs1
li x20, 0x84e9cd73 # initialize rs2
xnor x9, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7a86d2a6 # initialize rs1
li x21, 0xa2de88af # initialize rs2
xnor x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd8d7f1ae # initialize rs1
li x22, 0x16f0108d # initialize rs2
xnor x28, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8e3ca52c # initialize rs1
li x23, 0xf627b307 # initialize rs2
xnor x9, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xb59cd70e # initialize rs1
li x24, 0x816c491e # initialize rs2
xnor x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xacf3b5dc # initialize rs1
li x25, 0x55f685c8 # initialize rs2
xnor x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x79e1776e # initialize rs1
li x26, 0x6aa2154b # initialize rs2
xnor x13, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x18c21acc # initialize rs1
li x27, 0x8a11cee1 # initialize rs2
xnor x31, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa312f5fe # initialize rs1
li x28, 0x3205ad94 # initialize rs2
xnor x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x16ed7281 # initialize rs1
li x29, 0x52c34875 # initialize rs2
xnor x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x0688b7a2 # initialize rs1
li x30, 0x0b1212e4 # initialize rs2
xnor x12, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x82eb41a4 # initialize rs1
li x31, 0x166b8498 # initialize rs2
xnor x8, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xbf015bbe # initialize rs1
li x17, 0xe8a9ac98 # initialize rs2
xnor x0, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9249e102 # initialize rs1
li x9, 0xc9dbaff2 # initialize rs2
xnor x1, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x25ca70f7 # initialize rs1
li x1, 0xc5c3e02f # initialize rs2
xnor x2, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6345eb7a # initialize rs1
li x23, 0x77d20c07 # initialize rs2
xnor x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf655c6e3 # initialize rs1
li x7, 0xcdbb947e # initialize rs2
xnor x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0de35e19 # initialize rs1
li x8, 0x7c8d440b # initialize rs2
xnor x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4e0a7767 # initialize rs1
li x9, 0x5e960bcb # initialize rs2
xnor x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc8c5ca3b # initialize rs1
li x29, 0x2324440a # initialize rs2
xnor x7, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4ae79aa4 # initialize rs1
li x3, 0xfa91eeee # initialize rs2
xnor x8, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2c009a7e # initialize rs1
li x29, 0xf4a6de8f # initialize rs2
xnor x9, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x73ad9b27 # initialize rs1
li x27, 0xc3200a65 # initialize rs2
xnor x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe83ab011 # initialize rs1
li x6, 0xe992907d # initialize rs2
xnor x11, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x33326ed2 # initialize rs1
li x26, 0xf564a322 # initialize rs2
xnor x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xbc99da83 # initialize rs1
li x25, 0xe70d21b5 # initialize rs2
xnor x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3a071a08 # initialize rs1
li x25, 0xefc9b601 # initialize rs2
xnor x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x370ba636 # initialize rs1
li x12, 0x1ea6c290 # initialize rs2
xnor x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8b1bdc34 # initialize rs1
li x31, 0x4094e44c # initialize rs2
xnor x16, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x84e651d3 # initialize rs1
li x2, 0x39bc364f # initialize rs2
xnor x17, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x411f1419 # initialize rs1
li x18, 0xadd83701 # initialize rs2
xnor x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x2af1d747 # initialize rs1
li x23, 0xef402cbc # initialize rs2
xnor x19, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x60e21edc # initialize rs1
li x25, 0x3914735d # initialize rs2
xnor x20, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x83e459af # initialize rs1
li x21, 0x43b23a6a # initialize rs2
xnor x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1158664e # initialize rs1
li x15, 0x8aa7dd7c # initialize rs2
xnor x22, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x68671d55 # initialize rs1
li x10, 0x321bd6c8 # initialize rs2
xnor x23, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x32249209 # initialize rs1
li x18, 0x5d59d6fd # initialize rs2
xnor x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5a1778aa # initialize rs1
li x28, 0xf8745583 # initialize rs2
xnor x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1da4307d # initialize rs1
li x1, 0xcd952e7d # initialize rs2
xnor x26, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x308620ff # initialize rs1
li x25, 0x1ee485c6 # initialize rs2
xnor x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5cff21ff # initialize rs1
li x13, 0x0e6e0492 # initialize rs2
xnor x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf177fc73 # initialize rs1
li x1, 0x8c6f6e25 # initialize rs2
xnor x29, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xae1c2b8c # initialize rs1
li x19, 0xb331ede4 # initialize rs2
xnor x30, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x327064c2 # initialize rs1
li x10, 0x04e19b8e # initialize rs2
xnor x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0xcd54cb7a # initialize rs1
li x0, 0x94f34ba2 # initialize rs2
xnor x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x2, 0x6daf4ae7 # initialize rs1
li x1, 0x11015dcf # initialize rs2
xnor x1, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0xee7816f1 # initialize rs1
li x2, 0x28f7cf39 # initialize rs2
xnor x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x24, 0x4d86ab48 # initialize rs1
li x3, 0x41de4fa0 # initialize rs2
xnor x3, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x68bffc9a # initialize rs1
li x4, 0x453f0523 # initialize rs2
xnor x4, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x2b54978a # initialize rs1
li x5, 0x7224305b # initialize rs2
xnor x5, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x05e993b1 # initialize rs1
li x6, 0x24d0d539 # initialize rs2
xnor x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x124e16ae # initialize rs1
li x7, 0xabc769f6 # initialize rs2
xnor x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x1, 0x607ac1ce # initialize rs1
li x8, 0x857ccd0f # initialize rs2
xnor x8, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x5, 0x013f550a # initialize rs1
li x9, 0x6f2f524b # initialize rs2
xnor x9, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xb75a8e94 # initialize rs1
li x10, 0xcf00a798 # initialize rs2
xnor x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x9, 0xf8fe5208 # initialize rs1
li x11, 0xcef106f4 # initialize rs2
xnor x11, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x11, 0xaa6dee14 # initialize rs1
li x12, 0x6872687e # initialize rs2
xnor x12, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x25, 0xa7a13cac # initialize rs1
li x13, 0xd2477910 # initialize rs2
xnor x13, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x26, 0xcec8b73e # initialize rs1
li x14, 0xfb528118 # initialize rs2
xnor x14, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x20, 0x856c3d78 # initialize rs1
li x15, 0xcf689f50 # initialize rs2
xnor x15, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x30, 0xae9148ee # initialize rs1
li x16, 0x162d5687 # initialize rs2
xnor x16, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x12, 0xb22a164c # initialize rs1
li x17, 0x9daa4897 # initialize rs2
xnor x17, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0xa80461d7 # initialize rs1
li x18, 0x38dac5f3 # initialize rs2
xnor x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x7, 0x49b8a062 # initialize rs1
li x19, 0x6c29e260 # initialize rs2
xnor x19, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x16, 0x2fe9a75a # initialize rs1
li x20, 0xf435c236 # initialize rs2
xnor x20, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x880e266b # initialize rs1
li x21, 0xe32afcc6 # initialize rs2
xnor x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x117dd246 # initialize rs1
li x22, 0x9b3f03fa # initialize rs2
xnor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x22, 0x05af1784 # initialize rs1
li x23, 0x71727a08 # initialize rs2
xnor x23, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x14, 0x6b66b20c # initialize rs1
li x24, 0xf23996bc # initialize rs2
xnor x24, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x16, 0xffe8f628 # initialize rs1
li x25, 0x8d2f0a36 # initialize rs2
xnor x25, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0xbe1ceb86 # initialize rs1
li x26, 0x60f5bf07 # initialize rs2
xnor x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x13, 0xa55bea8d # initialize rs1
li x27, 0x56f92ec2 # initialize rs2
xnor x27, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0x01e6f2df # initialize rs1
li x28, 0x38ca13f9 # initialize rs2
xnor x28, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x13, 0xc47a3721 # initialize rs1
li x29, 0x31cf05cb # initialize rs2
xnor x29, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x26, 0x0b17d6ce # initialize rs1
li x30, 0xc29d35c6 # initialize rs2
xnor x30, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x27, 0x4f3c7848 # initialize rs1
li x31, 0xa88fcfcd # initialize rs2
xnor x31, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x3da29ac5 # initialize rs1
li x0, 0x710d0a30 # initialize rs2
xnor x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6b29ab97 # initialize rs1
li x1, 0x331fb4a2 # initialize rs2
xnor x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3a76fdfb # initialize rs1
li x2, 0x4dea9930 # initialize rs2
xnor x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x7ede5ae2 # initialize rs1
li x3, 0xfc55a990 # initialize rs2
xnor x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd0d19dd6 # initialize rs1
li x4, 0xa72e1168 # initialize rs2
xnor x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfe784979 # initialize rs1
li x5, 0x9a8d047b # initialize rs2
xnor x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa3fecd93 # initialize rs1
li x6, 0x8b1745fc # initialize rs2
xnor x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9e4f9a0 # initialize rs1
li x7, 0xb7f58049 # initialize rs2
xnor x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xf967a25a # initialize rs1
li x8, 0x45cf4f67 # initialize rs2
xnor x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x019475da # initialize rs1
li x9, 0x822b6824 # initialize rs2
xnor x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6202c4d3 # initialize rs1
li x10, 0x50064cf4 # initialize rs2
xnor x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xbd053472 # initialize rs1
li x11, 0x26a15de2 # initialize rs2
xnor x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x52cbfd19 # initialize rs1
li x12, 0xd67138e4 # initialize rs2
xnor x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x9de3b393 # initialize rs1
li x13, 0x09c4c2a0 # initialize rs2
xnor x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xce857efb # initialize rs1
li x14, 0x22196d35 # initialize rs2
xnor x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5f1cc690 # initialize rs1
li x15, 0x06ff96fe # initialize rs2
xnor x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8cd4cafe # initialize rs1
li x16, 0x2631f583 # initialize rs2
xnor x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7954205c # initialize rs1
li x17, 0x698da2fa # initialize rs2
xnor x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x31e261c6 # initialize rs1
li x18, 0x98562939 # initialize rs2
xnor x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa76e92ef # initialize rs1
li x19, 0xa3b40a7d # initialize rs2
xnor x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf71d2e5d # initialize rs1
li x20, 0x2be9bcb1 # initialize rs2
xnor x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xae515859 # initialize rs1
li x21, 0x25f3d5cf # initialize rs2
xnor x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x81170abd # initialize rs1
li x22, 0xa6149493 # initialize rs2
xnor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd8e13c54 # initialize rs1
li x23, 0xcbbd4827 # initialize rs2
xnor x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe1bf8c15 # initialize rs1
li x24, 0x511515eb # initialize rs2
xnor x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa5a12513 # initialize rs1
li x25, 0x981e26e5 # initialize rs2
xnor x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x5a924b2b # initialize rs1
li x26, 0x29d5973a # initialize rs2
xnor x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb3557fd8 # initialize rs1
li x27, 0xddf818f0 # initialize rs2
xnor x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc56c5ac4 # initialize rs1
li x28, 0x2e5742bc # initialize rs2
xnor x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x06333fca # initialize rs1
li x29, 0x4b0e3ef6 # initialize rs2
xnor x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x4f63f7b6 # initialize rs1
li x30, 0x9d74615a # initialize rs2
xnor x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xcb5479f0 # initialize rs1
li x31, 0xe2467dbf # initialize rs2
xnor x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x18 # perform first operation
xnor x30, x9, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x24, x9 # perform first operation
xnor x12, x19, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x17, x6 # perform first operation
xnor x2, x5, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x25, x16 # perform first operation
xnor x16, x3, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x3, x30 # perform first operation
xnor x3, x13, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x9, x26 # perform first operation
xnor x9, x22, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x15, x10 # perform first operation
xnor x12, x21, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x28, x15 # perform first operation
xnor x24, x14, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x17, x19 # perform first operation
xnor x14, x26, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x1, x27 # perform first operation
xnor x1, x6, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x9, x24 # perform first operation
xnor x24, x21, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x21, x23 # perform first operation
xnor x30, x29, x31 # perform second (triggering) operation

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
