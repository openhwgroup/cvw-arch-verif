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

    

// ******************
// Tests from: WALLY-COV-aes32esmi.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x162051be # initialize rs1
li x28, 0xbdef2da0 # initialize rs2
aes32esmi x8, x0, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa20162bb # initialize rs1
li x14, 0x0a8ec31a # initialize rs2
aes32esmi x10, x1, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xe586314e # initialize rs1
li x22, 0x301c95eb # initialize rs2
aes32esmi x16, x2, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa81f073f # initialize rs1
li x8, 0xc747e5f8 # initialize rs2
aes32esmi x17, x3, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x80edc35b # initialize rs1
li x21, 0x9de3719c # initialize rs2
aes32esmi x26, x4, x21, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd545a791 # initialize rs1
li x11, 0x4bdc1e49 # initialize rs2
aes32esmi x21, x5, x11, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb6a0ef99 # initialize rs1
li x29, 0x745bfc04 # initialize rs2
aes32esmi x28, x6, x29, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfe03b9fb # initialize rs1
li x19, 0xa931c503 # initialize rs2
aes32esmi x17, x7, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd46b00c1 # initialize rs1
li x15, 0x5aa68ec5 # initialize rs2
aes32esmi x24, x8, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xce32d57b # initialize rs1
li x15, 0x23f81893 # initialize rs2
aes32esmi x13, x9, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x74321de1 # initialize rs1
li x7, 0x9e15206c # initialize rs2
aes32esmi x8, x10, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x4eeb2d65 # initialize rs1
li x22, 0x49d23966 # initialize rs2
aes32esmi x25, x11, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3732b4da # initialize rs1
li x28, 0xdd5bc021 # initialize rs2
aes32esmi x26, x12, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xece79c72 # initialize rs1
li x6, 0x3eaa0ee6 # initialize rs2
aes32esmi x28, x13, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc098db35 # initialize rs1
li x10, 0x4888e682 # initialize rs2
aes32esmi x17, x14, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x198904ab # initialize rs1
li x16, 0x6660c3d5 # initialize rs2
aes32esmi x25, x15, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x82b27973 # initialize rs1
li x24, 0x7edb4e3f # initialize rs2
aes32esmi x26, x16, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x80a4bff1 # initialize rs1
li x15, 0xb5fead24 # initialize rs2
aes32esmi x18, x17, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x1660bf2a # initialize rs1
li x25, 0xfc41ba5c # initialize rs2
aes32esmi x13, x18, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xbebf5576 # initialize rs1
li x21, 0x9102de02 # initialize rs2
aes32esmi x6, x19, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x513c21e9 # initialize rs1
li x25, 0xdb6153ed # initialize rs2
aes32esmi x7, x20, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xcf9519f9 # initialize rs1
li x8, 0x32125057 # initialize rs2
aes32esmi x19, x21, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb6cec09b # initialize rs1
li x24, 0x2bc277f6 # initialize rs2
aes32esmi x15, x22, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x455ee0ed # initialize rs1
li x14, 0xd15ee140 # initialize rs2
aes32esmi x10, x23, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xef43e5be # initialize rs1
li x3, 0x5e161e9d # initialize rs2
aes32esmi x13, x24, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9fde3dba # initialize rs1
li x3, 0x7f9ea529 # initialize rs2
aes32esmi x29, x25, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x232cc73d # initialize rs1
li x19, 0x2962748a # initialize rs2
aes32esmi x8, x26, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3cd9151d # initialize rs1
li x28, 0xbbc52c45 # initialize rs2
aes32esmi x31, x27, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x22d36432 # initialize rs1
li x30, 0xa829ea90 # initialize rs2
aes32esmi x3, x28, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd55ca490 # initialize rs1
li x5, 0x38474c48 # initialize rs2
aes32esmi x14, x29, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0511de3c # initialize rs1
li x24, 0x33fe51a3 # initialize rs2
aes32esmi x12, x30, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4603feb6 # initialize rs1
li x28, 0x03784fab # initialize rs2
aes32esmi x9, x31, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0xf2bdc3f2 # initialize rs1
li x0, 0xa475b2c6 # initialize rs2
aes32esmi x28, x27, x0, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x24, 0x3fe772b6 # initialize rs1
li x1, 0xd67234aa # initialize rs2
aes32esmi x14, x24, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0xceb31a2b # initialize rs1
li x2, 0xd2f951ef # initialize rs2
aes32esmi x8, x10, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0x8d10733a # initialize rs1
li x3, 0x159f486a # initialize rs2
aes32esmi x27, x2, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xfe740d45 # initialize rs1
li x4, 0x9bdd39bb # initialize rs2
aes32esmi x30, x19, x4, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x74a8a2d1 # initialize rs1
li x5, 0x1efd05c4 # initialize rs2
aes32esmi x26, x8, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x8b0397a2 # initialize rs1
li x6, 0x9362ae92 # initialize rs2
aes32esmi x9, x14, x6, 3 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x97b60f4a # initialize rs1
li x7, 0x5672a7c5 # initialize rs2
aes32esmi x6, x18, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0xdf64c607 # initialize rs1
li x8, 0x7a2c785e # initialize rs2
aes32esmi x23, x1, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x4bb46d74 # initialize rs1
li x9, 0x8a610d0c # initialize rs2
aes32esmi x7, x17, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x16, 0x5c90847e # initialize rs1
li x10, 0x742bf3a0 # initialize rs2
aes32esmi x9, x16, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0xf9e42106 # initialize rs1
li x11, 0x89eb4856 # initialize rs2
aes32esmi x10, x27, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0x25e4181c # initialize rs1
li x12, 0xa0458c22 # initialize rs2
aes32esmi x24, x8, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x433d556b # initialize rs1
li x13, 0x71a2b547 # initialize rs2
aes32esmi x6, x31, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x20c08ed4 # initialize rs1
li x14, 0x6639606b # initialize rs2
aes32esmi x16, x8, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x0625f8fc # initialize rs1
li x15, 0xfd07d39c # initialize rs2
aes32esmi x18, x5, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0xd1c064c7 # initialize rs1
li x16, 0x82acb52b # initialize rs2
aes32esmi x6, x14, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x70db3bad # initialize rs1
li x17, 0x6b43c850 # initialize rs2
aes32esmi x10, x29, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0xbe87f212 # initialize rs1
li x18, 0x171032b3 # initialize rs2
aes32esmi x17, x2, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x27, 0x005cb5ab # initialize rs1
li x19, 0xb8c645e2 # initialize rs2
aes32esmi x6, x27, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0xa8d507c2 # initialize rs1
li x20, 0xc23df26d # initialize rs2
aes32esmi x17, x29, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x9c2118eb # initialize rs1
li x21, 0x6d30c9d6 # initialize rs2
aes32esmi x23, x12, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x26fc490f # initialize rs1
li x22, 0x77853b6a # initialize rs2
aes32esmi x30, x28, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x21, 0x69e0ec50 # initialize rs1
li x23, 0xd07579f6 # initialize rs2
aes32esmi x22, x21, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x249138b5 # initialize rs1
li x24, 0xff048608 # initialize rs2
aes32esmi x26, x31, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0xff103cc3 # initialize rs1
li x25, 0xe9e49a2f # initialize rs2
aes32esmi x21, x16, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0xfb0573c6 # initialize rs1
li x26, 0xdf1baee6 # initialize rs2
aes32esmi x7, x31, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x175524cc # initialize rs1
li x27, 0x05c502e6 # initialize rs2
aes32esmi x9, x25, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xcaf4472f # initialize rs1
li x28, 0x148c99bd # initialize rs2
aes32esmi x19, x30, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x6a068202 # initialize rs1
li x29, 0xb6f85fb7 # initialize rs2
aes32esmi x25, x27, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0x69b73dea # initialize rs1
li x30, 0x9f295443 # initialize rs2
aes32esmi x22, x10, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0x507328c0 # initialize rs1
li x31, 0xfbb807bc # initialize rs2
aes32esmi x16, x30, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 252)

# Testcase cp_rd (Test destination rd = x0)
li x27, 0x5edf9810 # initialize rs1
li x17, 0xde3f9eb9 # initialize rs2
aes32esmi x0, x27, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0xcead891f # initialize rs1
li x28, 0x737c89cf # initialize rs2
aes32esmi x1, x24, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x59553835 # initialize rs1
li x17, 0x699563c3 # initialize rs2
aes32esmi x2, x13, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x16fa2e97 # initialize rs1
li x15, 0x3a43ffdc # initialize rs2
aes32esmi x3, x3, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x2f19a769 # initialize rs1
li x30, 0x314cb41c # initialize rs2
aes32esmi x4, x10, x30, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xdedc573d # initialize rs1
li x25, 0xf8490994 # initialize rs2
aes32esmi x5, x15, x25, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x5cf21598 # initialize rs1
li x29, 0x2914fa69 # initialize rs2
aes32esmi x6, x1, x29, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x5f41e584 # initialize rs1
li x23, 0x7006a066 # initialize rs2
aes32esmi x7, x6, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x6, 0x8e2e1a4e # initialize rs1
li x5, 0x9735068a # initialize rs2
aes32esmi x8, x6, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x19a5c8dd # initialize rs1
li x25, 0x9ce22dcb # initialize rs2
aes32esmi x9, x22, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x02719ae0 # initialize rs1
li x22, 0xf62ed074 # initialize rs2
aes32esmi x10, x5, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x2538ebce # initialize rs1
li x28, 0xcd9f406d # initialize rs2
aes32esmi x11, x19, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0xc06dcc6b # initialize rs1
li x1, 0x91b27750 # initialize rs2
aes32esmi x12, x14, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x546f0e34 # initialize rs1
li x13, 0x62dff90e # initialize rs2
aes32esmi x13, x21, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0xd8539e69 # initialize rs1
li x5, 0xc6a78c45 # initialize rs2
aes32esmi x14, x29, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0x0f66775b # initialize rs1
li x3, 0xd705d61d # initialize rs2
aes32esmi x15, x31, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x5e84b5a4 # initialize rs1
li x22, 0xfab81dfc # initialize rs2
aes32esmi x16, x10, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0xb27ff0c6 # initialize rs1
li x24, 0x04cac157 # initialize rs2
aes32esmi x17, x13, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x346dde75 # initialize rs1
li x12, 0xd6b5ed98 # initialize rs2
aes32esmi x18, x30, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0xe8cc645c # initialize rs1
li x26, 0xd2364fe2 # initialize rs2
aes32esmi x19, x31, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x15, 0x97b1b1cc # initialize rs1
li x1, 0x1e918e18 # initialize rs2
aes32esmi x20, x15, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0xb1507c0e # initialize rs1
li x24, 0x9fe66f88 # initialize rs2
aes32esmi x21, x29, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0x628d8659 # initialize rs1
li x15, 0x44135c4e # initialize rs2
aes32esmi x22, x16, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x25, 0x827b5480 # initialize rs1
li x1, 0x69ef578e # initialize rs2
aes32esmi x23, x25, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0xf39e1b78 # initialize rs1
li x15, 0xac72510c # initialize rs2
aes32esmi x24, x27, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xdd446ca5 # initialize rs1
li x6, 0xe1dafbc8 # initialize rs2
aes32esmi x25, x5, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x18, 0xa263aab0 # initialize rs1
li x27, 0xbfdb68c9 # initialize rs2
aes32esmi x26, x18, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0xc483e59a # initialize rs1
li x11, 0x950ae1e4 # initialize rs2
aes32esmi x27, x21, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0xe1d2dc9d # initialize rs1
li x31, 0xfda0e5d4 # initialize rs2
aes32esmi x28, x12, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x715bc76e # initialize rs1
li x15, 0x7bc14a1d # initialize rs2
aes32esmi x29, x28, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x69a8cd8b # initialize rs1
li x22, 0xc533ae55 # initialize rs2
aes32esmi x30, x19, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x02eef10b # initialize rs1
li x26, 0x843612d2 # initialize rs2
aes32esmi x31, x11, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x00000000 # initialize rs1
li x30, 0xae70fd65 # initialize rs2
aes32esmi x25, x18, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x00000001 # initialize rs1
li x19, 0xaf7043db # initialize rs2
aes32esmi x21, x15, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x00000002 # initialize rs1
li x13, 0x114f8e70 # initialize rs2
aes32esmi x11, x3, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x28, 0x80000000 # initialize rs1
li x20, 0x785c581b # initialize rs2
aes32esmi x15, x28, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x80000001 # initialize rs1
li x26, 0x5991de2d # initialize rs2
aes32esmi x9, x19, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x24, 0x7fffffff # initialize rs1
li x26, 0x81134c06 # initialize rs2
aes32esmi x23, x24, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x3, 0x7ffffffe # initialize rs1
li x1, 0x14058dad # initialize rs2
aes32esmi x5, x3, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0xffffffff # initialize rs1
li x1, 0xef004c38 # initialize rs2
aes32esmi x11, x22, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0xfffffffe # initialize rs1
li x13, 0x98eac777 # initialize rs2
aes32esmi x22, x29, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x17, 0x5bbc8872 # initialize rs1
li x22, 0x348db5be # initialize rs2
aes32esmi x11, x17, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x1, 0xf506c015 # initialize rs2
aes32esmi x22, x17, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x19, 0x71dc786e # initialize rs2
aes32esmi x30, x15, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x6a62c98f # initialize rs1
li x23, 0x00000000 # initialize rs2
aes32esmi x6, x11, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x555cc6b3 # initialize rs1
li x21, 0x00000001 # initialize rs2
aes32esmi x12, x15, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0xf8cf8d01 # initialize rs1
li x19, 0x00000002 # initialize rs2
aes32esmi x3, x31, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x11, 0x83fbcc6e # initialize rs1
li x20, 0x80000000 # initialize rs2
aes32esmi x12, x11, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0x97b6b8b0 # initialize rs1
li x22, 0x80000001 # initialize rs2
aes32esmi x5, x27, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x9, 0x1d80b44c # initialize rs1
li x1, 0x7fffffff # initialize rs2
aes32esmi x23, x9, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x19, 0x861a1dd3 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
aes32esmi x1, x19, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0x99b91f64 # initialize rs1
li x27, 0xffffffff # initialize rs2
aes32esmi x1, x14, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x29670269 # initialize rs1
li x8, 0xfffffffe # initialize rs2
aes32esmi x10, x7, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x28, 0x23316254 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
aes32esmi x14, x28, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x29, 0xf3820972 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
aes32esmi x24, x29, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0x8e551470 # initialize rs1
li x9, 0x55555555 # initialize rs2
aes32esmi x5, x31, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x00000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
aes32esmi x7, x27, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x00000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
aes32esmi x26, x8, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x00000000 # initialize rs1
li x21, 0x00000002 # initialize rs2
aes32esmi x14, x7, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x15, 0x00000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
aes32esmi x21, x15, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x20, 0x00000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
aes32esmi x6, x20, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x6, 0x00000000 # initialize rs1
li x18, 0x7fffffff # initialize rs2
aes32esmi x19, x6, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x9, 0x00000000 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
aes32esmi x20, x9, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x00000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
aes32esmi x11, x23, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0x00000000 # initialize rs1
li x17, 0xfffffffe # initialize rs2
aes32esmi x2, x28, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x14, 0x00000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
aes32esmi x16, x14, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x30, 0x00000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
aes32esmi x20, x30, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0x00000000 # initialize rs1
li x29, 0x55555555 # initialize rs2
aes32esmi x15, x11, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x00000001 # initialize rs1
li x21, 0x00000000 # initialize rs2
aes32esmi x6, x14, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
aes32esmi x28, x21, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x00000001 # initialize rs1
li x12, 0x00000002 # initialize rs2
aes32esmi x25, x6, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x21, 0x00000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
aes32esmi x3, x21, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x24, 0x00000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
aes32esmi x29, x24, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x20, 0x00000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
aes32esmi x13, x20, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x11, 0x00000001 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
aes32esmi x1, x11, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
aes32esmi x19, x7, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x26, 0x00000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
aes32esmi x25, x26, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x13, 0x00000001 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
aes32esmi x29, x13, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x18, 0x00000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
aes32esmi x20, x18, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x8, 0x00000001 # initialize rs1
li x29, 0x55555555 # initialize rs2
aes32esmi x17, x8, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
aes32esmi x23, x15, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
aes32esmi x11, x18, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x00000002 # initialize rs1
li x19, 0x00000002 # initialize rs2
aes32esmi x13, x30, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x9, 0x00000002 # initialize rs1
li x11, 0x80000000 # initialize rs2
aes32esmi x8, x9, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x14, 0x00000002 # initialize rs1
li x20, 0x80000001 # initialize rs2
aes32esmi x26, x14, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x17, 0x00000002 # initialize rs1
li x21, 0x7fffffff # initialize rs2
aes32esmi x16, x17, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x14, 0x00000002 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
aes32esmi x23, x14, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x16, 0x00000002 # initialize rs1
li x29, 0xffffffff # initialize rs2
aes32esmi x9, x16, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x00000002 # initialize rs1
li x25, 0xfffffffe # initialize rs2
aes32esmi x21, x8, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x6, 0x00000002 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
aes32esmi x10, x6, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x27, 0x00000002 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
aes32esmi x20, x27, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x7, 0x00000002 # initialize rs1
li x26, 0x55555555 # initialize rs2
aes32esmi x27, x7, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x17, 0x80000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
aes32esmi x23, x17, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x11, 0x80000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
aes32esmi x29, x11, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x9, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
aes32esmi x12, x9, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
aes32esmi x22, x1, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x22, 0x80000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
aes32esmi x13, x22, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x23, 0x80000000 # initialize rs1
li x7, 0x7fffffff # initialize rs2
aes32esmi x29, x23, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x22, 0x80000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
aes32esmi x14, x22, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x6, 0x80000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
aes32esmi x11, x6, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x5, 0x80000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
aes32esmi x24, x5, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x21, 0x80000000 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
aes32esmi x10, x21, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x9, 0x80000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
aes32esmi x14, x9, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x2, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
aes32esmi x3, x2, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x24, 0x80000001 # initialize rs1
li x1, 0x00000000 # initialize rs2
aes32esmi x17, x24, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x3, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
aes32esmi x19, x3, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x16, 0x80000001 # initialize rs1
li x3, 0x00000002 # initialize rs2
aes32esmi x21, x16, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x3, 0x80000001 # initialize rs1
li x21, 0x80000000 # initialize rs2
aes32esmi x10, x3, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
aes32esmi x30, x21, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x16, 0x80000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
aes32esmi x12, x16, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x10, 0x80000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
aes32esmi x28, x10, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x28, 0x80000001 # initialize rs1
li x2, 0xffffffff # initialize rs2
aes32esmi x5, x28, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x80000001 # initialize rs1
li x29, 0xfffffffe # initialize rs2
aes32esmi x22, x23, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x1, 0x80000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
aes32esmi x15, x1, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
aes32esmi x25, x20, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x25, 0x80000001 # initialize rs1
li x22, 0x55555555 # initialize rs2
aes32esmi x18, x25, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x22, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
aes32esmi x17, x22, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x12, 0x7fffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
aes32esmi x8, x12, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x9, 0x7fffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
aes32esmi x1, x9, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x31, 0x7fffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
aes32esmi x16, x31, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x28, 0x7fffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
aes32esmi x5, x28, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x30, 0x7fffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
aes32esmi x10, x30, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x23, 0x7fffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
aes32esmi x8, x23, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x16, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
aes32esmi x28, x16, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x17, 0x7fffffff # initialize rs1
li x18, 0xfffffffe # initialize rs2
aes32esmi x20, x17, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x30, 0x7fffffff # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
aes32esmi x17, x30, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x18, 0x7fffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
aes32esmi x13, x18, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x3, 0x7fffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
aes32esmi x2, x3, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x24, 0x7ffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
aes32esmi x29, x24, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x24, 0x7ffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
aes32esmi x21, x24, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x3, 0x7ffffffe # initialize rs1
li x19, 0x00000002 # initialize rs2
aes32esmi x20, x3, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x9, 0x7ffffffe # initialize rs1
li x14, 0x80000000 # initialize rs2
aes32esmi x6, x9, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x13, 0x7ffffffe # initialize rs1
li x8, 0x80000001 # initialize rs2
aes32esmi x26, x13, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x31, 0x7ffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
aes32esmi x20, x31, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
aes32esmi x3, x2, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x14, 0x7ffffffe # initialize rs1
li x19, 0xffffffff # initialize rs2
aes32esmi x20, x14, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x11, 0x7ffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
aes32esmi x31, x11, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x26, 0x7ffffffe # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
aes32esmi x5, x26, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x19, 0x7ffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
aes32esmi x30, x19, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x7ffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
aes32esmi x31, x10, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x30, 0xffffffff # initialize rs1
li x2, 0x00000000 # initialize rs2
aes32esmi x26, x30, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0xffffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
aes32esmi x29, x27, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0xffffffff # initialize rs1
li x25, 0x00000002 # initialize rs2
aes32esmi x28, x8, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x6, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
aes32esmi x8, x6, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x26, 0xffffffff # initialize rs1
li x17, 0x80000001 # initialize rs2
aes32esmi x6, x26, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x23, 0xffffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
aes32esmi x28, x23, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xffffffff # initialize rs1
li x2, 0x7ffffffe # initialize rs2
aes32esmi x27, x28, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
aes32esmi x17, x18, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
aes32esmi x29, x5, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x1, 0xffffffff # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
aes32esmi x21, x1, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
aes32esmi x29, x2, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x23, 0xffffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
aes32esmi x11, x23, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0xfffffffe # initialize rs1
li x20, 0x00000000 # initialize rs2
aes32esmi x29, x19, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x23, 0xfffffffe # initialize rs1
li x29, 0x00000001 # initialize rs2
aes32esmi x18, x23, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x29, 0xfffffffe # initialize rs1
li x18, 0x00000002 # initialize rs2
aes32esmi x28, x29, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x16, 0xfffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
aes32esmi x5, x16, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
aes32esmi x20, x27, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x23, 0xfffffffe # initialize rs1
li x16, 0x7fffffff # initialize rs2
aes32esmi x30, x23, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x12, 0xfffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
aes32esmi x28, x12, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x22, 0xfffffffe # initialize rs1
li x6, 0xffffffff # initialize rs2
aes32esmi x13, x22, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x9, 0xfffffffe # initialize rs2
aes32esmi x25, x8, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x18, 0xfffffffe # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
aes32esmi x29, x18, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x18, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
aes32esmi x3, x18, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x14, 0xfffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
aes32esmi x8, x14, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x28, 0x5bbc8872 # initialize rs1
li x8, 0x00000000 # initialize rs2
aes32esmi x22, x28, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x16, 0x5bbc8872 # initialize rs1
li x27, 0x00000001 # initialize rs2
aes32esmi x15, x16, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x1, 0x5bbc8872 # initialize rs1
li x22, 0x00000002 # initialize rs2
aes32esmi x7, x1, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x14, 0x5bbc8872 # initialize rs1
li x17, 0x80000000 # initialize rs2
aes32esmi x29, x14, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x11, 0x5bbc8872 # initialize rs1
li x17, 0x80000001 # initialize rs2
aes32esmi x5, x11, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x11, 0x5bbc8872 # initialize rs1
li x25, 0x7fffffff # initialize rs2
aes32esmi x2, x11, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
aes32esmi x5, x17, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x17, 0x5bbc8872 # initialize rs1
li x21, 0xffffffff # initialize rs2
aes32esmi x23, x17, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x3, 0xfffffffe # initialize rs2
aes32esmi x18, x10, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
aes32esmi x30, x14, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x29, 0x5bbc8872 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
aes32esmi x27, x29, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x31, 0x5bbc8872 # initialize rs1
li x20, 0x55555555 # initialize rs2
aes32esmi x2, x31, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x11, 0xaaaaaaaa # initialize rs1
li x27, 0x00000000 # initialize rs2
aes32esmi x6, x11, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x10, 0xaaaaaaaa # initialize rs1
li x19, 0x00000001 # initialize rs2
aes32esmi x22, x10, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x10, 0xaaaaaaaa # initialize rs1
li x11, 0x00000002 # initialize rs2
aes32esmi x17, x10, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x15, 0xaaaaaaaa # initialize rs1
li x23, 0x80000000 # initialize rs2
aes32esmi x20, x15, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x25, 0xaaaaaaaa # initialize rs1
li x19, 0x80000001 # initialize rs2
aes32esmi x21, x25, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x1, 0xaaaaaaaa # initialize rs1
li x7, 0x7fffffff # initialize rs2
aes32esmi x9, x1, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x5, 0xaaaaaaaa # initialize rs1
li x2, 0x7ffffffe # initialize rs2
aes32esmi x26, x5, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x1, 0xaaaaaaaa # initialize rs1
li x15, 0xffffffff # initialize rs2
aes32esmi x19, x1, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaa # initialize rs1
li x9, 0xfffffffe # initialize rs2
aes32esmi x23, x29, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x26, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
aes32esmi x9, x26, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
aes32esmi x15, x9, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x3, 0xaaaaaaaa # initialize rs1
li x13, 0x55555555 # initialize rs2
aes32esmi x2, x3, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x1, 0x00000000 # initialize rs2
aes32esmi x9, x20, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x13, 0x55555555 # initialize rs1
li x16, 0x00000001 # initialize rs2
aes32esmi x29, x13, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x13, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
aes32esmi x8, x13, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x9, 0x55555555 # initialize rs1
li x21, 0x80000000 # initialize rs2
aes32esmi x30, x9, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x28, 0x55555555 # initialize rs1
li x2, 0x80000001 # initialize rs2
aes32esmi x18, x28, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x6, 0x55555555 # initialize rs1
li x3, 0x7fffffff # initialize rs2
aes32esmi x31, x6, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x19, 0x55555555 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
aes32esmi x28, x19, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x20, 0x55555555 # initialize rs1
li x26, 0xffffffff # initialize rs2
aes32esmi x29, x20, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x10, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
aes32esmi x25, x10, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x16, 0x55555555 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
aes32esmi x11, x16, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x55555555 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
aes32esmi x14, x1, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
aes32esmi x16, x30, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5a543a9f # initialize rs1
li x0, 0x997f2767 # initialize rs2
aes32esmi x1, x0, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x3adbae7b # initialize rs1
li x1, 0xa4850883 # initialize rs2
aes32esmi x19, x1, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x5a12e18e # initialize rs1
li x2, 0xebe38bbd # initialize rs2
aes32esmi x16, x2, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xb1d70a2c # initialize rs1
li x3, 0x17a4a075 # initialize rs2
aes32esmi x12, x3, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x08118eff # initialize rs1
li x4, 0x9b8619d2 # initialize rs2
aes32esmi x24, x4, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb2fd1eec # initialize rs1
li x5, 0x6cddec41 # initialize rs2
aes32esmi x31, x5, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9cb3fefa # initialize rs1
li x6, 0xc07d6f44 # initialize rs2
aes32esmi x28, x6, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7a1bd2f4 # initialize rs1
li x7, 0x98fed5e1 # initialize rs2
aes32esmi x4, x7, x7, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x0d62389e # initialize rs1
li x8, 0xc3fda2a1 # initialize rs2
aes32esmi x1, x8, x8, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa8657f32 # initialize rs1
li x9, 0xe4168894 # initialize rs2
aes32esmi x30, x9, x9, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xae115a04 # initialize rs1
li x10, 0x8a8b4521 # initialize rs2
aes32esmi x7, x10, x10, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x5c2e3156 # initialize rs1
li x11, 0x822b54ab # initialize rs2
aes32esmi x13, x11, x11, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd80649b3 # initialize rs1
li x12, 0x954bbaa7 # initialize rs2
aes32esmi x22, x12, x12, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x13b3ac1e # initialize rs1
li x13, 0x66299ed0 # initialize rs2
aes32esmi x14, x13, x13, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa78f9a06 # initialize rs1
li x14, 0xfdc6e188 # initialize rs2
aes32esmi x14, x14, x14, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa3828760 # initialize rs1
li x15, 0x7759e82c # initialize rs2
aes32esmi x14, x15, x15, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6cc9ac5e # initialize rs1
li x16, 0x7650aa5c # initialize rs2
aes32esmi x3, x16, x16, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x453a1d66 # initialize rs1
li x17, 0xedc9c259 # initialize rs2
aes32esmi x22, x17, x17, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xaa074b04 # initialize rs1
li x18, 0x76be3f0f # initialize rs2
aes32esmi x8, x18, x18, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x55d57c31 # initialize rs1
li x19, 0x24bd993f # initialize rs2
aes32esmi x2, x19, x19, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x48726053 # initialize rs1
li x20, 0x560bfe4e # initialize rs2
aes32esmi x17, x20, x20, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd0bbaa69 # initialize rs1
li x21, 0xfdcacaa7 # initialize rs2
aes32esmi x13, x21, x21, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x59bb5bdf # initialize rs1
li x22, 0xef65a148 # initialize rs2
aes32esmi x20, x22, x22, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x38544d2b # initialize rs1
li x23, 0xdd169bbb # initialize rs2
aes32esmi x9, x23, x23, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9aa14bb8 # initialize rs1
li x24, 0x2088aa2f # initialize rs2
aes32esmi x26, x24, x24, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x5c7e09d3 # initialize rs1
li x25, 0x7b93644b # initialize rs2
aes32esmi x6, x25, x25, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x68848068 # initialize rs1
li x26, 0x1644618f # initialize rs2
aes32esmi x18, x26, x26, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2679cb6b # initialize rs1
li x27, 0xbabb5c32 # initialize rs2
aes32esmi x18, x27, x27, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x6db0291e # initialize rs1
li x28, 0x88095044 # initialize rs2
aes32esmi x2, x28, x28, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x8ecbbf88 # initialize rs1
li x29, 0x8f5652c5 # initialize rs2
aes32esmi x23, x29, x29, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4e13ea94 # initialize rs1
li x30, 0x90cba438 # initialize rs2
aes32esmi x12, x30, x30, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xfc373124 # initialize rs1
li x31, 0x265a4ad7 # initialize rs2
aes32esmi x17, x31, x31, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9dae16a9 # initialize rs1
li x26, 0xfd0cd6d8 # initialize rs2
aes32esmi x0, x0, x26, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x98bab37c # initialize rs1
li x4, 0x21c1dfdc # initialize rs2
aes32esmi x1, x1, x4, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7f0f91e0 # initialize rs1
li x27, 0x50665d9d # initialize rs2
aes32esmi x2, x2, x27, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd86b20a5 # initialize rs1
li x30, 0x5fa2690b # initialize rs2
aes32esmi x3, x3, x30, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xaa791297 # initialize rs1
li x13, 0x7f071a45 # initialize rs2
aes32esmi x4, x4, x13, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7daff83c # initialize rs1
li x22, 0xee621cf9 # initialize rs2
aes32esmi x5, x5, x22, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6188dcf8 # initialize rs1
li x23, 0xd4537014 # initialize rs2
aes32esmi x6, x6, x23, 3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbbe416d9 # initialize rs1
li x27, 0x63ed2a00 # initialize rs2
aes32esmi x7, x7, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9cae7176 # initialize rs1
li x15, 0x1113c6a5 # initialize rs2
aes32esmi x8, x8, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8b24a8e2 # initialize rs1
li x16, 0xaebf1395 # initialize rs2
aes32esmi x9, x9, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3d65263f # initialize rs1
li x28, 0x08281db6 # initialize rs2
aes32esmi x10, x10, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x47f8d0dd # initialize rs1
li x17, 0x314a37e6 # initialize rs2
aes32esmi x11, x11, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x07545487 # initialize rs1
li x31, 0x8cc52951 # initialize rs2
aes32esmi x12, x12, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc6b8a4fe # initialize rs1
li x10, 0x34adfb95 # initialize rs2
aes32esmi x13, x13, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5c99a619 # initialize rs1
li x17, 0x578b3a2d # initialize rs2
aes32esmi x14, x14, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf1c8118d # initialize rs1
li x24, 0xa7adc1dd # initialize rs2
aes32esmi x15, x15, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xeff78e30 # initialize rs1
li x5, 0x60e428e9 # initialize rs2
aes32esmi x16, x16, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0bc5f884 # initialize rs1
li x25, 0xab7e5956 # initialize rs2
aes32esmi x17, x17, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5de64b3a # initialize rs1
li x14, 0x69b2af0f # initialize rs2
aes32esmi x18, x18, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x18007863 # initialize rs1
li x26, 0xa8ebd184 # initialize rs2
aes32esmi x19, x19, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6e9b2a6c # initialize rs1
li x8, 0x1ce7b066 # initialize rs2
aes32esmi x20, x20, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x70ef3222 # initialize rs1
li x13, 0xa1e22138 # initialize rs2
aes32esmi x21, x21, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd76ffcb7 # initialize rs1
li x22, 0xff1bc1ad # initialize rs2
aes32esmi x22, x22, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xbaed3157 # initialize rs1
li x6, 0x5c79622d # initialize rs2
aes32esmi x23, x23, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1a34b1f8 # initialize rs1
li x7, 0xa590003a # initialize rs2
aes32esmi x24, x24, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x40ecae35 # initialize rs1
li x30, 0xcb503729 # initialize rs2
aes32esmi x25, x25, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x6e8a2089 # initialize rs1
li x31, 0x59427c2b # initialize rs2
aes32esmi x26, x26, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3cd9d87b # initialize rs1
li x29, 0xb44900d9 # initialize rs2
aes32esmi x27, x27, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc6de21d3 # initialize rs1
li x24, 0xf23dc0fe # initialize rs2
aes32esmi x28, x28, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x4283275f # initialize rs1
li x11, 0x3f433d63 # initialize rs2
aes32esmi x29, x29, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x47b8f9b8 # initialize rs1
li x8, 0x6c1fd41e # initialize rs2
aes32esmi x30, x30, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x6b536965 # initialize rs1
li x13, 0x86a2ef2d # initialize rs2
aes32esmi x31, x31, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x24, 0x26cca43b # initialize rs1
li x0, 0x94239fa6 # initialize rs2
aes32esmi x0, x24, x0, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x20, 0xf6a630f4 # initialize rs1
li x1, 0xf821d628 # initialize rs2
aes32esmi x1, x20, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x6, 0xf990bc01 # initialize rs1
li x2, 0x2b3668de # initialize rs2
aes32esmi x2, x6, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x2, 0x1b977522 # initialize rs1
li x3, 0x0345ef7e # initialize rs2
aes32esmi x3, x2, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xdf32bfe6 # initialize rs1
li x4, 0x47a82fb9 # initialize rs2
aes32esmi x4, x1, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x8fb6b9b2 # initialize rs1
li x5, 0x6831c13a # initialize rs2
aes32esmi x5, x4, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x66bcbaf8 # initialize rs1
li x6, 0xde518c77 # initialize rs2
aes32esmi x6, x24, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xc9d81025 # initialize rs1
li x7, 0x9f31d401 # initialize rs2
aes32esmi x7, x9, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x7, 0x8fdbb36f # initialize rs1
li x8, 0x1bf7bebe # initialize rs2
aes32esmi x8, x7, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x1, 0x55bc5b52 # initialize rs1
li x9, 0x558a88dd # initialize rs2
aes32esmi x9, x1, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x1d9ed38c # initialize rs1
li x10, 0x616d3433 # initialize rs2
aes32esmi x10, x10, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x27, 0xc4d49eac # initialize rs1
li x11, 0x8e3f1c56 # initialize rs2
aes32esmi x11, x27, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x10, 0xa6b3b588 # initialize rs1
li x12, 0x0e270132 # initialize rs2
aes32esmi x12, x10, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x27, 0xf1ca4fc4 # initialize rs1
li x13, 0x5749a3b7 # initialize rs2
aes32esmi x13, x27, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0x0c541397 # initialize rs1
li x14, 0xa76c7bd1 # initialize rs2
aes32esmi x14, x21, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x26, 0xae212ac8 # initialize rs1
li x15, 0xb8c09c21 # initialize rs2
aes32esmi x15, x26, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x15, 0x3cf873e6 # initialize rs1
li x16, 0x69eefb7c # initialize rs2
aes32esmi x16, x15, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x13, 0x13143783 # initialize rs1
li x17, 0xcb54720e # initialize rs2
aes32esmi x17, x13, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x23, 0x05abacf1 # initialize rs1
li x18, 0x9bdd715c # initialize rs2
aes32esmi x18, x23, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x30, 0xe7a789a8 # initialize rs1
li x19, 0x4a0752eb # initialize rs2
aes32esmi x19, x30, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x30, 0x65a752c6 # initialize rs1
li x20, 0x8583db35 # initialize rs2
aes32esmi x20, x30, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0x63a237cd # initialize rs1
li x21, 0xd7e6b4eb # initialize rs2
aes32esmi x21, x12, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x8, 0x7aa4ae53 # initialize rs1
li x22, 0x1705649a # initialize rs2
aes32esmi x22, x8, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x11, 0x6e0c7236 # initialize rs1
li x23, 0x4e99c879 # initialize rs2
aes32esmi x23, x11, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0x59c6f725 # initialize rs1
li x24, 0xdaabb01d # initialize rs2
aes32esmi x24, x3, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0x19f43c9c # initialize rs1
li x25, 0x74109a9d # initialize rs2
aes32esmi x25, x13, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x15, 0xa034795c # initialize rs1
li x26, 0xa7ada4c2 # initialize rs2
aes32esmi x26, x15, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x28, 0x776e8753 # initialize rs1
li x27, 0xad31d473 # initialize rs2
aes32esmi x27, x28, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0xabc12624 # initialize rs1
li x28, 0x113d96a7 # initialize rs2
aes32esmi x28, x11, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0xfbd8839f # initialize rs1
li x29, 0x86c7cc8b # initialize rs2
aes32esmi x29, x15, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0xbdd0aced # initialize rs1
li x30, 0xf337e9ae # initialize rs2
aes32esmi x30, x19, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x22, 0x0ecace87 # initialize rs1
li x31, 0xd6af70b8 # initialize rs2
aes32esmi x31, x22, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe73cd6da # initialize rs1
li x0, 0x3bc42729 # initialize rs2
aes32esmi x0, x0, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcf3f0330 # initialize rs1
li x1, 0x2b67b40d # initialize rs2
aes32esmi x1, x1, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x6978d342 # initialize rs1
li x2, 0xf103c5d0 # initialize rs2
aes32esmi x2, x2, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xfd2d0ff9 # initialize rs1
li x3, 0xa743f6e8 # initialize rs2
aes32esmi x3, x3, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x246c0f98 # initialize rs1
li x4, 0x9ca5354e # initialize rs2
aes32esmi x4, x4, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x82eebe49 # initialize rs1
li x5, 0x5752e389 # initialize rs2
aes32esmi x5, x5, x5, 1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x899b6eea # initialize rs1
li x6, 0xc504f50c # initialize rs2
aes32esmi x6, x6, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0a214914 # initialize rs1
li x7, 0x3f9de905 # initialize rs2
aes32esmi x7, x7, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x78480545 # initialize rs1
li x8, 0x041463c9 # initialize rs2
aes32esmi x8, x8, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x431c1ae1 # initialize rs1
li x9, 0xf45d5444 # initialize rs2
aes32esmi x9, x9, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0951b7c7 # initialize rs1
li x10, 0x2423fb84 # initialize rs2
aes32esmi x10, x10, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x22661589 # initialize rs1
li x11, 0x075a026c # initialize rs2
aes32esmi x11, x11, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x1b678c1c # initialize rs1
li x12, 0x343fde94 # initialize rs2
aes32esmi x12, x12, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb03ef0da # initialize rs1
li x13, 0xec9dbedd # initialize rs2
aes32esmi x13, x13, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbd2bea5d # initialize rs1
li x14, 0xf245e081 # initialize rs2
aes32esmi x14, x14, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x2c65dd32 # initialize rs1
li x15, 0xfa297c79 # initialize rs2
aes32esmi x15, x15, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x4bf55403 # initialize rs1
li x16, 0x8ea211fe # initialize rs2
aes32esmi x16, x16, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xd8a430a5 # initialize rs1
li x17, 0xb0413a1e # initialize rs2
aes32esmi x17, x17, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6239604b # initialize rs1
li x18, 0x932530f0 # initialize rs2
aes32esmi x18, x18, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa6aa0d49 # initialize rs1
li x19, 0x0f469a4f # initialize rs2
aes32esmi x19, x19, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa1eaecd5 # initialize rs1
li x20, 0x936643c5 # initialize rs2
aes32esmi x20, x20, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd2163eae # initialize rs1
li x21, 0xeb167429 # initialize rs2
aes32esmi x21, x21, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0c482c21 # initialize rs1
li x22, 0xbad256bd # initialize rs2
aes32esmi x22, x22, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xf13b6503 # initialize rs1
li x23, 0xe6bd7e8e # initialize rs2
aes32esmi x23, x23, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x445becb0 # initialize rs1
li x24, 0xa82b546e # initialize rs2
aes32esmi x24, x24, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3c0b3764 # initialize rs1
li x25, 0xe8a47657 # initialize rs2
aes32esmi x25, x25, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1402b68f # initialize rs1
li x26, 0x5ca51c10 # initialize rs2
aes32esmi x26, x26, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xcd5f34c6 # initialize rs1
li x27, 0x64611751 # initialize rs2
aes32esmi x27, x27, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5d83c76d # initialize rs1
li x28, 0x16b744a7 # initialize rs2
aes32esmi x28, x28, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2a6a786a # initialize rs1
li x29, 0x6d0dc800 # initialize rs2
aes32esmi x29, x29, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7568775c # initialize rs1
li x30, 0xace4e1e2 # initialize rs2
aes32esmi x30, x30, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5b71c0b0 # initialize rs1
li x31, 0x8ff82c3f # initialize rs2
aes32esmi x31, x31, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_bs = 0
li x6, 0x5f4b0127 # initialize rs1
li x21, 0xa641bd2e # initialize rs2
aes32esmi x11, x6, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1568)

# Testcase cp_bs = 1
li x10, 0x46c5bfb1 # initialize rs1
li x21, 0x73e10d7d # initialize rs2
aes32esmi x23, x10, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1572)

# Testcase cp_bs = 2
li x18, 0x12e8f580 # initialize rs1
li x27, 0x2b1af33a # initialize rs2
aes32esmi x15, x18, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1576)

# Testcase cp_bs = 3
li x6, 0xb6d3bc6a # initialize rs1
li x13, 0x2010b81b # initialize rs2
aes32esmi x31, x6, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1580)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x31, x10 # perform first operation
aes32esmi x11, x6, x8, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x15, x27 # perform first operation
aes32esmi x21, x18, x6, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x9, x15 # perform first operation
aes32esmi x18, x7, x11, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x2, x8 # perform first operation
aes32esmi x1, x24, x27, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x18, x20 # perform first operation
aes32esmi x20, x6, x12, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x13, x24 # perform first operation
aes32esmi x20, x29, x17, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x10, x9 # perform first operation
aes32esmi x27, x30, x8, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x9, x12 # perform first operation
aes32esmi x7, x17, x20, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x31, x23 # perform first operation
aes32esmi x3, x28, x10, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x31, x3 # perform first operation
aes32esmi x31, x11, x13, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x14, x13 # perform first operation
aes32esmi x13, x18, x19, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x21, x8 # perform first operation
aes32esmi x29, x7, x24, 2 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x16, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
aes32esmi x7, x16, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cp_sbox = 1
li x2, 0x01010101 # initialize rs1
li x3, 0x01010101 # initialize rs2
aes32esmi x6, x2, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1588)

# Testcase cp_sbox = 2
li x2, 0x02020202 # initialize rs1
li x17, 0x02020202 # initialize rs2
aes32esmi x30, x2, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1592)

# Testcase cp_sbox = 3
li x27, 0x03030303 # initialize rs1
li x28, 0x03030303 # initialize rs2
aes32esmi x22, x27, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1596)

# Testcase cp_sbox = 4
li x22, 0x04040404 # initialize rs1
li x24, 0x04040404 # initialize rs2
aes32esmi x3, x22, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1600)

# Testcase cp_sbox = 5
li x1, 0x05050505 # initialize rs1
li x22, 0x05050505 # initialize rs2
aes32esmi x26, x1, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1604)

# Testcase cp_sbox = 6
li x10, 0x06060606 # initialize rs1
li x14, 0x06060606 # initialize rs2
aes32esmi x29, x10, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cp_sbox = 7
li x15, 0x07070707 # initialize rs1
li x31, 0x07070707 # initialize rs2
aes32esmi x3, x15, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1612)

# Testcase cp_sbox = 8
li x8, 0x08080808 # initialize rs1
li x20, 0x08080808 # initialize rs2
aes32esmi x28, x8, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1616)

# Testcase cp_sbox = 9
li x18, 0x09090909 # initialize rs1
li x25, 0x09090909 # initialize rs2
aes32esmi x5, x18, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1620)

# Testcase cp_sbox = 10
li x15, 0x0a0a0a0a # initialize rs1
li x11, 0x0a0a0a0a # initialize rs2
aes32esmi x14, x15, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1624)

# Testcase cp_sbox = 11
li x16, 0x0b0b0b0b # initialize rs1
li x20, 0x0b0b0b0b # initialize rs2
aes32esmi x26, x16, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1628)

# Testcase cp_sbox = 12
li x12, 0x0c0c0c0c # initialize rs1
li x7, 0x0c0c0c0c # initialize rs2
aes32esmi x13, x12, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cp_sbox = 13
li x23, 0x0d0d0d0d # initialize rs1
li x26, 0x0d0d0d0d # initialize rs2
aes32esmi x15, x23, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1636)

# Testcase cp_sbox = 14
li x27, 0x0e0e0e0e # initialize rs1
li x10, 0x0e0e0e0e # initialize rs2
aes32esmi x7, x27, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1640)

# Testcase cp_sbox = 15
li x22, 0x0f0f0f0f # initialize rs1
li x8, 0x0f0f0f0f # initialize rs2
aes32esmi x12, x22, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1644)

# Testcase cp_sbox = 16
li x6, 0x10101010 # initialize rs1
li x24, 0x10101010 # initialize rs2
aes32esmi x1, x6, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1648)

# Testcase cp_sbox = 17
li x1, 0x11111111 # initialize rs1
li x20, 0x11111111 # initialize rs2
aes32esmi x9, x1, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1652)

# Testcase cp_sbox = 18
li x9, 0x12121212 # initialize rs1
li x7, 0x12121212 # initialize rs2
aes32esmi x15, x9, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1656)

# Testcase cp_sbox = 19
li x30, 0x13131313 # initialize rs1
li x5, 0x13131313 # initialize rs2
aes32esmi x14, x30, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1660)

# Testcase cp_sbox = 20
li x20, 0x14141414 # initialize rs1
li x9, 0x14141414 # initialize rs2
aes32esmi x3, x20, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cp_sbox = 21
li x16, 0x15151515 # initialize rs1
li x25, 0x15151515 # initialize rs2
aes32esmi x17, x16, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1668)

# Testcase cp_sbox = 22
li x26, 0x16161616 # initialize rs1
li x24, 0x16161616 # initialize rs2
aes32esmi x7, x26, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1672)

# Testcase cp_sbox = 23
li x22, 0x17171717 # initialize rs1
li x27, 0x17171717 # initialize rs2
aes32esmi x19, x22, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1676)

# Testcase cp_sbox = 24
li x17, 0x18181818 # initialize rs1
li x21, 0x18181818 # initialize rs2
aes32esmi x23, x17, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1680)

# Testcase cp_sbox = 25
li x8, 0x19191919 # initialize rs1
li x17, 0x19191919 # initialize rs2
aes32esmi x29, x8, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1684)

# Testcase cp_sbox = 26
li x22, 0x1a1a1a1a # initialize rs1
li x10, 0x1a1a1a1a # initialize rs2
aes32esmi x7, x22, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1688)

# Testcase cp_sbox = 27
li x24, 0x1b1b1b1b # initialize rs1
li x25, 0x1b1b1b1b # initialize rs2
aes32esmi x3, x24, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1692)

# Testcase cp_sbox = 28
li x3, 0x1c1c1c1c # initialize rs1
li x2, 0x1c1c1c1c # initialize rs2
aes32esmi x13, x3, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1696)

# Testcase cp_sbox = 29
li x20, 0x1d1d1d1d # initialize rs1
li x11, 0x1d1d1d1d # initialize rs2
aes32esmi x23, x20, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1700)

# Testcase cp_sbox = 30
li x30, 0x1e1e1e1e # initialize rs1
li x13, 0x1e1e1e1e # initialize rs2
aes32esmi x28, x30, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1704)

# Testcase cp_sbox = 31
li x7, 0x1f1f1f1f # initialize rs1
li x8, 0x1f1f1f1f # initialize rs2
aes32esmi x2, x7, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1708)

# Testcase cp_sbox = 32
li x10, 0x20202020 # initialize rs1
li x22, 0x20202020 # initialize rs2
aes32esmi x14, x10, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1712)

# Testcase cp_sbox = 33
li x19, 0x21212121 # initialize rs1
li x27, 0x21212121 # initialize rs2
aes32esmi x23, x19, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1716)

# Testcase cp_sbox = 34
li x26, 0x22222222 # initialize rs1
li x19, 0x22222222 # initialize rs2
aes32esmi x21, x26, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1720)

# Testcase cp_sbox = 35
li x20, 0x23232323 # initialize rs1
li x29, 0x23232323 # initialize rs2
aes32esmi x19, x20, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1724)

# Testcase cp_sbox = 36
li x21, 0x24242424 # initialize rs1
li x3, 0x24242424 # initialize rs2
aes32esmi x12, x21, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)

# Testcase cp_sbox = 37
li x10, 0x25252525 # initialize rs1
li x26, 0x25252525 # initialize rs2
aes32esmi x1, x10, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1732)

# Testcase cp_sbox = 38
li x7, 0x26262626 # initialize rs1
li x30, 0x26262626 # initialize rs2
aes32esmi x26, x7, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cp_sbox = 39
li x10, 0x27272727 # initialize rs1
li x14, 0x27272727 # initialize rs2
aes32esmi x20, x10, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1740)

# Testcase cp_sbox = 40
li x25, 0x28282828 # initialize rs1
li x1, 0x28282828 # initialize rs2
aes32esmi x15, x25, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cp_sbox = 41
li x24, 0x29292929 # initialize rs1
li x12, 0x29292929 # initialize rs2
aes32esmi x8, x24, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1748)

# Testcase cp_sbox = 42
li x21, 0x2a2a2a2a # initialize rs1
li x6, 0x2a2a2a2a # initialize rs2
aes32esmi x27, x21, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1752)

# Testcase cp_sbox = 43
li x19, 0x2b2b2b2b # initialize rs1
li x16, 0x2b2b2b2b # initialize rs2
aes32esmi x12, x19, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1756)

# Testcase cp_sbox = 44
li x22, 0x2c2c2c2c # initialize rs1
li x30, 0x2c2c2c2c # initialize rs2
aes32esmi x31, x22, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1760)

# Testcase cp_sbox = 45
li x5, 0x2d2d2d2d # initialize rs1
li x27, 0x2d2d2d2d # initialize rs2
aes32esmi x10, x5, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1764)

# Testcase cp_sbox = 46
li x30, 0x2e2e2e2e # initialize rs1
li x6, 0x2e2e2e2e # initialize rs2
aes32esmi x5, x30, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1768)

# Testcase cp_sbox = 47
li x24, 0x2f2f2f2f # initialize rs1
li x8, 0x2f2f2f2f # initialize rs2
aes32esmi x23, x24, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1772)

# Testcase cp_sbox = 48
li x25, 0x30303030 # initialize rs1
li x2, 0x30303030 # initialize rs2
aes32esmi x10, x25, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1776)

# Testcase cp_sbox = 49
li x6, 0x31313131 # initialize rs1
li x16, 0x31313131 # initialize rs2
aes32esmi x26, x6, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1780)

# Testcase cp_sbox = 50
li x17, 0x32323232 # initialize rs1
li x18, 0x32323232 # initialize rs2
aes32esmi x7, x17, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1784)

# Testcase cp_sbox = 51
li x7, 0x33333333 # initialize rs1
li x1, 0x33333333 # initialize rs2
aes32esmi x19, x7, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1788)

# Testcase cp_sbox = 52
li x27, 0x34343434 # initialize rs1
li x12, 0x34343434 # initialize rs2
aes32esmi x31, x27, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1792)

# Testcase cp_sbox = 53
li x1, 0x35353535 # initialize rs1
li x13, 0x35353535 # initialize rs2
aes32esmi x14, x1, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1796)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 54
li x2, 0x36363636 # initialize rs1
li x20, 0x36363636 # initialize rs2
aes32esmi x8, x2, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_sbox = 55
li x25, 0x37373737 # initialize rs1
li x20, 0x37373737 # initialize rs2
aes32esmi x17, x25, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 4)

# Testcase cp_sbox = 56
li x13, 0x38383838 # initialize rs1
li x5, 0x38383838 # initialize rs2
aes32esmi x20, x13, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_sbox = 57
li x6, 0x39393939 # initialize rs1
li x11, 0x39393939 # initialize rs2
aes32esmi x14, x6, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 12)

# Testcase cp_sbox = 58
li x20, 0x3a3a3a3a # initialize rs1
li x22, 0x3a3a3a3a # initialize rs2
aes32esmi x31, x20, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cp_sbox = 59
li x17, 0x3b3b3b3b # initialize rs1
li x7, 0x3b3b3b3b # initialize rs2
aes32esmi x19, x17, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 20)

# Testcase cp_sbox = 60
li x5, 0x3c3c3c3c # initialize rs1
li x18, 0x3c3c3c3c # initialize rs2
aes32esmi x31, x5, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cp_sbox = 61
li x10, 0x3d3d3d3d # initialize rs1
li x5, 0x3d3d3d3d # initialize rs2
aes32esmi x1, x10, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 28)

# Testcase cp_sbox = 62
li x8, 0x3e3e3e3e # initialize rs1
li x13, 0x3e3e3e3e # initialize rs2
aes32esmi x7, x8, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_sbox = 63
li x2, 0x3f3f3f3f # initialize rs1
li x8, 0x3f3f3f3f # initialize rs2
aes32esmi x23, x2, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 36)

# Testcase cp_sbox = 64
li x1, 0x40404040 # initialize rs1
li x2, 0x40404040 # initialize rs2
aes32esmi x26, x1, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_sbox = 65
li x15, 0x41414141 # initialize rs1
li x6, 0x41414141 # initialize rs2
aes32esmi x17, x15, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 44)

# Testcase cp_sbox = 66
li x12, 0x42424242 # initialize rs1
li x26, 0x42424242 # initialize rs2
aes32esmi x24, x12, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_sbox = 67
li x23, 0x43434343 # initialize rs1
li x17, 0x43434343 # initialize rs2
aes32esmi x27, x23, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 52)

# Testcase cp_sbox = 68
li x13, 0x44444444 # initialize rs1
li x9, 0x44444444 # initialize rs2
aes32esmi x16, x13, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_sbox = 69
li x17, 0x45454545 # initialize rs1
li x9, 0x45454545 # initialize rs2
aes32esmi x22, x17, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_sbox = 70
li x26, 0x46464646 # initialize rs1
li x7, 0x46464646 # initialize rs2
aes32esmi x28, x26, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cp_sbox = 71
li x12, 0x47474747 # initialize rs1
li x10, 0x47474747 # initialize rs2
aes32esmi x16, x12, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 68)

# Testcase cp_sbox = 72
li x5, 0x48484848 # initialize rs1
li x20, 0x48484848 # initialize rs2
aes32esmi x26, x5, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_sbox = 73
li x29, 0x49494949 # initialize rs1
li x28, 0x49494949 # initialize rs2
aes32esmi x13, x29, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_sbox = 74
li x12, 0x4a4a4a4a # initialize rs1
li x25, 0x4a4a4a4a # initialize rs2
aes32esmi x14, x12, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_sbox = 75
li x21, 0x4b4b4b4b # initialize rs1
li x14, 0x4b4b4b4b # initialize rs2
aes32esmi x26, x21, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 84)

# Testcase cp_sbox = 76
li x18, 0x4c4c4c4c # initialize rs1
li x5, 0x4c4c4c4c # initialize rs2
aes32esmi x19, x18, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_sbox = 77
li x18, 0x4d4d4d4d # initialize rs1
li x10, 0x4d4d4d4d # initialize rs2
aes32esmi x14, x18, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 92)

# Testcase cp_sbox = 78
li x28, 0x4e4e4e4e # initialize rs1
li x6, 0x4e4e4e4e # initialize rs2
aes32esmi x5, x28, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_sbox = 79
li x13, 0x4f4f4f4f # initialize rs1
li x3, 0x4f4f4f4f # initialize rs2
aes32esmi x30, x13, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 100)

# Testcase cp_sbox = 80
li x7, 0x50505050 # initialize rs1
li x31, 0x50505050 # initialize rs2
aes32esmi x27, x7, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_sbox = 81
li x3, 0x51515151 # initialize rs1
li x7, 0x51515151 # initialize rs2
aes32esmi x16, x3, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 108)

# Testcase cp_sbox = 82
li x14, 0x52525252 # initialize rs1
li x28, 0x52525252 # initialize rs2
aes32esmi x26, x14, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_sbox = 83
li x3, 0x53535353 # initialize rs1
li x13, 0x53535353 # initialize rs2
aes32esmi x20, x3, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_sbox = 84
li x14, 0x54545454 # initialize rs1
li x19, 0x54545454 # initialize rs2
aes32esmi x31, x14, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_sbox = 85
li x12, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
aes32esmi x3, x12, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 124)

# Testcase cp_sbox = 86
li x9, 0x56565656 # initialize rs1
li x7, 0x56565656 # initialize rs2
aes32esmi x2, x9, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_sbox = 87
li x14, 0x57575757 # initialize rs1
li x28, 0x57575757 # initialize rs2
aes32esmi x23, x14, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_sbox = 88
li x12, 0x58585858 # initialize rs1
li x25, 0x58585858 # initialize rs2
aes32esmi x16, x12, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_sbox = 89
li x26, 0x59595959 # initialize rs1
li x29, 0x59595959 # initialize rs2
aes32esmi x9, x26, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 140)

# Testcase cp_sbox = 90
li x18, 0x5a5a5a5a # initialize rs1
li x14, 0x5a5a5a5a # initialize rs2
aes32esmi x27, x18, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cp_sbox = 91
li x16, 0x5b5b5b5b # initialize rs1
li x7, 0x5b5b5b5b # initialize rs2
aes32esmi x26, x16, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 148)

# Testcase cp_sbox = 92
li x13, 0x5c5c5c5c # initialize rs1
li x11, 0x5c5c5c5c # initialize rs2
aes32esmi x26, x13, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cp_sbox = 93
li x5, 0x5d5d5d5d # initialize rs1
li x31, 0x5d5d5d5d # initialize rs2
aes32esmi x21, x5, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 156)

# Testcase cp_sbox = 94
li x29, 0x5e5e5e5e # initialize rs1
li x6, 0x5e5e5e5e # initialize rs2
aes32esmi x25, x29, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_sbox = 95
li x19, 0x5f5f5f5f # initialize rs1
li x12, 0x5f5f5f5f # initialize rs2
aes32esmi x3, x19, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 164)

# Testcase cp_sbox = 96
li x10, 0x60606060 # initialize rs1
li x24, 0x60606060 # initialize rs2
aes32esmi x17, x10, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_sbox = 97
li x26, 0x61616161 # initialize rs1
li x13, 0x61616161 # initialize rs2
aes32esmi x24, x26, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 172)

# Testcase cp_sbox = 98
li x18, 0x62626262 # initialize rs1
li x5, 0x62626262 # initialize rs2
aes32esmi x1, x18, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_sbox = 99
li x30, 0x63636363 # initialize rs1
li x14, 0x63636363 # initialize rs2
aes32esmi x21, x30, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 180)

# Testcase cp_sbox = 100
li x10, 0x64646464 # initialize rs1
li x27, 0x64646464 # initialize rs2
aes32esmi x15, x10, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_sbox = 101
li x11, 0x65656565 # initialize rs1
li x6, 0x65656565 # initialize rs2
aes32esmi x5, x11, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 188)

# Testcase cp_sbox = 102
li x12, 0x66666666 # initialize rs1
li x9, 0x66666666 # initialize rs2
aes32esmi x1, x12, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_sbox = 103
li x30, 0x67676767 # initialize rs1
li x17, 0x67676767 # initialize rs2
aes32esmi x5, x30, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 196)

# Testcase cp_sbox = 104
li x24, 0x68686868 # initialize rs1
li x30, 0x68686868 # initialize rs2
aes32esmi x29, x24, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_sbox = 105
li x26, 0x69696969 # initialize rs1
li x1, 0x69696969 # initialize rs2
aes32esmi x2, x26, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 204)

# Testcase cp_sbox = 106
li x26, 0x6a6a6a6a # initialize rs1
li x2, 0x6a6a6a6a # initialize rs2
aes32esmi x29, x26, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_sbox = 107
li x25, 0x6b6b6b6b # initialize rs1
li x8, 0x6b6b6b6b # initialize rs2
aes32esmi x31, x25, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 212)

# Testcase cp_sbox = 108
li x26, 0x6c6c6c6c # initialize rs1
li x31, 0x6c6c6c6c # initialize rs2
aes32esmi x3, x26, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_sbox = 109
li x29, 0x6d6d6d6d # initialize rs1
li x1, 0x6d6d6d6d # initialize rs2
aes32esmi x24, x29, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_sbox = 110
li x31, 0x6e6e6e6e # initialize rs1
li x2, 0x6e6e6e6e # initialize rs2
aes32esmi x17, x31, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_sbox = 111
li x19, 0x6f6f6f6f # initialize rs1
li x13, 0x6f6f6f6f # initialize rs2
aes32esmi x9, x19, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_sbox = 112
li x3, 0x70707070 # initialize rs1
li x28, 0x70707070 # initialize rs2
aes32esmi x14, x3, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_sbox = 113
li x22, 0x71717171 # initialize rs1
li x21, 0x71717171 # initialize rs2
aes32esmi x19, x22, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 236)

# Testcase cp_sbox = 114
li x24, 0x72727272 # initialize rs1
li x2, 0x72727272 # initialize rs2
aes32esmi x10, x24, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_sbox = 115
li x3, 0x73737373 # initialize rs1
li x15, 0x73737373 # initialize rs2
aes32esmi x22, x3, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 244)

# Testcase cp_sbox = 116
li x5, 0x74747474 # initialize rs1
li x30, 0x74747474 # initialize rs2
aes32esmi x17, x5, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_sbox = 117
li x14, 0x75757575 # initialize rs1
li x27, 0x75757575 # initialize rs2
aes32esmi x25, x14, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_sbox = 118
li x1, 0x76767676 # initialize rs1
li x25, 0x76767676 # initialize rs2
aes32esmi x16, x1, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cp_sbox = 119
li x1, 0x77777777 # initialize rs1
li x21, 0x77777777 # initialize rs2
aes32esmi x22, x1, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 260)

# Testcase cp_sbox = 120
li x24, 0x78787878 # initialize rs1
li x8, 0x78787878 # initialize rs2
aes32esmi x18, x24, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_sbox = 121
li x15, 0x79797979 # initialize rs1
li x13, 0x79797979 # initialize rs2
aes32esmi x31, x15, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 268)

# Testcase cp_sbox = 122
li x13, 0x7a7a7a7a # initialize rs1
li x7, 0x7a7a7a7a # initialize rs2
aes32esmi x9, x13, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_sbox = 123
li x28, 0x7b7b7b7b # initialize rs1
li x11, 0x7b7b7b7b # initialize rs2
aes32esmi x31, x28, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 276)

# Testcase cp_sbox = 124
li x5, 0x7c7c7c7c # initialize rs1
li x1, 0x7c7c7c7c # initialize rs2
aes32esmi x10, x5, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cp_sbox = 125
li x28, 0x7d7d7d7d # initialize rs1
li x26, 0x7d7d7d7d # initialize rs2
aes32esmi x1, x28, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 284)

# Testcase cp_sbox = 126
li x24, 0x7e7e7e7e # initialize rs1
li x31, 0x7e7e7e7e # initialize rs2
aes32esmi x3, x24, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 288)

# Testcase cp_sbox = 127
li x16, 0x7f7f7f7f # initialize rs1
li x5, 0x7f7f7f7f # initialize rs2
aes32esmi x9, x16, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_sbox = 128
li x26, 0x80808080 # initialize rs1
li x16, 0x80808080 # initialize rs2
aes32esmi x15, x26, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cp_sbox = 129
li x15, 0x81818181 # initialize rs1
li x14, 0x81818181 # initialize rs2
aes32esmi x12, x15, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 300)

# Testcase cp_sbox = 130
li x5, 0x82828282 # initialize rs1
li x12, 0x82828282 # initialize rs2
aes32esmi x23, x5, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cp_sbox = 131
li x13, 0x83838383 # initialize rs1
li x19, 0x83838383 # initialize rs2
aes32esmi x7, x13, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 308)

# Testcase cp_sbox = 132
li x2, 0x84848484 # initialize rs1
li x11, 0x84848484 # initialize rs2
aes32esmi x28, x2, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cp_sbox = 133
li x27, 0x85858585 # initialize rs1
li x15, 0x85858585 # initialize rs2
aes32esmi x2, x27, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 316)

# Testcase cp_sbox = 134
li x28, 0x86868686 # initialize rs1
li x9, 0x86868686 # initialize rs2
aes32esmi x19, x28, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cp_sbox = 135
li x21, 0x87878787 # initialize rs1
li x12, 0x87878787 # initialize rs2
aes32esmi x10, x21, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 324)

# Testcase cp_sbox = 136
li x20, 0x88888888 # initialize rs1
li x10, 0x88888888 # initialize rs2
aes32esmi x5, x20, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_sbox = 137
li x16, 0x89898989 # initialize rs1
li x8, 0x89898989 # initialize rs2
aes32esmi x17, x16, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 332)

# Testcase cp_sbox = 138
li x25, 0x8a8a8a8a # initialize rs1
li x15, 0x8a8a8a8a # initialize rs2
aes32esmi x7, x25, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cp_sbox = 139
li x5, 0x8b8b8b8b # initialize rs1
li x9, 0x8b8b8b8b # initialize rs2
aes32esmi x8, x5, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 340)

# Testcase cp_sbox = 140
li x25, 0x8c8c8c8c # initialize rs1
li x29, 0x8c8c8c8c # initialize rs2
aes32esmi x21, x25, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_sbox = 141
li x29, 0x8d8d8d8d # initialize rs1
li x30, 0x8d8d8d8d # initialize rs2
aes32esmi x26, x29, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 348)

# Testcase cp_sbox = 142
li x27, 0x8e8e8e8e # initialize rs1
li x26, 0x8e8e8e8e # initialize rs2
aes32esmi x8, x27, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_sbox = 143
li x22, 0x8f8f8f8f # initialize rs1
li x29, 0x8f8f8f8f # initialize rs2
aes32esmi x3, x22, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 356)

# Testcase cp_sbox = 144
li x27, 0x90909090 # initialize rs1
li x6, 0x90909090 # initialize rs2
aes32esmi x29, x27, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 360)

# Testcase cp_sbox = 145
li x18, 0x91919191 # initialize rs1
li x20, 0x91919191 # initialize rs2
aes32esmi x13, x18, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 364)

# Testcase cp_sbox = 146
li x2, 0x92929292 # initialize rs1
li x18, 0x92929292 # initialize rs2
aes32esmi x31, x2, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 368)

# Testcase cp_sbox = 147
li x9, 0x93939393 # initialize rs1
li x15, 0x93939393 # initialize rs2
aes32esmi x25, x9, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 372)

# Testcase cp_sbox = 148
li x28, 0x94949494 # initialize rs1
li x1, 0x94949494 # initialize rs2
aes32esmi x9, x28, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_sbox = 149
li x23, 0x95959595 # initialize rs1
li x13, 0x95959595 # initialize rs2
aes32esmi x24, x23, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 380)

# Testcase cp_sbox = 150
li x22, 0x96969696 # initialize rs1
li x27, 0x96969696 # initialize rs2
aes32esmi x20, x22, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cp_sbox = 151
li x16, 0x97979797 # initialize rs1
li x26, 0x97979797 # initialize rs2
aes32esmi x23, x16, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 388)

# Testcase cp_sbox = 152
li x14, 0x98989898 # initialize rs1
li x2, 0x98989898 # initialize rs2
aes32esmi x15, x14, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_sbox = 153
li x19, 0x99999999 # initialize rs1
li x6, 0x99999999 # initialize rs2
aes32esmi x13, x19, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_sbox = 154
li x1, 0x9a9a9a9a # initialize rs1
li x14, 0x9a9a9a9a # initialize rs2
aes32esmi x23, x1, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_sbox = 155
li x27, 0x9b9b9b9b # initialize rs1
li x13, 0x9b9b9b9b # initialize rs2
aes32esmi x28, x27, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 404)

# Testcase cp_sbox = 156
li x20, 0x9c9c9c9c # initialize rs1
li x17, 0x9c9c9c9c # initialize rs2
aes32esmi x23, x20, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cp_sbox = 157
li x17, 0x9d9d9d9d # initialize rs1
li x1, 0x9d9d9d9d # initialize rs2
aes32esmi x13, x17, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 412)

# Testcase cp_sbox = 158
li x17, 0x9e9e9e9e # initialize rs1
li x25, 0x9e9e9e9e # initialize rs2
aes32esmi x11, x17, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_sbox = 159
li x26, 0x9f9f9f9f # initialize rs1
li x8, 0x9f9f9f9f # initialize rs2
aes32esmi x12, x26, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 420)

# Testcase cp_sbox = 160
li x29, 0xa0a0a0a0 # initialize rs1
li x20, 0xa0a0a0a0 # initialize rs2
aes32esmi x28, x29, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cp_sbox = 161
li x18, 0xa1a1a1a1 # initialize rs1
li x25, 0xa1a1a1a1 # initialize rs2
aes32esmi x28, x18, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 428)

# Testcase cp_sbox = 162
li x30, 0xa2a2a2a2 # initialize rs1
li x9, 0xa2a2a2a2 # initialize rs2
aes32esmi x19, x30, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 432)

# Testcase cp_sbox = 163
li x17, 0xa3a3a3a3 # initialize rs1
li x30, 0xa3a3a3a3 # initialize rs2
aes32esmi x11, x17, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 436)

# Testcase cp_sbox = 164
li x25, 0xa4a4a4a4 # initialize rs1
li x23, 0xa4a4a4a4 # initialize rs2
aes32esmi x8, x25, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_sbox = 165
li x19, 0xa5a5a5a5 # initialize rs1
li x9, 0xa5a5a5a5 # initialize rs2
aes32esmi x12, x19, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 444)

# Testcase cp_sbox = 166
li x13, 0xa6a6a6a6 # initialize rs1
li x27, 0xa6a6a6a6 # initialize rs2
aes32esmi x24, x13, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_sbox = 167
li x12, 0xa7a7a7a7 # initialize rs1
li x21, 0xa7a7a7a7 # initialize rs2
aes32esmi x31, x12, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 452)

# Testcase cp_sbox = 168
li x8, 0xa8a8a8a8 # initialize rs1
li x29, 0xa8a8a8a8 # initialize rs2
aes32esmi x25, x8, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_sbox = 169
li x26, 0xa9a9a9a9 # initialize rs1
li x12, 0xa9a9a9a9 # initialize rs2
aes32esmi x10, x26, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_sbox = 170
li x5, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
aes32esmi x10, x5, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_sbox = 171
li x21, 0xabababab # initialize rs1
li x29, 0xabababab # initialize rs2
aes32esmi x8, x21, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cp_sbox = 172
li x10, 0xacacacac # initialize rs1
li x22, 0xacacacac # initialize rs2
aes32esmi x3, x10, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_sbox = 173
li x26, 0xadadadad # initialize rs1
li x21, 0xadadadad # initialize rs2
aes32esmi x29, x26, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cp_sbox = 174
li x28, 0xaeaeaeae # initialize rs1
li x14, 0xaeaeaeae # initialize rs2
aes32esmi x11, x28, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cp_sbox = 175
li x20, 0xafafafaf # initialize rs1
li x24, 0xafafafaf # initialize rs2
aes32esmi x18, x20, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 484)

# Testcase cp_sbox = 176
li x2, 0xb0b0b0b0 # initialize rs1
li x6, 0xb0b0b0b0 # initialize rs2
aes32esmi x28, x2, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cp_sbox = 177
li x1, 0xb1b1b1b1 # initialize rs1
li x16, 0xb1b1b1b1 # initialize rs2
aes32esmi x19, x1, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 492)

# Testcase cp_sbox = 178
li x15, 0xb2b2b2b2 # initialize rs1
li x12, 0xb2b2b2b2 # initialize rs2
aes32esmi x27, x15, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cp_sbox = 179
li x17, 0xb3b3b3b3 # initialize rs1
li x6, 0xb3b3b3b3 # initialize rs2
aes32esmi x5, x17, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 500)

# Testcase cp_sbox = 180
li x26, 0xb4b4b4b4 # initialize rs1
li x27, 0xb4b4b4b4 # initialize rs2
aes32esmi x23, x26, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 504)

# Testcase cp_sbox = 181
li x2, 0xb5b5b5b5 # initialize rs1
li x23, 0xb5b5b5b5 # initialize rs2
aes32esmi x17, x2, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 508)

# Testcase cp_sbox = 182
li x7, 0xb6b6b6b6 # initialize rs1
li x31, 0xb6b6b6b6 # initialize rs2
aes32esmi x26, x7, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cp_sbox = 183
li x20, 0xb7b7b7b7 # initialize rs1
li x31, 0xb7b7b7b7 # initialize rs2
aes32esmi x25, x20, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 516)

# Testcase cp_sbox = 184
li x20, 0xb8b8b8b8 # initialize rs1
li x8, 0xb8b8b8b8 # initialize rs2
aes32esmi x19, x20, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 520)

# Testcase cp_sbox = 185
li x20, 0xb9b9b9b9 # initialize rs1
li x21, 0xb9b9b9b9 # initialize rs2
aes32esmi x16, x20, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 524)

# Testcase cp_sbox = 186
li x6, 0xbabababa # initialize rs1
li x14, 0xbabababa # initialize rs2
aes32esmi x17, x6, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cp_sbox = 187
li x22, 0xbbbbbbbb # initialize rs1
li x24, 0xbbbbbbbb # initialize rs2
aes32esmi x25, x22, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 532)

# Testcase cp_sbox = 188
li x3, 0xbcbcbcbc # initialize rs1
li x6, 0xbcbcbcbc # initialize rs2
aes32esmi x21, x3, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cp_sbox = 189
li x10, 0xbdbdbdbd # initialize rs1
li x12, 0xbdbdbdbd # initialize rs2
aes32esmi x15, x10, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 540)

# Testcase cp_sbox = 190
li x11, 0xbebebebe # initialize rs1
li x8, 0xbebebebe # initialize rs2
aes32esmi x29, x11, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cp_sbox = 191
li x3, 0xbfbfbfbf # initialize rs1
li x31, 0xbfbfbfbf # initialize rs2
aes32esmi x6, x3, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 548)

# Testcase cp_sbox = 192
li x22, 0xc0c0c0c0 # initialize rs1
li x1, 0xc0c0c0c0 # initialize rs2
aes32esmi x10, x22, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cp_sbox = 193
li x9, 0xc1c1c1c1 # initialize rs1
li x20, 0xc1c1c1c1 # initialize rs2
aes32esmi x5, x9, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 556)

# Testcase cp_sbox = 194
li x11, 0xc2c2c2c2 # initialize rs1
li x18, 0xc2c2c2c2 # initialize rs2
aes32esmi x20, x11, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cp_sbox = 195
li x14, 0xc3c3c3c3 # initialize rs1
li x10, 0xc3c3c3c3 # initialize rs2
aes32esmi x19, x14, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cp_sbox = 196
li x17, 0xc4c4c4c4 # initialize rs1
li x25, 0xc4c4c4c4 # initialize rs2
aes32esmi x23, x17, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_sbox = 197
li x27, 0xc5c5c5c5 # initialize rs1
li x21, 0xc5c5c5c5 # initialize rs2
aes32esmi x6, x27, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 572)

# Testcase cp_sbox = 198
li x16, 0xc6c6c6c6 # initialize rs1
li x2, 0xc6c6c6c6 # initialize rs2
aes32esmi x5, x16, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cp_sbox = 199
li x15, 0xc7c7c7c7 # initialize rs1
li x22, 0xc7c7c7c7 # initialize rs2
aes32esmi x19, x15, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cp_sbox = 200
li x18, 0xc8c8c8c8 # initialize rs1
li x22, 0xc8c8c8c8 # initialize rs2
aes32esmi x28, x18, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cp_sbox = 201
li x20, 0xc9c9c9c9 # initialize rs1
li x2, 0xc9c9c9c9 # initialize rs2
aes32esmi x30, x20, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 588)

# Testcase cp_sbox = 202
li x5, 0xcacacaca # initialize rs1
li x8, 0xcacacaca # initialize rs2
aes32esmi x1, x5, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_sbox = 203
li x3, 0xcbcbcbcb # initialize rs1
li x11, 0xcbcbcbcb # initialize rs2
aes32esmi x24, x3, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 596)

# Testcase cp_sbox = 204
li x21, 0xcccccccc # initialize rs1
li x24, 0xcccccccc # initialize rs2
aes32esmi x10, x21, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cp_sbox = 205
li x7, 0xcdcdcdcd # initialize rs1
li x10, 0xcdcdcdcd # initialize rs2
aes32esmi x21, x7, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 604)

# Testcase cp_sbox = 206
li x13, 0xcececece # initialize rs1
li x30, 0xcececece # initialize rs2
aes32esmi x28, x13, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 608)

# Testcase cp_sbox = 207
li x7, 0xcfcfcfcf # initialize rs1
li x18, 0xcfcfcfcf # initialize rs2
aes32esmi x26, x7, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 612)

# Testcase cp_sbox = 208
li x31, 0xd0d0d0d0 # initialize rs1
li x30, 0xd0d0d0d0 # initialize rs2
aes32esmi x16, x31, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_sbox = 209
li x27, 0xd1d1d1d1 # initialize rs1
li x17, 0xd1d1d1d1 # initialize rs2
aes32esmi x15, x27, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 620)

# Testcase cp_sbox = 210
li x3, 0xd2d2d2d2 # initialize rs1
li x8, 0xd2d2d2d2 # initialize rs2
aes32esmi x30, x3, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cp_sbox = 211
li x11, 0xd3d3d3d3 # initialize rs1
li x29, 0xd3d3d3d3 # initialize rs2
aes32esmi x13, x11, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 628)

# Testcase cp_sbox = 212
li x22, 0xd4d4d4d4 # initialize rs1
li x17, 0xd4d4d4d4 # initialize rs2
aes32esmi x19, x22, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cp_sbox = 213
li x11, 0xd5d5d5d5 # initialize rs1
li x24, 0xd5d5d5d5 # initialize rs2
aes32esmi x17, x11, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 636)

# Testcase cp_sbox = 214
li x26, 0xd6d6d6d6 # initialize rs1
li x21, 0xd6d6d6d6 # initialize rs2
aes32esmi x16, x26, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_sbox = 215
li x3, 0xd7d7d7d7 # initialize rs1
li x28, 0xd7d7d7d7 # initialize rs2
aes32esmi x26, x3, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 644)

# Testcase cp_sbox = 216
li x29, 0xd8d8d8d8 # initialize rs1
li x1, 0xd8d8d8d8 # initialize rs2
aes32esmi x26, x29, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 648)

# Testcase cp_sbox = 217
li x30, 0xd9d9d9d9 # initialize rs1
li x8, 0xd9d9d9d9 # initialize rs2
aes32esmi x18, x30, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 652)

# Testcase cp_sbox = 218
li x3, 0xdadadada # initialize rs1
li x24, 0xdadadada # initialize rs2
aes32esmi x23, x3, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cp_sbox = 219
li x11, 0xdbdbdbdb # initialize rs1
li x7, 0xdbdbdbdb # initialize rs2
aes32esmi x21, x11, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 660)

# Testcase cp_sbox = 220
li x1, 0xdcdcdcdc # initialize rs1
li x10, 0xdcdcdcdc # initialize rs2
aes32esmi x23, x1, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cp_sbox = 221
li x16, 0xdddddddd # initialize rs1
li x3, 0xdddddddd # initialize rs2
aes32esmi x30, x16, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 668)

# Testcase cp_sbox = 222
li x3, 0xdededede # initialize rs1
li x6, 0xdededede # initialize rs2
aes32esmi x15, x3, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cp_sbox = 223
li x13, 0xdfdfdfdf # initialize rs1
li x14, 0xdfdfdfdf # initialize rs2
aes32esmi x7, x13, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 676)

# Testcase cp_sbox = 224
li x14, 0xe0e0e0e0 # initialize rs1
li x5, 0xe0e0e0e0 # initialize rs2
aes32esmi x6, x14, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 680)

# Testcase cp_sbox = 225
li x19, 0xe1e1e1e1 # initialize rs1
li x28, 0xe1e1e1e1 # initialize rs2
aes32esmi x11, x19, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 684)

# Testcase cp_sbox = 226
li x22, 0xe2e2e2e2 # initialize rs1
li x8, 0xe2e2e2e2 # initialize rs2
aes32esmi x5, x22, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 688)

# Testcase cp_sbox = 227
li x20, 0xe3e3e3e3 # initialize rs1
li x12, 0xe3e3e3e3 # initialize rs2
aes32esmi x11, x20, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 692)

# Testcase cp_sbox = 228
li x7, 0xe4e4e4e4 # initialize rs1
li x18, 0xe4e4e4e4 # initialize rs2
aes32esmi x6, x7, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 696)

# Testcase cp_sbox = 229
li x21, 0xe5e5e5e5 # initialize rs1
li x16, 0xe5e5e5e5 # initialize rs2
aes32esmi x26, x21, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 700)

# Testcase cp_sbox = 230
li x28, 0xe6e6e6e6 # initialize rs1
li x15, 0xe6e6e6e6 # initialize rs2
aes32esmi x16, x28, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 704)

# Testcase cp_sbox = 231
li x2, 0xe7e7e7e7 # initialize rs1
li x25, 0xe7e7e7e7 # initialize rs2
aes32esmi x21, x2, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 708)

# Testcase cp_sbox = 232
li x28, 0xe8e8e8e8 # initialize rs1
li x10, 0xe8e8e8e8 # initialize rs2
aes32esmi x30, x28, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cp_sbox = 233
li x23, 0xe9e9e9e9 # initialize rs1
li x7, 0xe9e9e9e9 # initialize rs2
aes32esmi x30, x23, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 716)

# Testcase cp_sbox = 234
li x30, 0xeaeaeaea # initialize rs1
li x31, 0xeaeaeaea # initialize rs2
aes32esmi x24, x30, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cp_sbox = 235
li x14, 0xebebebeb # initialize rs1
li x29, 0xebebebeb # initialize rs2
aes32esmi x16, x14, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 724)

# Testcase cp_sbox = 236
li x23, 0xecececec # initialize rs1
li x12, 0xecececec # initialize rs2
aes32esmi x6, x23, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 728)

# Testcase cp_sbox = 237
li x18, 0xedededed # initialize rs1
li x22, 0xedededed # initialize rs2
aes32esmi x6, x18, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 732)

# Testcase cp_sbox = 238
li x20, 0xeeeeeeee # initialize rs1
li x29, 0xeeeeeeee # initialize rs2
aes32esmi x28, x20, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_sbox = 239
li x9, 0xefefefef # initialize rs1
li x28, 0xefefefef # initialize rs2
aes32esmi x23, x9, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 740)

# Testcase cp_sbox = 240
li x25, 0xf0f0f0f0 # initialize rs1
li x23, 0xf0f0f0f0 # initialize rs2
aes32esmi x10, x25, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cp_sbox = 241
li x25, 0xf1f1f1f1 # initialize rs1
li x11, 0xf1f1f1f1 # initialize rs2
aes32esmi x21, x25, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 748)

# Testcase cp_sbox = 242
li x2, 0xf2f2f2f2 # initialize rs1
li x6, 0xf2f2f2f2 # initialize rs2
aes32esmi x25, x2, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 752)

# Testcase cp_sbox = 243
li x9, 0xf3f3f3f3 # initialize rs1
li x5, 0xf3f3f3f3 # initialize rs2
aes32esmi x15, x9, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 756)

# Testcase cp_sbox = 244
li x24, 0xf4f4f4f4 # initialize rs1
li x27, 0xf4f4f4f4 # initialize rs2
aes32esmi x14, x24, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cp_sbox = 245
li x8, 0xf5f5f5f5 # initialize rs1
li x1, 0xf5f5f5f5 # initialize rs2
aes32esmi x21, x8, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 764)

# Testcase cp_sbox = 246
li x29, 0xf6f6f6f6 # initialize rs1
li x20, 0xf6f6f6f6 # initialize rs2
aes32esmi x15, x29, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cp_sbox = 247
li x17, 0xf7f7f7f7 # initialize rs1
li x8, 0xf7f7f7f7 # initialize rs2
aes32esmi x1, x17, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 772)

# Testcase cp_sbox = 248
li x15, 0xf8f8f8f8 # initialize rs1
li x9, 0xf8f8f8f8 # initialize rs2
aes32esmi x1, x15, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cp_sbox = 249
li x26, 0xf9f9f9f9 # initialize rs1
li x25, 0xf9f9f9f9 # initialize rs2
aes32esmi x16, x26, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 780)

# Testcase cp_sbox = 250
li x9, 0xfafafafa # initialize rs1
li x24, 0xfafafafa # initialize rs2
aes32esmi x6, x9, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cp_sbox = 251
li x11, 0xfbfbfbfb # initialize rs1
li x17, 0xfbfbfbfb # initialize rs2
aes32esmi x10, x11, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 788)

# Testcase cp_sbox = 252
li x13, 0xfcfcfcfc # initialize rs1
li x5, 0xfcfcfcfc # initialize rs2
aes32esmi x29, x13, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cp_sbox = 253
li x22, 0xfdfdfdfd # initialize rs1
li x5, 0xfdfdfdfd # initialize rs2
aes32esmi x26, x22, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 796)

# Testcase cp_sbox = 254
li x16, 0xfefefefe # initialize rs1
li x1, 0xfefefefe # initialize rs2
aes32esmi x28, x16, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 800)

# Testcase cp_sbox = 255
li x22, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
aes32esmi x7, x22, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 804)

#.EQU SIGSIZE,2608


// ******************
// Tests from: WALLY-COV-aes32esi.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x259c8e62 # initialize rs1
li x2, 0xd8472ec9 # initialize rs2
aes32esi x11, x0, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x53ec9280 # initialize rs1
li x30, 0xe1c959c8 # initialize rs2
aes32esi x11, x1, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x83129cdf # initialize rs1
li x26, 0xb5ce727d # initialize rs2
aes32esi x22, x2, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc3cd0882 # initialize rs1
li x20, 0x52f55181 # initialize rs2
aes32esi x23, x3, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbbc7b198 # initialize rs1
li x2, 0x62b1e1b4 # initialize rs2
aes32esi x15, x4, x2, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4ea59ecf # initialize rs1
li x20, 0xfe1db1b0 # initialize rs2
aes32esi x4, x5, x20, 1 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe633b64f # initialize rs1
li x15, 0xd9220579 # initialize rs2
aes32esi x30, x6, x15, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe86e2286 # initialize rs1
li x23, 0x5349fa04 # initialize rs2
aes32esi x16, x7, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd6192889 # initialize rs1
li x27, 0xd81272a1 # initialize rs2
aes32esi x14, x8, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x280243db # initialize rs1
li x30, 0x1fdc6e54 # initialize rs2
aes32esi x5, x9, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc61d2ae9 # initialize rs1
li x20, 0x44cec6c9 # initialize rs2
aes32esi x19, x10, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x9e2d04c0 # initialize rs1
li x2, 0x955ef6d7 # initialize rs2
aes32esi x17, x11, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8f4a7487 # initialize rs1
li x9, 0xa332d820 # initialize rs2
aes32esi x28, x12, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x07801032 # initialize rs1
li x20, 0x6cf55283 # initialize rs2
aes32esi x5, x13, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x8bcfa70c # initialize rs1
li x3, 0xe0aff44a # initialize rs2
aes32esi x12, x14, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa367cae9 # initialize rs1
li x31, 0x9661b64d # initialize rs2
aes32esi x22, x15, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x75a6a53b # initialize rs1
li x29, 0x77f65c4d # initialize rs2
aes32esi x31, x16, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xaac7cedd # initialize rs1
li x7, 0x38dc0f06 # initialize rs2
aes32esi x2, x17, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd819f4a7 # initialize rs1
li x26, 0xd3c2aa96 # initialize rs2
aes32esi x21, x18, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x75b3cdbb # initialize rs1
li x9, 0x806c5744 # initialize rs2
aes32esi x15, x19, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4f4b2611 # initialize rs1
li x6, 0x5030c7c6 # initialize rs2
aes32esi x21, x20, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2fe3bf85 # initialize rs1
li x15, 0xfdaa74a1 # initialize rs2
aes32esi x13, x21, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x801df40f # initialize rs1
li x26, 0xd40a107a # initialize rs2
aes32esi x8, x22, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4227c25e # initialize rs1
li x29, 0x534906c1 # initialize rs2
aes32esi x27, x23, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x13073165 # initialize rs1
li x28, 0xb26a1847 # initialize rs2
aes32esi x31, x24, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xdd485e73 # initialize rs1
li x19, 0xcf1da467 # initialize rs2
aes32esi x12, x25, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xc1f91b25 # initialize rs1
li x14, 0x7f8b0df5 # initialize rs2
aes32esi x17, x26, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x542810b5 # initialize rs1
li x24, 0xa5814ea2 # initialize rs2
aes32esi x23, x27, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe91aa09d # initialize rs1
li x26, 0x8298823b # initialize rs2
aes32esi x6, x28, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7740597a # initialize rs1
li x6, 0xdb992d2f # initialize rs2
aes32esi x26, x29, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x49029e68 # initialize rs1
li x25, 0x11ef3d97 # initialize rs2
aes32esi x3, x30, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x93c75e04 # initialize rs1
li x11, 0xf49c381f # initialize rs2
aes32esi x5, x31, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x1af53f2b # initialize rs1
li x0, 0xe81afd5c # initialize rs2
aes32esi x26, x17, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0xa07c2c73 # initialize rs1
li x1, 0xc9a4196a # initialize rs2
aes32esi x23, x21, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x25, 0xbb570b4c # initialize rs1
li x2, 0x076ca27e # initialize rs2
aes32esi x21, x25, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0xc9854207 # initialize rs1
li x3, 0xe6cfa9a0 # initialize rs2
aes32esi x5, x21, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xbbbca5ce # initialize rs1
li x4, 0xcb23fa72 # initialize rs2
aes32esi x25, x23, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xb34ffc73 # initialize rs1
li x5, 0xf9c4217d # initialize rs2
aes32esi x13, x7, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x5, x6 # switch signature pointer register to avoid conflict with test
li x4, 0xb2f7a221 # initialize rs1
li x6, 0x8d77ea57 # initialize rs2
aes32esi x7, x4, x6, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
li x6, 0xda0ce967 # initialize rs1
li x7, 0x493e68df # initialize rs2
aes32esi x12, x6, x7, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0x9dc6ed3e # initialize rs1
li x8, 0x98d95416 # initialize rs2
aes32esi x29, x17, x8, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x24c18be8 # initialize rs1
li x9, 0x6164f481 # initialize rs2
aes32esi x21, x19, x9, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x68cb3565 # initialize rs1
li x10, 0xa73ead15 # initialize rs2
aes32esi x8, x14, x10, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x13, 0xaff53108 # initialize rs1
li x11, 0xc08c9723 # initialize rs2
aes32esi x15, x13, x11, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0xcc45c878 # initialize rs1
li x12, 0xd9dd1310 # initialize rs2
aes32esi x16, x29, x12, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x359f8fdd # initialize rs1
li x13, 0x9da237a5 # initialize rs2
aes32esi x30, x20, x13, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0xdfe8160d # initialize rs1
li x14, 0x43873637 # initialize rs2
aes32esi x16, x15, x14, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0xe399b0c8 # initialize rs1
li x15, 0x73d4e814 # initialize rs2
aes32esi x10, x25, x15, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0x53ef74b0 # initialize rs1
li x16, 0x661ae802 # initialize rs2
aes32esi x20, x23, x16, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0x87f43437 # initialize rs1
li x17, 0xaa2786b3 # initialize rs2
aes32esi x6, x23, x17, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x19, 0x80d9a70a # initialize rs1
li x18, 0x23aa52f3 # initialize rs2
aes32esi x22, x19, x18, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0x4712f52f # initialize rs1
li x19, 0x11bfdb22 # initialize rs2
aes32esi x24, x20, x19, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0x18dcf725 # initialize rs1
li x20, 0xbc8c95f6 # initialize rs2
aes32esi x6, x25, x20, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0xb57c19e4 # initialize rs1
li x21, 0x4b26ad10 # initialize rs2
aes32esi x11, x24, x21, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x5c6a19b6 # initialize rs1
li x22, 0xa589896c # initialize rs2
aes32esi x31, x28, x22, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0x5569dc86 # initialize rs1
li x23, 0x23cdb5cc # initialize rs2
aes32esi x13, x29, x23, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x4afecd96 # initialize rs1
li x24, 0x328d5aaf # initialize rs2
aes32esi x14, x18, x24, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0xad3bfecb # initialize rs1
li x25, 0x0cdb6898 # initialize rs2
aes32esi x19, x6, x25, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0xccdf2c74 # initialize rs1
li x26, 0x5c32b638 # initialize rs2
aes32esi x2, x21, x26, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x19, 0x59344f45 # initialize rs1
li x27, 0xc74ad48b # initialize rs2
aes32esi x12, x19, x27, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xceff634d # initialize rs1
li x28, 0xf93bf46d # initialize rs2
aes32esi x3, x30, x28, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0xc2c1620e # initialize rs1
li x29, 0x43d42216 # initialize rs2
aes32esi x24, x30, x29, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x9e37248a # initialize rs1
li x30, 0xd4c4873f # initialize rs2
aes32esi x27, x31, x30, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x34200b97 # initialize rs1
li x31, 0xf20802b2 # initialize rs2
aes32esi x21, x9, x31, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 252)

# Testcase cp_rd (Test destination rd = x0)
li x16, 0x0c158068 # initialize rs1
li x28, 0x6936dd73 # initialize rs2
aes32esi x0, x16, x28, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x805bfc5d # initialize rs1
li x18, 0x870f3469 # initialize rs2
aes32esi x1, x9, x18, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x8050fba4 # initialize rs1
li x12, 0x0057efff # initialize rs2
aes32esi x2, x13, x12, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0x67205d6e # initialize rs1
li x1, 0x8716d0ff # initialize rs2
aes32esi x3, x24, x1, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
li x7, 0x5bc83613 # initialize rs1
li x4, 0xb64be911 # initialize rs2
aes32esi x4, x7, x4, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x51750a48 # initialize rs1
li x29, 0x89a05a46 # initialize rs2
aes32esi x5, x1, x29, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x8caadd20 # initialize rs1
li x30, 0x0762b1f7 # initialize rs2
aes32esi x6, x1, x30, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x1035d705 # initialize rs1
li x30, 0x695c5bf6 # initialize rs2
aes32esi x7, x29, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x6d9d2ae0 # initialize rs1
li x19, 0x1a3b25e3 # initialize rs2
aes32esi x8, x18, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x16, 0x84615605 # initialize rs1
li x23, 0xe0fdda7f # initialize rs2
aes32esi x9, x16, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x4cea0147 # initialize rs1
li x14, 0x245d654f # initialize rs2
aes32esi x10, x19, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0xc0cc69b5 # initialize rs1
li x10, 0x24f84ff0 # initialize rs2
aes32esi x11, x18, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xbb7fd26d # initialize rs1
li x20, 0x8a4f448e # initialize rs2
aes32esi x12, x1, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x7c18df9c # initialize rs1
li x7, 0x083161a0 # initialize rs2
aes32esi x13, x11, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0xa35f5ab6 # initialize rs1
li x3, 0x510c3582 # initialize rs2
aes32esi x14, x20, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x011de9d7 # initialize rs1
li x12, 0xe1b659f4 # initialize rs2
aes32esi x15, x10, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0xd9fd55dd # initialize rs1
li x29, 0x2ccec710 # initialize rs2
aes32esi x16, x12, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x937dede2 # initialize rs1
li x21, 0xef96b2c0 # initialize rs2
aes32esi x17, x19, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0x613e3590 # initialize rs1
li x9, 0x7231e5d5 # initialize rs2
aes32esi x18, x15, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x92b518dd # initialize rs1
li x25, 0xf976db1e # initialize rs2
aes32esi x19, x20, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x4043acb7 # initialize rs1
li x13, 0x25cf6719 # initialize rs2
aes32esi x20, x3, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x5b1d72cc # initialize rs1
li x30, 0xe1d93bf6 # initialize rs2
aes32esi x21, x24, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x13, 0xc7cd8e3d # initialize rs1
li x21, 0x54fe6f5a # initialize rs2
aes32esi x22, x13, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xe8b8e668 # initialize rs1
li x26, 0x512d1ca9 # initialize rs2
aes32esi x23, x28, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xd6af29ca # initialize rs1
li x16, 0x82beb08c # initialize rs2
aes32esi x24, x20, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x07374a75 # initialize rs1
li x1, 0x8bb8e9d1 # initialize rs2
aes32esi x25, x28, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x8ef92e6f # initialize rs1
li x15, 0xa422127f # initialize rs2
aes32esi x26, x3, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0xe7ea67be # initialize rs1
li x30, 0xe72946cb # initialize rs2
aes32esi x27, x9, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x7e8a98c0 # initialize rs1
li x9, 0x26d62ec5 # initialize rs2
aes32esi x28, x31, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0x8edd2e0c # initialize rs1
li x14, 0x927cffd2 # initialize rs2
aes32esi x29, x19, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x16a37a1c # initialize rs1
li x21, 0x633bb2d4 # initialize rs2
aes32esi x30, x23, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0x864a0822 # initialize rs1
li x18, 0xa681398f # initialize rs2
aes32esi x31, x26, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
li x29, 0xdaba9f58 # initialize rs2
aes32esi x16, x2, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x8, 0x38d7c079 # initialize rs2
aes32esi x3, x22, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x00000002 # initialize rs1
li x19, 0xa179abad # initialize rs2
aes32esi x31, x29, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x17, 0x80000000 # initialize rs1
li x10, 0x06767c44 # initialize rs2
aes32esi x24, x17, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x1, 0x6356457d # initialize rs2
aes32esi x6, x17, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
li x23, 0x0d68a39a # initialize rs2
aes32esi x9, x26, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x30, 0xcbbe56b0 # initialize rs2
aes32esi x25, x24, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0xffffffff # initialize rs1
li x7, 0x81572ddc # initialize rs2
aes32esi x22, x14, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
li x6, 0x36d44062 # initialize rs2
aes32esi x26, x17, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
li x23, 0x66300fcb # initialize rs2
aes32esi x24, x2, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
li x29, 0x6cc205c5 # initialize rs2
aes32esi x3, x31, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x18, 0x9e402eb1 # initialize rs2
aes32esi x3, x28, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0xba80ea5b # initialize rs1
li x2, 0x00000000 # initialize rs2
aes32esi x16, x13, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x1c5c1786 # initialize rs1
li x3, 0x00000001 # initialize rs2
aes32esi x29, x1, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x09ed9133 # initialize rs1
li x5, 0x00000002 # initialize rs2
aes32esi x31, x11, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x28, 0x0ca208a5 # initialize rs1
li x5, 0x80000000 # initialize rs2
aes32esi x24, x28, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x5, 0x38b23385 # initialize rs1
li x23, 0x80000001 # initialize rs2
aes32esi x14, x5, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0xe2d77ddb # initialize rs1
li x10, 0x7fffffff # initialize rs2
aes32esi x8, x6, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x15, 0xc28af25c # initialize rs1
li x28, 0x7ffffffe # initialize rs2
aes32esi x22, x15, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0x651d659f # initialize rs1
li x5, 0xffffffff # initialize rs2
aes32esi x25, x14, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x4d302eb4 # initialize rs1
li x27, 0xfffffffe # initialize rs2
aes32esi x5, x3, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x17, 0x3ff0e89a # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
aes32esi x11, x17, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x12, 0x850dbed0 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
aes32esi x26, x12, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0x30d910b1 # initialize rs1
li x31, 0x55555555 # initialize rs2
aes32esi x10, x16, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x28, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
aes32esi x20, x28, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x00000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
aes32esi x10, x27, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x00000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
aes32esi x15, x25, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x00000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
aes32esi x27, x2, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x3, 0x00000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
aes32esi x18, x3, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x18, 0x00000000 # initialize rs1
li x15, 0x7fffffff # initialize rs2
aes32esi x1, x18, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x11, 0x00000000 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
aes32esi x19, x11, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x18, 0x00000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
aes32esi x3, x18, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x00000000 # initialize rs1
li x10, 0xfffffffe # initialize rs2
aes32esi x8, x1, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x6, 0x00000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
aes32esi x3, x6, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x27, 0x00000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
aes32esi x25, x27, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x25, 0x00000000 # initialize rs1
li x27, 0x55555555 # initialize rs2
aes32esi x1, x25, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x3, 0x00000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
aes32esi x9, x3, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x00000001 # initialize rs1
li x26, 0x00000001 # initialize rs2
aes32esi x8, x20, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x00000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
aes32esi x29, x18, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x14, 0x00000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
aes32esi x21, x14, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x6, 0x00000001 # initialize rs1
li x19, 0x80000001 # initialize rs2
aes32esi x7, x6, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x1, 0x00000001 # initialize rs1
li x31, 0x7fffffff # initialize rs2
aes32esi x9, x1, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x19, 0x00000001 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
aes32esi x30, x19, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x16, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
aes32esi x25, x16, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x00000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
aes32esi x21, x3, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x17, 0x00000001 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
aes32esi x22, x17, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x16, 0x00000001 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
aes32esi x13, x16, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x13, 0x00000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
aes32esi x20, x13, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x00000002 # initialize rs1
li x27, 0x00000000 # initialize rs2
aes32esi x17, x12, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x17, 0x00000002 # initialize rs1
li x26, 0x00000001 # initialize rs2
aes32esi x14, x17, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
aes32esi x12, x13, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x30, 0x00000002 # initialize rs1
li x22, 0x80000000 # initialize rs2
aes32esi x8, x30, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x12, 0x00000002 # initialize rs1
li x7, 0x80000001 # initialize rs2
aes32esi x27, x12, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x00000002 # initialize rs1
li x16, 0x7fffffff # initialize rs2
aes32esi x17, x23, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x20, 0x00000002 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
aes32esi x3, x20, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x20, 0x00000002 # initialize rs1
li x13, 0xffffffff # initialize rs2
aes32esi x14, x20, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x29, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
aes32esi x25, x29, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x11, 0x00000002 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
aes32esi x31, x11, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x29, 0x00000002 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
aes32esi x7, x29, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x2, 0x00000002 # initialize rs1
li x29, 0x55555555 # initialize rs2
aes32esi x14, x2, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x25, 0x80000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
aes32esi x23, x25, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0x80000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
aes32esi x23, x1, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x16, 0x80000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
aes32esi x2, x16, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
aes32esi x1, x31, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x15, 0x80000000 # initialize rs1
li x16, 0x80000001 # initialize rs2
aes32esi x2, x15, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x6, 0x80000000 # initialize rs1
li x23, 0x7fffffff # initialize rs2
aes32esi x10, x6, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x10, 0x80000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
aes32esi x14, x10, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
aes32esi x29, x27, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x29, 0x80000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
aes32esi x28, x29, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x20, 0x80000000 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
aes32esi x31, x20, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x21, 0x80000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
aes32esi x11, x21, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x11, 0x80000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
aes32esi x12, x11, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x21, 0x80000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
aes32esi x15, x21, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
aes32esi x1, x6, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x8, 0x80000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
aes32esi x28, x8, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x5, 0x80000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
aes32esi x19, x5, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
aes32esi x2, x23, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x11, 0x80000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
aes32esi x2, x11, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x6, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
aes32esi x17, x6, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x19, 0x80000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
aes32esi x21, x19, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x3, 0x80000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
aes32esi x13, x3, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x5, 0x80000001 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
aes32esi x12, x5, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0x80000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
aes32esi x6, x25, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x29, 0x80000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
aes32esi x12, x29, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x11, 0x7fffffff # initialize rs1
li x14, 0x00000000 # initialize rs2
aes32esi x13, x11, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x25, 0x7fffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
aes32esi x14, x25, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x7fffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
aes32esi x6, x7, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x23, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
aes32esi x13, x23, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x25, 0x7fffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
aes32esi x28, x25, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x19, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
aes32esi x5, x19, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x11, 0x7fffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
aes32esi x1, x11, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x5, 0x7fffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
aes32esi x16, x5, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x27, 0x7fffffff # initialize rs1
li x18, 0xfffffffe # initialize rs2
aes32esi x20, x27, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x15, 0x7fffffff # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
aes32esi x11, x15, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x11, 0x7fffffff # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
aes32esi x15, x11, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x29, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
aes32esi x28, x29, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x1, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
aes32esi x23, x1, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x9, 0x7ffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
aes32esi x31, x9, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x7ffffffe # initialize rs1
li x24, 0x00000002 # initialize rs2
aes32esi x2, x27, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x27, 0x7ffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
aes32esi x23, x27, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x24, 0x7ffffffe # initialize rs1
li x25, 0x80000001 # initialize rs2
aes32esi x5, x24, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x9, 0x7ffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
aes32esi x11, x9, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x20, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
aes32esi x12, x20, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffe # initialize rs1
li x31, 0xffffffff # initialize rs2
aes32esi x20, x16, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
aes32esi x18, x28, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x13, 0x7ffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
aes32esi x20, x13, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x16, 0x7ffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
aes32esi x11, x16, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x28, 0x7ffffffe # initialize rs1
li x18, 0x55555555 # initialize rs2
aes32esi x16, x28, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x15, 0xffffffff # initialize rs1
li x22, 0x00000000 # initialize rs2
aes32esi x5, x15, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x11, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
aes32esi x13, x11, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x6, 0xffffffff # initialize rs1
li x7, 0x00000002 # initialize rs2
aes32esi x25, x6, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x27, 0xffffffff # initialize rs1
li x2, 0x80000000 # initialize rs2
aes32esi x11, x27, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
aes32esi x18, x19, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x5, 0xffffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
aes32esi x17, x5, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x20, 0xffffffff # initialize rs1
li x1, 0x7ffffffe # initialize rs2
aes32esi x22, x20, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x2, 0xffffffff # initialize rs2
aes32esi x1, x17, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0xffffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
aes32esi x18, x28, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
aes32esi x30, x23, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
aes32esi x1, x23, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x8, 0xffffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
aes32esi x30, x8, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0xfffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
aes32esi x9, x23, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0xfffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
aes32esi x5, x1, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x30, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
aes32esi x7, x30, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x15, 0xfffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
aes32esi x29, x15, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x12, 0xfffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
aes32esi x26, x12, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x5, 0xfffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
aes32esi x13, x5, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x6, 0xfffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
aes32esi x29, x6, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x13, 0xfffffffe # initialize rs1
li x16, 0xffffffff # initialize rs2
aes32esi x18, x13, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
aes32esi x13, x17, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x10, 0xfffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
aes32esi x19, x10, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x11, 0xfffffffe # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
aes32esi x27, x11, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x18, 0xfffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
aes32esi x31, x18, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x6, 0x5bbc8872 # initialize rs1
li x26, 0x00000000 # initialize rs2
aes32esi x3, x6, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x26, 0x5bbc8872 # initialize rs1
li x18, 0x00000001 # initialize rs2
aes32esi x8, x26, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x12, 0x5bbc8872 # initialize rs1
li x27, 0x00000002 # initialize rs2
aes32esi x8, x12, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x12, 0x5bbc8872 # initialize rs1
li x5, 0x80000000 # initialize rs2
aes32esi x27, x12, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x12, 0x5bbc8872 # initialize rs1
li x13, 0x80000001 # initialize rs2
aes32esi x20, x12, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x12, 0x5bbc8872 # initialize rs1
li x22, 0x7fffffff # initialize rs2
aes32esi x17, x12, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
aes32esi x15, x3, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x20, 0x5bbc8872 # initialize rs1
li x13, 0xffffffff # initialize rs2
aes32esi x9, x20, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x14, 0xfffffffe # initialize rs2
aes32esi x13, x8, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
aes32esi x24, x12, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x18, 0x5bbc8872 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
aes32esi x24, x18, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x15, 0x5bbc8872 # initialize rs1
li x30, 0x55555555 # initialize rs2
aes32esi x5, x15, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x15, 0x00000000 # initialize rs2
aes32esi x3, x16, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x14, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
aes32esi x8, x14, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x20, 0xaaaaaaaa # initialize rs1
li x30, 0x00000002 # initialize rs2
aes32esi x31, x20, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0xaaaaaaaa # initialize rs1
li x21, 0x80000000 # initialize rs2
aes32esi x3, x13, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x15, 0x80000001 # initialize rs2
aes32esi x5, x6, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x28, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
aes32esi x14, x28, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x21, 0xaaaaaaaa # initialize rs1
li x15, 0x7ffffffe # initialize rs2
aes32esi x8, x21, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x15, 0xffffffff # initialize rs2
aes32esi x12, x25, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x24, 0xaaaaaaaa # initialize rs1
li x23, 0xfffffffe # initialize rs2
aes32esi x10, x24, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x19, 0xaaaaaaaa # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
aes32esi x17, x19, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x6, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
aes32esi x23, x6, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x17, 0xaaaaaaaa # initialize rs1
li x28, 0x55555555 # initialize rs2
aes32esi x14, x17, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x13, 0x55555555 # initialize rs1
li x23, 0x00000000 # initialize rs2
aes32esi x7, x13, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x8, 0x55555555 # initialize rs1
li x9, 0x00000001 # initialize rs2
aes32esi x3, x8, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x8, 0x55555555 # initialize rs1
li x7, 0x00000002 # initialize rs2
aes32esi x23, x8, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x15, 0x55555555 # initialize rs1
li x9, 0x80000000 # initialize rs2
aes32esi x28, x15, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x1, 0x55555555 # initialize rs1
li x8, 0x80000001 # initialize rs2
aes32esi x10, x1, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x22, 0x55555555 # initialize rs1
li x7, 0x7fffffff # initialize rs2
aes32esi x21, x22, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x22, 0x55555555 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
aes32esi x7, x22, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x15, 0x55555555 # initialize rs1
li x9, 0xffffffff # initialize rs2
aes32esi x30, x15, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x11, 0x55555555 # initialize rs1
li x22, 0xfffffffe # initialize rs2
aes32esi x26, x11, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x9, 0x55555555 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
aes32esi x3, x9, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x16, 0x55555555 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
aes32esi x22, x16, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x19, 0x55555555 # initialize rs1
li x1, 0x55555555 # initialize rs2
aes32esi x29, x19, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x32628fb4 # initialize rs1
li x0, 0x45032722 # initialize rs2
aes32esi x22, x0, x0, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x84881f87 # initialize rs1
li x1, 0xdcb122a5 # initialize rs2
aes32esi x11, x1, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xf9338230 # initialize rs1
li x2, 0xf3e61580 # initialize rs2
aes32esi x13, x2, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdd390318 # initialize rs1
li x3, 0xff8bb3d0 # initialize rs2
aes32esi x10, x3, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x00aa38ec # initialize rs1
li x4, 0xaa4572c4 # initialize rs2
aes32esi x23, x4, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd494d406 # initialize rs1
li x5, 0x7768b9f3 # initialize rs2
aes32esi x15, x5, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x772eb760 # initialize rs1
li x6, 0x4faf606b # initialize rs2
aes32esi x3, x6, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfe001c24 # initialize rs1
li x7, 0xce1053dc # initialize rs2
aes32esi x2, x7, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xcc5a5bc5 # initialize rs1
li x8, 0xe3180a4f # initialize rs2
aes32esi x21, x8, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x492266ab # initialize rs1
li x9, 0x1e01b08b # initialize rs2
aes32esi x26, x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa2c8c847 # initialize rs1
li x10, 0xf01b609f # initialize rs2
aes32esi x21, x10, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x7e68f95d # initialize rs1
li x11, 0x5692aa1b # initialize rs2
aes32esi x30, x11, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x6515bfda # initialize rs1
li x12, 0x2e7c4054 # initialize rs2
aes32esi x15, x12, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xddfc75d6 # initialize rs1
li x13, 0xf318693e # initialize rs2
aes32esi x31, x13, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xfb2ef9e8 # initialize rs1
li x14, 0x33d9dd03 # initialize rs2
aes32esi x8, x14, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2ea5e8cd # initialize rs1
li x15, 0x1daf27ac # initialize rs2
aes32esi x17, x15, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x3244a12b # initialize rs1
li x16, 0x229f1d84 # initialize rs2
aes32esi x3, x16, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x27461ec1 # initialize rs1
li x17, 0xc1fd6875 # initialize rs2
aes32esi x11, x17, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x63674a8f # initialize rs1
li x18, 0xc79be765 # initialize rs2
aes32esi x31, x18, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x41d4c8fc # initialize rs1
li x19, 0x8e2a4e51 # initialize rs2
aes32esi x24, x19, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xef42621b # initialize rs1
li x20, 0xd977dbb3 # initialize rs2
aes32esi x31, x20, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4f4d5890 # initialize rs1
li x21, 0x0a0154db # initialize rs2
aes32esi x6, x21, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x46b0ae71 # initialize rs1
li x22, 0x27ba8db4 # initialize rs2
aes32esi x10, x22, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x68d2c80e # initialize rs1
li x23, 0xd2911282 # initialize rs2
aes32esi x3, x23, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x20c66e8e # initialize rs1
li x24, 0xbae8987b # initialize rs2
aes32esi x13, x24, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xdac82cee # initialize rs1
li x25, 0xed6ad118 # initialize rs2
aes32esi x22, x25, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3bce1758 # initialize rs1
li x26, 0x1eca5020 # initialize rs2
aes32esi x7, x26, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x9d5f51ba # initialize rs1
li x27, 0xde026331 # initialize rs2
aes32esi x10, x27, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x5343d9c0 # initialize rs1
li x28, 0xf32514b1 # initialize rs2
aes32esi x27, x28, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa853bfca # initialize rs1
li x29, 0x57f5745e # initialize rs2
aes32esi x9, x29, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc700df9c # initialize rs1
li x30, 0x864d4125 # initialize rs2
aes32esi x6, x30, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3f7c2d01 # initialize rs1
li x31, 0xdecfc392 # initialize rs2
aes32esi x23, x31, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd4403aad # initialize rs1
li x14, 0x3124c1d9 # initialize rs2
aes32esi x0, x0, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe585cb02 # initialize rs1
li x8, 0x2bf65096 # initialize rs2
aes32esi x1, x1, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x73fdcdeb # initialize rs1
li x24, 0x8d9bc898 # initialize rs2
aes32esi x2, x2, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x8c661794 # initialize rs1
li x18, 0x8552a638 # initialize rs2
aes32esi x3, x3, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x56266be4 # initialize rs1
li x12, 0x5c24d3d7 # initialize rs2
aes32esi x4, x4, x12, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6adfe2c1 # initialize rs1
li x19, 0x3dd4f266 # initialize rs2
aes32esi x5, x5, x19, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdfc58ecc # initialize rs1
li x25, 0x72266ce8 # initialize rs2
aes32esi x6, x6, x25, 3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc7082a3c # initialize rs1
li x4, 0xc0b70888 # initialize rs2
aes32esi x7, x7, x4, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9173917e # initialize rs1
li x28, 0xe33e6534 # initialize rs2
aes32esi x8, x8, x28, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8ac59b32 # initialize rs1
li x4, 0x9a85f531 # initialize rs2
aes32esi x9, x9, x4, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x74ce765f # initialize rs1
li x29, 0xcc93807d # initialize rs2
aes32esi x10, x10, x29, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x572e9d09 # initialize rs1
li x2, 0x0d419b0e # initialize rs2
aes32esi x11, x11, x2, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa497cbd4 # initialize rs1
li x24, 0x69f57358 # initialize rs2
aes32esi x12, x12, x24, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1be44a63 # initialize rs1
li x28, 0x42a36dfa # initialize rs2
aes32esi x13, x13, x28, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xea65e84f # initialize rs1
li x28, 0xb44f223f # initialize rs2
aes32esi x14, x14, x28, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xeaffbef1 # initialize rs1
li x11, 0x5fe79cdd # initialize rs2
aes32esi x15, x15, x11, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0c9400b2 # initialize rs1
li x23, 0xe9752083 # initialize rs2
aes32esi x16, x16, x23, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1b8fc7b0 # initialize rs1
li x11, 0xe5aa0fed # initialize rs2
aes32esi x17, x17, x11, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x25bad044 # initialize rs1
li x2, 0x1d5900df # initialize rs2
aes32esi x18, x18, x2, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf992f200 # initialize rs1
li x26, 0x27f8111b # initialize rs2
aes32esi x19, x19, x26, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x19d82746 # initialize rs1
li x14, 0x1934605b # initialize rs2
aes32esi x20, x20, x14, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb45a455e # initialize rs1
li x16, 0xc15389a5 # initialize rs2
aes32esi x21, x21, x16, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9ac23222 # initialize rs1
li x18, 0xa37b8495 # initialize rs2
aes32esi x22, x22, x18, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3bf26b4c # initialize rs1
li x11, 0x6f63ac0b # initialize rs2
aes32esi x23, x23, x11, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1a5ae74f # initialize rs1
li x26, 0x30a63578 # initialize rs2
aes32esi x24, x24, x26, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x96a22b31 # initialize rs1
li x1, 0xea2c60da # initialize rs2
aes32esi x25, x25, x1, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdae6e8e9 # initialize rs1
li x29, 0x178acca1 # initialize rs2
aes32esi x26, x26, x29, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6cededf0 # initialize rs1
li x31, 0x3eacb52a # initialize rs2
aes32esi x27, x27, x31, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x87883be9 # initialize rs1
li x28, 0x3b48b513 # initialize rs2
aes32esi x28, x28, x28, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x31c784a9 # initialize rs1
li x7, 0x70810497 # initialize rs2
aes32esi x29, x29, x7, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xaff98437 # initialize rs1
li x30, 0x8631a02f # initialize rs2
aes32esi x30, x30, x30, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb6b7ee37 # initialize rs1
li x18, 0x44e69696 # initialize rs2
aes32esi x31, x31, x18, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x8, 0x5fbc1f24 # initialize rs1
li x0, 0x2a61cb95 # initialize rs2
aes32esi x0, x8, x0, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x23, 0x31f451f8 # initialize rs1
li x1, 0x8d71c7e7 # initialize rs2
aes32esi x1, x23, x1, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x21, 0x3b0f8fb7 # initialize rs1
li x2, 0xef8ccb29 # initialize rs2
aes32esi x2, x21, x2, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x16, 0x96ec94d6 # initialize rs1
li x3, 0x6582624b # initialize rs2
aes32esi x3, x16, x3, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x2, 0xeca6a482 # initialize rs1
li x4, 0x9950e40e # initialize rs2
aes32esi x4, x2, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x242be1ed # initialize rs1
li x5, 0x4f7d0470 # initialize rs2
aes32esi x5, x14, x5, 0 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x62b2e976 # initialize rs1
li x6, 0x3c60a78e # initialize rs2
aes32esi x6, x25, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xb9d8b1a0 # initialize rs1
li x7, 0x1ada8d51 # initialize rs2
aes32esi x7, x20, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x9, 0x6204ed71 # initialize rs1
li x8, 0x22cb8e71 # initialize rs2
aes32esi x8, x9, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x10979021 # initialize rs1
li x9, 0xb054ed1d # initialize rs2
aes32esi x9, x9, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x25, 0x4291d78c # initialize rs1
li x10, 0xc80fd077 # initialize rs2
aes32esi x10, x25, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x8d7de799 # initialize rs1
li x11, 0xb136ac4c # initialize rs2
aes32esi x11, x6, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0xf76c564f # initialize rs1
li x12, 0x377a079a # initialize rs2
aes32esi x12, x13, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x11, 0x7a1f9fc3 # initialize rs1
li x13, 0x68fbc50b # initialize rs2
aes32esi x13, x11, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x5, 0x661dc49d # initialize rs1
li x14, 0xe56557d3 # initialize rs2
aes32esi x14, x5, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0x5e7373d2 # initialize rs1
li x15, 0x3bcf4ad8 # initialize rs2
aes32esi x15, x1, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x25, 0xfbdc7ee2 # initialize rs1
li x16, 0xd33a3b80 # initialize rs2
aes32esi x16, x25, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0x9395a7f6 # initialize rs1
li x17, 0x1a6dc51b # initialize rs2
aes32esi x17, x9, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x25, 0x6709b244 # initialize rs1
li x18, 0xaacba900 # initialize rs2
aes32esi x18, x25, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x22, 0xcf259acd # initialize rs1
li x19, 0x66cfb983 # initialize rs2
aes32esi x19, x22, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x13, 0xfc97f791 # initialize rs1
li x20, 0xb20634b3 # initialize rs2
aes32esi x20, x13, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x25, 0xcffde738 # initialize rs1
li x21, 0xe038e0e8 # initialize rs2
aes32esi x21, x25, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x15, 0x2ce84ab1 # initialize rs1
li x22, 0x29eecd5c # initialize rs2
aes32esi x22, x15, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0xa272c3a1 # initialize rs1
li x23, 0x6c9fd512 # initialize rs2
aes32esi x23, x5, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x28, 0xfe5893cb # initialize rs1
li x24, 0x8ad2a048 # initialize rs2
aes32esi x24, x28, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x29, 0xaccb8d47 # initialize rs1
li x25, 0x73cb1612 # initialize rs2
aes32esi x25, x29, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x3, 0xf9381563 # initialize rs1
li x26, 0x5491cca5 # initialize rs2
aes32esi x26, x3, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x30, 0x57e425b0 # initialize rs1
li x27, 0x4a141ac6 # initialize rs2
aes32esi x27, x30, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0x85a0a7c5 # initialize rs1
li x28, 0xe921f736 # initialize rs2
aes32esi x28, x8, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x27, 0xe60072ad # initialize rs1
li x29, 0x02ac140b # initialize rs2
aes32esi x29, x27, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x25, 0x9faab80b # initialize rs1
li x30, 0x60ff1efc # initialize rs2
aes32esi x30, x25, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x8, 0xc12a4ac0 # initialize rs1
li x31, 0xfdc29569 # initialize rs2
aes32esi x31, x8, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd3d57aa8 # initialize rs1
li x0, 0x1e58a735 # initialize rs2
aes32esi x0, x0, x0, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcaa6cb21 # initialize rs1
li x1, 0x87b81f34 # initialize rs2
aes32esi x1, x1, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xd4377964 # initialize rs1
li x2, 0xa33183fb # initialize rs2
aes32esi x2, x2, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf599b3aa # initialize rs1
li x3, 0x76394429 # initialize rs2
aes32esi x3, x3, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf3c5e728 # initialize rs1
li x4, 0xc990b9bb # initialize rs2
aes32esi x4, x4, x4, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4e912da5 # initialize rs1
li x5, 0x82dafc9f # initialize rs2
aes32esi x5, x5, x5, 1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd2e4dbc7 # initialize rs1
li x6, 0xbc51a045 # initialize rs2
aes32esi x6, x6, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x338df06b # initialize rs1
li x7, 0x09fe0d94 # initialize rs2
aes32esi x7, x7, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcc4666b7 # initialize rs1
li x8, 0xfda80ca9 # initialize rs2
aes32esi x8, x8, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x510b0c2e # initialize rs1
li x9, 0x73fa9478 # initialize rs2
aes32esi x9, x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xcceb9587 # initialize rs1
li x10, 0xa123a98d # initialize rs2
aes32esi x10, x10, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe6ca3f65 # initialize rs1
li x11, 0x04448329 # initialize rs2
aes32esi x11, x11, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7e0b926f # initialize rs1
li x12, 0x73bbc138 # initialize rs2
aes32esi x12, x12, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4a18e14b # initialize rs1
li x13, 0x46fae6b9 # initialize rs2
aes32esi x13, x13, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf88068ae # initialize rs1
li x14, 0x65687e38 # initialize rs2
aes32esi x14, x14, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9239db41 # initialize rs1
li x15, 0xa736f7ed # initialize rs2
aes32esi x15, x15, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x5558dcef # initialize rs1
li x16, 0xa86787d4 # initialize rs2
aes32esi x16, x16, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x9906ada8 # initialize rs1
li x17, 0x3dd26640 # initialize rs2
aes32esi x17, x17, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc7bd68cd # initialize rs1
li x18, 0x83472577 # initialize rs2
aes32esi x18, x18, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8e4be0e7 # initialize rs1
li x19, 0xc3020425 # initialize rs2
aes32esi x19, x19, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xce310ca0 # initialize rs1
li x20, 0x92798ba7 # initialize rs2
aes32esi x20, x20, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xbc35538f # initialize rs1
li x21, 0xb6dd7eaf # initialize rs2
aes32esi x21, x21, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7c9a25ac # initialize rs1
li x22, 0x78b5224b # initialize rs2
aes32esi x22, x22, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x06c10264 # initialize rs1
li x23, 0x261c2baa # initialize rs2
aes32esi x23, x23, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x9956f5bc # initialize rs1
li x24, 0xc41d0a15 # initialize rs2
aes32esi x24, x24, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa05c9fc1 # initialize rs1
li x25, 0xd112e956 # initialize rs2
aes32esi x25, x25, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1f1ec707 # initialize rs1
li x26, 0x42616cb4 # initialize rs2
aes32esi x26, x26, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc352fbe7 # initialize rs1
li x27, 0x635031f4 # initialize rs2
aes32esi x27, x27, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xfdce5e5e # initialize rs1
li x28, 0x795d8188 # initialize rs2
aes32esi x28, x28, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x34fc6652 # initialize rs1
li x29, 0x17218a9d # initialize rs2
aes32esi x29, x29, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2b65550b # initialize rs1
li x30, 0x521ab671 # initialize rs2
aes32esi x30, x30, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa5a77270 # initialize rs1
li x31, 0xc354485b # initialize rs2
aes32esi x31, x31, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_bs = 0
li x24, 0xb2540395 # initialize rs1
li x22, 0xb36c8c9b # initialize rs2
aes32esi x27, x24, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1568)

# Testcase cp_bs = 1
li x6, 0xd1b3666e # initialize rs1
li x27, 0x9696daba # initialize rs2
aes32esi x14, x6, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1572)

# Testcase cp_bs = 2
li x19, 0x1297c8dc # initialize rs1
li x1, 0xe64d5ac0 # initialize rs2
aes32esi x16, x19, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1576)

# Testcase cp_bs = 3
li x1, 0xf1ab0c14 # initialize rs1
li x12, 0xcf885f1e # initialize rs2
aes32esi x26, x1, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1580)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x25, x27 # perform first operation
aes32esi x31, x29, x5, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x17, x19 # perform first operation
aes32esi x21, x18, x27, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x5, x20 # perform first operation
aes32esi x2, x1, x8, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x3, x10 # perform first operation
aes32esi x5, x5, x24, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x5, x27 # perform first operation
aes32esi x17, x2, x17, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x16, x9 # perform first operation
aes32esi x22, x31, x18, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x10, x27 # perform first operation
aes32esi x18, x6, x11, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x27, x19 # perform first operation
aes32esi x7, x1, x29, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x7, x30 # perform first operation
aes32esi x12, x20, x21, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x26, x9 # perform first operation
aes32esi x26, x11, x16, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x7, x5 # perform first operation
aes32esi x5, x14, x6, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x10, x27 # perform first operation
aes32esi x28, x13, x23, 3 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x17, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
aes32esi x9, x17, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1584)

# Testcase cp_sbox = 1
li x9, 0x01010101 # initialize rs1
li x31, 0x01010101 # initialize rs2
aes32esi x11, x9, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1588)

# Testcase cp_sbox = 2
li x1, 0x02020202 # initialize rs1
li x25, 0x02020202 # initialize rs2
aes32esi x23, x1, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1592)

# Testcase cp_sbox = 3
li x12, 0x03030303 # initialize rs1
li x22, 0x03030303 # initialize rs2
aes32esi x31, x12, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1596)

# Testcase cp_sbox = 4
li x31, 0x04040404 # initialize rs1
li x2, 0x04040404 # initialize rs2
aes32esi x29, x31, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1600)

# Testcase cp_sbox = 5
li x31, 0x05050505 # initialize rs1
li x3, 0x05050505 # initialize rs2
aes32esi x9, x31, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1604)

# Testcase cp_sbox = 6
li x2, 0x06060606 # initialize rs1
li x18, 0x06060606 # initialize rs2
aes32esi x26, x2, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cp_sbox = 7
li x8, 0x07070707 # initialize rs1
li x3, 0x07070707 # initialize rs2
aes32esi x12, x8, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1612)

# Testcase cp_sbox = 8
li x5, 0x08080808 # initialize rs1
li x9, 0x08080808 # initialize rs2
aes32esi x8, x5, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1616)

# Testcase cp_sbox = 9
li x8, 0x09090909 # initialize rs1
li x26, 0x09090909 # initialize rs2
aes32esi x3, x8, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1620)

# Testcase cp_sbox = 10
li x16, 0x0a0a0a0a # initialize rs1
li x30, 0x0a0a0a0a # initialize rs2
aes32esi x5, x16, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cp_sbox = 11
li x27, 0x0b0b0b0b # initialize rs1
li x8, 0x0b0b0b0b # initialize rs2
aes32esi x13, x27, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1628)

# Testcase cp_sbox = 12
li x20, 0x0c0c0c0c # initialize rs1
li x19, 0x0c0c0c0c # initialize rs2
aes32esi x2, x20, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1632)

# Testcase cp_sbox = 13
li x27, 0x0d0d0d0d # initialize rs1
li x2, 0x0d0d0d0d # initialize rs2
aes32esi x9, x27, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1636)

# Testcase cp_sbox = 14
li x19, 0x0e0e0e0e # initialize rs1
li x27, 0x0e0e0e0e # initialize rs2
aes32esi x23, x19, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1640)

# Testcase cp_sbox = 15
li x28, 0x0f0f0f0f # initialize rs1
li x6, 0x0f0f0f0f # initialize rs2
aes32esi x12, x28, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1644)

# Testcase cp_sbox = 16
li x21, 0x10101010 # initialize rs1
li x23, 0x10101010 # initialize rs2
aes32esi x1, x21, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1648)

# Testcase cp_sbox = 17
li x1, 0x11111111 # initialize rs1
li x30, 0x11111111 # initialize rs2
aes32esi x27, x1, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1652)

# Testcase cp_sbox = 18
li x22, 0x12121212 # initialize rs1
li x15, 0x12121212 # initialize rs2
aes32esi x13, x22, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1656)

# Testcase cp_sbox = 19
li x31, 0x13131313 # initialize rs1
li x24, 0x13131313 # initialize rs2
aes32esi x9, x31, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1660)

# Testcase cp_sbox = 20
li x9, 0x14141414 # initialize rs1
li x24, 0x14141414 # initialize rs2
aes32esi x17, x9, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cp_sbox = 21
li x10, 0x15151515 # initialize rs1
li x24, 0x15151515 # initialize rs2
aes32esi x5, x10, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1668)

# Testcase cp_sbox = 22
li x23, 0x16161616 # initialize rs1
li x13, 0x16161616 # initialize rs2
aes32esi x10, x23, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1672)

# Testcase cp_sbox = 23
li x14, 0x17171717 # initialize rs1
li x2, 0x17171717 # initialize rs2
aes32esi x16, x14, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1676)

# Testcase cp_sbox = 24
li x8, 0x18181818 # initialize rs1
li x13, 0x18181818 # initialize rs2
aes32esi x12, x8, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1680)

# Testcase cp_sbox = 25
li x1, 0x19191919 # initialize rs1
li x25, 0x19191919 # initialize rs2
aes32esi x30, x1, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1684)

# Testcase cp_sbox = 26
li x23, 0x1a1a1a1a # initialize rs1
li x10, 0x1a1a1a1a # initialize rs2
aes32esi x16, x23, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1688)

# Testcase cp_sbox = 27
li x8, 0x1b1b1b1b # initialize rs1
li x24, 0x1b1b1b1b # initialize rs2
aes32esi x30, x8, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1692)

# Testcase cp_sbox = 28
li x8, 0x1c1c1c1c # initialize rs1
li x26, 0x1c1c1c1c # initialize rs2
aes32esi x29, x8, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1696)

# Testcase cp_sbox = 29
li x13, 0x1d1d1d1d # initialize rs1
li x8, 0x1d1d1d1d # initialize rs2
aes32esi x3, x13, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1700)

# Testcase cp_sbox = 30
li x26, 0x1e1e1e1e # initialize rs1
li x7, 0x1e1e1e1e # initialize rs2
aes32esi x10, x26, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

# Testcase cp_sbox = 31
li x15, 0x1f1f1f1f # initialize rs1
li x25, 0x1f1f1f1f # initialize rs2
aes32esi x3, x15, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1708)

# Testcase cp_sbox = 32
li x23, 0x20202020 # initialize rs1
li x25, 0x20202020 # initialize rs2
aes32esi x21, x23, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1712)

# Testcase cp_sbox = 33
li x2, 0x21212121 # initialize rs1
li x22, 0x21212121 # initialize rs2
aes32esi x12, x2, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1716)

# Testcase cp_sbox = 34
li x11, 0x22222222 # initialize rs1
li x6, 0x22222222 # initialize rs2
aes32esi x20, x11, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1720)

# Testcase cp_sbox = 35
li x23, 0x23232323 # initialize rs1
li x19, 0x23232323 # initialize rs2
aes32esi x25, x23, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1724)

# Testcase cp_sbox = 36
li x23, 0x24242424 # initialize rs1
li x28, 0x24242424 # initialize rs2
aes32esi x25, x23, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cp_sbox = 37
li x14, 0x25252525 # initialize rs1
li x22, 0x25252525 # initialize rs2
aes32esi x23, x14, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1732)

# Testcase cp_sbox = 38
li x24, 0x26262626 # initialize rs1
li x20, 0x26262626 # initialize rs2
aes32esi x6, x24, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1736)

# Testcase cp_sbox = 39
li x11, 0x27272727 # initialize rs1
li x17, 0x27272727 # initialize rs2
aes32esi x31, x11, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1740)

# Testcase cp_sbox = 40
li x23, 0x28282828 # initialize rs1
li x11, 0x28282828 # initialize rs2
aes32esi x10, x23, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1744)

# Testcase cp_sbox = 41
li x17, 0x29292929 # initialize rs1
li x22, 0x29292929 # initialize rs2
aes32esi x27, x17, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1748)

# Testcase cp_sbox = 42
li x21, 0x2a2a2a2a # initialize rs1
li x22, 0x2a2a2a2a # initialize rs2
aes32esi x6, x21, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1752)

# Testcase cp_sbox = 43
li x13, 0x2b2b2b2b # initialize rs1
li x9, 0x2b2b2b2b # initialize rs2
aes32esi x5, x13, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1756)

# Testcase cp_sbox = 44
li x26, 0x2c2c2c2c # initialize rs1
li x10, 0x2c2c2c2c # initialize rs2
aes32esi x25, x26, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1760)

# Testcase cp_sbox = 45
li x8, 0x2d2d2d2d # initialize rs1
li x30, 0x2d2d2d2d # initialize rs2
aes32esi x28, x8, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1764)

# Testcase cp_sbox = 46
li x3, 0x2e2e2e2e # initialize rs1
li x27, 0x2e2e2e2e # initialize rs2
aes32esi x24, x3, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1768)

# Testcase cp_sbox = 47
li x2, 0x2f2f2f2f # initialize rs1
li x9, 0x2f2f2f2f # initialize rs2
aes32esi x30, x2, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1772)

# Testcase cp_sbox = 48
li x7, 0x30303030 # initialize rs1
li x13, 0x30303030 # initialize rs2
aes32esi x10, x7, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1776)

# Testcase cp_sbox = 49
li x7, 0x31313131 # initialize rs1
li x10, 0x31313131 # initialize rs2
aes32esi x20, x7, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1780)

# Testcase cp_sbox = 50
li x28, 0x32323232 # initialize rs1
li x31, 0x32323232 # initialize rs2
aes32esi x21, x28, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1784)

# Testcase cp_sbox = 51
li x30, 0x33333333 # initialize rs1
li x22, 0x33333333 # initialize rs2
aes32esi x28, x30, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1788)

# Testcase cp_sbox = 52
li x29, 0x34343434 # initialize rs1
li x16, 0x34343434 # initialize rs2
aes32esi x12, x29, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)

# Testcase cp_sbox = 53
li x25, 0x35353535 # initialize rs1
li x22, 0x35353535 # initialize rs2
aes32esi x1, x25, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1796)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 54
li x16, 0x36363636 # initialize rs1
li x31, 0x36363636 # initialize rs2
aes32esi x25, x16, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_sbox = 55
li x3, 0x37373737 # initialize rs1
li x12, 0x37373737 # initialize rs2
aes32esi x16, x3, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_sbox = 56
li x14, 0x38383838 # initialize rs1
li x2, 0x38383838 # initialize rs2
aes32esi x25, x14, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_sbox = 57
li x17, 0x39393939 # initialize rs1
li x27, 0x39393939 # initialize rs2
aes32esi x21, x17, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 12)

# Testcase cp_sbox = 58
li x20, 0x3a3a3a3a # initialize rs1
li x1, 0x3a3a3a3a # initialize rs2
aes32esi x2, x20, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_sbox = 59
li x2, 0x3b3b3b3b # initialize rs1
li x5, 0x3b3b3b3b # initialize rs2
aes32esi x20, x2, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 20)

# Testcase cp_sbox = 60
li x14, 0x3c3c3c3c # initialize rs1
li x3, 0x3c3c3c3c # initialize rs2
aes32esi x22, x14, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_sbox = 61
li x26, 0x3d3d3d3d # initialize rs1
li x14, 0x3d3d3d3d # initialize rs2
aes32esi x3, x26, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_sbox = 62
li x26, 0x3e3e3e3e # initialize rs1
li x1, 0x3e3e3e3e # initialize rs2
aes32esi x3, x26, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_sbox = 63
li x29, 0x3f3f3f3f # initialize rs1
li x24, 0x3f3f3f3f # initialize rs2
aes32esi x7, x29, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_sbox = 64
li x16, 0x40404040 # initialize rs1
li x31, 0x40404040 # initialize rs2
aes32esi x7, x16, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_sbox = 65
li x27, 0x41414141 # initialize rs1
li x26, 0x41414141 # initialize rs2
aes32esi x8, x27, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_sbox = 66
li x5, 0x42424242 # initialize rs1
li x29, 0x42424242 # initialize rs2
aes32esi x15, x5, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cp_sbox = 67
li x5, 0x43434343 # initialize rs1
li x29, 0x43434343 # initialize rs2
aes32esi x24, x5, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_sbox = 68
li x2, 0x44444444 # initialize rs1
li x7, 0x44444444 # initialize rs2
aes32esi x11, x2, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_sbox = 69
li x14, 0x45454545 # initialize rs1
li x7, 0x45454545 # initialize rs2
aes32esi x10, x14, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 60)

# Testcase cp_sbox = 70
li x20, 0x46464646 # initialize rs1
li x21, 0x46464646 # initialize rs2
aes32esi x12, x20, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_sbox = 71
li x8, 0x47474747 # initialize rs1
li x31, 0x47474747 # initialize rs2
aes32esi x29, x8, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 68)

# Testcase cp_sbox = 72
li x26, 0x48484848 # initialize rs1
li x25, 0x48484848 # initialize rs2
aes32esi x27, x26, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_sbox = 73
li x15, 0x49494949 # initialize rs1
li x5, 0x49494949 # initialize rs2
aes32esi x14, x15, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 76)

# Testcase cp_sbox = 74
li x2, 0x4a4a4a4a # initialize rs1
li x8, 0x4a4a4a4a # initialize rs2
aes32esi x17, x2, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_sbox = 75
li x6, 0x4b4b4b4b # initialize rs1
li x10, 0x4b4b4b4b # initialize rs2
aes32esi x16, x6, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 84)

# Testcase cp_sbox = 76
li x17, 0x4c4c4c4c # initialize rs1
li x6, 0x4c4c4c4c # initialize rs2
aes32esi x13, x17, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_sbox = 77
li x13, 0x4d4d4d4d # initialize rs1
li x8, 0x4d4d4d4d # initialize rs2
aes32esi x21, x13, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 92)

# Testcase cp_sbox = 78
li x18, 0x4e4e4e4e # initialize rs1
li x21, 0x4e4e4e4e # initialize rs2
aes32esi x24, x18, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_sbox = 79
li x21, 0x4f4f4f4f # initialize rs1
li x8, 0x4f4f4f4f # initialize rs2
aes32esi x12, x21, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 100)

# Testcase cp_sbox = 80
li x14, 0x50505050 # initialize rs1
li x15, 0x50505050 # initialize rs2
aes32esi x13, x14, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_sbox = 81
li x27, 0x51515151 # initialize rs1
li x9, 0x51515151 # initialize rs2
aes32esi x3, x27, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 108)

# Testcase cp_sbox = 82
li x19, 0x52525252 # initialize rs1
li x17, 0x52525252 # initialize rs2
aes32esi x30, x19, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_sbox = 83
li x30, 0x53535353 # initialize rs1
li x25, 0x53535353 # initialize rs2
aes32esi x21, x30, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 116)

# Testcase cp_sbox = 84
li x3, 0x54545454 # initialize rs1
li x18, 0x54545454 # initialize rs2
aes32esi x25, x3, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cp_sbox = 85
li x9, 0x55555555 # initialize rs1
li x6, 0x55555555 # initialize rs2
aes32esi x16, x9, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 124)

# Testcase cp_sbox = 86
li x6, 0x56565656 # initialize rs1
li x9, 0x56565656 # initialize rs2
aes32esi x26, x6, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_sbox = 87
li x20, 0x57575757 # initialize rs1
li x25, 0x57575757 # initialize rs2
aes32esi x21, x20, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 132)

# Testcase cp_sbox = 88
li x14, 0x58585858 # initialize rs1
li x19, 0x58585858 # initialize rs2
aes32esi x9, x14, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_sbox = 89
li x23, 0x59595959 # initialize rs1
li x1, 0x59595959 # initialize rs2
aes32esi x18, x23, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 140)

# Testcase cp_sbox = 90
li x23, 0x5a5a5a5a # initialize rs1
li x5, 0x5a5a5a5a # initialize rs2
aes32esi x6, x23, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_sbox = 91
li x16, 0x5b5b5b5b # initialize rs1
li x2, 0x5b5b5b5b # initialize rs2
aes32esi x15, x16, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 148)

# Testcase cp_sbox = 92
li x26, 0x5c5c5c5c # initialize rs1
li x30, 0x5c5c5c5c # initialize rs2
aes32esi x19, x26, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_sbox = 93
li x21, 0x5d5d5d5d # initialize rs1
li x24, 0x5d5d5d5d # initialize rs2
aes32esi x2, x21, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 156)

# Testcase cp_sbox = 94
li x3, 0x5e5e5e5e # initialize rs1
li x5, 0x5e5e5e5e # initialize rs2
aes32esi x23, x3, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_sbox = 95
li x1, 0x5f5f5f5f # initialize rs1
li x30, 0x5f5f5f5f # initialize rs2
aes32esi x10, x1, x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_sbox = 96
li x31, 0x60606060 # initialize rs1
li x27, 0x60606060 # initialize rs2
aes32esi x14, x31, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_sbox = 97
li x10, 0x61616161 # initialize rs1
li x17, 0x61616161 # initialize rs2
aes32esi x29, x10, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 172)

# Testcase cp_sbox = 98
li x21, 0x62626262 # initialize rs1
li x11, 0x62626262 # initialize rs2
aes32esi x8, x21, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_sbox = 99
li x30, 0x63636363 # initialize rs1
li x23, 0x63636363 # initialize rs2
aes32esi x26, x30, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 180)

# Testcase cp_sbox = 100
li x15, 0x64646464 # initialize rs1
li x31, 0x64646464 # initialize rs2
aes32esi x16, x15, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_sbox = 101
li x11, 0x65656565 # initialize rs1
li x27, 0x65656565 # initialize rs2
aes32esi x31, x11, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 188)

# Testcase cp_sbox = 102
li x20, 0x66666666 # initialize rs1
li x21, 0x66666666 # initialize rs2
aes32esi x10, x20, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_sbox = 103
li x25, 0x67676767 # initialize rs1
li x5, 0x67676767 # initialize rs2
aes32esi x22, x25, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 196)

# Testcase cp_sbox = 104
li x13, 0x68686868 # initialize rs1
li x9, 0x68686868 # initialize rs2
aes32esi x7, x13, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cp_sbox = 105
li x3, 0x69696969 # initialize rs1
li x18, 0x69696969 # initialize rs2
aes32esi x16, x3, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 204)

# Testcase cp_sbox = 106
li x2, 0x6a6a6a6a # initialize rs1
li x15, 0x6a6a6a6a # initialize rs2
aes32esi x9, x2, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_sbox = 107
li x6, 0x6b6b6b6b # initialize rs1
li x21, 0x6b6b6b6b # initialize rs2
aes32esi x3, x6, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 212)

# Testcase cp_sbox = 108
li x16, 0x6c6c6c6c # initialize rs1
li x25, 0x6c6c6c6c # initialize rs2
aes32esi x12, x16, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_sbox = 109
li x17, 0x6d6d6d6d # initialize rs1
li x16, 0x6d6d6d6d # initialize rs2
aes32esi x22, x17, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 220)

# Testcase cp_sbox = 110
li x30, 0x6e6e6e6e # initialize rs1
li x20, 0x6e6e6e6e # initialize rs2
aes32esi x18, x30, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_sbox = 111
li x23, 0x6f6f6f6f # initialize rs1
li x22, 0x6f6f6f6f # initialize rs2
aes32esi x7, x23, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 228)

# Testcase cp_sbox = 112
li x9, 0x70707070 # initialize rs1
li x13, 0x70707070 # initialize rs2
aes32esi x8, x9, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_sbox = 113
li x29, 0x71717171 # initialize rs1
li x18, 0x71717171 # initialize rs2
aes32esi x7, x29, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 236)

# Testcase cp_sbox = 114
li x11, 0x72727272 # initialize rs1
li x29, 0x72727272 # initialize rs2
aes32esi x31, x11, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_sbox = 115
li x19, 0x73737373 # initialize rs1
li x5, 0x73737373 # initialize rs2
aes32esi x16, x19, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 244)

# Testcase cp_sbox = 116
li x24, 0x74747474 # initialize rs1
li x25, 0x74747474 # initialize rs2
aes32esi x31, x24, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_sbox = 117
li x14, 0x75757575 # initialize rs1
li x10, 0x75757575 # initialize rs2
aes32esi x29, x14, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 252)

# Testcase cp_sbox = 118
li x7, 0x76767676 # initialize rs1
li x15, 0x76767676 # initialize rs2
aes32esi x28, x7, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_sbox = 119
li x2, 0x77777777 # initialize rs1
li x8, 0x77777777 # initialize rs2
aes32esi x17, x2, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 260)

# Testcase cp_sbox = 120
li x23, 0x78787878 # initialize rs1
li x13, 0x78787878 # initialize rs2
aes32esi x14, x23, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cp_sbox = 121
li x27, 0x79797979 # initialize rs1
li x26, 0x79797979 # initialize rs2
aes32esi x1, x27, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 268)

# Testcase cp_sbox = 122
li x1, 0x7a7a7a7a # initialize rs1
li x3, 0x7a7a7a7a # initialize rs2
aes32esi x13, x1, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_sbox = 123
li x14, 0x7b7b7b7b # initialize rs1
li x28, 0x7b7b7b7b # initialize rs2
aes32esi x24, x14, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 276)

# Testcase cp_sbox = 124
li x5, 0x7c7c7c7c # initialize rs1
li x6, 0x7c7c7c7c # initialize rs2
aes32esi x27, x5, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_sbox = 125
li x10, 0x7d7d7d7d # initialize rs1
li x23, 0x7d7d7d7d # initialize rs2
aes32esi x19, x10, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 284)

# Testcase cp_sbox = 126
li x19, 0x7e7e7e7e # initialize rs1
li x10, 0x7e7e7e7e # initialize rs2
aes32esi x18, x19, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 288)

# Testcase cp_sbox = 127
li x18, 0x7f7f7f7f # initialize rs1
li x22, 0x7f7f7f7f # initialize rs2
aes32esi x25, x18, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 292)

# Testcase cp_sbox = 128
li x3, 0x80808080 # initialize rs1
li x13, 0x80808080 # initialize rs2
aes32esi x17, x3, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cp_sbox = 129
li x8, 0x81818181 # initialize rs1
li x13, 0x81818181 # initialize rs2
aes32esi x6, x8, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 300)

# Testcase cp_sbox = 130
li x22, 0x82828282 # initialize rs1
li x29, 0x82828282 # initialize rs2
aes32esi x30, x22, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 304)

# Testcase cp_sbox = 131
li x19, 0x83838383 # initialize rs1
li x7, 0x83838383 # initialize rs2
aes32esi x23, x19, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 308)

# Testcase cp_sbox = 132
li x16, 0x84848484 # initialize rs1
li x3, 0x84848484 # initialize rs2
aes32esi x14, x16, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_sbox = 133
li x18, 0x85858585 # initialize rs1
li x17, 0x85858585 # initialize rs2
aes32esi x27, x18, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 316)

# Testcase cp_sbox = 134
li x15, 0x86868686 # initialize rs1
li x30, 0x86868686 # initialize rs2
aes32esi x18, x15, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cp_sbox = 135
li x15, 0x87878787 # initialize rs1
li x20, 0x87878787 # initialize rs2
aes32esi x16, x15, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 324)

# Testcase cp_sbox = 136
li x12, 0x88888888 # initialize rs1
li x13, 0x88888888 # initialize rs2
aes32esi x22, x12, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cp_sbox = 137
li x6, 0x89898989 # initialize rs1
li x13, 0x89898989 # initialize rs2
aes32esi x7, x6, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cp_sbox = 138
li x7, 0x8a8a8a8a # initialize rs1
li x31, 0x8a8a8a8a # initialize rs2
aes32esi x14, x7, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cp_sbox = 139
li x14, 0x8b8b8b8b # initialize rs1
li x28, 0x8b8b8b8b # initialize rs2
aes32esi x16, x14, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 340)

# Testcase cp_sbox = 140
li x22, 0x8c8c8c8c # initialize rs1
li x12, 0x8c8c8c8c # initialize rs2
aes32esi x6, x22, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_sbox = 141
li x31, 0x8d8d8d8d # initialize rs1
li x2, 0x8d8d8d8d # initialize rs2
aes32esi x24, x31, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 348)

# Testcase cp_sbox = 142
li x21, 0x8e8e8e8e # initialize rs1
li x12, 0x8e8e8e8e # initialize rs2
aes32esi x20, x21, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_sbox = 143
li x1, 0x8f8f8f8f # initialize rs1
li x24, 0x8f8f8f8f # initialize rs2
aes32esi x19, x1, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 356)

# Testcase cp_sbox = 144
li x21, 0x90909090 # initialize rs1
li x6, 0x90909090 # initialize rs2
aes32esi x12, x21, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cp_sbox = 145
li x29, 0x91919191 # initialize rs1
li x5, 0x91919191 # initialize rs2
aes32esi x7, x29, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 364)

# Testcase cp_sbox = 146
li x24, 0x92929292 # initialize rs1
li x31, 0x92929292 # initialize rs2
aes32esi x2, x24, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cp_sbox = 147
li x23, 0x93939393 # initialize rs1
li x12, 0x93939393 # initialize rs2
aes32esi x19, x23, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 372)

# Testcase cp_sbox = 148
li x26, 0x94949494 # initialize rs1
li x18, 0x94949494 # initialize rs2
aes32esi x9, x26, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_sbox = 149
li x16, 0x95959595 # initialize rs1
li x24, 0x95959595 # initialize rs2
aes32esi x5, x16, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 380)

# Testcase cp_sbox = 150
li x15, 0x96969696 # initialize rs1
li x3, 0x96969696 # initialize rs2
aes32esi x28, x15, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cp_sbox = 151
li x10, 0x97979797 # initialize rs1
li x29, 0x97979797 # initialize rs2
aes32esi x8, x10, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cp_sbox = 152
li x5, 0x98989898 # initialize rs1
li x8, 0x98989898 # initialize rs2
aes32esi x14, x5, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_sbox = 153
li x28, 0x99999999 # initialize rs1
li x10, 0x99999999 # initialize rs2
aes32esi x15, x28, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 396)

# Testcase cp_sbox = 154
li x11, 0x9a9a9a9a # initialize rs1
li x23, 0x9a9a9a9a # initialize rs2
aes32esi x28, x11, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 400)

# Testcase cp_sbox = 155
li x20, 0x9b9b9b9b # initialize rs1
li x6, 0x9b9b9b9b # initialize rs2
aes32esi x7, x20, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cp_sbox = 156
li x30, 0x9c9c9c9c # initialize rs1
li x1, 0x9c9c9c9c # initialize rs2
aes32esi x10, x30, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cp_sbox = 157
li x16, 0x9d9d9d9d # initialize rs1
li x11, 0x9d9d9d9d # initialize rs2
aes32esi x22, x16, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 412)

# Testcase cp_sbox = 158
li x30, 0x9e9e9e9e # initialize rs1
li x21, 0x9e9e9e9e # initialize rs2
aes32esi x11, x30, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_sbox = 159
li x31, 0x9f9f9f9f # initialize rs1
li x5, 0x9f9f9f9f # initialize rs2
aes32esi x21, x31, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 420)

# Testcase cp_sbox = 160
li x31, 0xa0a0a0a0 # initialize rs1
li x24, 0xa0a0a0a0 # initialize rs2
aes32esi x3, x31, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_sbox = 161
li x2, 0xa1a1a1a1 # initialize rs1
li x19, 0xa1a1a1a1 # initialize rs2
aes32esi x8, x2, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 428)

# Testcase cp_sbox = 162
li x25, 0xa2a2a2a2 # initialize rs1
li x9, 0xa2a2a2a2 # initialize rs2
aes32esi x31, x25, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cp_sbox = 163
li x27, 0xa3a3a3a3 # initialize rs1
li x24, 0xa3a3a3a3 # initialize rs2
aes32esi x14, x27, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 436)

# Testcase cp_sbox = 164
li x6, 0xa4a4a4a4 # initialize rs1
li x20, 0xa4a4a4a4 # initialize rs2
aes32esi x19, x6, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_sbox = 165
li x16, 0xa5a5a5a5 # initialize rs1
li x30, 0xa5a5a5a5 # initialize rs2
aes32esi x7, x16, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 444)

# Testcase cp_sbox = 166
li x27, 0xa6a6a6a6 # initialize rs1
li x31, 0xa6a6a6a6 # initialize rs2
aes32esi x6, x27, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cp_sbox = 167
li x3, 0xa7a7a7a7 # initialize rs1
li x1, 0xa7a7a7a7 # initialize rs2
aes32esi x16, x3, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 452)

# Testcase cp_sbox = 168
li x17, 0xa8a8a8a8 # initialize rs1
li x13, 0xa8a8a8a8 # initialize rs2
aes32esi x5, x17, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_sbox = 169
li x27, 0xa9a9a9a9 # initialize rs1
li x7, 0xa9a9a9a9 # initialize rs2
aes32esi x19, x27, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 460)

# Testcase cp_sbox = 170
li x8, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
aes32esi x20, x8, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cp_sbox = 171
li x3, 0xabababab # initialize rs1
li x31, 0xabababab # initialize rs2
aes32esi x16, x3, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 468)

# Testcase cp_sbox = 172
li x24, 0xacacacac # initialize rs1
li x19, 0xacacacac # initialize rs2
aes32esi x31, x24, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cp_sbox = 173
li x20, 0xadadadad # initialize rs1
li x6, 0xadadadad # initialize rs2
aes32esi x8, x20, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 476)

# Testcase cp_sbox = 174
li x1, 0xaeaeaeae # initialize rs1
li x27, 0xaeaeaeae # initialize rs2
aes32esi x23, x1, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cp_sbox = 175
li x29, 0xafafafaf # initialize rs1
li x11, 0xafafafaf # initialize rs2
aes32esi x19, x29, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 484)

# Testcase cp_sbox = 176
li x14, 0xb0b0b0b0 # initialize rs1
li x1, 0xb0b0b0b0 # initialize rs2
aes32esi x11, x14, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_sbox = 177
li x21, 0xb1b1b1b1 # initialize rs1
li x12, 0xb1b1b1b1 # initialize rs2
aes32esi x1, x21, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cp_sbox = 178
li x7, 0xb2b2b2b2 # initialize rs1
li x22, 0xb2b2b2b2 # initialize rs2
aes32esi x20, x7, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cp_sbox = 179
li x8, 0xb3b3b3b3 # initialize rs1
li x16, 0xb3b3b3b3 # initialize rs2
aes32esi x21, x8, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 500)

# Testcase cp_sbox = 180
li x11, 0xb4b4b4b4 # initialize rs1
li x30, 0xb4b4b4b4 # initialize rs2
aes32esi x8, x11, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cp_sbox = 181
li x30, 0xb5b5b5b5 # initialize rs1
li x11, 0xb5b5b5b5 # initialize rs2
aes32esi x2, x30, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 508)

# Testcase cp_sbox = 182
li x25, 0xb6b6b6b6 # initialize rs1
li x7, 0xb6b6b6b6 # initialize rs2
aes32esi x23, x25, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cp_sbox = 183
li x26, 0xb7b7b7b7 # initialize rs1
li x1, 0xb7b7b7b7 # initialize rs2
aes32esi x25, x26, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 516)

# Testcase cp_sbox = 184
li x27, 0xb8b8b8b8 # initialize rs1
li x9, 0xb8b8b8b8 # initialize rs2
aes32esi x21, x27, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cp_sbox = 185
li x14, 0xb9b9b9b9 # initialize rs1
li x13, 0xb9b9b9b9 # initialize rs2
aes32esi x7, x14, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 524)

# Testcase cp_sbox = 186
li x25, 0xbabababa # initialize rs1
li x10, 0xbabababa # initialize rs2
aes32esi x8, x25, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cp_sbox = 187
li x9, 0xbbbbbbbb # initialize rs1
li x1, 0xbbbbbbbb # initialize rs2
aes32esi x5, x9, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 532)

# Testcase cp_sbox = 188
li x31, 0xbcbcbcbc # initialize rs1
li x14, 0xbcbcbcbc # initialize rs2
aes32esi x13, x31, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cp_sbox = 189
li x8, 0xbdbdbdbd # initialize rs1
li x11, 0xbdbdbdbd # initialize rs2
aes32esi x7, x8, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 540)

# Testcase cp_sbox = 190
li x3, 0xbebebebe # initialize rs1
li x18, 0xbebebebe # initialize rs2
aes32esi x25, x3, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cp_sbox = 191
li x5, 0xbfbfbfbf # initialize rs1
li x25, 0xbfbfbfbf # initialize rs2
aes32esi x20, x5, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 548)

# Testcase cp_sbox = 192
li x13, 0xc0c0c0c0 # initialize rs1
li x6, 0xc0c0c0c0 # initialize rs2
aes32esi x16, x13, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cp_sbox = 193
li x16, 0xc1c1c1c1 # initialize rs1
li x22, 0xc1c1c1c1 # initialize rs2
aes32esi x29, x16, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 556)

# Testcase cp_sbox = 194
li x19, 0xc2c2c2c2 # initialize rs1
li x29, 0xc2c2c2c2 # initialize rs2
aes32esi x11, x19, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_sbox = 195
li x11, 0xc3c3c3c3 # initialize rs1
li x3, 0xc3c3c3c3 # initialize rs2
aes32esi x22, x11, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 564)

# Testcase cp_sbox = 196
li x8, 0xc4c4c4c4 # initialize rs1
li x30, 0xc4c4c4c4 # initialize rs2
aes32esi x22, x8, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cp_sbox = 197
li x27, 0xc5c5c5c5 # initialize rs1
li x24, 0xc5c5c5c5 # initialize rs2
aes32esi x11, x27, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 572)

# Testcase cp_sbox = 198
li x13, 0xc6c6c6c6 # initialize rs1
li x9, 0xc6c6c6c6 # initialize rs2
aes32esi x3, x13, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 576)

# Testcase cp_sbox = 199
li x24, 0xc7c7c7c7 # initialize rs1
li x23, 0xc7c7c7c7 # initialize rs2
aes32esi x16, x24, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 580)

# Testcase cp_sbox = 200
li x2, 0xc8c8c8c8 # initialize rs1
li x25, 0xc8c8c8c8 # initialize rs2
aes32esi x11, x2, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cp_sbox = 201
li x19, 0xc9c9c9c9 # initialize rs1
li x27, 0xc9c9c9c9 # initialize rs2
aes32esi x10, x19, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cp_sbox = 202
li x28, 0xcacacaca # initialize rs1
li x10, 0xcacacaca # initialize rs2
aes32esi x31, x28, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cp_sbox = 203
li x30, 0xcbcbcbcb # initialize rs1
li x8, 0xcbcbcbcb # initialize rs2
aes32esi x13, x30, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cp_sbox = 204
li x7, 0xcccccccc # initialize rs1
li x3, 0xcccccccc # initialize rs2
aes32esi x17, x7, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cp_sbox = 205
li x29, 0xcdcdcdcd # initialize rs1
li x31, 0xcdcdcdcd # initialize rs2
aes32esi x23, x29, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 604)

# Testcase cp_sbox = 206
li x18, 0xcececece # initialize rs1
li x28, 0xcececece # initialize rs2
aes32esi x20, x18, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cp_sbox = 207
li x1, 0xcfcfcfcf # initialize rs1
li x8, 0xcfcfcfcf # initialize rs2
aes32esi x26, x1, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 612)

# Testcase cp_sbox = 208
li x29, 0xd0d0d0d0 # initialize rs1
li x6, 0xd0d0d0d0 # initialize rs2
aes32esi x30, x29, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cp_sbox = 209
li x17, 0xd1d1d1d1 # initialize rs1
li x23, 0xd1d1d1d1 # initialize rs2
aes32esi x2, x17, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 620)

# Testcase cp_sbox = 210
li x1, 0xd2d2d2d2 # initialize rs1
li x9, 0xd2d2d2d2 # initialize rs2
aes32esi x21, x1, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cp_sbox = 211
li x22, 0xd3d3d3d3 # initialize rs1
li x29, 0xd3d3d3d3 # initialize rs2
aes32esi x13, x22, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 628)

# Testcase cp_sbox = 212
li x12, 0xd4d4d4d4 # initialize rs1
li x29, 0xd4d4d4d4 # initialize rs2
aes32esi x27, x12, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cp_sbox = 213
li x30, 0xd5d5d5d5 # initialize rs1
li x24, 0xd5d5d5d5 # initialize rs2
aes32esi x25, x30, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 636)

# Testcase cp_sbox = 214
li x7, 0xd6d6d6d6 # initialize rs1
li x14, 0xd6d6d6d6 # initialize rs2
aes32esi x17, x7, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_sbox = 215
li x24, 0xd7d7d7d7 # initialize rs1
li x3, 0xd7d7d7d7 # initialize rs2
aes32esi x26, x24, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 644)

# Testcase cp_sbox = 216
li x21, 0xd8d8d8d8 # initialize rs1
li x6, 0xd8d8d8d8 # initialize rs2
aes32esi x29, x21, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cp_sbox = 217
li x19, 0xd9d9d9d9 # initialize rs1
li x17, 0xd9d9d9d9 # initialize rs2
aes32esi x12, x19, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 652)

# Testcase cp_sbox = 218
li x24, 0xdadadada # initialize rs1
li x19, 0xdadadada # initialize rs2
aes32esi x27, x24, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cp_sbox = 219
li x6, 0xdbdbdbdb # initialize rs1
li x3, 0xdbdbdbdb # initialize rs2
aes32esi x31, x6, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 660)

# Testcase cp_sbox = 220
li x12, 0xdcdcdcdc # initialize rs1
li x27, 0xdcdcdcdc # initialize rs2
aes32esi x19, x12, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_sbox = 221
li x23, 0xdddddddd # initialize rs1
li x21, 0xdddddddd # initialize rs2
aes32esi x7, x23, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 668)

# Testcase cp_sbox = 222
li x5, 0xdededede # initialize rs1
li x9, 0xdededede # initialize rs2
aes32esi x3, x5, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 672)

# Testcase cp_sbox = 223
li x27, 0xdfdfdfdf # initialize rs1
li x23, 0xdfdfdfdf # initialize rs2
aes32esi x29, x27, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cp_sbox = 224
li x19, 0xe0e0e0e0 # initialize rs1
li x13, 0xe0e0e0e0 # initialize rs2
aes32esi x20, x19, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cp_sbox = 225
li x10, 0xe1e1e1e1 # initialize rs1
li x26, 0xe1e1e1e1 # initialize rs2
aes32esi x30, x10, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 684)

# Testcase cp_sbox = 226
li x25, 0xe2e2e2e2 # initialize rs1
li x15, 0xe2e2e2e2 # initialize rs2
aes32esi x18, x25, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 688)

# Testcase cp_sbox = 227
li x1, 0xe3e3e3e3 # initialize rs1
li x29, 0xe3e3e3e3 # initialize rs2
aes32esi x16, x1, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cp_sbox = 228
li x6, 0xe4e4e4e4 # initialize rs1
li x11, 0xe4e4e4e4 # initialize rs2
aes32esi x9, x6, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cp_sbox = 229
li x31, 0xe5e5e5e5 # initialize rs1
li x22, 0xe5e5e5e5 # initialize rs2
aes32esi x25, x31, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 700)

# Testcase cp_sbox = 230
li x8, 0xe6e6e6e6 # initialize rs1
li x27, 0xe6e6e6e6 # initialize rs2
aes32esi x7, x8, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cp_sbox = 231
li x21, 0xe7e7e7e7 # initialize rs1
li x25, 0xe7e7e7e7 # initialize rs2
aes32esi x29, x21, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 708)

# Testcase cp_sbox = 232
li x16, 0xe8e8e8e8 # initialize rs1
li x19, 0xe8e8e8e8 # initialize rs2
aes32esi x17, x16, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 712)

# Testcase cp_sbox = 233
li x24, 0xe9e9e9e9 # initialize rs1
li x5, 0xe9e9e9e9 # initialize rs2
aes32esi x7, x24, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 716)

# Testcase cp_sbox = 234
li x21, 0xeaeaeaea # initialize rs1
li x13, 0xeaeaeaea # initialize rs2
aes32esi x10, x21, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cp_sbox = 235
li x6, 0xebebebeb # initialize rs1
li x9, 0xebebebeb # initialize rs2
aes32esi x25, x6, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 724)

# Testcase cp_sbox = 236
li x25, 0xecececec # initialize rs1
li x22, 0xecececec # initialize rs2
aes32esi x13, x25, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cp_sbox = 237
li x6, 0xedededed # initialize rs1
li x3, 0xedededed # initialize rs2
aes32esi x17, x6, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 732)

# Testcase cp_sbox = 238
li x31, 0xeeeeeeee # initialize rs1
li x26, 0xeeeeeeee # initialize rs2
aes32esi x30, x31, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cp_sbox = 239
li x2, 0xefefefef # initialize rs1
li x6, 0xefefefef # initialize rs2
aes32esi x23, x2, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 740)

# Testcase cp_sbox = 240
li x17, 0xf0f0f0f0 # initialize rs1
li x12, 0xf0f0f0f0 # initialize rs2
aes32esi x20, x17, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cp_sbox = 241
li x18, 0xf1f1f1f1 # initialize rs1
li x14, 0xf1f1f1f1 # initialize rs2
aes32esi x24, x18, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 748)

# Testcase cp_sbox = 242
li x25, 0xf2f2f2f2 # initialize rs1
li x30, 0xf2f2f2f2 # initialize rs2
aes32esi x16, x25, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cp_sbox = 243
li x5, 0xf3f3f3f3 # initialize rs1
li x16, 0xf3f3f3f3 # initialize rs2
aes32esi x20, x5, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 756)

# Testcase cp_sbox = 244
li x16, 0xf4f4f4f4 # initialize rs1
li x30, 0xf4f4f4f4 # initialize rs2
aes32esi x18, x16, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cp_sbox = 245
li x27, 0xf5f5f5f5 # initialize rs1
li x11, 0xf5f5f5f5 # initialize rs2
aes32esi x24, x27, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 764)

# Testcase cp_sbox = 246
li x8, 0xf6f6f6f6 # initialize rs1
li x11, 0xf6f6f6f6 # initialize rs2
aes32esi x25, x8, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cp_sbox = 247
li x5, 0xf7f7f7f7 # initialize rs1
li x19, 0xf7f7f7f7 # initialize rs2
aes32esi x25, x5, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 772)

# Testcase cp_sbox = 248
li x29, 0xf8f8f8f8 # initialize rs1
li x12, 0xf8f8f8f8 # initialize rs2
aes32esi x16, x29, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cp_sbox = 249
li x10, 0xf9f9f9f9 # initialize rs1
li x8, 0xf9f9f9f9 # initialize rs2
aes32esi x21, x10, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 780)

# Testcase cp_sbox = 250
li x30, 0xfafafafa # initialize rs1
li x24, 0xfafafafa # initialize rs2
aes32esi x7, x30, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cp_sbox = 251
li x26, 0xfbfbfbfb # initialize rs1
li x10, 0xfbfbfbfb # initialize rs2
aes32esi x6, x26, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 788)

# Testcase cp_sbox = 252
li x17, 0xfcfcfcfc # initialize rs1
li x1, 0xfcfcfcfc # initialize rs2
aes32esi x24, x17, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

# Testcase cp_sbox = 253
li x9, 0xfdfdfdfd # initialize rs1
li x12, 0xfdfdfdfd # initialize rs2
aes32esi x29, x9, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cp_sbox = 254
li x30, 0xfefefefe # initialize rs1
li x14, 0xfefefefe # initialize rs2
aes32esi x11, x30, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cp_sbox = 255
li x27, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
aes32esi x9, x27, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 804)

#.EQU SIGSIZE,2608
.EQU SIGSIZE,5216 #combined


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
