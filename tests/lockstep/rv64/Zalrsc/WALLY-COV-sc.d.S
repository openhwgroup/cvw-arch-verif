///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zalrsc/WALLY-COV-sc.d.S
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
li x31, 0x2e5d3acf59234e1a # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x13, x31, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x7, 0x3c700c08efbd72a4 # initialize rs2
la x2, scratch # rs1 = base address 
sc.d x1, x7, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x23, 0x67d7aa1e92cb17d5 # initialize rs2
la x3, scratch # rs1 = base address 
sc.d x22, x23, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x6a69ad9a67223376 # initialize rs2
la x4, scratch # rs1 = base address 
sc.d x15, x3, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x7bf28bd75be45154 # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x24, x27, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xa7a2b7745ec279ed # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x24, x8, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xf3aefddfc3372888 # initialize rs2
la x7, scratch # rs1 = base address 
sc.d x9, x8, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0x46f9425533092b49 # initialize rs2
la x8, scratch # rs1 = base address 
sc.d x25, x5, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x7, 0x79742948e5067bf9 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x27, x7, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x091568e969533b4f # initialize rs2
la x10, scratch # rs1 = base address 
sc.d x15, x13, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x9fd309379746903d # initialize rs2
la x11, scratch # rs1 = base address 
sc.d x17, x9, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x377338d0eaba8cfb # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x21, x13, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x28, 0x88c40a250599151a # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x12, x28, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0x8788afef3bf7b9e8 # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x5, x8, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x991b98998f9c84d4 # initialize rs2
la x15, scratch # rs1 = base address 
sc.d x20, x5, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0xf1516ad59a98f3f5 # initialize rs2
la x16, scratch # rs1 = base address 
sc.d x26, x28, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0xaf8954bb4a16470c # initialize rs2
la x17, scratch # rs1 = base address 
sc.d x7, x10, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x03d03994ccc88b9b # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x12, x8, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0x4813f71c82be857d # initialize rs2
la x19, scratch # rs1 = base address 
sc.d x14, x8, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x9, 0x2b097e8bf8bbcb12 # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x14, x9, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x15, 0xa5f0e1ab159132cb # initialize rs2
la x21, scratch # rs1 = base address 
sc.d x9, x15, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0xb43573d59217fb21 # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x26, x20, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x11, 0xc840cc571ffa05e9 # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x5, x11, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0x378101005bcde66f # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x13, x16, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xfde03fc7a5db5bee # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x28, x11, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x7, 0xa1c6002a761ce965 # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x5, x7, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x28, 0xdaa63eb0ef3b4543 # initialize rs2
la x27, scratch # rs1 = base address 
sc.d x25, x28, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0xbf9210b8d7ef02e8 # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x30, x7, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x13, 0x457dec57d337fb83 # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x10, x13, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0x4e9d2360ebaf9a4a # initialize rs2
la x30, scratch # rs1 = base address 
sc.d x5, x29, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x4b59600bacbf50ff # initialize rs2
la x31, scratch # rs1 = base address 
sc.d x19, x13, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 240)

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x1925f2c86e82a4d4 # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x15, x0, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xe8b6da3728f129d7 # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x28, x1, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xa165e58d7a017904 # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x10, x2, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x7166f437fe727103 # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x21, x3, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 272)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6a52d5ce08793ddf # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x22, x4, (x24) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 280)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf0e944f48a12b324 # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x17, x5, (x12) # perform operation
RVTEST_SIGUPD(x6, x0, x17, 288)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc0b3906a689b24f7 # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x5, x6, (x24) # perform operation
RVTEST_SIGUPD(x7, x0, x5, 296)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9c39de443875985d # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x12, x7, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xfaece8661894a67e # initialize rs2
la x19, scratch # rs1 = base address 
sc.d x24, x8, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 312)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xd49a5c62eb73b7dd # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x8, x9, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xbd6d0d0cab724428 # initialize rs2
la x21, scratch # rs1 = base address 
sc.d x31, x10, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x09e6368306cc157e # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x13, x11, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x5a13ec356d014125 # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x31, x12, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x20dac6591913f17e # initialize rs2
la x17, scratch # rs1 = base address 
sc.d x10, x13, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x0686ec9cc6cdc27d # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x5, x14, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf95f10ed851e33e8 # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x22, x15, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xd1f1c6004b694c0e # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x30, x16, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xc82f260a8b4fab57 # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x3, x17, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x20fb99fb1f27009d # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x17, x18, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xd13289ba9769a85b # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x16, x19, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xb1b8440675027621 # initialize rs2
la x30, scratch # rs1 = base address 
sc.d x29, x20, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xe52acd8f80774af6 # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x20, x21, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x23d1f2189ff1a800 # initialize rs2
la x17, scratch # rs1 = base address 
sc.d x14, x22, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xf25733b567ba8af7 # initialize rs2
la x2, scratch # rs1 = base address 
sc.d x5, x23, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x2b2af3ac83a3c1f7 # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x5, x24, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x9a8b5ff8e05fd1ad # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x10, x25, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xd9daf53e50deb4b4 # initialize rs2
la x16, scratch # rs1 = base address 
sc.d x31, x26, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xb698770ad445b58f # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x3, x27, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xfc000bbba624754b # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x24, x28, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xfaeaffc2d342d2ec # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x5, x29, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x5f53581de45c10cd # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x19, x30, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xb90ed2501822170c # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x20, x31, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cp_rd (Test destination rd = x0)
li x5, 0x8ebcc75d45fad9a3 # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x0, x5, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 504)

# Testcase cp_rd (Test destination rd = x1)
li x31, 0x05f01de83a391004 # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x1, x31, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x64bb1c6f5c187d2b # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x2, x27, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_rd (Test destination rd = x3)
li x28, 0x9bae171a6b79fc0a # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x3, x28, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x0b35aad6d4b22025 # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x4, x14, (x28) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 536)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x94d0c6af5e03fbf4 # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x5, x21, (x20) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 544)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xda17774003976cd8 # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x6, x8, (x1) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 552)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x815c74c28ec720aa # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x7, x18, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa8261e832281d326 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x8, x8, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x4d25aa07e3e0c549 # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x9, x12, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0xac434ad9c141cc0f # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x10, x29, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0xc47f97c83d99159d # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x11, x20, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x877952c2b5a81dd9 # initialize rs2
la x27, scratch # rs1 = base address 
sc.d x12, x9, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x5e99403d22e03e0a # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x13, x15, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x126ec8578dedd327 # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x14, x2, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x44f0722a43916e07 # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x15, x13, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x14597b0ca4a28e1e # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x16, x1, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0xd5baaf9256c63b7b # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x17, x26, (x5) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0xe162826f07cee459 # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x18, x23, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x049ff1f0070c6b6a # initialize rs2
la x2, scratch # rs1 = base address 
sc.d x19, x20, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cp_rd (Test destination rd = x20)
li x22, 0xb92f8cda1b0f9b5d # initialize rs2
la x17, scratch # rs1 = base address 
sc.d x20, x22, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cp_rd (Test destination rd = x21)
li x5, 0x1892e05ff4f3b3e1 # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x21, x5, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0x0c958dc9efe7740e # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x22, x11, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cp_rd (Test destination rd = x23)
li x24, 0xbd4504da5b2c8b50 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x23, x24, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 688)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x1f7422df0ccdb87a # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x24, x13, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cp_rd (Test destination rd = x25)
li x26, 0xb8431cb85176985b # initialize rs2
la x27, scratch # rs1 = base address 
sc.d x25, x26, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0x8c4cff83aaea89e5 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x26, x13, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cp_rd (Test destination rd = x27)
li x22, 0x2e50256c93059065 # initialize rs2
la x21, scratch # rs1 = base address 
sc.d x27, x22, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0x5f51e5965a5824f1 # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x28, x10, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 728)

# Testcase cp_rd (Test destination rd = x29)
li x9, 0x42b65e6e0a0e8aa1 # initialize rs2
la x31, scratch # rs1 = base address 
sc.d x29, x9, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0x5d1f225f75caf900 # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x30, x28, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x44c86ad80d6efcd5 # initialize rs2
la x30, scratch # rs1 = base address 
sc.d x31, x23, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 752)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x0000000000000000 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x29, x15, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x5, 0x0000000000000001 # initialize rs2
la x8, scratch # rs1 = base address 
sc.d x3, x5, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 768)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x0000000000000002 # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x14, x26, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x7, 0x8000000000000000 # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x24, x7, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x13, x25, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x9, x17, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x16, x18, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x6, x23, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x22, x1, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 824)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x1, x27, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x15, scratch # rs1 = base address 
sc.d x18, x31, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs2
la x19, scratch # rs1 = base address 
sc.d x15, x25, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 848)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x3, x29, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x24, x15, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x12, x20, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x7, x22, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xd20d38f021f0984f # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x15, x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x0db3cf7e26a590e7 # initialize rs2
la x2, scratch # rs1 = base address 
sc.d x27, x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x888794e3e119d025 # initialize rs2
la x3, scratch # rs1 = base address 
sc.d x14, x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6dbf53639136a2ee # initialize rs2
la x4, scratch # rs1 = base address 
sc.d x27, x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x27, 912)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xacdd42efcd1ce31a # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x30, x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x30, 920)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9b79b5018777f296 # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x13, x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x13, 928)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6b42821b711b5a90 # initialize rs2
la x7, scratch # rs1 = base address 
sc.d x21, x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x7098a9ba309c5f5d # initialize rs2
la x8, scratch # rs1 = base address 
sc.d x28, x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x3b05228c084803f9 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x24, x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x337b7274fe91e463 # initialize rs2
la x10, scratch # rs1 = base address 
sc.d x9, x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x382e8fecf5235a79 # initialize rs2
la x11, scratch # rs1 = base address 
sc.d x6, x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xe3071627ff6dd89c # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x13, x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x1f2d2bb6694832d9 # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x7, x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xbbcccdaf462c0ca2 # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x21, x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3bca54ecca5fd91a # initialize rs2
la x15, scratch # rs1 = base address 
sc.d x15, x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x2de9b4be1bc87ddc # initialize rs2
la x16, scratch # rs1 = base address 
sc.d x10, x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1008)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x65bccde9e5165571 # initialize rs2
la x17, scratch # rs1 = base address 
sc.d x14, x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xd989a53d392894cf # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x24, x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x02454526d37f0b3e # initialize rs2
la x19, scratch # rs1 = base address 
sc.d x15, x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x937bf6b137fff82c # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x15, x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1490b2f6cdf0fa58 # initialize rs2
la x21, scratch # rs1 = base address 
sc.d x11, x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7663dbc6aff10488 # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x23, x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x39f66c40d041ccfe # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x14, x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x332e40a82dbe45a3 # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x19, x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x06dc056fd4b23d2e # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x1, x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe184242331719e99 # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x1, x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2df7f3d4d0ccfac5 # initialize rs2
la x27, scratch # rs1 = base address 
sc.d x5, x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x734f934b6e3c9efe # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x12, x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x0aab87f1e56f364f # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x19, x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3704a50b0505bffa # initialize rs2
la x30, scratch # rs1 = base address 
sc.d x15, x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xbc29c31ff95c5a42 # initialize rs2
la x31, scratch # rs1 = base address 
sc.d x30, x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x7, 0x8cca0de37f6c6025 # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x1, x7, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x22, 0x2f7132e671de5649 # initialize rs2
la x2, scratch # rs1 = base address 
sc.d x2, x22, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x19, 0x10e7dac9a0d05c6f # initialize rs2
la x3, scratch # rs1 = base address 
sc.d x3, x19, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x163f7acf21c5ac02 # initialize rs2
la x4, scratch # rs1 = base address 
sc.d x4, x14, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1160)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x22da516e46bb33f6 # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x5, x13, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1168)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x909e53d3365a2762 # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x6, x1, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1176)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x6c76cc6737d17ea3 # initialize rs2
la x7, scratch # rs1 = base address 
sc.d x7, x27, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x21, 0x148b0bfc62536d74 # initialize rs2
la x8, scratch # rs1 = base address 
sc.d x8, x21, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x27, 0x7dc27b012e14ccfb # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x9, x27, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x27, 0xdc6b5e9f93b1cb3a # initialize rs2
la x10, scratch # rs1 = base address 
sc.d x10, x27, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x23, 0xe22297ce78a337ad # initialize rs2
la x11, scratch # rs1 = base address 
sc.d x11, x23, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x16, 0x75db276647cde6ba # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x12, x16, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0x7738e7cb54f3e928 # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x13, x11, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x22, 0x077a7d122cf1b13a # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x14, x22, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x14, 0x076418ff946e1247 # initialize rs2
la x15, scratch # rs1 = base address 
sc.d x15, x14, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x17, 0x943fe802d68f2bdb # initialize rs2
la x16, scratch # rs1 = base address 
sc.d x16, x17, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x18, 0x416e2fd9268f7bc6 # initialize rs2
la x17, scratch # rs1 = base address 
sc.d x17, x18, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x2, 0x350d1d40079193de # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x18, x2, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x7, 0x0e2c125be892fa52 # initialize rs2
la x19, scratch # rs1 = base address 
sc.d x19, x7, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x16, 0xd3add0f086ca2ec3 # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x20, x16, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x24, 0x4325d884004ec34a # initialize rs2
la x21, scratch # rs1 = base address 
sc.d x21, x24, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x20, 0xe4563a13400432bb # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x22, x20, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x7, 0xea414ebd450aedf0 # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x23, x7, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x28, 0x74e9c4ef7a7db0d4 # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x24, x28, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x17, 0x270ca4ede8934d88 # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x25, x17, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x9, 0x68fc5f7e5d5305ff # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x26, x9, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x11, 0x129bcbe74da21223 # initialize rs2
la x27, scratch # rs1 = base address 
sc.d x27, x11, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x23, 0xdd21166d2ba0b65e # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x28, x23, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x19, 0x56cb4c8b59a0502d # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x29, x19, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x24, 0xca63c182bc7624ff # initialize rs2
la x30, scratch # rs1 = base address 
sc.d x30, x24, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x22, 0x9a7607023f1e2a0b # initialize rs2
la x31, scratch # rs1 = base address 
sc.d x31, x22, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x29132a53cdf45118 # initialize rs2
la x16, scratch # rs1 = base address 
sc.d x0, x0, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x21849b07fdcf21ed # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x1, x1, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x3ab155b69d8b0894 # initialize rs2
la x7, scratch # rs1 = base address 
sc.d x2, x2, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x92548a82c86ffebc # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x3, x3, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x93f9962aefaebafa # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x4, x4, (x18) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa0772a80cb88a1dc # initialize rs2
la x2, scratch # rs1 = base address 
sc.d x5, x5, (x2) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x193a3c0ce6d3e69f # initialize rs2
la x21, scratch # rs1 = base address 
sc.d x6, x6, (x21) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8e6e5d31fc368302 # initialize rs2
la x11, scratch # rs1 = base address 
sc.d x7, x7, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x69571385bcb25ab4 # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x8, x8, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x89207b4a8c8dd46a # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x9, x9, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xd822e5b645692e9b # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x10, x10, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x2a1ccb2024ff759e # initialize rs2
la x3, scratch # rs1 = base address 
sc.d x11, x11, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x50cb13ef9ba3fee5 # initialize rs2
la x19, scratch # rs1 = base address 
sc.d x12, x12, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x6c28d31aeb6152e5 # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x13, x13, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xdab7051a280cde4b # initialize rs2
la x31, scratch # rs1 = base address 
sc.d x14, x14, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x4abd8e2fcccf55b3 # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x15, x15, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x2c8ad392637624c1 # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x16, x16, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1512)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x35936ae19ec9ee95 # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x17, x17, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1520)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x9d67525de1e178d4 # initialize rs2
la x16, scratch # rs1 = base address 
sc.d x18, x18, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x65f3780639eee9f7 # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x19, x19, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1536)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xeb99f53fe7cfe0a4 # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x20, x20, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1544)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x6c22db55cbc471d5 # initialize rs2
la x8, scratch # rs1 = base address 
sc.d x21, x21, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1552)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x845c2d9acbd6f80f # initialize rs2
la x8, scratch # rs1 = base address 
sc.d x22, x22, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1560)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x8ba1311e2401abba # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x23, x23, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x30b2fd87cc692d04 # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x24, x24, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1576)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x570b8b3491f06b03 # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x25, x25, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x42846ddbe1048765 # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x26, x26, (x6) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1592)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xe016b8d25d5b174d # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x27, x27, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1600)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x7986452815e8430b # initialize rs2
la x30, scratch # rs1 = base address 
sc.d x28, x28, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1608)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xcdd90fddda7b8324 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x29, x29, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1616)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xcec21839b0cf192b # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x30, x30, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1624)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x3f6ccd4061c0f2eb # initialize rs2
la x11, scratch # rs1 = base address 
sc.d x31, x31, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x29157b6253011b7b # initialize rs2
la x1, scratch # rs1 = base address 
sc.d x1, x1, (x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1640)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3fc21b27cf76bb93 # initialize rs2
la x2, scratch # rs1 = base address 
sc.d x2, x2, (x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1648)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1a519159b21b0f91 # initialize rs2
la x3, scratch # rs1 = base address 
sc.d x3, x3, (x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1656)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1e0ce228986b42fa # initialize rs2
la x4, scratch # rs1 = base address 
sc.d x4, x4, (x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1664)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf4894ca5eaf70538 # initialize rs2
la x5, scratch # rs1 = base address 
sc.d x5, x5, (x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1672)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x44bcbc7a0fa00345 # initialize rs2
la x6, scratch # rs1 = base address 
sc.d x6, x6, (x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1680)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x50683311d2847c97 # initialize rs2
la x7, scratch # rs1 = base address 
sc.d x7, x7, (x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1688)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x8325b7e1bc0fb4a3 # initialize rs2
la x8, scratch # rs1 = base address 
sc.d x8, x8, (x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa925742eeda35f29 # initialize rs2
la x9, scratch # rs1 = base address 
sc.d x9, x9, (x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1704)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf5a9e0d2709f6418 # initialize rs2
la x10, scratch # rs1 = base address 
sc.d x10, x10, (x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1712)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe2f9dd7aeb8e394b # initialize rs2
la x11, scratch # rs1 = base address 
sc.d x11, x11, (x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1720)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe3f4e9a761065064 # initialize rs2
la x12, scratch # rs1 = base address 
sc.d x12, x12, (x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb1da9665c4dc80cb # initialize rs2
la x13, scratch # rs1 = base address 
sc.d x13, x13, (x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1736)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6f0591c62c1ff803 # initialize rs2
la x14, scratch # rs1 = base address 
sc.d x14, x14, (x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf86151f5831d277a # initialize rs2
la x15, scratch # rs1 = base address 
sc.d x15, x15, (x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1752)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x39b6432c14f4f1bf # initialize rs2
la x16, scratch # rs1 = base address 
sc.d x16, x16, (x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7585e49409e0d98a # initialize rs2
la x17, scratch # rs1 = base address 
sc.d x17, x17, (x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1768)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc1b8e3f943f371a4 # initialize rs2
la x18, scratch # rs1 = base address 
sc.d x18, x18, (x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1776)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdd9a8f13854e7df2 # initialize rs2
la x19, scratch # rs1 = base address 
sc.d x19, x19, (x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf17402f8756b5885 # initialize rs2
la x20, scratch # rs1 = base address 
sc.d x20, x20, (x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x4d05e0d5393850ff # initialize rs2
la x21, scratch # rs1 = base address 
sc.d x21, x21, (x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4b4fb760048b8591 # initialize rs2
la x22, scratch # rs1 = base address 
sc.d x22, x22, (x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x46160b88c5d2eea1 # initialize rs2
la x23, scratch # rs1 = base address 
sc.d x23, x23, (x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbdc98fa8fedaefc9 # initialize rs2
la x24, scratch # rs1 = base address 
sc.d x24, x24, (x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x9cabe8d0fb0319fb # initialize rs2
la x25, scratch # rs1 = base address 
sc.d x25, x25, (x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 32)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xfca85e874ef22b83 # initialize rs2
la x26, scratch # rs1 = base address 
sc.d x26, x26, (x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe30bc6b725eaba82 # initialize rs2
la x27, scratch # rs1 = base address 
sc.d x27, x27, (x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8f9204e71c62987b # initialize rs2
la x28, scratch # rs1 = base address 
sc.d x28, x28, (x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x79c7db2c1824c5e7 # initialize rs2
la x29, scratch # rs1 = base address 
sc.d x29, x29, (x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xad90d201ed40efe8 # initialize rs2
la x30, scratch # rs1 = base address 
sc.d x30, x30, (x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0abb25bfc371a12b # initialize rs2
la x31, scratch # rs1 = base address 
sc.d x31, x31, (x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_gpr/fpr_hazard nohaz test
la x7, scratch
add x28, x14, x29 # perform first operation
sc.d x21, x12, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
add x20, x23, x30 # perform first operation
sc.d x9, x14, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x10, scratch
add x2, x26, x19 # perform first operation
sc.d x18, x7, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x26, scratch
add x27, x27, x0 # perform first operation
sc.d x10, x27, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x8, scratch
add x27, x27, x0 # perform first operation
sc.d x19, x5, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x8, scratch
add x13, x13, x0 # perform first operation
sc.d x24, x15, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
add x25, x31, x5 # perform first operation
sc.d x25, x7, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x9, scratch
add x7, x11, x14 # perform first operation
sc.d x7, x19, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x28, scratch
add x27, x10, x31 # perform first operation
sc.d x27, x12, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x21, scratch
add x29, x10, x11 # perform first operation
sc.d x10, x14, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x10, scratch
add x15, x3, x27 # perform first operation
sc.d x27, x7, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x6, scratch
add x21, x8, x29 # perform first operation
sc.d x10, x5, (x6) # perform second (triggering) operation

 # sc.d.S
# sc.S
# custom tests for store conditional

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0x123456789ABCDEF0
    sc.d t1, t2, (t0)
    sc.d.rl t1, t2, (t0)
    sc.d.aqrl t1, t2, (t0)

# cp_custom_sc_lrsc
    li t3, 0x2345678998765432
    li t4, 0x3456789ABCDEF012
    li t5, 0x456789ABCDEF0123

    # should succeed
    lr.d t1, (t0)
    sc.d t2, t3, (t0)

    # should succeed
    lr.w t1, (t0)
    sc.d t2, t4, (t0)

    # should succeed
    lr.d t1, (t0)
    sc.w t2, t5, (t0)

    # should fail because of intervening sc
    lr.d t1, (t0)
    sc.d t2, t3, (t0) # succeeds
    sc.d t5, t4, (t0) # fails

# cp_custom_sc_addresses
    # loop over distances of 0 to 120 from lr to sc address
    li t6, 0        # initialize offset to 0
1:
    add t5, t0, t6      # scratch address + offset
    lr.d t1, (t0)       # load from reservation set
    sc.d t1, t3, (t5)   # try store conditional, should succeed if in same set
    sc.d t1, t3, (t5)   # try again, and it should fail this time

    # for RV64, also check different size lr vs. sc
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            sc.d t1, t3, (t5)
         #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
   
    addi t6, t6, 8      # increment offset
    slti t5, t6, 129    # offset <= 128
    bnez t5, 1b         # repeat until done

# cp_custom_sc_after_store
    # should not care about intervening stores
    lr.d t1, (t0)
    sb t3, 3(t0)      # store byte
    sc.d t5, t4, (t0) # succeeds

    lr.d t1, (t0)
    sh t3, 2(t0)      # store half
    sc.d t5, t4, (t0) # succeeds

    lr.d t1, (t0)
    sw t3, 4(t0)      # store word
    sc.d t5, t4, (t0) # succeeds

    lr.d t1, (t0)
    sd t3, 0(t0)      # store double
    sc.d t5, t4, (t0) # succeeds

# cp_custom_sc_after_load
    # should not care about intervening loads

    lr.w t1, (t0)
    lb t3, 3(t0)      # load byte
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lb t3, 128(t0)      # load byte
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lbu t3, 2(t0)      # load byte unsigned
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lbu t3, 128(t0)      # load byte unsigned
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lh t3, 2(t0)      # load half
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lh t3, 128(t0)      # load half
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lhu t3, 0(t0)      # load half unsigned
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lhu t3, 128(t0)      # load half unsigned
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lw t3, 0(t0)      # load word
    sc.d t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    lw t3, 128(t0)      # load word
    sc.d t5, t4, (t0) # succeeds

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            lwu t3, 0(t0)      # load word unsigned
            sc.d t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            lwu t3, 128(t0)      # load word unsigned
            sc.d t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            ld t3, 0(t0)      # load double
            sc.d t5, t4, (t0) # succeeds

            lr.w t1, (t0)
            ld t3, 128(t0)      # load double
            sc.d t5, t4, (t0) # succeeds

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
