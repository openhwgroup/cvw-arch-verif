///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-addiw.S
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
li x0, 0xd944853f3b31907d # initialize rs1
addiw x29, x0, -1762 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x3bcd4b96921be9f2 # initialize rs1
addiw x16, x1, -733 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8cc5e8d04062a244 # initialize rs1
addiw x24, x2, -361 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd6b1398f55dda615 # initialize rs1
addiw x5, x3, 795 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xee5447d68a1ec7f1 # initialize rs1
addiw x28, x4, -1832 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x40233143bc14c470 # initialize rs1
addiw x13, x5, 823 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc3eee146b0f7df64 # initialize rs1
addiw x7, x6, -409 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0x4e251d3c91c35627 # initialize rs1
addiw x21, x7, -197 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x38aab17b95275f90 # initialize rs1
addiw x11, x8, -1178 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6f9b2ed1b6a28e4b # initialize rs1
addiw x26, x9, 708 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x29cfdbc4459b8b85 # initialize rs1
addiw x12, x10, 1158 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x5d6605a7e4750106 # initialize rs1
addiw x14, x11, 1264 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc23b39a07bec9ede # initialize rs1
addiw x18, x12, 386 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd13940507747ce89 # initialize rs1
addiw x8, x13, 1788 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc859f54d92c2ab80 # initialize rs1
addiw x23, x14, 222 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4bd2fddc5304e623 # initialize rs1
addiw x31, x15, -1511 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc078acba96840e06 # initialize rs1
addiw x21, x16, 1383 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xee0c8b87cad10eac # initialize rs1
addiw x16, x17, 335 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x49bff1178b980ef0 # initialize rs1
addiw x31, x18, 1199 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x90614e5657935ee5 # initialize rs1
addiw x17, x19, 2026 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x26ad3e2dc32973f5 # initialize rs1
addiw x1, x20, 1621 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5abab7e2fe377f58 # initialize rs1
addiw x7, x21, 1803 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd10af39b0ad25c44 # initialize rs1
addiw x26, x22, -1600 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x41f90774ea4e5f50 # initialize rs1
addiw x26, x23, -354 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x20a3c1b588454bf3 # initialize rs1
addiw x2, x24, 857 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9785ab4c4d74098c # initialize rs1
addiw x23, x25, -1538 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7b43f3e29b8119be # initialize rs1
addiw x7, x26, 710 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd853720bbf9e5963 # initialize rs1
addiw x10, x27, -446 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xd8945999861606db # initialize rs1
addiw x20, x28, 353 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xaa1d3cc362e08108 # initialize rs1
addiw x2, x29, 1166 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x01279c860575fbda # initialize rs1
addiw x28, x30, 1178 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3040a49d5150fc4f # initialize rs1
addiw x28, x31, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0x7d23280c574cb30c # initialize rs1
addiw x0, x23, 702 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x31, 0x7a6481def7af5a3c # initialize rs1
addiw x1, x31, -542 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x18, 0x0b89e8c57b52daf0 # initialize rs1
addiw x2, x18, -326 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x28, 0x4663ecf1ddd7e2fa # initialize rs1
addiw x3, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0xec7ccaf87eef92f2 # initialize rs1
addiw x4, x5, 1615 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
li x16, 0x1a443ef17802a073 # initialize rs1
addiw x5, x16, -322 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x4449c729d3d1b842 # initialize rs1
addiw x6, x5, -1087 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xced248b7cc2ca5e0 # initialize rs1
addiw x7, x22, 1332 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x5e9bc572f0e8bee1 # initialize rs1
addiw x8, x24, 309 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x9bdc15201dc8919e # initialize rs1
addiw x9, x6, 494 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0xa52b4e43ac5e7d73 # initialize rs1
addiw x10, x31, -1063 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0xa82c7ad7b30d3a22 # initialize rs1
addiw x11, x31, -1484 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xcb678dca82078d70 # initialize rs1
addiw x12, x28, 1844 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0xbc3798265af67ec3 # initialize rs1
addiw x13, x9, -219 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xaabd2c47280c6ec5 # initialize rs1
addiw x14, x12, 452 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x5, 0x3c1f305b1b20d8ec # initialize rs1
addiw x15, x5, -886 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x52d35117c4b5a2e1 # initialize rs1
addiw x16, x12, 1199 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x7e1b9ee26fbfaf0a # initialize rs1
addiw x17, x13, -35 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0xfaa79d03e8383481 # initialize rs1
addiw x18, x25, 904 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0xc3cb7e00962a54cb # initialize rs1
addiw x19, x1, 871 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0xb59ead74ddbd03ee # initialize rs1
addiw x20, x27, 843 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xddc9bb908ddcd39e # initialize rs1
addiw x21, x30, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x7, 0xe187cfe26658656e # initialize rs1
addiw x22, x7, 279 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0xce3c8df85aa75544 # initialize rs1
addiw x23, x2, 672 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x922fc449c0fbc2df # initialize rs1
addiw x24, x24, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0xe3e28f1d6c5394af # initialize rs1
addiw x25, x30, 1442 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0xc6db3ed9d47885d6 # initialize rs1
addiw x26, x11, -1474 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0x782be7aed4e824c6 # initialize rs1
addiw x27, x11, -1570 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0x5483d975be834146 # initialize rs1
addiw x28, x22, -767 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0xf6c5b64df436ec69 # initialize rs1
addiw x29, x31, 1058 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x29, 0xde459b532a9d4507 # initialize rs1
addiw x30, x29, 1188 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x22, 0x318fee409dacf6e2 # initialize rs1
addiw x31, x22, 453 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x0000000000000000 # initialize rs1
addiw x7, x31, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x0000000000000001 # initialize rs1
addiw x21, x6, 2029 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
addiw x27, x8, 819 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
addiw x2, x1, 97 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
addiw x8, x22, -145 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
addiw x11, x25, 1128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
addiw x20, x19, 1445 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
addiw x23, x24, 643 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
addiw x30, x29, 413 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
addiw x24, x23, -1137 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x7, x31, 367 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
addiw x17, x27, -1274 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0x00000000ffffffff # initialize rs1
addiw x10, x24, -1735 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
addiw x7, x29, 213 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
addiw x6, x9, 918 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x0000000100000001 # initialize rs1
addiw x26, x28, 1690 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rs1
addiw x7, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 640)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000 # initialize rs1
addiw x31, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 648)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000 # initialize rs1
addiw x26, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
addiw x19, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000000 # initialize rs1
addiw x11, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000000 # initialize rs1
addiw x5, x6, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000000 # initialize rs1
addiw x30, x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
addiw x20, x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
addiw x12, x21, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 704)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000000 # initialize rs1
addiw x7, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
addiw x9, x30, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000000 # initialize rs1
addiw x19, x16, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 728)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
addiw x17, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
addiw x19, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 744)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
addiw x14, x9, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
addiw x29, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000 # initialize rs1
addiw x1, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000000 # initialize rs1
addiw x1, x29, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000000 # initialize rs1
addiw x11, x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000000 # initialize rs1
addiw x18, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
addiw x25, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001 # initialize rs1
addiw x24, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
addiw x23, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000001 # initialize rs1
addiw x9, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000001 # initialize rs1
addiw x28, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000001 # initialize rs1
addiw x23, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001 # initialize rs1
addiw x6, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001 # initialize rs1
addiw x8, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000001 # initialize rs1
addiw x15, x21, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000001 # initialize rs1
addiw x28, x26, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rs1
addiw x15, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001 # initialize rs1
addiw x8, x22, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
addiw x15, x12, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 896)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
addiw x14, x13, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000001 # initialize rs1
addiw x22, x1, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000001 # initialize rs1
addiw x6, x31, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 920)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000001 # initialize rs1
addiw x24, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000001 # initialize rs1
addiw x15, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
addiw x17, x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000001 # initialize rs1
addiw x26, x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000002 # initialize rs1
addiw x2, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
addiw x23, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 968)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
addiw x21, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000002 # initialize rs1
addiw x28, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
addiw x3, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 992)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
addiw x1, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002 # initialize rs1
addiw x28, x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002 # initialize rs1
addiw x25, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000002 # initialize rs1
addiw x12, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002 # initialize rs1
addiw x15, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rs1
addiw x15, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000002 # initialize rs1
addiw x27, x28, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000002 # initialize rs1
addiw x30, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002 # initialize rs1
addiw x24, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000002 # initialize rs1
addiw x18, x19, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1072)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
addiw x11, x8, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002 # initialize rs1
addiw x19, x11, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002 # initialize rs1
addiw x9, x22, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
addiw x5, x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
addiw x22, x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000000 # initialize rs1
addiw x22, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000000 # initialize rs1
addiw x11, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rs1
addiw x9, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
addiw x26, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000000 # initialize rs1
addiw x14, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000000 # initialize rs1
addiw x27, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
addiw x9, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000000 # initialize rs1
addiw x29, x17, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000000 # initialize rs1
addiw x10, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1184)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rs1
addiw x24, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000 # initialize rs1
addiw x5, x26, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1200)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000000 # initialize rs1
addiw x21, x18, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000000 # initialize rs1
addiw x15, x5, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1216)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000000 # initialize rs1
addiw x6, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1224)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000000 # initialize rs1
addiw x12, x20, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
addiw x22, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
addiw x28, x19, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
addiw x25, x24, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1256)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000 # initialize rs1
addiw x16, x30, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1264)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000000 # initialize rs1
addiw x27, x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001 # initialize rs1
addiw x7, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1280)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001 # initialize rs1
addiw x27, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1288)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rs1
addiw x8, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
addiw x15, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1304)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
addiw x9, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1312)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
addiw x15, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
addiw x16, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001 # initialize rs1
addiw x29, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
addiw x18, x20, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1344)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000001 # initialize rs1
addiw x11, x5, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1352)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rs1
addiw x7, x10, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1360)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000001 # initialize rs1
addiw x2, x18, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rs1
addiw x18, x3, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1376)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000001 # initialize rs1
addiw x22, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001 # initialize rs1
addiw x27, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1392)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001 # initialize rs1
addiw x9, x21, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1400)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000001 # initialize rs1
addiw x27, x5, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1408)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
addiw x1, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000001 # initialize rs1
addiw x11, x29, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001 # initialize rs1
addiw x19, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffffffffffff # initialize rs1
addiw x13, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1440)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffffffffffff # initialize rs1
addiw x17, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1448)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rs1
addiw x15, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1456)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
addiw x26, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1464)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rs1
addiw x31, x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1472)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff # initialize rs1
addiw x9, x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1480)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
addiw x2, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1488)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff # initialize rs1
addiw x9, x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rs1
addiw x3, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
addiw x17, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff # initialize rs1
addiw x11, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1520)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
addiw x5, x10, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1528)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff # initialize rs1
addiw x6, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1536)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffffffffffff # initialize rs1
addiw x20, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1544)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff # initialize rs1
addiw x29, x16, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1552)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rs1
addiw x2, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1560)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffffffffffff # initialize rs1
addiw x30, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1568)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffffffffffff # initialize rs1
addiw x21, x17, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1576)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffffffffffff # initialize rs1
addiw x5, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1584)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
addiw x23, x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1592)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffffffffffe # initialize rs1
addiw x12, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1600)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffffffffffe # initialize rs1
addiw x22, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1608)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
addiw x16, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
addiw x31, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1624)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x12, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1632)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
addiw x12, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffffffffffe # initialize rs1
addiw x15, x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe # initialize rs1
addiw x5, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1656)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
addiw x27, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1664)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
addiw x15, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1672)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
addiw x6, x14, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1680)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
addiw x3, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffffffffffe # initialize rs1
addiw x3, x17, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1696)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
addiw x2, x24, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
addiw x19, x16, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1712)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
addiw x5, x19, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1720)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
addiw x9, x23, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffffffffffe # initialize rs1
addiw x5, x29, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1736)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffffffffffe # initialize rs1
addiw x1, x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
addiw x1, x23, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1752)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff # initialize rs1
addiw x9, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1760)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffffffffffff # initialize rs1
addiw x31, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffffffffffff # initialize rs1
addiw x20, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1776)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff # initialize rs1
addiw x1, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1784)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffffffffffff # initialize rs1
addiw x9, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x23, 0xffffffffffffffff # initialize rs1
addiw x31, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
addiw x8, x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
addiw x10, x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff # initialize rs1
addiw x29, x25, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff # initialize rs1
addiw x29, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
addiw x19, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 40)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
addiw x13, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff # initialize rs1
addiw x28, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff # initialize rs1
addiw x26, x25, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffffffffffff # initialize rs1
addiw x23, x5, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
addiw x8, x9, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff # initialize rs1
addiw x11, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffffffffffff # initialize rs1
addiw x27, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffffffffffff # initialize rs1
addiw x20, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
addiw x26, x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rs1
addiw x3, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
addiw x2, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
addiw x7, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
addiw x15, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rs1
addiw x17, x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffffffffffe # initialize rs1
addiw x29, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffffffffffe # initialize rs1
addiw x3, x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe # initialize rs1
addiw x24, x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe # initialize rs1
addiw x19, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe # initialize rs1
addiw x18, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffffffffffe # initialize rs1
addiw x21, x7, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 200)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe # initialize rs1
addiw x7, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
addiw x15, x12, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rs1
addiw x8, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rs1
addiw x9, x3, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
addiw x3, x21, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
addiw x11, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe # initialize rs1
addiw x7, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 256)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
addiw x15, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe # initialize rs1
addiw x25, x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 272)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc887763ae86f2 # initialize rs1
addiw x16, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc887763ae86f2 # initialize rs1
addiw x12, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc887763ae86f2 # initialize rs1
addiw x11, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc887763ae86f2 # initialize rs1
addiw x21, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2 # initialize rs1
addiw x8, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
addiw x23, x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
addiw x11, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2 # initialize rs1
addiw x13, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc887763ae86f2 # initialize rs1
addiw x2, x18, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
addiw x24, x6, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
addiw x5, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2 # initialize rs1
addiw x19, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cr_rs1_imm_corners
li x17, 0x5bbc887763ae86f2 # initialize rs1
addiw x8, x17, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
addiw x19, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f2 # initialize rs1
addiw x21, x3, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 392)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc887763ae86f2 # initialize rs1
addiw x27, x5, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
addiw x23, x21, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2 # initialize rs1
addiw x26, x8, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
addiw x27, x20, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cr_rs1_imm_corners
li x17, 0x5bbc887763ae86f2 # initialize rs1
addiw x31, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x2, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x12, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x12, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x28, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x18, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x5, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x1, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x16, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x24, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x3, x9, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x21, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x27, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x31, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x9, x29, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x15, x17, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 552)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x14, x27, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x1, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cr_rs1_imm_corners
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x10, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x31, x20, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x18, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
addiw x9, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cr_rs1_imm_corners
li x5, 0x5555555555555555 # initialize rs1
addiw x22, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
addiw x27, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 616)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
addiw x26, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 624)

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rs1
addiw x13, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 632)

# Testcase cr_rs1_imm_corners
li x19, 0x5555555555555555 # initialize rs1
addiw x8, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
addiw x26, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 648)

# Testcase cr_rs1_imm_corners
li x25, 0x5555555555555555 # initialize rs1
addiw x13, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 656)

# Testcase cr_rs1_imm_corners
li x2, 0x5555555555555555 # initialize rs1
addiw x7, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 664)

# Testcase cr_rs1_imm_corners
li x5, 0x5555555555555555 # initialize rs1
addiw x6, x5, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 672)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rs1
addiw x7, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 680)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
addiw x15, x26, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_imm_corners
li x19, 0x5555555555555555 # initialize rs1
addiw x3, x19, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rs1
addiw x15, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rs1
addiw x21, x10, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
addiw x21, x9, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 720)

# Testcase cr_rs1_imm_corners
li x24, 0x5555555555555555 # initialize rs1
addiw x13, x24, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
addiw x27, x7, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase cr_rs1_imm_corners
li x23, 0x5555555555555555 # initialize rs1
addiw x1, x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
addiw x12, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000ffffffff # initialize rs1
addiw x22, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 760)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
addiw x28, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff # initialize rs1
addiw x9, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rs1
addiw x3, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
addiw x7, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff # initialize rs1
addiw x20, x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
addiw x23, x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
addiw x12, x1, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
addiw x30, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
addiw x22, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000ffffffff # initialize rs1
addiw x2, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 840)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000ffffffff # initialize rs1
addiw x10, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff # initialize rs1
addiw x20, x8, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff # initialize rs1
addiw x7, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 864)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000ffffffff # initialize rs1
addiw x13, x22, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
addiw x15, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff # initialize rs1
addiw x8, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
addiw x29, x1, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff # initialize rs1
addiw x16, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff # initialize rs1
addiw x25, x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
addiw x15, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe # initialize rs1
addiw x23, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 928)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
addiw x24, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000fffffffe # initialize rs1
addiw x24, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
addiw x29, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000fffffffe # initialize rs1
addiw x26, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
addiw x21, x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
addiw x14, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
addiw x7, x20, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
addiw x28, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000fffffffe # initialize rs1
addiw x31, x5, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
addiw x8, x3, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
addiw x28, x23, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe # initialize rs1
addiw x8, x24, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rs1
addiw x14, x27, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1032)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
addiw x12, x17, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000fffffffe # initialize rs1
addiw x22, x18, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000fffffffe # initialize rs1
addiw x27, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
addiw x9, x30, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe # initialize rs1
addiw x26, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
addiw x25, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1080)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
addiw x23, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000000 # initialize rs1
addiw x12, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000 # initialize rs1
addiw x1, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000100000000 # initialize rs1
addiw x14, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000000 # initialize rs1
addiw x21, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1120)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
addiw x5, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1128)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
addiw x24, x7, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000100000000 # initialize rs1
addiw x9, x1, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000 # initialize rs1
addiw x23, x30, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1152)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
addiw x16, x31, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
addiw x23, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000000 # initialize rs1
addiw x13, x20, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000000 # initialize rs1
addiw x29, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1184)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000000 # initialize rs1
addiw x25, x17, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rs1
addiw x15, x8, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1200)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000 # initialize rs1
addiw x25, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000 # initialize rs1
addiw x12, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
addiw x26, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1224)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000000 # initialize rs1
addiw x23, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1232)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
addiw x27, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001 # initialize rs1
addiw x18, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001 # initialize rs1
addiw x2, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1256)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000001 # initialize rs1
addiw x24, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1264)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000001 # initialize rs1
addiw x6, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
addiw x21, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1280)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000100000001 # initialize rs1
addiw x5, x1, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000001 # initialize rs1
addiw x6, x30, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001 # initialize rs1
addiw x10, x9, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
addiw x29, x7, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1312)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
addiw x18, x7, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000001 # initialize rs1
addiw x28, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
addiw x13, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000100000001 # initialize rs1
addiw x17, x23, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1344)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
addiw x31, x24, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
addiw x31, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000001 # initialize rs1
addiw x22, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
addiw x7, x29, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
addiw x23, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1384)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
addiw x22, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x764add849eee69ed # initialize rs1
addiw x0, x0, -360 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb1c701eba4368fd3 # initialize rs1
addiw x1, x1, 314 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5f47946b79e575ed # initialize rs1
addiw x2, x2, -154 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd7db345fe31e9603 # initialize rs1
addiw x3, x3, 1884 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2f49e38dbf304af5 # initialize rs1
addiw x4, x4, -1302 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1432)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3de4341fd6849bb2 # initialize rs1
addiw x5, x5, -953 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1440)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xccf658e3c2f0a10c # initialize rs1
addiw x6, x6, -255 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1448)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8ac212bd35cce14c # initialize rs1
addiw x7, x7, -472 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x01d83f896f3784fc # initialize rs1
addiw x8, x8, 1831 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0cb1d25c447a5297 # initialize rs1
addiw x9, x9, -276 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x324f447151a743b5 # initialize rs1
addiw x10, x10, -798 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x10008a03a992ae80 # initialize rs1
addiw x11, x11, -1181 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1488)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3aab9a02d274db6f # initialize rs1
addiw x12, x12, -589 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7bfa14de7cf5938a # initialize rs1
addiw x13, x13, 1643 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x903b5fa60777221d # initialize rs1
addiw x14, x14, 1258 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xed0ac21bd01b07c7 # initialize rs1
addiw x15, x15, -381 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x955717d9a89408ac # initialize rs1
addiw x16, x16, -995 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x74afca83416332a2 # initialize rs1
addiw x17, x17, 1240 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdad6983aef09ff93 # initialize rs1
addiw x18, x18, 446 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x31fd707e0c0d776e # initialize rs1
addiw x19, x19, -1285 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2287578398ed31f1 # initialize rs1
addiw x20, x20, 653 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa05d471c0bb1d0de # initialize rs1
addiw x21, x21, 1140 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x80079741d3119deb # initialize rs1
addiw x22, x22, 656 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4a0d79c890608484 # initialize rs1
addiw x23, x23, -1873 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x96c2007d35ac3718 # initialize rs1
addiw x24, x24, -732 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x1c6dccc1239c047f # initialize rs1
addiw x25, x25, 1336 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5a0cbf42d257da16 # initialize rs1
addiw x26, x26, -667 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4cbc866c28a66764 # initialize rs1
addiw x27, x27, 76 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6b385d8ac3119d32 # initialize rs1
addiw x28, x28, 1846 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb01baab5f08f6784 # initialize rs1
addiw x29, x29, 1629 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9c98d9ff922ac450 # initialize rs1
addiw x30, x30, -889 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x0d73a201bc969106 # initialize rs1
addiw x31, x31, 1105 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cp_imm_corners
li x9, 0x9ae619ef9d591894 # initialize rs1
addiw x2, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1656)

# Testcase cp_imm_corners
li x8, 0xdca409f95e357abe # initialize rs1
addiw x25, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1664)

# Testcase cp_imm_corners
li x29, 0x93c9eec5ab6658f7 # initialize rs1
addiw x6, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1672)

# Testcase cp_imm_corners
li x16, 0xd7f15a841f83e614 # initialize rs1
addiw x22, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

# Testcase cp_imm_corners
li x31, 0xf882ded340e11509 # initialize rs1
addiw x21, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cp_imm_corners
li x10, 0xefe166aabdc6e8f9 # initialize rs1
addiw x24, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cp_imm_corners
li x21, 0x4d19157b23054820 # initialize rs1
addiw x19, x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1704)

# Testcase cp_imm_corners
li x2, 0xfc9946fb69f61637 # initialize rs1
addiw x29, x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1712)

# Testcase cp_imm_corners
li x10, 0x913f8d19c71858ec # initialize rs1
addiw x14, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1720)

# Testcase cp_imm_corners
li x7, 0xb22beb6a5d1f898d # initialize rs1
addiw x6, x7, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1728)

# Testcase cp_imm_corners
li x18, 0x6db77fb1255be0f8 # initialize rs1
addiw x1, x18, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1736)

# Testcase cp_imm_corners
li x6, 0x0c1ac389ff33ad16 # initialize rs1
addiw x12, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1744)

# Testcase cp_imm_corners
li x21, 0xe64cdf47da695df2 # initialize rs1
addiw x30, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cp_imm_corners
li x16, 0xcafd618feac9a128 # initialize rs1
addiw x21, x16, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1760)

# Testcase cp_imm_corners
li x7, 0xcb442df03390a2d7 # initialize rs1
addiw x6, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cp_imm_corners
li x22, 0x3f26ed2b313058f9 # initialize rs1
addiw x20, x22, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1776)

# Testcase cp_imm_corners
li x13, 0x1bd40812a6fc7715 # initialize rs1
addiw x24, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1784)

# Testcase cp_imm_corners
li x14, 0xaeaf98a43900206b # initialize rs1
addiw x21, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_corners
li x11, 0xa97042c16975640c # initialize rs1
addiw x1, x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_imm_corners
li x13, 0xc7958054487b448a # initialize rs1
addiw x29, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x6, x26 # perform first operation
addiw x29, x7, -312 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x16, x2 # perform first operation
addiw x12, x14, -840 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x22, x1 # perform first operation
addiw x31, x25, -1792 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x30, x1 # perform first operation
addiw x3, x23, 475 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x7, x19 # perform first operation
addiw x19, x27, 1805 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x7, x25 # perform first operation
addiw x12, x2, -624 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x21, x22 # perform first operation
addiw x15, x3, 237 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x26, x21 # perform first operation
addiw x12, x20, -531 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x10, x20 # perform first operation
addiw x12, x7, -884 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x3, x9 # perform first operation
addiw x3, x24, 1129 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x30, x23 # perform first operation
addiw x23, x21, -813 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x27, x15 # perform first operation
addiw x10, x2, 1194 # perform second (triggering) operation

.EQU SIGSIZE,3616


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
