///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.978020
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x27, 0x921903d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcdee9b8c # initialize rs2
la x1, scratch # base address 
addi x1, x1, -965 # sub immediate from rs1 to counter offset
sh x8, 965(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x7, 0x9f1c0b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x883bedca # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1368 # sub immediate from rs1 to counter offset
sh x5, -1368(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x0f6e835e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbe7554d0 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -831 # sub immediate from rs1 to counter offset
sh x15, 831(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
li x23, 0x7f70e11e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9bdfe49c # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1051 # sub immediate from rs1 to counter offset
sh x10, -1051(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x27, 0xce2394ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6195a038 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 462 # sub immediate from rs1 to counter offset
sh x16, -462(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x4, 0xea61072a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc12ba779 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1011 # sub immediate from rs1 to counter offset
sh x16, -1011(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0x57b10bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd50a8187 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1285 # sub immediate from rs1 to counter offset
sh x30, 1285(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x0b3539cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2717ec95 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -397 # sub immediate from rs1 to counter offset
sh x12, 397(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x950cc5e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x79c846ea # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1257 # sub immediate from rs1 to counter offset
sh x19, 1257(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0xeaee6a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb8555212 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1516 # sub immediate from rs1 to counter offset
sh x31, 1516(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0xd0ff2dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x856b1dbf # initialize rs2
la x11, scratch # base address 
addi x11, x11, -608 # sub immediate from rs1 to counter offset
sh x21, 608(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x70ee528f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xef501446 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1186 # sub immediate from rs1 to counter offset
sh x3, 1186(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x412e4dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x041b5235 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1956 # sub immediate from rs1 to counter offset
sh x15, 1956(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0xb56f9ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd2a19a7f # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1073 # sub immediate from rs1 to counter offset
sh x7, -1073(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0x896588b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xca776583 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1693 # sub immediate from rs1 to counter offset
sh x29, -1693(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x17, 0x09a043ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x209e876e # initialize rs2
la x16, scratch # base address 
addi x16, x16, 404 # sub immediate from rs1 to counter offset
sh x7, -404(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x56aaf926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa0fba8fe # initialize rs2
la x17, scratch # base address 
addi x17, x17, -33 # sub immediate from rs1 to counter offset
sh x11, 33(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0x89893510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d856779 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1848 # sub immediate from rs1 to counter offset
sh x28, 1848(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0x1a958710 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7203f3d2 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1118 # sub immediate from rs1 to counter offset
sh x14, 1118(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0x6a16b5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa305570a # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1117 # sub immediate from rs1 to counter offset
sh x9, -1117(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x11, 0xea3f0abb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x96647541 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1412 # sub immediate from rs1 to counter offset
sh x18, -1412(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x12, 0xa1297145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1cf3c10a # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1900 # sub immediate from rs1 to counter offset
sh x26, -1900(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x18, 0x243a0b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf6051c28 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 891 # sub immediate from rs1 to counter offset
sh x28, -891(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0xc8e0a32f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaddd489d # initialize rs2
la x24, scratch # base address 
addi x24, x24, -30 # sub immediate from rs1 to counter offset
sh x3, 30(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x4, 0x77b7dd79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7d3c4d0a # initialize rs2
la x25, scratch # base address 
addi x25, x25, 108 # sub immediate from rs1 to counter offset
sh x2, -108(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x16, 0x4299c599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xea987eb3 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -513 # sub immediate from rs1 to counter offset
sh x10, 513(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0xa28ca642 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd9c0d9ad # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1318 # sub immediate from rs1 to counter offset
sh x19, 1318(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x28339226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x43fd7e0f # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1250 # sub immediate from rs1 to counter offset
sh x1, 1250(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x15, 0xbd314fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1ae0ff27 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1094 # sub immediate from rs1 to counter offset
sh x20, 1094(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x5446fe1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6c75e67e # initialize rs2
la x30, scratch # base address 
addi x30, x30, 95 # sub immediate from rs1 to counter offset
sh x5, -95(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x21, 0x249d7b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x54bf4ab2 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -120 # sub immediate from rs1 to counter offset
sh x22, 120(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0x874d304e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1314846a # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1729 # sub immediate from rs1 to counter offset
sh x0, 1729(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0xb2a3345e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc5948c01 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -754 # sub immediate from rs1 to counter offset
sh x1, 754(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x2595e2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xadccfd29 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 2041 # sub immediate from rs1 to counter offset
sh x2, -2041(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x4, 0x46423414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2c17e555 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1652 # sub immediate from rs1 to counter offset
sh x3, -1652(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
li x13, 0x3b9085c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x88bd2bd1 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 393 # sub immediate from rs1 to counter offset
sh x4, -393(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
li x1, 0xea08e020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf4c548bb # initialize rs2
la x16, scratch # base address 
addi x16, x16, 759 # sub immediate from rs1 to counter offset
sh x5, -759(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
li x15, 0x3d5496dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbd6a9567 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 617 # sub immediate from rs1 to counter offset
sh x6, -617(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x4, 0xba12cf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2d57d0b3 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 961 # sub immediate from rs1 to counter offset
sh x7, -961(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xf6463a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9b2b430c # initialize rs2
la x13, scratch # base address 
addi x13, x13, 15 # sub immediate from rs1 to counter offset
sh x8, -15(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0xac9b0eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5d937717 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 488 # sub immediate from rs1 to counter offset
sh x9, -488(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0x4feb4a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7a89706c # initialize rs2
la x11, scratch # base address 
addi x11, x11, 350 # sub immediate from rs1 to counter offset
sh x10, -350(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x4697c7bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd97140c6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1972 # sub immediate from rs1 to counter offset
sh x11, 1972(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x23, 0x9f8285f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x03f3ae1c # initialize rs2
la x18, scratch # base address 
addi x18, x18, 931 # sub immediate from rs1 to counter offset
sh x12, -931(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0xa7b25200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x46d800d8 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1337 # sub immediate from rs1 to counter offset
sh x13, 1337(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0x5ac83e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc226cb09 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -992 # sub immediate from rs1 to counter offset
sh x14, 992(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x897ece05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x61487f59 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1996 # sub immediate from rs1 to counter offset
sh x15, 1996(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x11, 0x1166add5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4dde2a45 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1400 # sub immediate from rs1 to counter offset
sh x16, -1400(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x16, 0x828aac2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb2f29fd9 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1603 # sub immediate from rs1 to counter offset
sh x17, -1603(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xf22cf2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa7e139fa # initialize rs2
la x30, scratch # base address 
addi x30, x30, 742 # sub immediate from rs1 to counter offset
sh x18, -742(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0xfd1e065c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0bc40833 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -462 # sub immediate from rs1 to counter offset
sh x19, 462(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0xae48d029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x663c741c # initialize rs2
la x25, scratch # base address 
addi x25, x25, -256 # sub immediate from rs1 to counter offset
sh x20, 256(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x64c94b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4b598736 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 668 # sub immediate from rs1 to counter offset
sh x21, -668(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x79f1124e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc9f360f3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1741 # sub immediate from rs1 to counter offset
sh x22, -1741(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0xeb6e97dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1b40470e # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1798 # sub immediate from rs1 to counter offset
sh x23, 1798(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0xa03c2658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbbdebfbe # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1465 # sub immediate from rs1 to counter offset
sh x24, -1465(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x16ea8a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xeb52d734 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1252 # sub immediate from rs1 to counter offset
sh x25, -1252(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0xb9ca27d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3b5e377d # initialize rs2
la x16, scratch # base address 
addi x16, x16, 493 # sub immediate from rs1 to counter offset
sh x26, -493(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x31, 0x4033ee39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd9277fd5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 91 # sub immediate from rs1 to counter offset
sh x27, -91(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x045da7ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe2616b88 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -58 # sub immediate from rs1 to counter offset
sh x28, 58(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0x0ce1518d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xded7ae0e # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1364 # sub immediate from rs1 to counter offset
sh x29, 1364(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0xe24926ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf4c02163 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 836 # sub immediate from rs1 to counter offset
sh x30, -836(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0xa055e05c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb5405747 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1324 # sub immediate from rs1 to counter offset
sh x31, -1324(x4) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x692ea93f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -336 # sub immediate from rs1 to counter offset
sh x6, 336(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x28, 0xf802bca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1640 # sub immediate from rs1 to counter offset
sh x27, -1640(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x6f5e5a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1512 # sub immediate from rs1 to counter offset
sh x6, -1512(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0xc92fe0a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 211 # sub immediate from rs1 to counter offset
sh x7, -211(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x4, 0xf7a58115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 674 # sub immediate from rs1 to counter offset
sh x21, -674(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x24, 0x4cb7e503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, 661 # sub immediate from rs1 to counter offset
sh x10, -661(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0x37584516 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, 323 # sub immediate from rs1 to counter offset
sh x5, -323(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0x015c9e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1411 # sub immediate from rs1 to counter offset
sh x10, -1411(x4) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xea8f0025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1110 # sub immediate from rs1 to counter offset
sh x9, -1110(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x22, 0x989a04ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1293 # sub immediate from rs1 to counter offset
sh x11, -1293(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x5, 0x20bdef7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1811 # sub immediate from rs1 to counter offset
sh x11, -1811(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0xce1f1434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -54 # sub immediate from rs1 to counter offset
sh x30, 54(x15) # perform operation 

# Testcase cp_imm_zero
li x1, 0x800d9378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa77b726e # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sh x31, 0(x16) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
