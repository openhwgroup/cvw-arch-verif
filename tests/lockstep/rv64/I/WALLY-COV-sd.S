///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sd.S
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
li x23, 0x71d2419621165f07 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 31 # sub immediate from rs1 to counter offset
sd x23, -31(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x25, 0xc656cd98a27f0808 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1989 # sub immediate from rs1 to counter offset
sd x25, -1989(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x7, 0xd95f3907f1cbee15 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -836 # sub immediate from rs1 to counter offset
sd x7, 836(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xbfff27cbc039ccda # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1232 # sub immediate from rs1 to counter offset
sd x13, -1232(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xd9e9463fabc5da1c # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1633 # sub immediate from rs1 to counter offset
sd x11, 1633(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x6ad42667164ced27 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 81 # sub immediate from rs1 to counter offset
sd x14, -81(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x128eafa024285243 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -836 # sub immediate from rs1 to counter offset
sd x19, 836(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x20, 0xc92a671916ff159f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1314 # sub immediate from rs1 to counter offset
sd x20, 1314(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0xe7e652268e5b38d5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 238 # sub immediate from rs1 to counter offset
sd x27, -238(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0x60f13d21a4b723fd # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1513 # sub immediate from rs1 to counter offset
sd x24, 1513(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x2, 0x711b7adbdfdf625c # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1072 # sub immediate from rs1 to counter offset
sd x2, -1072(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x58f31d510f712c2c # initialize rs2
la x12, scratch # base address 
addi x12, x12, 292 # sub immediate from rs1 to counter offset
sd x13, -292(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x034b6214b688ca64 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -336 # sub immediate from rs1 to counter offset
sd x10, 336(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x2e271593ecb4f886 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1216 # sub immediate from rs1 to counter offset
sd x10, 1216(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0x889cf0f7eca01215 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 690 # sub immediate from rs1 to counter offset
sd x29, -690(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0xc9c02322bd3dd5b1 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1135 # sub immediate from rs1 to counter offset
sd x18, -1135(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0x818c26731b9bad62 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 817 # sub immediate from rs1 to counter offset
sd x28, -817(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0xa038a554505fbc44 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 600 # sub immediate from rs1 to counter offset
sd x30, -600(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x2, 0x35db2f9a8fcbe6bb # initialize rs2
la x19, scratch # base address 
addi x19, x19, 874 # sub immediate from rs1 to counter offset
sd x2, -874(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x17, 0xca4a1f1c78bfe037 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1213 # sub immediate from rs1 to counter offset
sd x17, 1213(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x25, 0xb18d1cd649012d66 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -875 # sub immediate from rs1 to counter offset
sd x25, 875(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0x505f3912d7213edc # initialize rs2
la x22, scratch # base address 
addi x22, x22, 56 # sub immediate from rs1 to counter offset
sd x7, -56(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0xc53dc9ad5431ee53 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1540 # sub immediate from rs1 to counter offset
sd x30, -1540(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0x70fbe8e3a9cfebf5 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1058 # sub immediate from rs1 to counter offset
sd x5, -1058(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x14, 0x5cd5b1a99934e73e # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1389 # sub immediate from rs1 to counter offset
sd x14, -1389(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0x180529d85a8696b8 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1657 # sub immediate from rs1 to counter offset
sd x11, -1657(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x22, 0x468d67343ecb4fd4 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -593 # sub immediate from rs1 to counter offset
sd x22, 593(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0xdf3670f078d1644c # initialize rs2
la x28, scratch # base address 
addi x28, x28, 588 # sub immediate from rs1 to counter offset
sd x29, -588(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0x604acb95a6e82436 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 445 # sub immediate from rs1 to counter offset
sd x18, -445(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x104463f3ac2175fb # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1302 # sub immediate from rs1 to counter offset
sd x3, 1302(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0xae3d933de139cc72 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -2044 # sub immediate from rs1 to counter offset
sd x11, 2044(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xc3a926f2f42295ab # initialize rs2
la x29, scratch # base address 
addi x29, x29, -583 # sub immediate from rs1 to counter offset
sd x0, 583(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x281cae4e4ae1d8a7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 571 # sub immediate from rs1 to counter offset
sd x1, -571(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x0f84822c1c362b51 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 656 # sub immediate from rs1 to counter offset
sd x2, -656(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xff700ca9426b61f3 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1518 # sub immediate from rs1 to counter offset
sd x3, 1518(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa1e53afb28ee8cd9 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -173 # sub immediate from rs1 to counter offset
sd x4, 173(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x89268d98f1590771 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1063 # sub immediate from rs1 to counter offset
sd x5, -1063(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5be5c52b48b7b864 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1529 # sub immediate from rs1 to counter offset
sd x6, 1529(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x010c6d85419bf68e # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1650 # sub immediate from rs1 to counter offset
sd x7, 1650(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x0966b11edd800ee2 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1794 # sub immediate from rs1 to counter offset
sd x8, -1794(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x2a3aeb87db11a280 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -213 # sub immediate from rs1 to counter offset
sd x9, 213(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x6a422dfe8f5d6470 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -657 # sub immediate from rs1 to counter offset
sd x10, 657(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x73bafb3f2d8bdf5b # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1191 # sub immediate from rs1 to counter offset
sd x11, 1191(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x82a64244b6070dda # initialize rs2
la x6, scratch # base address 
addi x6, x6, -173 # sub immediate from rs1 to counter offset
sd x12, 173(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x68047ecd7ef057bf # initialize rs2
la x9, scratch # base address 
addi x9, x9, -239 # sub immediate from rs1 to counter offset
sd x13, 239(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x168b01905a17db00 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -554 # sub immediate from rs1 to counter offset
sd x14, 554(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xcd366b995a136f3c # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1001 # sub immediate from rs1 to counter offset
sd x15, -1001(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x26779f6711f7e301 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1586 # sub immediate from rs1 to counter offset
sd x16, -1586(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x0db85fca3e9cedd4 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1023 # sub immediate from rs1 to counter offset
sd x17, 1023(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xd0fc4e211593d38b # initialize rs2
la x23, scratch # base address 
addi x23, x23, 331 # sub immediate from rs1 to counter offset
sd x18, -331(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x6f6a9f9671be3cbc # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1101 # sub immediate from rs1 to counter offset
sd x19, 1101(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x3d24ade06ae961e5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1660 # sub immediate from rs1 to counter offset
sd x20, -1660(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x30e846621ca61efc # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1049 # sub immediate from rs1 to counter offset
sd x21, 1049(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x08fae2df947d9cee # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1678 # sub immediate from rs1 to counter offset
sd x22, -1678(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x21461e08b12fbb4f # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1237 # sub immediate from rs1 to counter offset
sd x23, -1237(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x2c06fb6ef63c4b2d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1071 # sub immediate from rs1 to counter offset
sd x24, 1071(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x68f3d78a053905c9 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1645 # sub immediate from rs1 to counter offset
sd x25, 1645(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x5e6f075e2f362b6c # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1403 # sub immediate from rs1 to counter offset
sd x26, -1403(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x279f8efda8246bfb # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1992 # sub immediate from rs1 to counter offset
sd x27, -1992(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x7985634010494fe2 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -437 # sub immediate from rs1 to counter offset
sd x28, 437(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xbb96639a0815f7b5 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1578 # sub immediate from rs1 to counter offset
sd x29, 1578(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x3996569fb4d7a905 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 28 # sub immediate from rs1 to counter offset
sd x30, -28(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x01bd2daaa1ba565a # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1459 # sub immediate from rs1 to counter offset
sd x31, 1459(x23) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x0000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -560 # sub immediate from rs1 to counter offset
sd x22, 560(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0x0000000000000001 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1869 # sub immediate from rs1 to counter offset
sd x26, 1869(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x0000000000000002 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 35 # sub immediate from rs1 to counter offset
sd x14, -35(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -361 # sub immediate from rs1 to counter offset
sd x27, 361(x30) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x5, 0x8000000000000001 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1323 # sub immediate from rs1 to counter offset
sd x5, -1323(x31) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1099 # sub immediate from rs1 to counter offset
sd x12, 1099(x22) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs2
la x6, scratch # base address 
addi x6, x6, -343 # sub immediate from rs1 to counter offset
sd x8, 343(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs2
la x29, scratch # base address 
addi x29, x29, -67 # sub immediate from rs1 to counter offset
sd x5, 67(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs2
la x27, scratch # base address 
addi x27, x27, -507 # sub immediate from rs1 to counter offset
sd x5, 507(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x17, 0x5bbc887763ae86f2 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -661 # sub immediate from rs1 to counter offset
sd x17, 661(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x24, scratch # base address 
addi x24, x24, 790 # sub immediate from rs1 to counter offset
sd x30, -790(x24) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x30, 0x5555555555555555 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -637 # sub immediate from rs1 to counter offset
sd x30, 637(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0x00000000ffffffff # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1321 # sub immediate from rs1 to counter offset
sd x23, -1321(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x5, 0x00000000fffffffe # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1818 # sub immediate from rs1 to counter offset
sd x5, 1818(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1669 # sub immediate from rs1 to counter offset
sd x21, -1669(x24) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1508 # sub immediate from rs1 to counter offset
sd x20, 1508(x31) # perform operation 

# Testcase cp_imm_corners
li x31, 0x9aa4f6003a380a3d # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sd x31, 0(x25) # perform operation 

# Testcase cp_imm_corners
li x31, 0xcdf675c47c35e0f0 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1 # sub immediate from rs1 to counter offset
sd x31, 1(x25) # perform operation 

# Testcase cp_imm_corners
li x28, 0xfb91edffe7c38df0 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -2 # sub immediate from rs1 to counter offset
sd x28, 2(x6) # perform operation 

# Testcase cp_imm_corners
li x27, 0xe1e8cd89dd86cf8d # initialize rs2
la x18, scratch # base address 
addi x18, x18, -3 # sub immediate from rs1 to counter offset
sd x27, 3(x18) # perform operation 

# Testcase cp_imm_corners
li x18, 0xfa41ca50f85c7dc7 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -4 # sub immediate from rs1 to counter offset
sd x18, 4(x31) # perform operation 

# Testcase cp_imm_corners
li x10, 0xa27f41523bb7a71a # initialize rs2
la x28, scratch # base address 
addi x28, x28, -8 # sub immediate from rs1 to counter offset
sd x10, 8(x28) # perform operation 

# Testcase cp_imm_corners
li x1, 0x71262324b8704fef # initialize rs2
la x9, scratch # base address 
addi x9, x9, -16 # sub immediate from rs1 to counter offset
sd x1, 16(x9) # perform operation 

# Testcase cp_imm_corners
li x29, 0xde6404d7e8736b56 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -32 # sub immediate from rs1 to counter offset
sd x29, 32(x21) # perform operation 

# Testcase cp_imm_corners
li x16, 0xec9f513e6a0f93c4 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -64 # sub immediate from rs1 to counter offset
sd x16, 64(x17) # perform operation 

# Testcase cp_imm_corners
li x25, 0x5ac22c1b205c9b64 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -128 # sub immediate from rs1 to counter offset
sd x25, 128(x17) # perform operation 

# Testcase cp_imm_corners
li x26, 0xfcabd317529989b4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -256 # sub immediate from rs1 to counter offset
sd x26, 256(x9) # perform operation 

# Testcase cp_imm_corners
li x27, 0x8949aa6ab503ba94 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -512 # sub immediate from rs1 to counter offset
sd x27, 512(x23) # perform operation 

# Testcase cp_imm_corners
li x11, 0x3ef659ef65986783 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1023 # sub immediate from rs1 to counter offset
sd x11, 1023(x29) # perform operation 

# Testcase cp_imm_corners
li x25, 0x216c007475b2478f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1024 # sub immediate from rs1 to counter offset
sd x25, 1024(x13) # perform operation 

# Testcase cp_imm_corners
li x29, 0x6d9a36bb13d7cbff # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1795 # sub immediate from rs1 to counter offset
sd x29, 1795(x6) # perform operation 

# Testcase cp_imm_corners
li x18, 0xe0740ace01755abb # initialize rs2
la x28, scratch # base address 
addi x28, x28, -2047 # sub immediate from rs1 to counter offset
sd x18, 2047(x28) # perform operation 

# Testcase cp_imm_corners
li x2, 0x9ea7844ce1ef8780 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 2047 # increment rs1 by 2047 
addi x17, x17, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x2, -2048(x17) # perform operation 

# Testcase cp_imm_corners
li x14, 0x02fae5cfb147dcf8 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 2047 # sub immediate from rs1 to counter offset
sd x14, -2047(x3) # perform operation 

# Testcase cp_imm_corners
li x30, 0x998611599809e1f6 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 2 # sub immediate from rs1 to counter offset
sd x30, -2(x22) # perform operation 

# Testcase cp_imm_corners
li x29, 0x6a52ec83fc73c5c6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sd x29, -1(x11) # perform operation 

# Testcase cp_gpr/fpr_hazard nohaz test
la x23, scratch
addi x23, x23, -1274
add x18, x17, x9 # perform first operation
sd x29, 1274(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x28, scratch
addi x28, x28, 93
add x25, x8, x13 # perform first operation
sd x1, -93(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
addi x1, x1, -302
add x13, x9, x31 # perform first operation
sd x22, 302(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
addi x31, x31, 683
add x31, x31, x0 # perform first operation
sd x10, -683(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
addi x31, x31, -897
add x19, x19, x0 # perform first operation
sd x17, 897(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, 573
add x30, x30, x0 # perform first operation
sd x14, -573(x10) # perform second (triggering) operation

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
