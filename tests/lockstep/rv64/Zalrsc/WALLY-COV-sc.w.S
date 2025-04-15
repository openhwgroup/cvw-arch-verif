///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zalrsc/WALLY-COV-sc.w.S
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

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x30, 0xcf3d168ce935086f # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x22, x30, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0x3441df24210bee01 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x13, x25, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x13, 0x44cca04ad537d8ea # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x6, x13, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x9b144b8bd397e3d9 # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x23, x6, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xda0216ba46b1781e # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x6, x24, (x5) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0x860736207e9a454a # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x8, x11, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x8, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xc90bfe5fc3388d73 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x18, x14, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xa0ab09943c642398 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x26, x10, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0xc7edb7f3a7385384 # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x3, x16, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0xe20cc3a66a483f6e # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x22, x13, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x4a21d1d6a90d1218 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x25, x14, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x26, 0xe3f2c135aa026995 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x22, x26, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x22, 0xf4c1c10b7052e71e # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x6, x22, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0x88a7efd9f357a0f5 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x5, x23, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0xc63a8fba8bd29033 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x3, x11, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x29, 0x78000c2a045b769c # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x13, x29, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x21, 0xf25e27e7c0fa9bf6 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x13, x21, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0xcae3bfc7a23f465a # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x15, x30, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0xa88c9a14c302824d # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x5, x13, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x13, 0x05ef80d19c306a84 # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x26, x13, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x18, 0x293db69c7dfdcbe9 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x29, x18, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0xa2b9dec8723e482f # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x20, x24, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x6, 0x74e24efa9d092dfb # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x2, x6, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0x5b6fd69474fb59d0 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x8, x3, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0x4043ed74e5541223 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x11, x8, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x31, 0x176e645422f1cedb # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x11, x31, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x16, 0x8968c222c2a4bfbd # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x12, x16, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x9, 0x871dff0284d4dd7a # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x1, x9, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0x6b5530d2fc970198 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x28, x1, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0x1aee0d33b17324d8 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x19, x13, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0x7834946393c648c4 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x29, x28, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x3cbe906813323f6e # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x14, x0, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xcf9fb98a32814843 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x8, x1, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x5edaaf43fdc347f3 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x6, x2, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x1f74e2c2fd1cfa87 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x30, x3, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5810920e8fa856e5 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x19, x4, (x26) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 280)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf0b8fedf35da08a7 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x16, x5, (x13) # perform operation
RVTEST_SIGUPD(x6, x0, x16, 288)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf858fef5b7347e7b # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x19, x6, (x27) # perform operation
RVTEST_SIGUPD(x7, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4d3b06bd50ed158a # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x10, x7, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x19ce18d5cf3a3174 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x13, x8, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x10167a2a817ae109 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x20, x9, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x776c5c19638f1cca # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x20, x10, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x0e5dfe56d5a8a279 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x6, x11, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x03bfc379c1d44cc4 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x7, x12, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x09bbea9714a9f138 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x26, x13, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xc11e124ff6be7017 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x6, x14, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 360)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x08f79fb223eb4746 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x17, x15, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xb7be9e165ca23646 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x6, x16, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xdfc1e48725040ec9 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x28, x17, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xb0cf5c4d8599a6aa # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x17, x18, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x673917a897db2200 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x2, x19, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x99d8c7ad11053b0a # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x8, x20, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xc331a0659a42e03e # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x27, x21, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xd732fcdba48efec0 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x19, x22, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x1af3205b96a9a72f # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x21, x23, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xd0a212df51e093f2 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x31, x24, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xe5c364539992aff4 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x7, x25, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x4d15677c81bb19f7 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x15, x26, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xdca9f3d25080fc50 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x2, x27, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x9ffa81fa2ead0ee4 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x2, x28, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xed0a5667ef6dba85 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x6, x29, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x1cc383c570c36dcb # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x27, x30, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 488)

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x34a9af0ece4b3eec # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x7, x31, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

# Testcase cp_rd (Test destination rd = x0)
li x5, 0x38c5ff01a3bd275a # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x0, x5, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 504)

# Testcase cp_rd (Test destination rd = x1)
li x11, 0x3e803b0aa31fdc4a # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x1, x11, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x7e8bbf400722898b # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x2, x10, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x2571ea95f5a28f3f # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x3, x19, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x57e46b6ebb6e9d42 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x4, x23, (x29) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 536)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x1e30ccfa7fd19021 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x5, x27, (x11) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 544)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x3686859b52b54ea5 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x6, x8, (x13) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 552)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xa7a53b847a7f457f # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x7, x20, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rd (Test destination rd = x8)
li x3, 0x28aafec251afddf2 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x8, x3, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x7c46b189ecd90947 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x9, x10, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0x5f897499093a732e # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x10, x18, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x4926c64e61bc0f84 # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x11, x1, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0xd48031692233d652 # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x12, x30, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x4333beb42324a06d # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x13, x10, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0x7e40599f7ee2af9e # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x14, x6, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cp_rd (Test destination rd = x15)
li x25, 0x2fcdccb74a4d15fa # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x15, x25, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cp_rd (Test destination rd = x16)
li x21, 0xf93a1d9bafe9de60 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x16, x21, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0x916216dd6a9a85a0 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x17, x18, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x3927f95f21e26be8 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x18, x18, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cp_rd (Test destination rd = x19)
li x24, 0xa8b90881951afe5f # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x19, x24, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cp_rd (Test destination rd = x20)
li x10, 0xd5c1b4cf16c4dc7b # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x20, x10, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0x1e291c2be22b8f04 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x21, x19, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0x4afccaaba72a9955 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x22, x16, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0xf93b39d4cca7ce77 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x23, x22, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 688)

# Testcase cp_rd (Test destination rd = x24)
li x22, 0x06fc55e3216d11ee # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x24, x22, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cp_rd (Test destination rd = x25)
li x8, 0xeeb973dcb5ac5b0e # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x25, x8, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0x56bdf6d39829f13f # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x26, x17, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0xfdd0a9ed2fdfddab # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x27, x10, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0xe83adfe3b17a9933 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x28, x2, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 728)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xe380cccae266a585 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x29, x2, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0xb502a5ecdf262f01 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x30, x12, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cp_rd (Test destination rd = x31)
li x25, 0x77b7d6088f43594c # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x31, x25, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 752)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x0000000000000000 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x26, x6, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 760)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x0000000000000001 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x22, x11, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x0000000000000002 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x8, x15, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x7, x29, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x29, 0x8000000000000001 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x22, x29, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x29, x19, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x11, x27, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x12, x24, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0xfffffffffffffffe # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x14, x21, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 824)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x14, x16, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x29, x7, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x17, 0x5555555555555555 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x25, x17, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x27, 0x00000000ffffffff # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x19, x27, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x19, x27, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 864)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x17, x19, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x25, 0x0000000100000001 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x22, x25, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x8e0484a913dccc5a # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x15, x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x730f03f2511893e2 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x1, x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xee27f564f853a9cd # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x27, x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x97f33091ade47b1a # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x15, x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 912)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x77130a1cac16a91e # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x25, x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x25, 920)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x78ae9279a79cee84 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x21, x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x21, 928)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfcddc912a444c8e0 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x15, x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9de8b55d47d90ba8 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x31, x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x82ece3bee4c3eafe # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x7, x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x1563bbd5bea67f83 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x19, x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xc6268128037cb7d9 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x25, x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x064f25f7d88fe5c1 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x9, x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x880d85fcc0cd5d26 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x23, x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 984)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x44802e2192c73250 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x9, x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x80260bccac0706f5 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x14, x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xfefa7940ec1dfd14 # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x8, x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x44444c25eb6e840a # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x20, x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x15a1aac56d027957 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x24, x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xd9c29c9ae339a582 # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x29, x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x14ca0a4736c64482 # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x2, x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5856ce983083ef72 # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x1, x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1048)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x69e06cc04a85498b # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x17, x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xcfc22fdf6b072e5d # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x29, x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xb866f64ed7cc3397 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x19, x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x754c0146545909fa # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x31, x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x74afdde4b22578e7 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x2, x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb0eee8df49eac56e # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x12, x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x1068f2f896bfef48 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x12, x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2479c27902ea7b33 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x31, x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x113d0dc72cbc630d # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x28, x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xc22dfd6e379c42b3 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x10, x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1128)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x8, 0x7b18a986e02f95a9 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x1, x8, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x16, 0x1d0610d9e3fe8675 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x2, x16, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x21, 0x6f7a8d37a3c608b6 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x3, x21, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xd014c2e5c35a6efb # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x4, x30, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1160)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xd4bc394ce9e5de2b # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x5, x6, (x5) # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1168)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x27, 0xb003a9acb6aae06b # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x6, x27, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1176)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x46d32f4519657773 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x7, x4, (x7) # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x21, 0xc3c23ed18dca7f19 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x8, x21, (x8) # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x11, 0x49b095cc0a563515 # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x9, x11, (x9) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x1, 0x1c39fcb03332c5b7 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x10, x1, (x10) # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x18, 0x1a1b42faf64ca9d1 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x11, x18, (x11) # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x14, 0xd92986a19bb8cc2d # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x12, x14, (x12) # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x17, 0xab48820c88718591 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x13, x17, (x13) # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x13, 0x55c8382ff3f963ad # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x14, x13, (x14) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x27, 0xb171c89da61b9293 # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x15, x27, (x15) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x27, 0x195f8be812b5480d # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x16, x27, (x16) # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x28, 0x9befa9526d923998 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x17, x28, (x17) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x1, 0x265b8152fc344dd4 # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x18, x1, (x18) # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x13, 0x37e0c7a1de1ff8ae # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x19, x13, (x19) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x23, 0xed6a49bd1971c1d9 # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x20, x23, (x20) # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x14, 0xd1259b7d54f7654b # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x21, x14, (x21) # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x24, 0xf5aeaf10ee02c128 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x22, x24, (x22) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x12, 0x78dedb16d0bbea60 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x23, x12, (x23) # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x25, 0x0abddc42e3bf95ca # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x24, x25, (x24) # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x2, 0x4b5882371e50e770 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x25, x2, (x25) # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x31, 0x67f6734749404812 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x26, x31, (x26) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x19, 0x4c7d4ff41369d7e3 # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x27, x19, (x27) # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x7, 0xd514785dcce87640 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x28, x7, (x28) # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x22, 0x56b2979ba176089a # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x29, x22, (x29) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x13, 0xcc48ae86899d8ffe # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x30, x13, (x30) # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x15, 0xb5c53ec61b0bc119 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x31, x15, (x31) # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x43aa2e1f58ff01ed # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x0, x0, (x23) # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x96baaa5a7def7e86 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x1, x1, (x31) # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x3ce6e55a70e2e639 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x2, x2, (x24) # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x15dd16326ea09489 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x3, x3, (x11) # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x4, 0x5772bb1910b17897 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x4, x4, (x8) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb7714e90284ca8a4 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x5, x5, (x7) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x953eaa3691adfa12 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x6, x6, (x17) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x226c9dc6b812a3e8 # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x7, x7, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x9587634c256ab998 # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x8, x8, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x7a3f56bf6de97519 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x9, x9, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x9dc0451b2679572b # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x10, x10, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x1963bf5a5d739955 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x11, x11, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x0c1359174ad4715d # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x12, x12, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x5c71b18b170680d1 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x13, x13, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x3b010536e37b7201 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x14, x14, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x940f002cb3672d00 # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x15, x15, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x52f7184500aa3b01 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x16, x16, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1512)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x665825e7e2e02593 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x17, x17, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1520)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x97607d3997a01fb3 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x18, x18, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x9e2e2a947083edaf # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x19, x19, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1536)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x49b5e9ec1ab30a64 # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x20, x20, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1544)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x868ef67de66f4f21 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x21, x21, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1552)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x7bd374983963c984 # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x22, x22, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1560)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x9fd581b31524d428 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x23, x23, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x6d869cea29a87c2c # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x24, x24, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1576)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xc1f8fdcba2253d27 # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x25, x25, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x62bd5535a992a1ca # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x26, x26, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1592)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x924e1973c572dd97 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x27, x27, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1600)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x0694ac615cd06a32 # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x28, x28, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1608)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x3362d7e20bc83d89 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x29, x29, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1616)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x7de972bd3f0b68e8 # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x30, x30, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1624)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x79f0fa1ce53f213c # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x31, x31, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x078d02b20cc0acac # initialize rs2
la x1, scratch # rs1 = base address 
sc.w x1, x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1640)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x16459a312fab75f1 # initialize rs2
la x2, scratch # rs1 = base address 
sc.w x2, x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1648)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xbf103d982f6ee86e # initialize rs2
la x3, scratch # rs1 = base address 
sc.w x3, x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1656)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfbdb1a6880ac2479 # initialize rs2
la x4, scratch # rs1 = base address 
sc.w x4, x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1664)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xab34dad3d4128300 # initialize rs2
la x5, scratch # rs1 = base address 
sc.w x5, x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1672)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x873eb8f5032db1c6 # initialize rs2
la x6, scratch # rs1 = base address 
sc.w x6, x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1680)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0d94aeba33de62ea # initialize rs2
la x7, scratch # rs1 = base address 
sc.w x7, x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1688)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfe0ee604aa8ae562 # initialize rs2
la x8, scratch # rs1 = base address 
sc.w x8, x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x449dcff7eec036ed # initialize rs2
la x9, scratch # rs1 = base address 
sc.w x9, x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1704)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xec5cbcdceac06438 # initialize rs2
la x10, scratch # rs1 = base address 
sc.w x10, x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1712)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x14415c045e602118 # initialize rs2
la x11, scratch # rs1 = base address 
sc.w x11, x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1720)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xdb30775a943e873d # initialize rs2
la x12, scratch # rs1 = base address 
sc.w x12, x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb50352b92feabfd7 # initialize rs2
la x13, scratch # rs1 = base address 
sc.w x13, x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1736)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x4992011c58472e31 # initialize rs2
la x14, scratch # rs1 = base address 
sc.w x14, x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x2ef37fa20c00f5ff # initialize rs2
la x15, scratch # rs1 = base address 
sc.w x15, x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1752)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x24622b4a9454dc2e # initialize rs2
la x16, scratch # rs1 = base address 
sc.w x16, x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xdd1b98bd4422d836 # initialize rs2
la x17, scratch # rs1 = base address 
sc.w x17, x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1768)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xeb5e849aba86a35c # initialize rs2
la x18, scratch # rs1 = base address 
sc.w x18, x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1776)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x372a5d52af5f418a # initialize rs2
la x19, scratch # rs1 = base address 
sc.w x19, x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x19091ddb518ee85a # initialize rs2
la x20, scratch # rs1 = base address 
sc.w x20, x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa978063e3d60432a # initialize rs2
la x21, scratch # rs1 = base address 
sc.w x21, x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xbacb5d6cb39dc847 # initialize rs2
la x22, scratch # rs1 = base address 
sc.w x22, x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8a8ccd3948583ff3 # initialize rs2
la x23, scratch # rs1 = base address 
sc.w x23, x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x4ea8e62ef457ad98 # initialize rs2
la x24, scratch # rs1 = base address 
sc.w x24, x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x98fb2c294e3bf454 # initialize rs2
la x25, scratch # rs1 = base address 
sc.w x25, x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 32)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x95e7d302558c3a85 # initialize rs2
la x26, scratch # rs1 = base address 
sc.w x26, x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x55950080f282a896 # initialize rs2
la x27, scratch # rs1 = base address 
sc.w x27, x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xfc1d182fe9f0e19e # initialize rs2
la x28, scratch # rs1 = base address 
sc.w x28, x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xeadec30d75926a08 # initialize rs2
la x29, scratch # rs1 = base address 
sc.w x29, x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9df31b96793ec4ec # initialize rs2
la x30, scratch # rs1 = base address 
sc.w x30, x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd65b6fd79d3d6854 # initialize rs2
la x31, scratch # rs1 = base address 
sc.w x31, x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_gpr/fpr_hazard nohaz test
la x31, scratch
add x29, x24, x15 # perform first operation
sc.w x10, x5, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x25, x19, x17 # perform first operation
sc.w x26, x28, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
add x31, x27, x20 # perform first operation
sc.w x1, x10, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
add x7, x7, x0 # perform first operation
sc.w x25, x7, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
add x29, x29, x0 # perform first operation
sc.w x17, x3, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x1, scratch
add x2, x2, x0 # perform first operation
sc.w x6, x10, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x9, scratch
add x5, x8, x27 # perform first operation
sc.w x5, x20, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x9, scratch
add x31, x23, x7 # perform first operation
sc.w x31, x27, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x12, scratch
add x23, x9, x10 # perform first operation
sc.w x23, x27, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x2, scratch
add x16, x8, x11 # perform first operation
sc.w x8, x15, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x25, scratch
add x15, x3, x8 # perform first operation
sc.w x8, x14, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
add x27, x22, x10 # perform first operation
sc.w x8, x20, (x5) # perform second (triggering) operation

 # sc.w.S
# sc.S
# custom tests for store conditional

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0xF2345678
    sc.w t1, t2, (t0)
    sc.w.rl t1, t2, (t0)
    sc.w.aqrl t1, t2, (t0)

# cp_custom_sc_lrsc
    li t3, 0x23456789
    li t4, 0x3456789A

    # should succeed
    lr.w t1, (t0)
    sc.w t2, t3, (t0)

    # should fail because of intervening sc
    lr.w t1, (t0)
    sc.w t2, t3, (t0) # succeeds
    sc.w t5, t4, (t0) # fails

# cp_custom_sc_addresses
    # loop over distances of 0 to 120 from lr to sc address
    li t6, 0        # initialize offset to 0
1:
    add t5, t0, t6      # scratch address + offset
    lr.w t1, (t0)       # load from reservation set
    sc.w t1, t3, (t5)   # try store conditional, should succeed if in same set
    sc.w t1, t3, (t5)   # try again, and it should fail this time

    # for RV64, also check different size lr vs. sc
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.d t1, (t0)
            sc.w t1, t3, (t5)
         #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
   
    addi t6, t6, 4      # increment offset
    slti t5, t6, 129    # offset <= 128
    bnez t5, 1b         # repeat until done

# cp_custom_sc_after_store
    # should not care about intervening stores
    lr.w t1, (t0)
    sb t3, 3(t0)      # store byte
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    sh t3, 2(t0)      # store half
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    sw t3, 0(t0)      # store word
    sc.w t5, t4, (t0) # succeeds

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            sd t3, 0(t0)      # store double
            sc.w t5, t4, (t0) # succeeds
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

# cp_custom_sc_after_load
    # should not care about intervening loads

    lr.w t1, (t0)
    lb t3, 3(t0)      # load byte
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lb t3, 128(t0)      # load byte
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lbu t3, 2(t0)      # load byte unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lbu t3, 128(t0)      # load byte unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lh t3, 2(t0)      # load half
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lh t3, 128(t0)      # load half
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lhu t3, 0(t0)      # load half unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lhu t3, 128(t0)      # load half unsigned
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lw t3, 0(t0)      # load word
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lw t3, 128(t0)      # load word
    sc.w t5, t4, (t0) # succeeds

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            lwu t3, 0(t0)      # load word unsigned
            sc.w t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            lwu t3, 128(t0)      # load word unsigned
            sc.w t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            ld t3, 0(t0)      # load double
            sc.w t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            ld t3, 128(t0)      # load double
            sc.w t5, t4, (t0) # succeeds

        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

.EQU SIGSIZE,1888


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
