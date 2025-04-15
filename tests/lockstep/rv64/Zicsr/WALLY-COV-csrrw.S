///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zicsr/WALLY-COV-csrrw.S
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
li x0, 0x00571323577480e6 # initialize rs1
csrrw x7, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x192085f742663488 # initialize rs1
csrrw x12, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x65e7ea298947ca07 # initialize rs1
csrrw x16, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb9d36cbfbb20efef # initialize rs1
csrrw x24, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf7f9ca3e82baef98 # initialize rs1
csrrw x30, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x508f1095a5a84919 # initialize rs1
csrrw x22, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x15366bbe1e3fa5fb # initialize rs1
csrrw x10, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x440bc1b895202bdf # initialize rs1
csrrw x21, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x356e94f9121cd403 # initialize rs1
csrrw x12, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x43cd608f2679771c # initialize rs1
csrrw x27, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa182d8b115957412 # initialize rs1
csrrw x18, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0a103f85d3df3ba6 # initialize rs1
csrrw x28, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0481452c419390a4 # initialize rs1
csrrw x13, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x739802adc2a2fbf1 # initialize rs1
csrrw x18, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4e3c5cea02597596 # initialize rs1
csrrw x8, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x78a53cd8d6aefef2 # initialize rs1
csrrw x27, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1dfc022aa861b010 # initialize rs1
csrrw x18, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x7eee832e4563af29 # initialize rs1
csrrw x31, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xab58d28a6d680f86 # initialize rs1
csrrw x13, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf8e653b8e10e0091 # initialize rs1
csrrw x2, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x544d7a4b08a905e6 # initialize rs1
csrrw x23, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x030851ccf22eb91b # initialize rs1
csrrw x20, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x22a37b224533f05f # initialize rs1
csrrw x23, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x85947eedf521b17d # initialize rs1
csrrw x20, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xae2b4d2d1cf65de0 # initialize rs1
csrrw x14, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x44dab9b3a167cb93 # initialize rs1
csrrw x14, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x41a1d9bfe0cb0e13 # initialize rs1
csrrw x10, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x38c112fbfb507ff0 # initialize rs1
csrrw x10, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb761e2763365956c # initialize rs1
csrrw x26, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xbf66603c33a68f6a # initialize rs1
csrrw x2, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x45116ec28bba479a # initialize rs1
csrrw x7, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x885df8ee9d5c90ca # initialize rs1
csrrw x10, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x562a1948b412800c # initialize rs1
csrrw x0, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x8d980693b609d9fc # initialize rs1
csrrw x1, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0x3ce1afa45e96ff90 # initialize rs1
csrrw x2, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0xa34b898d0d984e79 # initialize rs1
csrrw x3, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xeadeabf408ef477d # initialize rs1
csrrw x4, mscratch, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x213829839190a6c7 # initialize rs1
csrrw x5, mscratch, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x8be1e636dcb0f4d3 # initialize rs1
csrrw x6, mscratch, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xfce082d726853b9b # initialize rs1
csrrw x7, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0x3c793e7589f8af41 # initialize rs1
csrrw x8, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x16, 0xeaad49772a6f76cd # initialize rs1
csrrw x9, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x28, 0x7d38e649717ae11c # initialize rs1
csrrw x10, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x989ccb02ace5e333 # initialize rs1
csrrw x11, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0xee5f9b1bbc70f231 # initialize rs1
csrrw x12, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0x4a61240a435bb154 # initialize rs1
csrrw x13, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x30, 0x39b2885f4046cb8d # initialize rs1
csrrw x14, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x26c04bce47189d8f # initialize rs1
csrrw x15, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0xd20ce6de1f8eea52 # initialize rs1
csrrw x16, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x8351f58745c27ea5 # initialize rs1
csrrw x17, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0x18e0f3b51a7f7081 # initialize rs1
csrrw x18, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0xc6775bde0091f09e # initialize rs1
csrrw x19, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x3922ac39263445b2 # initialize rs1
csrrw x20, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x11, 0xa3f56074fcd084fa # initialize rs1
csrrw x21, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xc2250b260a992f44 # initialize rs1
csrrw x22, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0xee7109a8951a9989 # initialize rs1
csrrw x23, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0xeef24ced92a86d92 # initialize rs1
csrrw x24, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x62d374d74f273862 # initialize rs1
csrrw x25, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x29845a07f3ef85ea # initialize rs1
csrrw x26, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x12, 0x124ebe888efb37b6 # initialize rs1
csrrw x27, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x1771d52ad0d4f142 # initialize rs1
csrrw x28, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xb8f4878b324505be # initialize rs1
csrrw x29, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x2, 0xe8aa4e108b71d68e # initialize rs1
csrrw x30, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x02d5d7d57803be22 # initialize rs1
csrrw x31, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x0000000000000000 # initialize rs1
csrrw x16, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x0000000000000001 # initialize rs1
csrrw x5, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
csrrw x25, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
csrrw x15, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
csrrw x5, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
csrrw x26, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
csrrw x1, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
csrrw x13, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
csrrw x16, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
csrrw x18, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
csrrw x1, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x5555555555555555 # initialize rs1
csrrw x12, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
csrrw x25, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
csrrw x18, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
csrrw x21, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x5, 0x0000000100000001 # initialize rs1
csrrw x7, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa60fdf4f1010b257 # initialize rs1
csrrw x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa642ae4550449f4b # initialize rs1
csrrw x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xda1b01db23e6a47c # initialize rs1
csrrw x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x91926cf608573fab # initialize rs1
csrrw x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9afc5613b596ba21 # initialize rs1
csrrw x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x74b5a5c4b4c350ac # initialize rs1
csrrw x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf30a681a4f465a15 # initialize rs1
csrrw x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcd5ff51d04db8c61 # initialize rs1
csrrw x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x89815c3ff25c3021 # initialize rs1
csrrw x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8cb6f19d208b8f7f # initialize rs1
csrrw x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x589e4731eb93e5dc # initialize rs1
csrrw x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa04d4b1069b5922a # initialize rs1
csrrw x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb352af2cae195150 # initialize rs1
csrrw x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x39b67980faacc296 # initialize rs1
csrrw x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x34dd3a57c9376b68 # initialize rs1
csrrw x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x977bf789ec1c5e57 # initialize rs1
csrrw x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x93915f59c1c07198 # initialize rs1
csrrw x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc0e1639a6dbad9ab # initialize rs1
csrrw x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2514d514e9502e3b # initialize rs1
csrrw x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6bb38cfa18172e66 # initialize rs1
csrrw x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd6c233c35615af31 # initialize rs1
csrrw x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8df354373c744793 # initialize rs1
csrrw x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa10960d3deef1767 # initialize rs1
csrrw x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5da7567fac580e37 # initialize rs1
csrrw x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6b22579806566610 # initialize rs1
csrrw x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x688ea50eee5cfa1b # initialize rs1
csrrw x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x990f00ddee909289 # initialize rs1
csrrw x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7c95ec1ef5e5b642 # initialize rs1
csrrw x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x32202631832d763a # initialize rs1
csrrw x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1e314aeb3261516f # initialize rs1
csrrw x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xfac7df901891873a # initialize rs1
csrrw x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2ad1de609ed33bda # initialize rs1
csrrw x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x2, x3 # perform first operation
csrrw x12, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x12, x16 # perform first operation
csrrw x11, mscratch, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x20, x14 # perform first operation
csrrw x24, mscratch, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x22, x11 # perform first operation
csrrw x22, mscratch, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x8, x18 # perform first operation
csrrw x12, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x20, x17 # perform first operation
csrrw x20, mscratch, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x14, x3 # perform first operation
csrrw x30, mscratch, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x24, x28 # perform first operation
csrrw x9, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x6, x3 # perform first operation
csrrw x26, mscratch, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x6, x10 # perform first operation
csrrw x6, mscratch, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x14, x13 # perform first operation
csrrw x13, mscratch, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x23, x26 # perform first operation
csrrw x21, mscratch, x17 # perform second (triggering) operation

.EQU SIGSIZE,896


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
