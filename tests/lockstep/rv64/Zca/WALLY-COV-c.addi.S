///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.addi.S
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

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xd1303bc8162748e9 # initialize rs1
c.addi x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3d24b59fe89a9f7e # initialize rs1
c.addi x2, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x4a3297de1a7ae042 # initialize rs1
c.addi x3, -14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0127c93ae0bb3abd # initialize rs1
c.addi x4, -20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcef50efe7a303b3a # initialize rs1
c.addi x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf31ccb2348865110 # initialize rs1
c.addi x6, -32 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7b451ccf96d326e8 # initialize rs1
c.addi x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xeb8acc5e6c4dd907 # initialize rs1
c.addi x8, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x79b7024c15e5ba16 # initialize rs1
c.addi x9, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc51bf1a27e07d00a # initialize rs1
c.addi x10, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x10decade5b38522c # initialize rs1
c.addi x11, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x995382e8dc3f65c6 # initialize rs1
c.addi x12, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x50be0b192ea93a9d # initialize rs1
c.addi x13, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x46be05ff4a06cc36 # initialize rs1
c.addi x14, -7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1e69e4d3095e4332 # initialize rs1
c.addi x15, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x71cec92c670fcc4a # initialize rs1
c.addi x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x24cf489db4c6b4f8 # initialize rs1
c.addi x17, -13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x1dc09bcbf235d062 # initialize rs1
c.addi x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe6b0a93dd3d0cb0a # initialize rs1
c.addi x19, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xbaec1532b04556d6 # initialize rs1
c.addi x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8bc51b257fe14915 # initialize rs1
c.addi x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf5245ef3ec1b7a03 # initialize rs1
c.addi x22, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2bd578d538b752ef # initialize rs1
c.addi x23, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb4ae023ef0275fbb # initialize rs1
c.addi x24, -5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x7ef20ed76ab77d38 # initialize rs1
c.addi x25, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xc3a0c4eba139e90d # initialize rs1
c.addi x26, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xba6fad20710ebe63 # initialize rs1
c.addi x27, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6cde4c049c30d3bc # initialize rs1
c.addi x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7246cda5868500e0 # initialize rs1
c.addi x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3f828adb7218a192 # initialize rs1
c.addi x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xe5bc0b81ddd0828d # initialize rs1
c.addi x31, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x0000000000000000 # initialize rs1
c.addi x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x0000000000000001 # initialize rs1
c.addi x15, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x0000000000000002 # initialize rs1
c.addi x6, -8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
c.addi x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
c.addi x20, -23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
c.addi x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
c.addi x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
c.addi x18, -14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 304)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
c.addi x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
c.addi x22, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x28, -24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
c.addi x7, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
c.addi x28, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 344)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
c.addi x19, -7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
c.addi x17, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
c.addi x23, -12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
c.addi x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000 # initialize rs1
c.addi x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000 # initialize rs1
c.addi x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000000 # initialize rs1
c.addi x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
c.addi x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000 # initialize rs1
c.addi x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
c.addi x25, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
c.addi x27, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 440)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
c.addi x17, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 448)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000000 # initialize rs1
c.addi x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
c.addi x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001 # initialize rs1
c.addi x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
c.addi x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000001 # initialize rs1
c.addi x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
c.addi x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
c.addi x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
c.addi x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
c.addi x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000001 # initialize rs1
c.addi x17, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000001 # initialize rs1
c.addi x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
c.addi x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
c.addi x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
c.addi x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000002 # initialize rs1
c.addi x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
c.addi x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000002 # initialize rs1
c.addi x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
c.addi x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000002 # initialize rs1
c.addi x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rs1
c.addi x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rs1
c.addi x27, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000002 # initialize rs1
c.addi x2, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
c.addi x8, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002 # initialize rs1
c.addi x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
c.addi x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rs1
c.addi x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000 # initialize rs1
c.addi x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addi x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 688)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
c.addi x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 696)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
c.addi x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rs1
c.addi x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 712)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000 # initialize rs1
c.addi x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 720)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
c.addi x10, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 728)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000000 # initialize rs1
c.addi x23, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 736)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
c.addi x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 744)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addi x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rs1
c.addi x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 760)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
c.addi x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 768)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000001 # initialize rs1
c.addi x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000001 # initialize rs1
c.addi x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000001 # initialize rs1
c.addi x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
c.addi x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000001 # initialize rs1
c.addi x28, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rs1
c.addi x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000001 # initialize rs1
c.addi x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 824)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
c.addi x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 832)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
c.addi x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
c.addi x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 848)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffffffffffff # initialize rs1
c.addi x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
c.addi x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
c.addi x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffffffffffff # initialize rs1
c.addi x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
c.addi x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffffffffffff # initialize rs1
c.addi x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffffffffffff # initialize rs1
c.addi x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff # initialize rs1
c.addi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
c.addi x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
c.addi x18, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
c.addi x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffffffffffff # initialize rs1
c.addi x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
c.addi x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 952)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe # initialize rs1
c.addi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
c.addi x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffffffffffe # initialize rs1
c.addi x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 976)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffffffffffe # initialize rs1
c.addi x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
c.addi x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffffffffffe # initialize rs1
c.addi x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
c.addi x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe # initialize rs1
c.addi x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffffffffffe # initialize rs1
c.addi x22, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
c.addi x31, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
c.addi x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
c.addi x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffffffffffff # initialize rs1
c.addi x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff # initialize rs1
c.addi x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
c.addi x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1072)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rs1
c.addi x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffffffffffff # initialize rs1
c.addi x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffffffffffff # initialize rs1
c.addi x5, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff # initialize rs1
c.addi x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
c.addi x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
c.addi x18, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffffffffffff # initialize rs1
c.addi x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
c.addi x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rs1
c.addi x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rs1
c.addi x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
c.addi x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffffffffffe # initialize rs1
c.addi x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffffffffffe # initialize rs1
c.addi x6, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
c.addi x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
c.addi x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1192)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffffffffffe # initialize rs1
c.addi x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
c.addi x21, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe # initialize rs1
c.addi x30, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffffffffffe # initialize rs1
c.addi x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
c.addi x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc887763ae86f2 # initialize rs1
c.addi x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1240)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
c.addi x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1248)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
c.addi x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
c.addi x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
c.addi x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1272)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2 # initialize rs1
c.addi x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1280)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc887763ae86f2 # initialize rs1
c.addi x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
c.addi x1, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
c.addi x22, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1304)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc887763ae86f2 # initialize rs1
c.addi x5, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1312)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
c.addi x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1320)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
c.addi x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1336)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1384)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x1, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x13, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1408)

# Testcase cr_rs1_imm_corners
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x28, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addi x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
c.addi x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1432)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
c.addi x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
c.addi x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1448)

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rs1
c.addi x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1456)

# Testcase cr_rs1_imm_corners
li x30, 0x5555555555555555 # initialize rs1
c.addi x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_imm_corners
li x15, 0x5555555555555555 # initialize rs1
c.addi x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1472)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
c.addi x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
c.addi x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1488)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addi x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
c.addi x6, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1504)

# Testcase cr_rs1_imm_corners
li x17, 0x5555555555555555 # initialize rs1
c.addi x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
c.addi x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1520)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000ffffffff # initialize rs1
c.addi x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1528)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff # initialize rs1
c.addi x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1536)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
c.addi x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1544)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
c.addi x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1552)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
c.addi x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000ffffffff # initialize rs1
c.addi x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1568)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff # initialize rs1
c.addi x5, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff # initialize rs1
c.addi x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1584)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff # initialize rs1
c.addi x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1592)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
c.addi x7, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1600)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000ffffffff # initialize rs1
c.addi x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1608)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
c.addi x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1616)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000fffffffe # initialize rs1
c.addi x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1624)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe # initialize rs1
c.addi x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe # initialize rs1
c.addi x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1640)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe # initialize rs1
c.addi x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
c.addi x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1656)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
c.addi x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000fffffffe # initialize rs1
c.addi x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000fffffffe # initialize rs1
c.addi x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1680)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
c.addi x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
c.addi x23, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1696)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000fffffffe # initialize rs1
c.addi x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1704)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
c.addi x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
c.addi x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1720)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
c.addi x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1728)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rs1
c.addi x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1736)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
c.addi x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1744)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000000 # initialize rs1
c.addi x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1752)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000000 # initialize rs1
c.addi x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1760)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
c.addi x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
c.addi x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1776)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addi x28, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1784)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000 # initialize rs1
c.addi x19, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000000 # initialize rs1
c.addi x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000000 # initialize rs1
c.addi x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000001 # initialize rs1
c.addi x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000100000001 # initialize rs1
c.addi x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
c.addi x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
c.addi x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
c.addi x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
c.addi x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
c.addi x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
c.addi x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001 # initialize rs1
c.addi x19, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 80)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000001 # initialize rs1
c.addi x20, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
c.addi x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
c.addi x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

.EQU SIGSIZE,1912


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
