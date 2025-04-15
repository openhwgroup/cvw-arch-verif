///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-remuw.S
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
li x0, 0xfa6dd540bcdd4c77 # initialize rs1
li x29, 0xfb243328f0475ac5 # initialize rs2
remuw x21, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb8e892532e4c6f0a # initialize rs1
li x2, 0x83d38c270924a5b5 # initialize rs2
remuw x25, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xbf3e7563e13d76de # initialize rs1
li x13, 0x41fd1ea44c369c9b # initialize rs2
remuw x23, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x781295111d8ce88b # initialize rs1
li x26, 0x524bddc8624e0c8b # initialize rs2
remuw x29, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xec333af48483e900 # initialize rs1
li x1, 0x3fe883657d7f62e5 # initialize rs2
remuw x20, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xaabb15c7051c2415 # initialize rs1
li x14, 0x44fe0024cb9a1957 # initialize rs2
remuw x23, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1d87566721cfe60c # initialize rs1
li x11, 0xf1cfa2df0b7f64a4 # initialize rs2
remuw x5, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x67072b58942c7a1e # initialize rs1
li x25, 0xe61c1a734b2567da # initialize rs2
remuw x15, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x79b59c6a715e81e9 # initialize rs1
li x31, 0x89cb316eaf26a63f # initialize rs2
remuw x14, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6cfb6e21867e5a62 # initialize rs1
li x20, 0x1f2c1d54d020a944 # initialize rs2
remuw x11, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x73e5af6693174627 # initialize rs1
li x23, 0x1246817bdb4d42d5 # initialize rs2
remuw x17, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x48215ff5d8c2a7c0 # initialize rs1
li x12, 0xc661fc99595ac6d6 # initialize rs2
remuw x21, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3d9064bd37291021 # initialize rs1
li x13, 0xf1739fabc79fcee0 # initialize rs2
remuw x10, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x58043745d9d342b3 # initialize rs1
li x20, 0x9a18340a2613cf65 # initialize rs2
remuw x21, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe295f45f71c711ca # initialize rs1
li x31, 0xbc2df36bf8a9499d # initialize rs2
remuw x1, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xd24f831b7f91daea # initialize rs1
li x9, 0x2807a7805eec3042 # initialize rs2
remuw x29, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xccc0128ee64f8a34 # initialize rs1
li x26, 0x258966376449f9b2 # initialize rs2
remuw x3, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x14abb13fc30ab221 # initialize rs1
li x20, 0x10065acbe232f77e # initialize rs2
remuw x30, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xbff6f78ee3d4b87f # initialize rs1
li x23, 0x9fa88419f8937080 # initialize rs2
remuw x20, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc3721eabec94ebbc # initialize rs1
li x21, 0xd0a8b915a305f1bb # initialize rs2
remuw x26, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xa4ed05b243c9474f # initialize rs1
li x22, 0x82ade4a51244fd4b # initialize rs2
remuw x30, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x42542e89dafc8b69 # initialize rs1
li x25, 0x09b45df72f4df4d7 # initialize rs2
remuw x30, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x611e994c5fc4656a # initialize rs1
li x19, 0x9810613e4b09fe0e # initialize rs2
remuw x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7019d64994ec90e7 # initialize rs1
li x13, 0x4b1826ed5f155dbe # initialize rs2
remuw x8, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc4945df3e2391a61 # initialize rs1
li x17, 0x9436f2b912c0f94b # initialize rs2
remuw x9, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc3d989e6d13f28b5 # initialize rs1
li x6, 0x34dd7df3bb6ebae4 # initialize rs2
remuw x20, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x4611a309e04191db # initialize rs1
li x13, 0xc68d6e9b01144d06 # initialize rs2
remuw x29, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x59d326ad519a6dc3 # initialize rs1
li x6, 0xaee8a638bd5af051 # initialize rs2
remuw x16, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9cd01e406a8bf50f # initialize rs1
li x19, 0x17664b6a3563e544 # initialize rs2
remuw x10, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc3d61bb697e98c85 # initialize rs1
li x31, 0x55af8fc117f26df0 # initialize rs2
remuw x16, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1326bf7aeb07ee24 # initialize rs1
li x31, 0x0fc676f599099ceb # initialize rs2
remuw x25, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x89624dbc50fc76af # initialize rs1
li x14, 0xab9d6687849eff01 # initialize rs2
remuw x28, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x28, 0x70eaa7255a50d815 # initialize rs1
li x0, 0x756aaf280fe95232 # initialize rs2
remuw x14, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0xb803cde587b6b7e9 # initialize rs1
li x1, 0x03e21e17f8af96c5 # initialize rs2
remuw x13, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0x7267c2e877a7a6ee # initialize rs1
li x2, 0x34e2ce6a90effedc # initialize rs2
remuw x27, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0xf6cc8ddcc20dfab6 # initialize rs1
li x3, 0xdd026c4a530d4a2e # initialize rs2
remuw x11, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x95e1d7064579b5dc # initialize rs1
li x4, 0x32c4f68717a499c1 # initialize rs2
remuw x17, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x23726b0b3b86385d # initialize rs1
li x5, 0x63dc5fed244189f7 # initialize rs2
remuw x4, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x62bab80883a23b00 # initialize rs1
li x6, 0x640ab9b988549eea # initialize rs2
remuw x26, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x6435a1dbc3641809 # initialize rs1
li x7, 0xfbd4081db240d91d # initialize rs2
remuw x27, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x4e7dc39b4e8d391a # initialize rs1
li x8, 0xdd0615e965af24df # initialize rs2
remuw x14, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0x34ecfa2562c52a11 # initialize rs1
li x9, 0xc49f5f0eabe5c55e # initialize rs2
remuw x3, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x15, 0x5982062c8d17021f # initialize rs1
li x10, 0x7695f8e24b1040e6 # initialize rs2
remuw x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0x0bde6495df14aacb # initialize rs1
li x11, 0xa2d6b6ca1223e958 # initialize rs2
remuw x23, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0xb7af62d7bd962619 # initialize rs1
li x12, 0x5f84e4c51c0b3e89 # initialize rs2
remuw x18, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x6153f12ec5a1ce23 # initialize rs1
li x13, 0x3ed50ee08250a42a # initialize rs2
remuw x22, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0x509f9c7b4c2b4f67 # initialize rs1
li x14, 0x2a41ecd59818a84c # initialize rs2
remuw x8, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0x0680acaa2d8c35ae # initialize rs1
li x15, 0xe55140c6d0c4d1d4 # initialize rs2
remuw x6, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0xb3ed677cf43f7704 # initialize rs1
li x16, 0x731d8062870c99d5 # initialize rs2
remuw x28, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x28, 0x076389c43bed0e3e # initialize rs1
li x17, 0x554cc311bcd2e8e1 # initialize rs2
remuw x8, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x900ca3dae7e64c69 # initialize rs1
li x18, 0xacd1c9efbeb774cc # initialize rs2
remuw x26, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0x5d1a7e85ee499ebf # initialize rs1
li x19, 0x7b8e80a842eaf777 # initialize rs2
remuw x15, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0xcfa97ea9c022b438 # initialize rs1
li x20, 0xd224b953642b796c # initialize rs2
remuw x26, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0x98ce99593e4d662b # initialize rs1
li x21, 0x337b9deb044b40f9 # initialize rs2
remuw x30, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0xe9c35030dc08e50c # initialize rs1
li x22, 0x2c8cafe4a57f5357 # initialize rs2
remuw x1, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0xcb682f1be34b4430 # initialize rs1
li x23, 0xca44c752b4df81ec # initialize rs2
remuw x28, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x20, 0x7622546bc8dd470e # initialize rs1
li x24, 0x517a17dfdfcbdeee # initialize rs2
remuw x19, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0x8d167b3390020083 # initialize rs1
li x25, 0x992be784e0d7117e # initialize rs2
remuw x15, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0xb146cff7bf25248d # initialize rs1
li x26, 0xb81c7960edf82d33 # initialize rs2
remuw x24, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x4aa8e1c08224d54e # initialize rs1
li x27, 0xa3fccc13c9deff24 # initialize rs2
remuw x14, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0x7993ae2a17344a9a # initialize rs1
li x28, 0xe4fca0f4e2fbe2d5 # initialize rs2
remuw x10, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0xc6e65767352e0a0c # initialize rs1
li x29, 0xaec5f7732db883a5 # initialize rs2
remuw x25, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0xd50ad8a7f9ab22cc # initialize rs1
li x30, 0x9daf3069980e9625 # initialize rs2
remuw x1, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0x13df349263a38172 # initialize rs1
li x31, 0x5d25a62e33d86e06 # initialize rs2
remuw x16, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_rd (Test destination rd = x0)
li x2, 0x18632649100eb1ed # initialize rs1
li x24, 0x88b137d4d1df1505 # initialize rs2
remuw x0, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0xdb7ea86a1b9d76df # initialize rs1
li x14, 0x7170da05e708f08d # initialize rs2
remuw x1, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x35cc9f47518b70db # initialize rs1
li x22, 0xff98fa9531ce95f2 # initialize rs2
remuw x2, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x5701769e51765186 # initialize rs1
li x26, 0xd5e2d60ec76e9cea # initialize rs2
remuw x3, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x2def6faf392cec4a # initialize rs1
li x10, 0x645e45dd6d955d69 # initialize rs2
remuw x4, x21, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0xa13cf5c46b64ba75 # initialize rs1
li x7, 0x0d6459aa38cd248a # initialize rs2
remuw x5, x13, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x75c5c0abc1e3a985 # initialize rs1
li x21, 0x844c52db56ed5e59 # initialize rs2
remuw x6, x4, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x62c3d4f38165ef4e # initialize rs1
li x8, 0x639a3353688abaf4 # initialize rs2
remuw x7, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x8745e8670c57fe43 # initialize rs1
li x24, 0xfc38a6f141d0c056 # initialize rs2
remuw x8, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x2bae3fadd72f87ae # initialize rs1
li x16, 0x6febfaf8ee4d28b2 # initialize rs2
remuw x9, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0xb634288ff18564b4 # initialize rs1
li x17, 0xdda620632390a32d # initialize rs2
remuw x10, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0xfebfc2165b876402 # initialize rs1
li x23, 0xd2c3886b87401568 # initialize rs2
remuw x11, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0x6722270d86e781fe # initialize rs1
li x19, 0x1ec6aa0464cc2eca # initialize rs2
remuw x12, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x467d466b821b1b99 # initialize rs1
li x30, 0x202df764791cc649 # initialize rs2
remuw x13, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x9ff58548c52ff1bc # initialize rs1
li x22, 0x7533adcd2b0ccb1a # initialize rs2
remuw x14, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x5, 0xd30d29d020900215 # initialize rs1
li x23, 0xc784b252917032a6 # initialize rs2
remuw x15, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0x00c8012517dacf23 # initialize rs1
li x14, 0xfeed8942064c35c3 # initialize rs2
remuw x16, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6a62cceba01898f4 # initialize rs1
li x28, 0xfbd7e3ef45b8d733 # initialize rs2
remuw x17, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0x12efa2452ffce1f8 # initialize rs1
li x21, 0x2b1bb544b241ab70 # initialize rs2
remuw x18, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0x7fc41bb07fcd427b # initialize rs1
li x28, 0x103c890b591a60a5 # initialize rs2
remuw x19, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x965f007a6e25f226 # initialize rs1
li x7, 0x356a994ce0978efa # initialize rs2
remuw x20, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0xb7c1ebe49b99c557 # initialize rs1
li x26, 0xf78468905315dd9f # initialize rs2
remuw x21, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xab1e6c117c039c1d # initialize rs1
li x20, 0x5b3c84d2b08d05e1 # initialize rs2
remuw x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0xd2ca6dc3c8377642 # initialize rs1
li x6, 0x57d5dad172097e45 # initialize rs2
remuw x23, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xdff6d7be57827912 # initialize rs1
li x6, 0xf4487afcb355804e # initialize rs2
remuw x24, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x06b1d8eb83a5d9c5 # initialize rs1
li x23, 0x22a877074ccb961c # initialize rs2
remuw x25, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x24, 0x490e20d10378c80b # initialize rs1
li x20, 0x717d5b9fd268f116 # initialize rs2
remuw x26, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x5899bee8a961d5d0 # initialize rs1
li x8, 0xf74a32ba4d9f3318 # initialize rs2
remuw x27, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0xf91ebe0a25f9bc4f # initialize rs1
li x31, 0x6723e9ceae9fbd83 # initialize rs2
remuw x28, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0x36c4e8fb31eb8b6c # initialize rs1
li x10, 0x4c237b9490cf8d50 # initialize rs2
remuw x29, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x7dec8e2d986af6c5 # initialize rs1
li x28, 0x29592ac117fe59b2 # initialize rs2
remuw x30, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0x1bcd26523a5dc4fa # initialize rs1
li x14, 0x98fe270a7cf14471 # initialize rs2
remuw x31, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x0000000000000000 # initialize rs1
li x9, 0x8f57d9a23c4d3d68 # initialize rs2
remuw x12, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
li x22, 0xe4fbc18e0a450a84 # initialize rs2
remuw x29, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x13, 0x6b10491830e0d478 # initialize rs2
remuw x23, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
li x14, 0x34d2a805362359ee # initialize rs2
remuw x26, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
li x21, 0x37a18c1a1bc73fe8 # initialize rs2
remuw x18, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x27, 0x7db4535dddfab65e # initialize rs2
remuw x17, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x20, 0xf70fae2a7989a628 # initialize rs2
remuw x9, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0xffffffffffffffff # initialize rs1
li x3, 0xb4bffe776a4189df # initialize rs2
remuw x28, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x14, 0xdf681d4c7b788dd1 # initialize rs2
remuw x7, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x750ac88b0800b71b # initialize rs2
remuw x22, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x1a9264d3489c5b5c # initialize rs2
remuw x25, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x26, 0xd1ca42f4e6bca46a # initialize rs2
remuw x13, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x11, 0x3c3333a42f500576 # initialize rs2
remuw x26, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x25, 0x8ee40f0c1b51d1fe # initialize rs2
remuw x16, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x3, 0x2d1ac97dd71fbab0 # initialize rs2
remuw x29, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x21, 0x2033bcfcc1e4e4bf # initialize rs2
remuw x5, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0xa2684aaa1161ccda # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
remuw x2, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0xce35b3b80aa8eb1d # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
remuw x25, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0x84dfa4678ac56e16 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
remuw x12, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0x0aefcb3c5f6cc824 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
remuw x7, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x23, 0xdcb6edbac8a69ab8 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remuw x14, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0xc8335124380a0841 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
remuw x24, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0xff7a571fe7461c4e # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
remuw x21, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x1, 0x64abc59a27727f8e # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
remuw x25, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x7, 0xa1762f738c462232 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remuw x20, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x22, 0x8538b9dd22ce8b9b # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
remuw x17, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0x38392cf4966e9e3f # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x20, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x25, 0x2d200d1c8520e960 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remuw x22, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x45026ac7267664f6 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
remuw x19, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x35cc7837b5826080 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
remuw x2, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0x903c1f1222ebc69d # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
remuw x28, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x16, 0x4c99674f7ad26864 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
remuw x14, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
remuw x31, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
remuw x19, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
remuw x28, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
remuw x23, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
remuw x12, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
remuw x24, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remuw x11, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
remuw x3, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
remuw x1, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
remuw x15, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x7, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x6, 0x0000000000000000 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
remuw x12, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
remuw x9, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
remuw x14, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x19, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
remuw x25, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x30, 0x0000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
remuw x18, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x3, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
remuw x14, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x15, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
remuw x27, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
remuw x1, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x29, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remuw x24, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x25, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
remuw x24, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
remuw x7, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
remuw x21, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
remuw x27, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
remuw x17, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
remuw x8, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x29, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x22, 0x0000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
remuw x3, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
remuw x7, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
remuw x14, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x26, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
remuw x16, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x13, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
remuw x11, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
remuw x27, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
remuw x20, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
remuw x16, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x15, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
remuw x3, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x2, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
remuw x31, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
remuw x12, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
remuw x13, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
remuw x15, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
remuw x31, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000000000002 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
remuw x19, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x1, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x11, 0x0000000000000002 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
remuw x17, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
remuw x26, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
remuw x13, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x20, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
remuw x21, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x19, 0x0000000000000002 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
remuw x31, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x2, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
remuw x18, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x26, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
remuw x13, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x8, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
remuw x27, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
remuw x18, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x24, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
remuw x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
remuw x10, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
remuw x30, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
remuw x26, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
remuw x22, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
remuw x3, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x12, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x28, 0x8000000000000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remuw x13, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x22, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
remuw x30, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
remuw x1, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x20, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remuw x27, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x11, 0x8000000000000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
remuw x9, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x1, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
remuw x16, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x8, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
remuw x25, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
remuw x11, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x17, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
remuw x13, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
remuw x12, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
remuw x8, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
remuw x13, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
remuw x21, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
remuw x21, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x9, 0x8000000000000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
remuw x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x8000000000000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x30, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x14, 0x8000000000000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
remuw x23, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x25, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
remuw x28, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
remuw x3, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x16, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
remuw x7, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
remuw x30, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x13, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
remuw x3, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x23, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
remuw x14, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x15, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
remuw x28, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x30, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
remuw x7, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x24, 0x7fffffffffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
remuw x7, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
remuw x24, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
remuw x13, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
remuw x3, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
remuw x5, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0x7fffffffffffffff # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
remuw x19, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x7fffffffffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x8, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x8, 0x7fffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
remuw x23, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remuw x27, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
remuw x6, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x3, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
remuw x11, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
remuw x29, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x19, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
remuw x11, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x14, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
remuw x2, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x10, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
remuw x28, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x28, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
remuw x9, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
remuw x5, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
remuw x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
remuw x11, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x5, 0x7ffffffffffffffe # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
remuw x20, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
remuw x30, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
remuw x2, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x26, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x1, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
remuw x22, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
remuw x10, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
remuw x15, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x6, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remuw x27, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x25, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
remuw x13, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x14, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
remuw x28, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x29, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
remuw x10, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x25, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
remuw x19, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x13, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
remuw x14, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x2, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
remuw x26, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remuw x7, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
remuw x28, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
remuw x1, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x10, 0xffffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
remuw x26, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0xffffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
remuw x29, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xffffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x20, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x22, 0xffffffffffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
remuw x15, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
remuw x1, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
remuw x28, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x31, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
remuw x29, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x21, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
remuw x1, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x21, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
remuw x13, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x29, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
remuw x6, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x2, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remuw x24, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x1, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
remuw x2, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
remuw x16, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
remuw x2, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
remuw x14, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x31, 0xfffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
remuw x5, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
remuw x8, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0xfffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
remuw x1, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xfffffffffffffffe # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x2, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0xfffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
remuw x3, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
remuw x3, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
remuw x26, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x8, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
remuw x27, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x25, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
remuw x29, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
remuw x12, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
remuw x18, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
remuw x6, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
remuw x8, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
remuw x17, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
remuw x3, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
remuw x2, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
remuw x23, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
remuw x19, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
remuw x21, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x22, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
remuw x5, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
remuw x23, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
remuw x23, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remuw x9, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
remuw x23, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
remuw x28, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
remuw x20, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remuw x12, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
remuw x28, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
remuw x26, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
remuw x14, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
remuw x11, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
remuw x29, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
remuw x1, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
remuw x31, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x8, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
remuw x15, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
remuw x14, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
remuw x14, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
remuw x8, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
remuw x17, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
remuw x11, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x20, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
remuw x28, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remuw x3, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x2, 0x5555555555555555 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
remuw x29, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x10, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
remuw x16, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
remuw x23, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x15, 0x5555555555555555 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
remuw x21, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
remuw x29, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
remuw x10, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x26, 0x5555555555555555 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
remuw x6, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5555555555555555 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x11, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
remuw x24, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remuw x12, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
remuw x15, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remuw x14, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x1, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
remuw x17, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
remuw x24, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x20, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
remuw x29, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
remuw x8, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x8, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
remuw x19, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x20, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
remuw x3, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
remuw x12, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
remuw x13, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x23, 0x00000000ffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
remuw x25, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x19, 0x00000000ffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
remuw x28, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000ffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
remuw x15, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000ffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x31, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x2, 0x00000000ffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
remuw x14, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x14, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
remuw x25, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
remuw x15, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x18, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
remuw x26, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x28, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
remuw x3, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x21, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
remuw x3, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
remuw x22, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x6, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
remuw x12, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x14, 0x00000000fffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
remuw x9, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x25, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
remuw x5, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
remuw x9, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
remuw x19, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
remuw x21, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
remuw x28, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
remuw x20, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x15, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x27, 0x00000000fffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
remuw x10, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
remuw x23, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
remuw x30, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
remuw x29, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x2, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
remuw x11, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0x0000000100000000 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
remuw x25, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x15, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
remuw x1, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
remuw x20, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x1, 0x0000000100000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
remuw x13, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x14, 0x0000000100000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
remuw x18, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
remuw x29, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
remuw x29, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
remuw x14, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
remuw x10, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
remuw x25, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x25, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x19, 0x0000000100000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
remuw x6, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
remuw x16, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x5, 0x0000000100000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
remuw x13, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
remuw x24, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x27, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
remuw x2, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x6, 0x0000000100000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
remuw x23, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x14, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
remuw x16, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
remuw x28, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
remuw x25, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x20, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
remuw x10, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
remuw x14, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
remuw x13, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x13, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
remuw x1, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
remuw x20, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000100000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
remuw x27, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000100000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x18, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x27, 0x0000000100000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
remuw x25, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x27, 0x0000000100000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
remuw x29, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
remuw x29, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x27, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
remuw x1, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
remuw x7, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x262f86007d10ce13 # initialize rs1
li x0, 0x13b73c101246e062 # initialize rs2
remuw x18, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6e4df81d7bb8de37 # initialize rs1
li x1, 0x15d0e02bebfb7c70 # initialize rs2
remuw x18, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb4b152824fd6efb5 # initialize rs1
li x2, 0x9af5ae4d0921173d # initialize rs2
remuw x10, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6a0cb51d4c02a6ed # initialize rs1
li x3, 0x62ab24706e424746 # initialize rs2
remuw x16, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x08d94e1e18e19583 # initialize rs1
li x4, 0x96d0368c1ec12ba9 # initialize rs2
remuw x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe61025f77c6c54f3 # initialize rs1
li x5, 0x292929f3ae627ad6 # initialize rs2
remuw x1, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdf4a433310e80c99 # initialize rs1
li x6, 0x6a7833f9b9674802 # initialize rs2
remuw x20, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x578b0eb02e38937d # initialize rs1
li x7, 0x66113ec01281e1b6 # initialize rs2
remuw x2, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x25b984364b5d1a08 # initialize rs1
li x8, 0x71d4d6d2ab9a3838 # initialize rs2
remuw x5, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x87d1b166fce55cd0 # initialize rs1
li x9, 0xf780397d45cf64dd # initialize rs2
remuw x31, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa8cb89f52ddb79a3 # initialize rs1
li x10, 0xa81b20ebfb2d32c5 # initialize rs2
remuw x30, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xe98ee28c92db0801 # initialize rs1
li x11, 0xc95d178ee2b617c0 # initialize rs2
remuw x16, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x2b5c76a1b66d3196 # initialize rs1
li x12, 0xe1d04a37e65d53a5 # initialize rs2
remuw x8, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xbe8efc2f116e4c01 # initialize rs1
li x13, 0xef1e5579ede3758a # initialize rs2
remuw x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc9ab50d867d7c859 # initialize rs1
li x14, 0xa9472b32021423c0 # initialize rs2
remuw x17, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc065e5a2745addaa # initialize rs1
li x15, 0x887b51b4594cb035 # initialize rs2
remuw x16, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x9def7cf30a7e114b # initialize rs1
li x16, 0xb350e1820d20e892 # initialize rs2
remuw x14, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x13190f2596f68a40 # initialize rs1
li x17, 0x39d9a8641e4140fb # initialize rs2
remuw x2, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3c9e73540b1274ca # initialize rs1
li x18, 0xb7822dc77835cf34 # initialize rs2
remuw x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xd7fe3a2a1678ee66 # initialize rs1
li x19, 0x26325b2e1544271c # initialize rs2
remuw x6, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x39d8fffe38cd4699 # initialize rs1
li x20, 0xe424072acc41de2d # initialize rs2
remuw x29, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5800a9914feb6c21 # initialize rs1
li x21, 0xe6c36feac6092ec4 # initialize rs2
remuw x28, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x96c9affa83d81fb3 # initialize rs1
li x22, 0x4dda1421224b8be9 # initialize rs2
remuw x19, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5acf270bf48a8007 # initialize rs1
li x23, 0xeca655a91d3ee5f1 # initialize rs2
remuw x24, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x0fc6ab500ed66710 # initialize rs1
li x24, 0x5b8969ba117b8ab1 # initialize rs2
remuw x20, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xabacf1b25f25718a # initialize rs1
li x25, 0x123f60e6fc2f2cbc # initialize rs2
remuw x1, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9d35f5351fbc99a3 # initialize rs1
li x26, 0x99b29428407f1590 # initialize rs2
remuw x12, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x03944f1b27cc4e5b # initialize rs1
li x27, 0x8997d3460c21519a # initialize rs2
remuw x12, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf2e374da943389cd # initialize rs1
li x28, 0x6a7b9dcb25f465a0 # initialize rs2
remuw x27, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x229d18d09b5c0da9 # initialize rs1
li x29, 0xbdf2921241b741b7 # initialize rs2
remuw x14, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xe28171e437f1ba85 # initialize rs1
li x30, 0xa1204656f896ebe4 # initialize rs2
remuw x10, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x66a36230d47194b5 # initialize rs1
li x31, 0x0fd89bffc268bd53 # initialize rs2
remuw x26, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7b1a2be41ef7b828 # initialize rs1
li x7, 0xa97e10fb96c06ef6 # initialize rs2
remuw x0, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6e3aaea67f37546a # initialize rs1
li x3, 0x6a8fc4ac6c24dd7d # initialize rs2
remuw x1, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x587de0a03f1c4179 # initialize rs1
li x24, 0x2c07440a4fe8a47d # initialize rs2
remuw x2, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xdc7b592a1997a7e8 # initialize rs1
li x1, 0x4da14668859f6fdf # initialize rs2
remuw x3, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa8293260cd1d7023 # initialize rs1
li x19, 0xb222d6e0ab2de1a0 # initialize rs2
remuw x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6bc93ef8bc41d982 # initialize rs1
li x16, 0xd32e351da0be37c5 # initialize rs2
remuw x5, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x46353b83188c04d7 # initialize rs1
li x8, 0x8683fbb9154307b6 # initialize rs2
remuw x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa063ac0baef8fd1b # initialize rs1
li x10, 0x0afea2023634c5f4 # initialize rs2
remuw x7, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x45b51b73c381b567 # initialize rs1
li x15, 0x01f92b6c163dc32d # initialize rs2
remuw x8, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xfc42b8c43d6a2f5e # initialize rs1
li x11, 0x38f7524a40a9e737 # initialize rs2
remuw x9, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3831dc7072f54d18 # initialize rs1
li x21, 0x6e51bbb9395c10d8 # initialize rs2
remuw x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xc2e967a5244913d2 # initialize rs1
li x28, 0x050d4be02758fb23 # initialize rs2
remuw x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x22848c8b6fa39f6a # initialize rs1
li x6, 0x4ea822eac58bf7fc # initialize rs2
remuw x12, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa8761cb6b72cc385 # initialize rs1
li x3, 0x3d60d32cc501cd3a # initialize rs2
remuw x13, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x25cae0f0ad5be989 # initialize rs1
li x22, 0x6b99161e45b1c894 # initialize rs2
remuw x14, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa9ba4d96df923161 # initialize rs1
li x31, 0xca6779bef3db6fcf # initialize rs2
remuw x15, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xfb69a70d451a27f5 # initialize rs1
li x17, 0x5af517e11ddbaeed # initialize rs2
remuw x16, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf2d6c7645eeb5f93 # initialize rs1
li x5, 0x821acf673faaaa14 # initialize rs2
remuw x17, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xf01a3ca3581ab1e2 # initialize rs1
li x6, 0x3db9cece2c2143f6 # initialize rs2
remuw x18, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4fc7181eaf48b2ea # initialize rs1
li x3, 0x5bbde60b3321f01a # initialize rs2
remuw x19, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa7b290a6e00623e7 # initialize rs1
li x19, 0xac42124fa4f27bb5 # initialize rs2
remuw x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x1414f75c01257c1b # initialize rs1
li x8, 0x91e1025a14bc256d # initialize rs2
remuw x21, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x316f23f83b878b03 # initialize rs1
li x29, 0xe9bfe560b7673170 # initialize rs2
remuw x22, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7b7124e74dfba028 # initialize rs1
li x24, 0xe14e4af0b4da9053 # initialize rs2
remuw x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x34338e7103eae0d2 # initialize rs1
li x15, 0x20108c116a5fcca9 # initialize rs2
remuw x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x1ecccb48525b55e3 # initialize rs1
li x1, 0x71e360d2162a7218 # initialize rs2
remuw x25, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xca18b94c0d5a2f23 # initialize rs1
li x15, 0x36c0cd931cdc998a # initialize rs2
remuw x26, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0764fec16f565529 # initialize rs1
li x30, 0x57fd4b3b30c7175c # initialize rs2
remuw x27, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbb462535af92ef00 # initialize rs1
li x26, 0x5a5a9188b221ac58 # initialize rs2
remuw x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x26548cbd92d1f6b8 # initialize rs1
li x25, 0x94ec3e57d8e1ceda # initialize rs2
remuw x29, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5da8e607c408b68b # initialize rs1
li x21, 0xa6405d903a44ed13 # initialize rs2
remuw x30, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x850180899074afd9 # initialize rs1
li x13, 0xa0b20f41cebbd9bd # initialize rs2
remuw x31, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0xd76747ee36de1a24 # initialize rs1
li x0, 0xbfc64e9453554187 # initialize rs2
remuw x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0x89d42f9f14071a45 # initialize rs1
li x1, 0x0fa669477d7ae514 # initialize rs2
remuw x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0xa62f585f35ca3f3e # initialize rs1
li x2, 0x240903b05de21908 # initialize rs2
remuw x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0xf7395249544a5090 # initialize rs1
li x3, 0x31e2b7cdd098b7d0 # initialize rs2
remuw x3, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x50874ac9c3916210 # initialize rs1
li x4, 0xf27be190c101464e # initialize rs2
remuw x4, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x7ce10255d52704a6 # initialize rs1
li x5, 0xc282e2775dbbbe91 # initialize rs2
remuw x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x19c24ba286b21f10 # initialize rs1
li x6, 0xfa08581856fb76fc # initialize rs2
remuw x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0xbfd46e38dd5f18da # initialize rs1
li x7, 0x221c6c1f4838f849 # initialize rs2
remuw x7, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0x63a65be74df8115a # initialize rs1
li x8, 0x2e93d5085646c552 # initialize rs2
remuw x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x11, 0x0eec7ec078113091 # initialize rs1
li x9, 0x35cee434a64a8c58 # initialize rs2
remuw x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x7, 0x53754827b6da802e # initialize rs1
li x10, 0x63eab8b57948df29 # initialize rs2
remuw x10, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x21, 0xfa4f970182eaeb19 # initialize rs1
li x11, 0x04adf6a86548a254 # initialize rs2
remuw x11, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x29, 0xeb2dbfcf28756628 # initialize rs1
li x12, 0xb5c361b11c648e7f # initialize rs2
remuw x12, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x22, 0xf6ae0860aba919a2 # initialize rs1
li x13, 0x53d0f1cc41418787 # initialize rs2
remuw x13, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0xc4da7ad44b6e839a # initialize rs1
li x14, 0xc0d4e0e481a7fe05 # initialize rs2
remuw x14, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0xc573039e783f6764 # initialize rs1
li x15, 0x7bb706a0d74922e8 # initialize rs2
remuw x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x075c728bc3ec3636 # initialize rs1
li x16, 0x30e577785721dfe4 # initialize rs2
remuw x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x20, 0x39f31bdb6b7fd452 # initialize rs1
li x17, 0x61df7eeb35aed130 # initialize rs2
remuw x17, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x20, 0x2c8c00b35c85d215 # initialize rs1
li x18, 0x82df5f9457cd5d08 # initialize rs2
remuw x18, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x8, 0x9b90a7c053260af1 # initialize rs1
li x19, 0xe1f3dc8a45349ba8 # initialize rs2
remuw x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x1, 0x8c46ed6a0d63fee3 # initialize rs1
li x20, 0x7725bedbcadce91f # initialize rs2
remuw x20, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x7, 0x74d24a4871e01a4f # initialize rs1
li x21, 0x785e9be8c5b2f1a3 # initialize rs2
remuw x21, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x23, 0xc26c57a16d0a0885 # initialize rs1
li x22, 0xf4523530f5bbf5a4 # initialize rs2
remuw x22, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x6, 0xf5758f2c0f034a3b # initialize rs1
li x23, 0xceec445a95cf9221 # initialize rs2
remuw x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0xa8a59a49a2972885 # initialize rs1
li x24, 0x15dd9ff9d627dc99 # initialize rs2
remuw x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0x65eac9074936d38a # initialize rs1
li x25, 0x112038620411f9f5 # initialize rs2
remuw x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x9904e5743d1c733d # initialize rs1
li x26, 0xb530f6319c9b878f # initialize rs2
remuw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x11, 0x243849026f980b9a # initialize rs1
li x27, 0xca7cbcf7a826ad79 # initialize rs2
remuw x27, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x27, 0x3bbe65928053a74f # initialize rs1
li x28, 0x2e5da4cafca15001 # initialize rs2
remuw x28, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0x8cba824d95f61405 # initialize rs1
li x29, 0xa2de034e477735df # initialize rs2
remuw x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x293df33a28dbab20 # initialize rs1
li x30, 0x6b5313812037a3f9 # initialize rs2
remuw x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x16, 0xe7447e31c7e0c45e # initialize rs1
li x31, 0x822bbc6613109133 # initialize rs2
remuw x31, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x901163fdf616fcf8 # initialize rs1
li x0, 0xc4f3485794adc746 # initialize rs2
remuw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3175a48d4ce3cacd # initialize rs1
li x1, 0xe2dd0a483b5a8d19 # initialize rs2
remuw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xc4de4482b1cd1f15 # initialize rs1
li x2, 0xfa60fc0582d9956f # initialize rs2
remuw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xbbbf0b6beb29e8ac # initialize rs1
li x3, 0x3e6c50ac35538bbf # initialize rs2
remuw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf66f284dbeacd77d # initialize rs1
li x4, 0x1c0524b809ff88b8 # initialize rs2
remuw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1adcf1675912f330 # initialize rs1
li x5, 0x051286828798fa0a # initialize rs2
remuw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x59c935d01858ae06 # initialize rs1
li x6, 0x983029857c61aeb2 # initialize rs2
remuw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4cbac20d2861ccc4 # initialize rs1
li x7, 0x7a0f3925ec275c6c # initialize rs2
remuw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x12ea6bdf85122b60 # initialize rs1
li x8, 0xfe1e19050e510cea # initialize rs2
remuw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xe76fea520316233f # initialize rs1
li x9, 0xc843ad3a1fdee1e5 # initialize rs2
remuw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x34b2c7cb0fb89b89 # initialize rs1
li x10, 0xc980e4cc9c082a4f # initialize rs2
remuw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xab3e36bea99fa4dc # initialize rs1
li x11, 0x3b95b9d1c7547e1a # initialize rs2
remuw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc4cf6c5431ce5f54 # initialize rs1
li x12, 0xf59da7136448cf78 # initialize rs2
remuw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc7046f7317f29300 # initialize rs1
li x13, 0x7e2bb1d6f403e68e # initialize rs2
remuw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x77d01a1fb5d71c36 # initialize rs1
li x14, 0x291347d55fffa3f1 # initialize rs2
remuw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x772392a5335c4b51 # initialize rs1
li x15, 0x4e487c49d5de6807 # initialize rs2
remuw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa4d4c0df9ea6e83e # initialize rs1
li x16, 0x62de01d4e1fddf99 # initialize rs2
remuw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe6a10d626e8ae2fc # initialize rs1
li x17, 0x0104a71370be632f # initialize rs2
remuw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xcf6818058a01e647 # initialize rs1
li x18, 0xa70a65c8ea6091b4 # initialize rs2
remuw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x28873eef4fbabfc0 # initialize rs1
li x19, 0xf70169697dd706d5 # initialize rs2
remuw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x7d47e7fa496308d8 # initialize rs1
li x20, 0x06a2108bdafad23d # initialize rs2
remuw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x8443aa75581cc1f1 # initialize rs1
li x21, 0x0ffdcc5d1e37533d # initialize rs2
remuw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7dd07a44dcd44393 # initialize rs1
li x22, 0x13621c292e188701 # initialize rs2
remuw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc37f3863ad833b6a # initialize rs1
li x23, 0x8b69d8cec5ca191d # initialize rs2
remuw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe5cb118b358423f6 # initialize rs1
li x24, 0xec40539f934f8bf3 # initialize rs2
remuw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa0db9e30ffd40519 # initialize rs1
li x25, 0xd48b99af160b49ed # initialize rs2
remuw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x9165d249e4ea8714 # initialize rs1
li x26, 0x81d67a81f4d0126e # initialize rs2
remuw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x51a4060a6f19731c # initialize rs1
li x27, 0xdb390a92994e60f2 # initialize rs2
remuw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe62b75ed0fa9ad36 # initialize rs1
li x28, 0xfcd710732c9a755e # initialize rs2
remuw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xed172d79f1784955 # initialize rs1
li x29, 0xb77deabd4d231ff0 # initialize rs2
remuw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x71333c8dba6c2913 # initialize rs1
li x30, 0xccf55ea9c91b3bda # initialize rs2
remuw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7923452c8d7d16a5 # initialize rs1
li x31, 0xf350e412ba62090d # initialize rs2
remuw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x31, x12 # perform first operation
remuw x2, x28, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x29, x12 # perform first operation
remuw x18, x24, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x16, x8 # perform first operation
remuw x22, x21, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x20, x1 # perform first operation
remuw x5, x5, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x23, x9 # perform first operation
remuw x13, x9, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x5, x14 # perform first operation
remuw x5, x9, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x21, x20 # perform first operation
remuw x1, x27, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x22, x3 # perform first operation
remuw x14, x9, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x14, x19 # perform first operation
remuw x20, x16, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x23, x18 # perform first operation
remuw x23, x30, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x3, x18 # perform first operation
remuw x18, x25, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x12, x11 # perform first operation
remuw x24, x20, x13 # perform second (triggering) operation

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
