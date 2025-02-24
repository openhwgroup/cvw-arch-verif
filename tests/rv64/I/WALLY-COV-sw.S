///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.519539
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0xd51287f4e55e8d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc646014531ed9032 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -833 # sub immediate from rs1 to counter offset
sw x21, 833(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x90b14146f427a6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd94f3a984eb18bef # initialize rs2
la x2, scratch # base address 
addi x2, x2, 351 # sub immediate from rs1 to counter offset
sw x18, -351(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0xf3934987f5f16104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9365cb927cc51bfe # initialize rs2
la x3, scratch # base address 
addi x3, x3, -313 # sub immediate from rs1 to counter offset
sw x11, 313(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
li x12, 0xb53d420027c7e182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa97f25e499525fa7 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1934 # sub immediate from rs1 to counter offset
sw x27, 1934(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0x2a2a902b4cd63a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x342b5b44e47ca868 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -231 # sub immediate from rs1 to counter offset
sw x16, 231(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x24, 0xf5972c31cba550d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x829c5f25fbe7065c # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1994 # sub immediate from rs1 to counter offset
sw x17, 1994(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
li x12, 0xcb73f8e543cd21a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x56c87d0f2c5bab30 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1302 # sub immediate from rs1 to counter offset
sw x3, -1302(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0xe13b6abe5750f540 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6eb291d8317a228c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1899 # sub immediate from rs1 to counter offset
sw x30, 1899(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x28058b47e5830869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf4b3801a88583dde # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1634 # sub immediate from rs1 to counter offset
sw x19, -1634(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x29, 0x108db79f1b592561 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa7fe2a52662ed80a # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1985 # sub immediate from rs1 to counter offset
sw x30, -1985(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x20, 0x349a98daebb19f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf50db1f21d122aef # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1736 # sub immediate from rs1 to counter offset
sw x5, 1736(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x14, 0x177e50280c2c9718 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5f853595da2ff324 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2025 # sub immediate from rs1 to counter offset
sw x2, 2025(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0xba9e000397a2317b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9efc06ff534c1255 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1230 # sub immediate from rs1 to counter offset
sw x5, 1230(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0x0d934b1d42c0ab3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3ad8c330e59b9a1c # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sw x7, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x17, 0x8b3bef9bd30e200c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x950e550b886fa040 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 269 # sub immediate from rs1 to counter offset
sw x2, -269(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x30, 0xe60bae598a0f12ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x869817fc27dbd399 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1150 # sub immediate from rs1 to counter offset
sw x13, 1150(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x5, 0x52e694384dd88ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9fe1beca6c3e32b6 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 521 # sub immediate from rs1 to counter offset
sw x18, -521(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0x0b8986216685bdba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb5765c07ded88bc7 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1772 # sub immediate from rs1 to counter offset
sw x28, 1772(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x30, 0x65970043f497b03b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3971535cc6e6ff65 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1691 # sub immediate from rs1 to counter offset
sw x8, 1691(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0x947d243491657b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xec3d90d7ec42a26d # initialize rs2
la x20, scratch # base address 
addi x20, x20, 585 # sub immediate from rs1 to counter offset
sw x2, -585(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x4, 0x0500c8b42b2aa1b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xff9896d35fa7d87d # initialize rs2
la x21, scratch # base address 
addi x21, x21, -698 # sub immediate from rs1 to counter offset
sw x9, 698(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x29, 0xa39764e94e05deb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb091578cf12bfe2a # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1771 # sub immediate from rs1 to counter offset
sw x30, 1771(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x21, 0xf313c7e38fdd8b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7146aab2260fc438 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -528 # sub immediate from rs1 to counter offset
sw x29, 528(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x8d9aa581bfa5b6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe4942716aab59ed1 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -589 # sub immediate from rs1 to counter offset
sw x3, 589(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x30, 0xee1bef7d624ebf9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x373cdbc302710d7b # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1608 # sub immediate from rs1 to counter offset
sw x1, -1608(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x19, 0x3555bd46ac949f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe69dc04217b84469 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 597 # sub immediate from rs1 to counter offset
sw x23, -597(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x6f7baab8bacb29cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf7358a55ea22e230 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1299 # sub immediate from rs1 to counter offset
sw x17, -1299(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x4e56430739c2ca03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc79334b18f59c8e7 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1171 # sub immediate from rs1 to counter offset
sw x10, -1171(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0xb27d1e0471db0eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6a73b7d336a6ab2c # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1692 # sub immediate from rs1 to counter offset
sw x26, 1692(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x07cdafdb61da58d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6a40ce12a03b975b # initialize rs2
la x30, scratch # base address 
addi x30, x30, 283 # sub immediate from rs1 to counter offset
sw x18, -283(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0x82adf9aed106ce82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd533b7416e8c21ff # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1646 # sub immediate from rs1 to counter offset
sw x13, -1646(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x7351a399bd6f5326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x358b260d889a7517 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -561 # sub immediate from rs1 to counter offset
sw x0, 561(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0x8c97781d0f9172b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3e2ba1a50d32dc0f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1820 # sub immediate from rs1 to counter offset
sw x1, 1820(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0x4dae8a5e83722d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0f4aaf48ca83f514 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1585 # sub immediate from rs1 to counter offset
sw x2, -1585(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0x4ff977a9b7d41554 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0dbc8b318f60943c # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1092 # sub immediate from rs1 to counter offset
sw x3, -1092(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
li x9, 0xd9293ccedb4f4b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x872b72ee1270b102 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 948 # sub immediate from rs1 to counter offset
sw x4, -948(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
li x24, 0xab9dce92c150afa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x883ae874d0f0cbf9 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1460 # sub immediate from rs1 to counter offset
sw x5, 1460(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
li x19, 0x9f44bec11fe73a2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf1e94a183cfe9853 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1707 # sub immediate from rs1 to counter offset
sw x6, 1707(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x13, 0x15875043ce436409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x51dca95800b2363d # initialize rs2
la x6, scratch # base address 
addi x6, x6, 2017 # sub immediate from rs1 to counter offset
sw x7, -2017(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0x8aad9814d4f5c529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x516f0c221dc814ec # initialize rs2
la x10, scratch # base address 
addi x10, x10, -92 # sub immediate from rs1 to counter offset
sw x8, 92(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0xc87721a837d62b87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xeca92a8221fe32be # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1946 # sub immediate from rs1 to counter offset
sw x9, -1946(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x87a39d3080fd459a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x81c252e61cde98f4 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1866 # sub immediate from rs1 to counter offset
sw x10, -1866(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0xa45acbc6f5e4bec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f62cd70b15ba399 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 764 # sub immediate from rs1 to counter offset
sw x11, -764(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x56ba37c3df2cca72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc47c0919f4c79674 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1902 # sub immediate from rs1 to counter offset
sw x12, -1902(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0x861c539db21b8a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8d698864691c3c95 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1689 # sub immediate from rs1 to counter offset
sw x13, -1689(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x25, 0x5f78861ec6500f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x22b374b899f9d096 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1608 # sub immediate from rs1 to counter offset
sw x14, -1608(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x13ddb940af599577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8d963c9d0cc94d55 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1565 # sub immediate from rs1 to counter offset
sw x15, 1565(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x4, 0xf5f979612ea27fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xacb69376ab09ab98 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1713 # sub immediate from rs1 to counter offset
sw x16, -1713(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0xe454fb2d152eb7fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6ffb1738cbc7b5cc # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1935 # sub immediate from rs1 to counter offset
sw x17, -1935(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0x4fec4e8b21ce62a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3f43701e0b11a9e1 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 587 # sub immediate from rs1 to counter offset
sw x18, -587(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x479f695d418d3bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xafe2d4d9d170ff1e # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1307 # sub immediate from rs1 to counter offset
sw x19, 1307(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x3c5e274f77f54da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa6c40783dd55c90a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1110 # sub immediate from rs1 to counter offset
sw x20, 1110(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x4, 0x2b069ca6d08da3e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xecd32501f12b7d69 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -555 # sub immediate from rs1 to counter offset
sw x21, 555(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x74e2e6b1d923be89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x084b106b71f55bb2 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -2000 # sub immediate from rs1 to counter offset
sw x22, 2000(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x28, 0xf40bda7cb16f818c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd6a2ae70e5bd004b # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1206 # sub immediate from rs1 to counter offset
sw x23, -1206(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0xfa84c4791c191766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55f0d2afd34db2a9 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -588 # sub immediate from rs1 to counter offset
sw x24, 588(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x4, 0x4cb3a3a66c68b4cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd0fd1a0667848b2f # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1304 # sub immediate from rs1 to counter offset
sw x25, -1304(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x7, 0xe6fcab6e31b357a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5366db09d0d13977 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 623 # sub immediate from rs1 to counter offset
sw x26, -623(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x11, 0x280556b62b8eebf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd2681c6927459bc3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1243 # sub immediate from rs1 to counter offset
sw x27, -1243(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x6bc4b3378ccfcd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb058a1b53815193a # initialize rs2
la x21, scratch # base address 
addi x21, x21, 273 # sub immediate from rs1 to counter offset
sw x28, -273(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0xb537b3d4ced27fff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd4b4609c48304c32 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1172 # sub immediate from rs1 to counter offset
sw x29, 1172(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x21, 0x867a4e6170624593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaac1f6db2831b227 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1927 # sub immediate from rs1 to counter offset
sw x30, 1927(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x6a41e55736d7f1b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5d282876fb16cb72 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -138 # sub immediate from rs1 to counter offset
sw x31, 138(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0xa166a22160ab5204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1441 # sub immediate from rs1 to counter offset
sw x28, -1441(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x7966c1789ff4d599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1704 # sub immediate from rs1 to counter offset
sw x8, 1704(x24) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0xb9044fc0a6d31eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -717 # sub immediate from rs1 to counter offset
sw x5, 717(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x17, 0xfd6a5142e11bcb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1239 # sub immediate from rs1 to counter offset
sw x27, -1239(x23) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x23, 0xac6f94fd6bff7bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 366 # sub immediate from rs1 to counter offset
sw x27, -366(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x19, 0xee3dc7acebef926e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs2
la x29, scratch # base address 
addi x29, x29, 752 # sub immediate from rs1 to counter offset
sw x12, -752(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x15, 0x89d309292eba58e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs2
la x3, scratch # base address 
addi x3, x3, 140 # sub immediate from rs1 to counter offset
sw x9, -140(x3) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0xd35892ead971e016 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1471 # sub immediate from rs1 to counter offset
sw x26, -1471(x7) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x22, 0xb833fb90a2aa7fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs2
la x20, scratch # base address 
addi x20, x20, -163 # sub immediate from rs1 to counter offset
sw x6, 163(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x20, 0x47e1f5ade0578b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 677 # sub immediate from rs1 to counter offset
sw x2, -677(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xa4ee1074f18332cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x6, scratch # base address 
addi x6, x6, 722 # sub immediate from rs1 to counter offset
sw x22, -722(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x17, 0xf9811b9a8c5b1082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -831 # sub immediate from rs1 to counter offset
sw x20, 831(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xd03e3ff98047e6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1194 # sub immediate from rs1 to counter offset
sw x8, -1194(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0xb33163d955538a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1368 # sub immediate from rs1 to counter offset
sw x14, -1368(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x86bd961b9572c4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1602 # sub immediate from rs1 to counter offset
sw x30, -1602(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x6, 0xfbf50493dd6df62d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1189 # sub immediate from rs1 to counter offset
sw x8, 1189(x30) # perform operation 

# Testcase cp_imm_zero
li x3, 0x3e0522f129e6043b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfb0e0296859037f9 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sw x1, 0(x17) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
