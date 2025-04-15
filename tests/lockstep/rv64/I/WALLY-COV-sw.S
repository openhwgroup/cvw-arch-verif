///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sw.S
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
li x15, 0x1ec9c302994a9cba # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1243 # sub immediate from rs1 to counter offset
sw x15, -1243(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x5, 0x7dde71f54f262cf5 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 380 # sub immediate from rs1 to counter offset
sw x5, -380(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0x438d3f380e933dcb # initialize rs2
la x3, scratch # base address 
addi x3, x3, -148 # sub immediate from rs1 to counter offset
sw x30, 148(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xafc16a49550d64b1 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 674 # sub immediate from rs1 to counter offset
sw x30, -674(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x27, 0x14f77aeb534a6317 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 753 # sub immediate from rs1 to counter offset
sw x27, -753(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x8c31c85f4059c329 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1470 # sub immediate from rs1 to counter offset
sw x14, 1470(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x66c3080d62db324e # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1542 # sub immediate from rs1 to counter offset
sw x25, 1542(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x17, 0x91937b1be85d098a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1353 # sub immediate from rs1 to counter offset
sw x17, 1353(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0xd4f9d668ab1a413c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -824 # sub immediate from rs1 to counter offset
sw x5, 824(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0x3027d49711552883 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1076 # sub immediate from rs1 to counter offset
sw x30, -1076(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0x4363efdb0eefc761 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -933 # sub immediate from rs1 to counter offset
sw x29, 933(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x4f1349573da4d60f # initialize rs2
la x12, scratch # base address 
addi x12, x12, 556 # sub immediate from rs1 to counter offset
sw x25, -556(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x22, 0x2069ca02018d95f2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 337 # sub immediate from rs1 to counter offset
sw x22, -337(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0x9497146ecce6c915 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -856 # sub immediate from rs1 to counter offset
sw x27, 856(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x65134e8d4a01dc61 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1694 # sub immediate from rs1 to counter offset
sw x14, -1694(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x13, 0x927902c7ebfb3e5d # initialize rs2
la x16, scratch # base address 
addi x16, x16, 716 # sub immediate from rs1 to counter offset
sw x13, -716(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0xd22cbce4d7a68738 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 355 # sub immediate from rs1 to counter offset
sw x26, -355(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0xe34b5edd6525e85b # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1744 # sub immediate from rs1 to counter offset
sw x1, -1744(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x20, 0x207f405498190cfd # initialize rs2
la x19, scratch # base address 
addi x19, x19, 836 # sub immediate from rs1 to counter offset
sw x20, -836(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0x7555ca1ac7be5f4b # initialize rs2
la x20, scratch # base address 
addi x20, x20, -166 # sub immediate from rs1 to counter offset
sw x24, 166(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x3e3753c95cf2a85d # initialize rs2
la x21, scratch # base address 
addi x21, x21, -342 # sub immediate from rs1 to counter offset
sw x7, 342(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x6, 0xc7864b113a1582b7 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -855 # sub immediate from rs1 to counter offset
sw x6, 855(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0xa6d9ba23ea31bb55 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1855 # sub immediate from rs1 to counter offset
sw x30, -1855(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0xbea3fe1fc6bf2112 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 883 # sub immediate from rs1 to counter offset
sw x22, -883(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x23, 0xe71fc84fd779628e # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1539 # sub immediate from rs1 to counter offset
sw x23, -1539(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x24, 0x08e18b3dcba10c73 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1099 # sub immediate from rs1 to counter offset
sw x24, -1099(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x18, 0x1862ca6f43ed29b2 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 298 # sub immediate from rs1 to counter offset
sw x18, -298(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x31, 0xca361c8ef086a5f4 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1288 # sub immediate from rs1 to counter offset
sw x31, 1288(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x28, 0x36da8bead247edc8 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1699 # sub immediate from rs1 to counter offset
sw x28, 1699(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x19, 0x4c1b5bad3427de21 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1545 # sub immediate from rs1 to counter offset
sw x19, -1545(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x8, 0x87b9737b75d3e1dd # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1730 # sub immediate from rs1 to counter offset
sw x8, -1730(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x1a9800b7f7c5f234 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -501 # sub immediate from rs1 to counter offset
sw x0, 501(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xb50c53397fbbd633 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1699 # sub immediate from rs1 to counter offset
sw x1, -1699(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xe158a37074fe037b # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1440 # sub immediate from rs1 to counter offset
sw x2, -1440(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x36cf6fa8ca74cf0e # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1429 # sub immediate from rs1 to counter offset
sw x3, -1429(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xad7e476c04ec458c # initialize rs2
la x29, scratch # base address 
addi x29, x29, -291 # sub immediate from rs1 to counter offset
sw x4, 291(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x05e022c4897efdf9 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1740 # sub immediate from rs1 to counter offset
sw x5, -1740(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1ec04107fda6ea3c # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1851 # sub immediate from rs1 to counter offset
sw x6, 1851(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xef65eefcfa206737 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -853 # sub immediate from rs1 to counter offset
sw x7, 853(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xc9cdc496e1e7e640 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -466 # sub immediate from rs1 to counter offset
sw x8, 466(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xb5784fc7eca0ca7f # initialize rs2
la x18, scratch # base address 
addi x18, x18, 977 # sub immediate from rs1 to counter offset
sw x9, -977(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xb928116d7c78b83a # initialize rs2
la x21, scratch # base address 
addi x21, x21, -356 # sub immediate from rs1 to counter offset
sw x10, 356(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xea86e90469bb647a # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1014 # sub immediate from rs1 to counter offset
sw x11, 1014(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1429b87619f718ac # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1987 # sub immediate from rs1 to counter offset
sw x12, -1987(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x8d6718ddaf2368e4 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 830 # sub immediate from rs1 to counter offset
sw x13, -830(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x829c837eaf7edf81 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 92 # sub immediate from rs1 to counter offset
sw x14, -92(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xff459a32ad82cb9a # initialize rs2
la x18, scratch # base address 
addi x18, x18, -893 # sub immediate from rs1 to counter offset
sw x15, 893(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x0ae95af07abbd135 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -725 # sub immediate from rs1 to counter offset
sw x16, 725(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x679b13c9259b26b9 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1284 # sub immediate from rs1 to counter offset
sw x17, -1284(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x5580946281c29e44 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1386 # sub immediate from rs1 to counter offset
sw x18, -1386(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x73303c1a6eaa0ae6 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1806 # sub immediate from rs1 to counter offset
sw x19, 1806(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xcb3fc7c87d28eed4 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -3 # sub immediate from rs1 to counter offset
sw x20, 3(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x2254a5fe0761fb1c # initialize rs2
la x23, scratch # base address 
addi x23, x23, -122 # sub immediate from rs1 to counter offset
sw x21, 122(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x5a202df517eaecbf # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1465 # sub immediate from rs1 to counter offset
sw x22, -1465(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x0ceddd1a068672ff # initialize rs2
la x17, scratch # base address 
addi x17, x17, 770 # sub immediate from rs1 to counter offset
sw x23, -770(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x65b19d2a7e1ec12d # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1364 # sub immediate from rs1 to counter offset
sw x24, -1364(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x3d88a73e8f35566e # initialize rs2
la x16, scratch # base address 
addi x16, x16, 751 # sub immediate from rs1 to counter offset
sw x25, -751(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x6ff415637257dffc # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1281 # sub immediate from rs1 to counter offset
sw x26, 1281(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x62972c601db5b892 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1218 # sub immediate from rs1 to counter offset
sw x27, -1218(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xc2c68b8a0ca61336 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1371 # sub immediate from rs1 to counter offset
sw x28, -1371(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x76960acc35994f92 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 774 # sub immediate from rs1 to counter offset
sw x29, -774(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xd69d5604ad895ba3 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1000 # sub immediate from rs1 to counter offset
sw x30, -1000(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x44225c1edd84fe12 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 154 # sub immediate from rs1 to counter offset
sw x31, -154(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x0000000000000000 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1680 # sub immediate from rs1 to counter offset
sw x1, 1680(x3) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x0000000000000001 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1761 # sub immediate from rs1 to counter offset
sw x8, 1761(x24) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x28, 0x0000000000000002 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1364 # sub immediate from rs1 to counter offset
sw x28, 1364(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x16, 0x8000000000000000 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -303 # sub immediate from rs1 to counter offset
sw x16, 303(x1) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1717 # sub immediate from rs1 to counter offset
sw x13, 1717(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0x7fffffffffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -350 # sub immediate from rs1 to counter offset
sw x28, 350(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs2
la x20, scratch # base address 
addi x20, x20, -669 # sub immediate from rs1 to counter offset
sw x1, 669(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1053 # sub immediate from rs1 to counter offset
sw x18, -1053(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs2
la x28, scratch # base address 
addi x28, x28, 673 # sub immediate from rs1 to counter offset
sw x31, -673(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -462 # sub immediate from rs1 to counter offset
sw x7, 462(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1265 # sub immediate from rs1 to counter offset
sw x21, 1265(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 506 # sub immediate from rs1 to counter offset
sw x12, -506(x1) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1620 # sub immediate from rs1 to counter offset
sw x28, 1620(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x24, 0x00000000fffffffe # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1448 # sub immediate from rs1 to counter offset
sw x24, -1448(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1977 # sub immediate from rs1 to counter offset
sw x19, 1977(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0x0000000100000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 320 # sub immediate from rs1 to counter offset
sw x31, -320(x8) # perform operation 

# Testcase cp_imm_corners
li x14, 0xa869aeb0edb5074b # initialize rs2
la x2, scratch # base address 
addi x2, x2, 0 # sub immediate from rs1 to counter offset
sw x14, 0(x2) # perform operation 

# Testcase cp_imm_corners
li x20, 0x04ded4660598871e # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1 # sub immediate from rs1 to counter offset
sw x20, 1(x1) # perform operation 

# Testcase cp_imm_corners
li x15, 0x25a3c0c2bdadf7c8 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -2 # sub immediate from rs1 to counter offset
sw x15, 2(x5) # perform operation 

# Testcase cp_imm_corners
li x20, 0xce58193d6f97533c # initialize rs2
la x25, scratch # base address 
addi x25, x25, -3 # sub immediate from rs1 to counter offset
sw x20, 3(x25) # perform operation 

# Testcase cp_imm_corners
li x29, 0xf23dda6c44d1f553 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -4 # sub immediate from rs1 to counter offset
sw x29, 4(x3) # perform operation 

# Testcase cp_imm_corners
li x24, 0x6748695f480a7cb6 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -8 # sub immediate from rs1 to counter offset
sw x24, 8(x1) # perform operation 

# Testcase cp_imm_corners
li x22, 0x9a2c5749f43f8c3a # initialize rs2
la x2, scratch # base address 
addi x2, x2, -16 # sub immediate from rs1 to counter offset
sw x22, 16(x2) # perform operation 

# Testcase cp_imm_corners
li x7, 0x3994839a26092589 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -32 # sub immediate from rs1 to counter offset
sw x7, 32(x29) # perform operation 

# Testcase cp_imm_corners
li x8, 0x4d95337834cb3d54 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -64 # sub immediate from rs1 to counter offset
sw x8, 64(x27) # perform operation 

# Testcase cp_imm_corners
li x8, 0xe8ea418ad32ec038 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -128 # sub immediate from rs1 to counter offset
sw x8, 128(x9) # perform operation 

# Testcase cp_imm_corners
li x1, 0x4c4903e0bc3d9703 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -256 # sub immediate from rs1 to counter offset
sw x1, 256(x26) # perform operation 

# Testcase cp_imm_corners
li x3, 0x6366c3299fa54278 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -512 # sub immediate from rs1 to counter offset
sw x3, 512(x30) # perform operation 

# Testcase cp_imm_corners
li x7, 0x86b586d14c97651c # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1023 # sub immediate from rs1 to counter offset
sw x7, 1023(x11) # perform operation 

# Testcase cp_imm_corners
li x7, 0xb2f52f5c0762a0a5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1024 # sub immediate from rs1 to counter offset
sw x7, 1024(x12) # perform operation 

# Testcase cp_imm_corners
li x11, 0x6fb6b14b7eacc09a # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1795 # sub immediate from rs1 to counter offset
sw x11, 1795(x7) # perform operation 

# Testcase cp_imm_corners
li x31, 0xf13442f9b5157f72 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2047 # sub immediate from rs1 to counter offset
sw x31, 2047(x13) # perform operation 

# Testcase cp_imm_corners
li x16, 0x27fa5d826185370e # initialize rs2
la x31, scratch # base address 
addi x31, x31, 2047 # increment rs1 by 2047 
addi x31, x31, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sw x16, -2048(x31) # perform operation 

# Testcase cp_imm_corners
li x11, 0x1eb8e04859551468 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 2047 # sub immediate from rs1 to counter offset
sw x11, -2047(x6) # perform operation 

# Testcase cp_imm_corners
li x25, 0x8ac91bfe6dbe92b2 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 2 # sub immediate from rs1 to counter offset
sw x25, -2(x15) # perform operation 

# Testcase cp_imm_corners
li x10, 0x5daa160c97d76e06 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sw x10, -1(x11) # perform operation 

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, 4
add x29, x12, x19 # perform first operation
sw x30, -4(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
addi x25, x25, 86
add x7, x6, x28 # perform first operation
sw x22, -86(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
addi x20, x20, 1206
add x3, x26, x5 # perform first operation
sw x7, -1206(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x26, scratch
addi x26, x26, 1482
add x16, x16, x0 # perform first operation
sw x25, -1482(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
addi x20, x20, 225
add x26, x26, x0 # perform first operation
sw x26, -225(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, -1871
add x5, x5, x0 # perform first operation
sw x24, 1871(x10) # perform second (triggering) operation

.EQU SIGSIZE,0


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
