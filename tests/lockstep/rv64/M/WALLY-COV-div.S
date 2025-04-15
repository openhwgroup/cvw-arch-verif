///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-div.S
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
li x0, 0x7897c16a83b6da86 # initialize rs1
li x31, 0x26046df90bae4d65 # initialize rs2
div x14, x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7dee2b3f0662808d # initialize rs1
li x25, 0xd1f2c81cb3070d9b # initialize rs2
div x17, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x36562aececc7c673 # initialize rs1
li x21, 0xda14c10795171767 # initialize rs2
div x18, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb60d15d125c5e2ae # initialize rs1
li x2, 0x130701e426d47ce5 # initialize rs2
div x25, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd9d0358c0d5adea5 # initialize rs1
li x5, 0x11fd35269319bc40 # initialize rs2
div x12, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0x14c0b7bfa9719ed7 # initialize rs1
li x1, 0xb3ed5592a7f8bbc0 # initialize rs2
div x8, x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2a057eae898f097e # initialize rs1
li x7, 0x0ffbcf301f7c552d # initialize rs2
div x28, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0x7dd1f3389e835d84 # initialize rs1
li x13, 0x55181bf0798844ef # initialize rs2
div x20, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9781ba241af1c9a3 # initialize rs1
li x22, 0x71accdb8bc3319a5 # initialize rs2
div x18, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf3a43b880221f846 # initialize rs1
li x11, 0x6bd555c1029b19ed # initialize rs2
div x14, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4bf16ee4a5c33ab0 # initialize rs1
li x25, 0x8a787c4ea3294cd2 # initialize rs2
div x29, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2239be39b86db408 # initialize rs1
li x2, 0x40130358e2afc51d # initialize rs2
div x31, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x4a713342bcc63234 # initialize rs1
li x1, 0xb34e5c45932a5b6c # initialize rs2
div x17, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xf63a6dc4add4d2db # initialize rs1
li x30, 0x37483847cbfbe95c # initialize rs2
div x5, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb6f790cf392926be # initialize rs1
li x1, 0xb809895807251c97 # initialize rs2
div x30, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe04e03b65f04a476 # initialize rs1
li x14, 0xfdd5966b215b4ba2 # initialize rs2
div x17, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd60b651b4ebe4009 # initialize rs1
li x18, 0x2d7928a9db1228eb # initialize rs2
div x12, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x9c7b088508587515 # initialize rs1
li x20, 0x26cac266ebf1228c # initialize rs2
div x24, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x086f7406da1c117a # initialize rs1
li x10, 0xb8efe13c850c95b8 # initialize rs2
div x12, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2ef1366065d5219f # initialize rs1
li x16, 0x0baa6b3bc08b30d5 # initialize rs2
div x10, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x829f8632605ce10d # initialize rs1
li x27, 0x7257502bf913ae8a # initialize rs2
div x1, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xcd5aef89b94d8b78 # initialize rs1
li x26, 0x5c6c04c76d11fc5f # initialize rs2
div x3, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xab88db1ef3e1598e # initialize rs1
li x25, 0x5107f3bdf27b289b # initialize rs2
div x7, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa27c55e2cc94dd07 # initialize rs1
li x25, 0x92a76ea39c7f8046 # initialize rs2
div x5, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0854b91c7ce61af2 # initialize rs1
li x1, 0x03f42b8ce1f9d136 # initialize rs2
div x29, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x4ddf861ac6a7d2b3 # initialize rs1
li x8, 0xd4f154043154f496 # initialize rs2
div x1, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x98e0194eff136083 # initialize rs1
li x6, 0x26e33d7ddf0ebfc9 # initialize rs2
div x27, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x38e1b7826f02b0d4 # initialize rs1
li x19, 0x9931a4671f8501b3 # initialize rs2
div x21, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x27f407a344644e65 # initialize rs1
li x6, 0xcfa2e29079db5e4c # initialize rs2
div x20, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xabd7f71b3c6497ed # initialize rs1
li x23, 0x10bab5c064bedb83 # initialize rs2
div x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9a934ea440191a87 # initialize rs1
li x8, 0x1a7f94ba7d046919 # initialize rs2
div x2, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x17f2a744fc636bb0 # initialize rs1
li x7, 0xed32c817080e83b1 # initialize rs2
div x9, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0x9ce5356ff0383a97 # initialize rs1
li x0, 0x129829ecc5bbc582 # initialize rs2
div x18, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0x93b42bab5e42a24a # initialize rs1
li x1, 0x719914cab250cb09 # initialize rs2
div x13, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0xa532b56ff58be9ab # initialize rs1
li x2, 0x3927260961e51eaa # initialize rs2
div x11, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0x28493d64f9c567c2 # initialize rs1
li x3, 0x564925f96717756a # initialize rs2
div x9, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xacda3e3370a17a23 # initialize rs1
li x4, 0xed0adc4d6d567481 # initialize rs2
div x11, x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x5f69c7e13fe2d419 # initialize rs1
li x5, 0x556778d64aff2dbb # initialize rs2
div x27, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xd64207e1f63c8a62 # initialize rs1
li x6, 0x1e871b3510d2942c # initialize rs2
div x18, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x9f93624c3d35617f # initialize rs1
li x7, 0xec3bc2b54440b2fd # initialize rs2
div x1, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xcda4ed3f68cae7fc # initialize rs1
li x8, 0x00aadf1e4dbb0000 # initialize rs2
div x20, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x2, 0x35a759d8aedafd6b # initialize rs1
li x9, 0x5080dd9d6c2b74e9 # initialize rs2
div x27, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x79610c84a55771d4 # initialize rs1
li x10, 0x6a1444b18f291baf # initialize rs2
div x12, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0x0b5ea0e25a5185c9 # initialize rs1
li x11, 0xf1baafe527d8e080 # initialize rs2
div x3, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x48f6b476dcfafecc # initialize rs1
li x12, 0xff8022fbe4afd05f # initialize rs2
div x31, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x34726916b0f79c9c # initialize rs1
li x13, 0xd048ac9ad80bfe75 # initialize rs2
div x20, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x1b0f99319a5f549d # initialize rs1
li x14, 0x62333e334c1e27e9 # initialize rs2
div x1, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x31, 0x40e12a61131de26b # initialize rs1
li x15, 0x12cac3227a97a43f # initialize rs2
div x22, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x24, 0xfe784f4e83e27675 # initialize rs1
li x16, 0x7e2395b42d5851ea # initialize rs2
div x18, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0x619283925ec117d5 # initialize rs1
li x17, 0x57217766e664885c # initialize rs2
div x12, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0x78075dfa5dd69bcd # initialize rs1
li x18, 0x61e84ce1c7aee3da # initialize rs2
div x28, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x50341e36f003b8c7 # initialize rs1
li x19, 0x0ec667adccf651ce # initialize rs2
div x7, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x10, 0x64f4055318a38340 # initialize rs1
li x20, 0x0fd93a2d525476aa # initialize rs2
div x17, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0xa1129cc214d949b4 # initialize rs1
li x21, 0x84ad930391848949 # initialize rs2
div x15, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0xc5b57a1df2db9cf2 # initialize rs1
li x22, 0xef618713d295bcd7 # initialize rs2
div x31, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x0747d1dd2979fe95 # initialize rs1
li x23, 0xb2a2fd1e868a986c # initialize rs2
div x8, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xf9d6d6e192f15188 # initialize rs1
li x24, 0x417bb5235df7930a # initialize rs2
div x2, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x22, 0x6a14c74b3342ff4d # initialize rs1
li x25, 0xbc9340c1afc24bf1 # initialize rs2
div x23, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xe60864fa93ddb7a9 # initialize rs1
li x26, 0xd856fffa8010797b # initialize rs2
div x2, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0x2061c6b030312729 # initialize rs1
li x27, 0x48536065c3b401a9 # initialize rs2
div x13, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0x66084c563153d33c # initialize rs1
li x28, 0xb9046dea278052cb # initialize rs2
div x11, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0xb986b2072d7db790 # initialize rs1
li x29, 0x6432c9b53e54ca40 # initialize rs2
div x25, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x11, 0xaf405e396ec7f1b8 # initialize rs1
li x30, 0x81d558446441068d # initialize rs2
div x31, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0xdecd86e12e75b2ed # initialize rs1
li x31, 0x26259f87e1fca4a6 # initialize rs2
div x22, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x8c1de679c3cdd2c8 # initialize rs1
li x28, 0x09d12b14257d5dba # initialize rs2
div x0, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x4cbdc9fe62af1877 # initialize rs1
li x17, 0x4b25c30017060645 # initialize rs2
div x1, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x180cfe131f12a180 # initialize rs1
li x13, 0xec538762c3300610 # initialize rs2
div x2, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x735623f95215df89 # initialize rs1
li x31, 0xb11260de752707ad # initialize rs2
div x3, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x1d9e448903684719 # initialize rs1
li x27, 0xa9a4b3042813b3ee # initialize rs2
div x4, x7, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x7a3443a1cb1bb9ae # initialize rs1
li x19, 0x77b28cdd3c4d86e6 # initialize rs2
div x5, x13, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xc9bfd6fd85f91b85 # initialize rs1
li x4, 0x4a7ff60b56bfe951 # initialize rs2
div x6, x17, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x0617d2fc215a254c # initialize rs1
li x5, 0x005565c99b8389ba # initialize rs2
div x7, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x742cf1d1b8e2b5b3 # initialize rs1
li x9, 0x036c6976c8cbbdc6 # initialize rs2
div x8, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0xb37f4234fa26e823 # initialize rs1
li x10, 0x92d05cefcad379ff # initialize rs2
div x9, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0x6324489c375583d9 # initialize rs1
li x3, 0x14b1a9344bc974e8 # initialize rs2
div x10, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x5d372c6c4ef03d9c # initialize rs1
li x8, 0xd26e105f77a00e2f # initialize rs2
div x11, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0x0719fc0c5858cf17 # initialize rs1
li x28, 0x6fa927d43f098756 # initialize rs2
div x12, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0x0e762ce0482c7fc7 # initialize rs1
li x11, 0x10686668dec539bf # initialize rs2
div x13, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xec33c8c37f49b97d # initialize rs1
li x3, 0x6b3643acc177f3e5 # initialize rs2
div x14, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0xc6d111e7673b5cc8 # initialize rs1
li x19, 0x627d368c55283440 # initialize rs2
div x15, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0xc4657ad5b6e833bd # initialize rs1
li x20, 0xa81290c5976ca548 # initialize rs2
div x16, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0x0187c77097b3213c # initialize rs1
li x13, 0x634da2cfd627cfa8 # initialize rs2
div x17, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0xaac9b4654a010486 # initialize rs1
li x8, 0xdc0c080fb7946fdd # initialize rs2
div x18, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0xd28d80ea528fa893 # initialize rs1
li x1, 0x1d2ade845e19df29 # initialize rs2
div x19, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x7, 0x06f55b65081d3fac # initialize rs1
li x20, 0xda071daeec31fc16 # initialize rs2
div x20, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0x4d172e1271aeb707 # initialize rs1
li x2, 0x55b595db83ef8c86 # initialize rs2
div x21, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0x230c7563f489319c # initialize rs1
li x17, 0x0327cd963b3f72ae # initialize rs2
div x22, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0x0c7d88d289603c42 # initialize rs1
li x19, 0x6cd76378ae804b16 # initialize rs2
div x23, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0xc68c546d03d4115c # initialize rs1
li x24, 0x724e33ccefcb41a3 # initialize rs2
div x24, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xe560712cf4140a95 # initialize rs1
li x25, 0x73bcaf49d1033115 # initialize rs2
div x25, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0xc8e1189d682a2aaa # initialize rs1
li x28, 0xa92e3357f1759bb4 # initialize rs2
div x26, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0xffa54abfb0ea71aa # initialize rs1
li x2, 0xc2941ef3f72c0304 # initialize rs2
div x27, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0xd328909702b825db # initialize rs1
li x21, 0x8b8e369de8505c6b # initialize rs2
div x28, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xa4fd8d937f582453 # initialize rs1
li x28, 0xeb9e826bd3a9ab10 # initialize rs2
div x29, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x16, 0xcea385f5fa181fbd # initialize rs1
li x23, 0xc3d560bdaba9508f # initialize rs2
div x30, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0x2084392c65b16b09 # initialize rs1
li x3, 0x2185d0f9bfc9027e # initialize rs2
div x31, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x9, 0x37abcf8bc689daa0 # initialize rs2
div x6, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x0000000000000001 # initialize rs1
li x28, 0x4d9697743351c778 # initialize rs2
div x21, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x28, 0x17683e4882631d99 # initialize rs2
div x7, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x11, 0x91fae001df93409e # initialize rs2
div x1, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x12, 0x9680b35ded5efee1 # initialize rs2
div x19, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x30, 0xab0871108ea7f659 # initialize rs2
div x21, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x23, 0xe69b9ce1726ef08e # initialize rs2
div x16, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x7, 0xf350e5e017c52f75 # initialize rs2
div x11, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x28, 0x857325f4f6804350 # initialize rs2
div x23, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8f4e15dab8d2a259 # initialize rs2
div x8, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x60c0a1e0187d90a1 # initialize rs2
div x21, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x1, 0x6888ecbfb6931b91 # initialize rs2
div x5, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x29, 0xd3005c73324b7153 # initialize rs2
div x18, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x8, 0x686a383b9a2d962a # initialize rs2
div x27, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0x0000000100000000 # initialize rs1
li x1, 0xc2b265637c9c1909 # initialize rs2
div x6, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x10, 0xb5bdd2b1cda2f365 # initialize rs2
div x30, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x37232f7a588dd4ad # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
div x2, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0xed89c2e5b6fb9b19 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
div x27, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0xa6422cfa6453f5aa # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
div x16, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x6, 0x3c45246aaaf7e3a2 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
div x1, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x5, 0xb13652af896bd216 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
div x9, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x13, 0xd2cf1f1846ed38df # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
div x8, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0x701eb11ec05acae5 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
div x27, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0xbbd8c850f8c0273b # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
div x16, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x11, 0x6e9776b9ff4ad27e # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
div x14, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x26, 0x2d2d46f1975efdec # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
div x5, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x828b8ae43b86fe81 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x31, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x3, 0x151de682bc002513 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
div x11, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0xe908d99023b78082 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
div x24, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0xa939fc8cf4df1b72 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
div x31, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x363208f52b9929ef # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
div x9, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x16, 0x433ccda720b161d4 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
div x24, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
div x7, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x25, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
div x16, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x6, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
div x20, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x26, 0x0000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
div x28, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x23, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
div x27, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
div x18, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
div x15, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
div x20, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
div x1, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
div x27, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x16, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x1, 0x0000000000000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
div x3, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
div x12, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
div x16, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x14, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
div x24, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
div x23, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x7, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
div x17, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
div x8, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
div x14, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x19, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
div x10, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x6, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
div x31, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
div x31, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
div x13, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
div x25, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
div x26, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000001 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
div x25, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000000000001 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x12, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x0000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
div x10, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
div x8, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
div x28, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x15, 0x0000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
div x29, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x22, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
div x31, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
div x18, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
div x30, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
div x10, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x28, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
div x10, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x11, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
div x10, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
div x26, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000002 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
div x19, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
div x2, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000002 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
div x22, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
div x6, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000002 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x17, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
div x5, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
div x20, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
div x1, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
div x9, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
div x7, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x11, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
div x25, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x18, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
div x6, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x17, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
div x22, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
div x6, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x30, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
div x9, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
div x1, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x8000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
div x11, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
div x17, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
div x8, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x8000000000000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
div x12, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x7, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x1, 0x8000000000000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
div x30, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x30, 0x8000000000000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
div x28, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x16, 0x8000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
div x31, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x22, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
div x20, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x24, 0x8000000000000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
div x18, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x12, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
div x26, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x25, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
div x23, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
div x11, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x3, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
div x2, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
div x22, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
div x12, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
div x2, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
div x1, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
div x2, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x3, 0x8000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
div x14, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x8000000000000001 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x26, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x3, 0x8000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
div x26, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
div x11, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
div x29, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x19, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
div x2, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x20, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
div x2, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x28, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
div x12, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x13, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
div x28, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x17, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
div x8, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
div x23, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x19, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
div x10, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
div x15, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
div x26, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
div x9, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
div x2, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0x7fffffffffffffff # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
div x17, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x7fffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x2, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x24, 0x7fffffffffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
div x15, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
div x25, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
div x22, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x2, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
div x24, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
div x21, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x31, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
div x14, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
div x24, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x28, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
div x2, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
div x27, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
div x18, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
div x5, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
div x17, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
div x9, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
div x8, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
div x28, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x7ffffffffffffffe # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x24, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x20, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
div x3, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
div x3, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
div x27, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
div x21, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
div x19, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x24, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
div x25, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x27, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
div x22, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
div x27, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x5, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
div x19, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x30, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
div x27, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
div x23, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0xffffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
div x30, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x31, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
div x28, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
div x2, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0xffffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
div x29, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xffffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x24, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x24, 0xffffffffffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
div x16, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
div x21, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
div x25, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x8, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
div x9, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
div x29, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x16, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
div x20, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x14, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
div x26, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x13, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
div x9, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0xfffffffffffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
div x27, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
div x16, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
div x15, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
div x23, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0xfffffffffffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
div x2, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
div x13, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0xfffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
div x9, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x29, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x1, 0xfffffffffffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
div x17, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x31, 0xfffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
div x13, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
div x8, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x9, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
div x19, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
div x14, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
div x29, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
div x18, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
div x9, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
div x11, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
div x9, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
div x2, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
div x20, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
div x21, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
div x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
div x22, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x29, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
div x2, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
div x29, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
div x20, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
div x25, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
div x30, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
div x22, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
div x1, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
div x21, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
div x10, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
div x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
div x2, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
div x13, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
div x28, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
div x3, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
div x8, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x5, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
div x1, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
div x18, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
div x19, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
div x27, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
div x16, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x27, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
div x18, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x24, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
div x10, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x10, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
div x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x2, 0x5555555555555555 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
div x24, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
div x8, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x28, 0x5555555555555555 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
div x10, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
div x19, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
div x2, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x15, 0x5555555555555555 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
div x8, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
div x10, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x5555555555555555 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x26, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x21, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
div x3, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
div x28, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x21, 0x5555555555555555 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
div x29, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x31, 0x5555555555555555 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
div x17, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x21, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
div x10, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
div x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
div x14, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x24, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
div x2, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x26, 0x00000000ffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
div x22, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x17, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
div x13, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
div x3, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
div x16, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
div x19, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
div x17, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0x00000000ffffffff # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
div x13, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000ffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x6, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x16, 0x00000000ffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
div x28, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
div x25, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
div x31, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x6, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
div x16, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
div x18, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x21, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
div x26, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
div x30, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x22, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
div x19, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x15, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
div x30, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x30, 0x00000000fffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
div x17, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
div x11, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
div x9, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
div x27, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
div x11, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0x00000000fffffffe # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
div x17, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x00000000fffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x29, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x18, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
div x15, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
div x25, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
div x14, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
div x5, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x18, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
div x1, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x19, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
div x8, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x31, 0x0000000100000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
div x17, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x24, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
div x6, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x10, 0x0000000100000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
div x12, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x31, 0x0000000100000000 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
div x23, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
div x26, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
div x24, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
div x27, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
div x26, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
div x25, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x1, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x5, 0x0000000100000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
div x25, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
div x12, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x17, 0x0000000100000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
div x3, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
div x11, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x28, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
div x3, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x5, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
div x24, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x16, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
div x6, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x5, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
div x13, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x27, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
div x19, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
div x24, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
div x3, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
div x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
div x2, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
div x7, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000100000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
div x23, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000100000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
div x9, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x25, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
div x2, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x23, 0x0000000100000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
div x30, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
div x10, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
div x21, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
div x19, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x4b0f834f49050a61 # initialize rs1
li x0, 0x9575fc862a3d319d # initialize rs2
div x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xd2dd7f2cb6fadb66 # initialize rs1
li x1, 0x6afca63de0af516d # initialize rs2
div x31, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x573155f59f8e15c2 # initialize rs1
li x2, 0xc96b0dfa7569648d # initialize rs2
div x5, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x7f37346474c25262 # initialize rs1
li x3, 0xde2f4119a187ac5b # initialize rs2
div x24, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9e83da2c6fd8c369 # initialize rs1
li x4, 0xcde93b43bfd66409 # initialize rs2
div x14, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf01e495f1796de4 # initialize rs1
li x5, 0x7dc6e3ab0475e53c # initialize rs2
div x11, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5a1090f78f5313ab # initialize rs1
li x6, 0x120cef484094362e # initialize rs2
div x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7512534e12406904 # initialize rs1
li x7, 0xa11d3b5eb6c75db8 # initialize rs2
div x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6ad8e24bdd82f834 # initialize rs1
li x8, 0x7ec9773b661744a7 # initialize rs2
div x17, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa9199949716127c3 # initialize rs1
li x9, 0x9370df33c0db3dc4 # initialize rs2
div x1, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9c72c73c140dec6a # initialize rs1
li x10, 0x2b6455a9f406304d # initialize rs2
div x29, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x8fe5281a2d465f12 # initialize rs1
li x11, 0xb17ddf69dd1ae98b # initialize rs2
div x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa31ad685b8525a9a # initialize rs1
li x12, 0xaca449719418b95f # initialize rs2
div x14, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0ec28bf57d2440f0 # initialize rs1
li x13, 0xd07efa373dc65de0 # initialize rs2
div x30, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x56f1cffa7ee1e0f4 # initialize rs1
li x14, 0x6f69c5ced7d923cd # initialize rs2
div x12, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1d90b1db052bee34 # initialize rs1
li x15, 0xbf37d2698940ad85 # initialize rs2
div x23, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x4c7271ac17f7b106 # initialize rs1
li x16, 0x2c70743a14b00ebf # initialize rs2
div x29, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x6d2babd0bb08b011 # initialize rs1
li x17, 0x4bfd422b887a9d2d # initialize rs2
div x29, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xf10e9106f7ad79eb # initialize rs1
li x18, 0x52fff5d048f9d07c # initialize rs2
div x20, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8cb5feac6bf75ae8 # initialize rs1
li x19, 0x31549f2b9eb3b975 # initialize rs2
div x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe462070538c85574 # initialize rs1
li x20, 0x391491b4b7f60f2c # initialize rs2
div x5, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x23e138ae98580ec7 # initialize rs1
li x21, 0xb7903be26bfd67d3 # initialize rs2
div x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x46c1f525cf90eadf # initialize rs1
li x22, 0xd113fd3301169ce1 # initialize rs2
div x8, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x98e34102f4d03d31 # initialize rs1
li x23, 0xddfe6a3fa74e0761 # initialize rs2
div x3, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x73c18050e0e9c579 # initialize rs1
li x24, 0x3257090c4c1d358d # initialize rs2
div x2, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xaecb11bb7271f501 # initialize rs1
li x25, 0xd3d3730bd4003bfb # initialize rs2
div x16, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9f5f75df844ba6a7 # initialize rs1
li x26, 0x6c1e05bf8b687ef2 # initialize rs2
div x5, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xa15827c22f806e9d # initialize rs1
li x27, 0x2d1adfe5be891307 # initialize rs2
div x12, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x893d9613669259a5 # initialize rs1
li x28, 0xb8d05be5ed03248c # initialize rs2
div x25, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xacc0c488fbc35843 # initialize rs1
li x29, 0xdcbc1215fa24b0ae # initialize rs2
div x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x156dc6cbd940f1aa # initialize rs1
li x30, 0x47a34d63aeb28f28 # initialize rs2
div x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd417f1d75ccc9888 # initialize rs1
li x31, 0x061ee94c87252cf8 # initialize rs2
div x10, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x35893677a277d409 # initialize rs1
li x26, 0xce0746c2566d50c3 # initialize rs2
div x0, x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xcf7accd831bbbee3 # initialize rs1
li x17, 0x5f1c696c1f2dcdc2 # initialize rs2
div x1, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6b66a4ab534c409d # initialize rs1
li x10, 0xf89602d6540ee1b8 # initialize rs2
div x2, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa2098d7d3c0bd144 # initialize rs1
li x3, 0x9d24e15b90c074db # initialize rs2
div x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbf4f9b49790d9a12 # initialize rs1
li x30, 0xae830df442111cae # initialize rs2
div x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1fc63a95810e8744 # initialize rs1
li x25, 0x2642a6b2ccd9af7c # initialize rs2
div x5, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc65a64f54c263c74 # initialize rs1
li x1, 0x3e30b7ac2314d74f # initialize rs2
div x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc6f0344a633193e5 # initialize rs1
li x28, 0xe888117473f16455 # initialize rs2
div x7, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa5ea570db2595f3e # initialize rs1
li x16, 0x116577b70447057e # initialize rs2
div x8, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0821b7da1c19c1e7 # initialize rs1
li x23, 0xaae02f7a931f831c # initialize rs2
div x9, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xea8d1d053d391914 # initialize rs1
li x17, 0x498c8a9b3dd5bd19 # initialize rs2
div x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x981bca6dfc59c67e # initialize rs1
li x27, 0xcd81aa8eaa7d0247 # initialize rs2
div x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x87f3b9a023fd8eef # initialize rs1
li x10, 0x1fc0ba8d998a30b4 # initialize rs2
div x12, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc4222f5e6f66619b # initialize rs1
li x31, 0x2404615ecc41cbe0 # initialize rs2
div x13, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x2d57672c05d167f6 # initialize rs1
li x5, 0x6b09763ba32a36c8 # initialize rs2
div x14, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2e1b21a605370612 # initialize rs1
li x2, 0xdf7f4fa261e73496 # initialize rs2
div x15, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x5d4c0a094e24f358 # initialize rs1
li x6, 0x0267789566c340fa # initialize rs2
div x16, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x34dc2f80bd3c798c # initialize rs1
li x3, 0x58bf685d49203026 # initialize rs2
div x17, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xaf7526a6f49aba1e # initialize rs1
li x11, 0xcbeade353da84f8a # initialize rs2
div x18, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1030dcf34b21b5cf # initialize rs1
li x18, 0x7bd6e176c200cad2 # initialize rs2
div x19, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x64abcd4586e49734 # initialize rs1
li x5, 0xbc40ce34984de79b # initialize rs2
div x20, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfb160991e3510a8b # initialize rs1
li x29, 0xf98adeeeaa919d32 # initialize rs2
div x21, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf0464fd5688d3715 # initialize rs1
li x24, 0xe4f3d1fd38c751c8 # initialize rs2
div x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xf6f7dada65acf0c8 # initialize rs1
li x16, 0x171ec1a7d0cc4dc7 # initialize rs2
div x23, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb3672601cae2eed3 # initialize rs1
li x28, 0x15d10f0d859b8e4b # initialize rs2
div x24, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x110cf135e2d37ea6 # initialize rs1
li x21, 0x2a43cd8c3b57f7e4 # initialize rs2
div x25, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0f53b5dfac84847f # initialize rs1
li x11, 0xa1f696a5e0c50c35 # initialize rs2
div x26, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5bbb415921e25ae1 # initialize rs1
li x9, 0x04a46dfea8a730eb # initialize rs2
div x27, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4de1da8e3b50712a # initialize rs1
li x30, 0xf0edba23bafe0791 # initialize rs2
div x28, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe463f22865cf69f0 # initialize rs1
li x3, 0x7dead488fd8210b9 # initialize rs2
div x29, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x76db4bf982fc1acf # initialize rs1
li x13, 0x2cbdc9dd461765b2 # initialize rs2
div x30, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x73a4bea6be9baacb # initialize rs1
li x29, 0x42c7dd6a6b04127a # initialize rs2
div x31, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0xe18b61937d2edf17 # initialize rs1
li x0, 0xc693831d9629241a # initialize rs2
div x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x2, 0xe6424d1236bdf11a # initialize rs1
li x1, 0x8c52def47439054e # initialize rs2
div x1, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x13, 0xa4ea505d9c5294c6 # initialize rs1
li x2, 0x52c685662ce0146d # initialize rs2
div x2, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x24, 0x1527c4ee6b71c387 # initialize rs1
li x3, 0x47a1dd3c3943768b # initialize rs2
div x3, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xe8498c8207e8e3c1 # initialize rs1
li x4, 0x47dba94967dfc3e6 # initialize rs2
div x4, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xf01fcc3ee7f4b5ce # initialize rs1
li x5, 0xb057941cb7a3e08b # initialize rs2
div x5, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xa8878a4298e74d97 # initialize rs1
li x6, 0x8082e07b21749823 # initialize rs2
div x6, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x7276e72bceb45630 # initialize rs1
li x7, 0xdb82b57d7b8bbfe2 # initialize rs2
div x7, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x27, 0x3b3e0910d3609b25 # initialize rs1
li x8, 0x2623366fa2b092a1 # initialize rs2
div x8, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0x0c2360492b23d0b3 # initialize rs1
li x9, 0x81ca1ab6897335f3 # initialize rs2
div x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x22, 0x9b1f5b5fa8759ec1 # initialize rs1
li x10, 0xb0eabf260a8f94bc # initialize rs2
div x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x1, 0x27a51d19c5c721ac # initialize rs1
li x11, 0x3e7532547e23e7d6 # initialize rs2
div x11, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x7, 0xe30908117816ea9d # initialize rs1
li x12, 0xc52db3839dc71f95 # initialize rs2
div x12, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x16, 0x3f349843cd0fc19f # initialize rs1
li x13, 0x3cc76c8873e70db9 # initialize rs2
div x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0x184876ac0fc66b2d # initialize rs1
li x14, 0xbaed2e9d86c1fe86 # initialize rs2
div x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x26, 0x65da289ba7e864f3 # initialize rs1
li x15, 0xac1043343f86ffbf # initialize rs2
div x15, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x22, 0xb4edb7a7e9d441e1 # initialize rs1
li x16, 0xb4f3d6cc58a4df25 # initialize rs2
div x16, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x28, 0xe2cceb7458f8f4fc # initialize rs1
li x17, 0x05919942181f3551 # initialize rs2
div x17, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x2, 0x8f307807d0949033 # initialize rs1
li x18, 0x31826208cae1bcb0 # initialize rs2
div x18, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0x06715efd8413f357 # initialize rs1
li x19, 0x287656672974036c # initialize rs2
div x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x11, 0x1e012efb72893ce0 # initialize rs1
li x20, 0x3de1b4a7650f8540 # initialize rs2
div x20, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x3, 0x9ce398f994dfe008 # initialize rs1
li x21, 0x722f96eae0a1f99c # initialize rs2
div x21, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x28, 0x86a5ece36bc5a073 # initialize rs1
li x22, 0x181ef771d0990cdf # initialize rs2
div x22, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x14, 0x733fe3b66a96dde3 # initialize rs1
li x23, 0x7e24c8b9abc36b97 # initialize rs2
div x23, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x28, 0xba8907bd2fd2fc5b # initialize rs1
li x24, 0x6e0f3b51550aa497 # initialize rs2
div x24, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x16, 0x79d0c7bb850851a8 # initialize rs1
li x25, 0x05649905c9005fea # initialize rs2
div x25, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x2, 0x4e38ef6a1ebe5556 # initialize rs1
li x26, 0x040b25cfccf3db94 # initialize rs2
div x26, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x23, 0x0904f165edc20c37 # initialize rs1
li x27, 0x0f69e82521cb4449 # initialize rs2
div x27, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x29, 0x29ee34d71a023997 # initialize rs1
li x28, 0xde5cc3a7a0788fbc # initialize rs2
div x28, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x14, 0xd6b8a89cb8744031 # initialize rs1
li x29, 0xd2559c19fe40d9f4 # initialize rs2
div x29, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x6, 0xbc590185cfd68a31 # initialize rs1
li x30, 0xde41bceb6fc2b2aa # initialize rs2
div x30, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x18, 0x0459df310f80205c # initialize rs1
li x31, 0x0ea9a431341d700b # initialize rs2
div x31, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x714dcd7462a6abe2 # initialize rs1
li x0, 0x2dfa2c13c6e032df # initialize rs2
div x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x037702cc5e2f9f64 # initialize rs1
li x1, 0xfd8de74f8087b162 # initialize rs2
div x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3c2a19f3bf551106 # initialize rs1
li x2, 0x7cdab036870632f6 # initialize rs2
div x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x47e59b66f4f3013e # initialize rs1
li x3, 0x6e6548c2bd8eb727 # initialize rs2
div x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8de6faa8e9fcdc7e # initialize rs1
li x4, 0x29145c9f69957a5b # initialize rs2
div x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc7425587056298b9 # initialize rs1
li x5, 0x1f0f7bb9b2db41b3 # initialize rs2
div x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x73781c4b86ef5eda # initialize rs1
li x6, 0xc397ba3569dcaf1f # initialize rs2
div x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x30335a3d715ec6de # initialize rs1
li x7, 0x4bba92041e7d60bb # initialize rs2
div x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6e0a8d7881f26796 # initialize rs1
li x8, 0x48d4fbf9d8b684c3 # initialize rs2
div x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x457a879aaa1be881 # initialize rs1
li x9, 0x3df3c6f0fefbce41 # initialize rs2
div x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x74057c49998b1e1e # initialize rs1
li x10, 0x52122c1745f730a7 # initialize rs2
div x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb59d2601ccf5c0d5 # initialize rs1
li x11, 0xb5058d6d15ae58da # initialize rs2
div x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc5f5bb862bab2d43 # initialize rs1
li x12, 0xca16097717c94e7c # initialize rs2
div x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x999cfb138388526a # initialize rs1
li x13, 0xd2173c91f69d2a08 # initialize rs2
div x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6b280e7802568087 # initialize rs1
li x14, 0xf018fac3ca9fe1e0 # initialize rs2
div x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe2a650257e559a8b # initialize rs1
li x15, 0xe19bb313537ce9f1 # initialize rs2
div x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x9bbcf516563cc6a3 # initialize rs1
li x16, 0x7c24dab67450402f # initialize rs2
div x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x344f1663c9e9f830 # initialize rs1
li x17, 0x09db83adda060d33 # initialize rs2
div x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7ffffa4373243291 # initialize rs1
li x18, 0xebbc18b9146882b9 # initialize rs2
div x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x24ad8a2429491811 # initialize rs1
li x19, 0x80d8e7e5e0c21b9d # initialize rs2
div x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xba01c16579859af7 # initialize rs1
li x20, 0x462a1b2bc8e3a776 # initialize rs2
div x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc1bff243e70717f6 # initialize rs1
li x21, 0xaa8c9a1dc98fa992 # initialize rs2
div x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7378d0327ca1e382 # initialize rs1
li x22, 0x2cba6032ae11d79d # initialize rs2
div x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3a37c239bdb53568 # initialize rs1
li x23, 0x5f52b3b9bf6a8854 # initialize rs2
div x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbc83130f75781a3e # initialize rs1
li x24, 0x8e35c2949af8b17c # initialize rs2
div x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x84140df24de4cbde # initialize rs1
li x25, 0x9ca5dad11fc492df # initialize rs2
div x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xbbcb55779a011cd7 # initialize rs1
li x26, 0x3d215f31eaf4c695 # initialize rs2
div x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x8d26f7c37b9be4d6 # initialize rs1
li x27, 0x9c22891e6bafba02 # initialize rs2
div x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x16d6b3ab4466cd39 # initialize rs1
li x28, 0x4d91d378cad74385 # initialize rs2
div x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xbd37417f6d37c41e # initialize rs1
li x29, 0x183e1bb64cf48092 # initialize rs2
div x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x57dbedb2ee0cba81 # initialize rs1
li x30, 0x63af83148298f2da # initialize rs2
div x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x12c5afdbc6c62e04 # initialize rs1
li x31, 0xb90fe05cf13d020c # initialize rs2
div x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x16, x23 # perform first operation
div x18, x6, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x16, x18 # perform first operation
div x19, x8, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x6, x21 # perform first operation
div x7, x29, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x7, x17 # perform first operation
div x7, x13, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x25, x20 # perform first operation
div x1, x11, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x31, x20 # perform first operation
div x8, x22, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x3, x21 # perform first operation
div x5, x10, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x12, x10 # perform first operation
div x3, x27, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x24, x10 # perform first operation
div x27, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x14, x11 # perform first operation
div x14, x12, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x23, x15 # perform first operation
div x15, x28, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x19, x12 # perform first operation
div x5, x27, x25 # perform second (triggering) operation

.EQU SIGSIZE,4096


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
