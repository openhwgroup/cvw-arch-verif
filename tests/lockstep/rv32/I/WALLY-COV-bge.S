///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-bge.S
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
li x0, 0x2579d099 # initialize rs1
li x14, 0x56652e1c # initialize rs2
bge x0, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x56652e1c # initialize rs1
li x14, 0x56652e1c # initialize rs2
bge x0, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc0762d46 # initialize rs1
li x28, 0xfc45a6de # initialize rs2
bge x1, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfc45a6de # initialize rs1
li x28, 0xfc45a6de # initialize rs2
bge x1, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xee29cb17 # initialize rs1
li x16, 0xcd6321bc # initialize rs2
bge x2, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xcd6321bc # initialize rs1
li x16, 0xcd6321bc # initialize rs2
bge x2, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x23bef9b5 # initialize rs1
li x24, 0x2ddc6dd7 # initialize rs2
bge x3, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x2ddc6dd7 # initialize rs1
li x24, 0x2ddc6dd7 # initialize rs2
bge x3, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x18f56c3a # initialize rs1
li x30, 0xf0802ea6 # initialize rs2
bge x4, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xf0802ea6 # initialize rs1
li x30, 0xf0802ea6 # initialize rs2
bge x4, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfb156d4c # initialize rs1
li x14, 0x26768108 # initialize rs2
bge x5, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x26768108 # initialize rs1
li x14, 0x26768108 # initialize rs2
bge x5, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe3b19fe4 # initialize rs1
li x9, 0xdfaaf7c6 # initialize rs2
bge x6, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xdfaaf7c6 # initialize rs1
li x9, 0xdfaaf7c6 # initialize rs2
bge x6, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x825e853d # initialize rs1
li x22, 0x2adc0c76 # initialize rs2
bge x7, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x2adc0c76 # initialize rs1
li x22, 0x2adc0c76 # initialize rs2
bge x7, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xab7b7d45 # initialize rs1
li x3, 0x53ecf55d # initialize rs2
bge x8, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x53ecf55d # initialize rs1
li x3, 0x53ecf55d # initialize rs2
bge x8, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x29efe089 # initialize rs1
li x15, 0x3b7a63c5 # initialize rs2
bge x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x3b7a63c5 # initialize rs1
li x15, 0x3b7a63c5 # initialize rs2
bge x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9266f8a6 # initialize rs1
li x28, 0xce0146b9 # initialize rs2
bge x10, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xce0146b9 # initialize rs1
li x28, 0xce0146b9 # initialize rs2
bge x10, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2e078943 # initialize rs1
li x25, 0x856c3502 # initialize rs2
bge x11, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x856c3502 # initialize rs1
li x25, 0x856c3502 # initialize rs2
bge x11, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc1550bd3 # initialize rs1
li x18, 0x58a8450c # initialize rs2
bge x12, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x58a8450c # initialize rs1
li x18, 0x58a8450c # initialize rs2
bge x12, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xdc2041f5 # initialize rs1
li x23, 0x2e9df91d # initialize rs2
bge x13, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x2e9df91d # initialize rs1
li x23, 0x2e9df91d # initialize rs2
bge x13, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xebc2ba1b # initialize rs1
li x30, 0x7f6d3537 # initialize rs2
bge x14, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7f6d3537 # initialize rs1
li x30, 0x7f6d3537 # initialize rs2
bge x14, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x58977d9e # initialize rs1
li x8, 0x51f6ff85 # initialize rs2
bge x15, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x51f6ff85 # initialize rs1
li x8, 0x51f6ff85 # initialize rs2
bge x15, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x62587012 # initialize rs1
li x24, 0xedc8b63e # initialize rs2
bge x16, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xedc8b63e # initialize rs1
li x24, 0xedc8b63e # initialize rs2
bge x16, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xddc2307a # initialize rs1
li x9, 0x353a76ba # initialize rs2
bge x17, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x353a76ba # initialize rs1
li x9, 0x353a76ba # initialize rs2
bge x17, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xab74d431 # initialize rs1
li x11, 0x35532b80 # initialize rs2
bge x18, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x35532b80 # initialize rs1
li x11, 0x35532b80 # initialize rs2
bge x18, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe3858c0c # initialize rs1
li x9, 0xe074a012 # initialize rs2
bge x19, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xe074a012 # initialize rs1
li x9, 0xe074a012 # initialize rs2
bge x19, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x83b8f6c5 # initialize rs1
li x27, 0x57bd084c # initialize rs2
bge x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x57bd084c # initialize rs1
li x27, 0x57bd084c # initialize rs2
bge x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7e1edaae # initialize rs1
li x23, 0x02bffa96 # initialize rs2
bge x21, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x02bffa96 # initialize rs1
li x23, 0x02bffa96 # initialize rs2
bge x21, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5b6ecfd0 # initialize rs1
li x31, 0xdbf9c9f5 # initialize rs2
bge x22, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xdbf9c9f5 # initialize rs1
li x31, 0xdbf9c9f5 # initialize rs2
bge x22, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x0b2b0fff # initialize rs1
li x13, 0x50bf9d00 # initialize rs2
bge x23, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x50bf9d00 # initialize rs1
li x13, 0x50bf9d00 # initialize rs2
bge x23, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8a0aca01 # initialize rs1
li x28, 0xfafa8526 # initialize rs2
bge x24, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xfafa8526 # initialize rs1
li x28, 0xfafa8526 # initialize rs2
bge x24, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1f468e18 # initialize rs1
li x31, 0x7cda142a # initialize rs2
bge x25, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7cda142a # initialize rs1
li x31, 0x7cda142a # initialize rs2
bge x25, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9e6a48de # initialize rs1
li x18, 0x40d06e65 # initialize rs2
bge x26, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x40d06e65 # initialize rs1
li x18, 0x40d06e65 # initialize rs2
bge x26, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3e025344 # initialize rs1
li x23, 0x8f01ffd6 # initialize rs2
bge x27, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8f01ffd6 # initialize rs1
li x23, 0x8f01ffd6 # initialize rs2
bge x27, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb6e85467 # initialize rs1
li x8, 0x418ffa7f # initialize rs2
bge x28, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x418ffa7f # initialize rs1
li x8, 0x418ffa7f # initialize rs2
bge x28, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x906daeb2 # initialize rs1
li x16, 0x74903b46 # initialize rs2
bge x29, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x74903b46 # initialize rs1
li x16, 0x74903b46 # initialize rs2
bge x29, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x553379c8 # initialize rs1
li x26, 0xa162c245 # initialize rs2
bge x30, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xa162c245 # initialize rs1
li x26, 0xa162c245 # initialize rs2
bge x30, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x664a2cfe # initialize rs1
li x13, 0x5234bf86 # initialize rs2
bge x31, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5234bf86 # initialize rs1
li x13, 0x5234bf86 # initialize rs2
bge x31, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0x45330571 # initialize rs1
li x0, 0x5c52c751 # initialize rs2
bge x5, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5c52c751 # initialize rs1
li x0, 0x5c52c751 # initialize rs2
bge x5, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0xe33e977c # initialize rs1
li x1, 0x23ef8fc9 # initialize rs2
bge x27, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x23ef8fc9 # initialize rs1
li x1, 0x23ef8fc9 # initialize rs2
bge x27, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0x392666d9 # initialize rs1
li x2, 0x72299c90 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x72299c90 # initialize rs1
li x2, 0x72299c90 # initialize rs2
bge x28, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0x298f82ca # initialize rs1
li x3, 0x08b63974 # initialize rs2
bge x25, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x08b63974 # initialize rs1
li x3, 0x08b63974 # initialize rs2
bge x25, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x47fde0ee # initialize rs1
li x4, 0xfd866e3c # initialize rs2
bge x22, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfd866e3c # initialize rs1
li x4, 0xfd866e3c # initialize rs2
bge x22, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x27bf5941 # initialize rs1
li x5, 0xac48714d # initialize rs2
bge x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xac48714d # initialize rs1
li x5, 0xac48714d # initialize rs2
bge x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0xe9e7012b # initialize rs1
li x6, 0xed011d89 # initialize rs2
bge x12, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xed011d89 # initialize rs1
li x6, 0xed011d89 # initialize rs2
bge x12, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x3e78b532 # initialize rs1
li x7, 0x090df37d # initialize rs2
bge x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x090df37d # initialize rs1
li x7, 0x090df37d # initialize rs2
bge x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0xfdbffc6a # initialize rs1
li x8, 0xd443af06 # initialize rs2
bge x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xd443af06 # initialize rs1
li x8, 0xd443af06 # initialize rs2
bge x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0xf9192576 # initialize rs1
li x9, 0x09ee9fe7 # initialize rs2
bge x16, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x09ee9fe7 # initialize rs1
li x9, 0x09ee9fe7 # initialize rs2
bge x16, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0x5c9de837 # initialize rs1
li x10, 0x9ef01603 # initialize rs2
bge x29, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x9ef01603 # initialize rs1
li x10, 0x9ef01603 # initialize rs2
bge x29, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0xc8f1c4b4 # initialize rs1
li x11, 0xb0d088b5 # initialize rs2
bge x31, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xb0d088b5 # initialize rs1
li x11, 0xb0d088b5 # initialize rs2
bge x31, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0xd009ac4d # initialize rs1
li x12, 0x51e20213 # initialize rs2
bge x7, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x51e20213 # initialize rs1
li x12, 0x51e20213 # initialize rs2
bge x7, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0xea7d7593 # initialize rs1
li x13, 0xd3c0b9a5 # initialize rs2
bge x9, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xd3c0b9a5 # initialize rs1
li x13, 0xd3c0b9a5 # initialize rs2
bge x9, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x65767898 # initialize rs1
li x14, 0x2979cf34 # initialize rs2
bge x26, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x2979cf34 # initialize rs1
li x14, 0x2979cf34 # initialize rs2
bge x26, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x232af13d # initialize rs1
li x15, 0x70bdbc09 # initialize rs2
bge x5, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x70bdbc09 # initialize rs1
li x15, 0x70bdbc09 # initialize rs2
bge x5, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x13, 0x8cc737c1 # initialize rs1
li x16, 0x8988b3fd # initialize rs2
bge x13, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8988b3fd # initialize rs1
li x16, 0x8988b3fd # initialize rs2
bge x13, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x20, 0x98a17398 # initialize rs1
li x17, 0x43708dc2 # initialize rs2
bge x20, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x43708dc2 # initialize rs1
li x17, 0x43708dc2 # initialize rs2
bge x20, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x22, 0xcd46a346 # initialize rs1
li x18, 0x7117492e # initialize rs2
bge x22, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7117492e # initialize rs1
li x18, 0x7117492e # initialize rs2
bge x22, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0xd312f9f2 # initialize rs1
li x19, 0xd96ff911 # initialize rs2
bge x15, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xd96ff911 # initialize rs1
li x19, 0xd96ff911 # initialize rs2
bge x15, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x12, 0x5a5bce4b # initialize rs1
li x20, 0x844507e0 # initialize rs2
bge x12, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x844507e0 # initialize rs1
li x20, 0x844507e0 # initialize rs2
bge x12, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0x0f62031c # initialize rs1
li x21, 0x4a9affa2 # initialize rs2
bge x23, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x4a9affa2 # initialize rs1
li x21, 0x4a9affa2 # initialize rs2
bge x23, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0xe9cd192c # initialize rs1
li x22, 0x18631122 # initialize rs2
bge x11, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x18631122 # initialize rs1
li x22, 0x18631122 # initialize rs2
bge x11, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0xe1fc434a # initialize rs1
li x23, 0x4d409153 # initialize rs2
bge x26, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x4d409153 # initialize rs1
li x23, 0x4d409153 # initialize rs2
bge x26, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0x6d0172a2 # initialize rs1
li x24, 0x186925b2 # initialize rs2
bge x25, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x186925b2 # initialize rs1
li x24, 0x186925b2 # initialize rs2
bge x25, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0x360f4c41 # initialize rs1
li x25, 0xb922c47d # initialize rs2
bge x17, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xb922c47d # initialize rs1
li x25, 0xb922c47d # initialize rs2
bge x17, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x94c83c60 # initialize rs1
li x26, 0x6a3fa8b2 # initialize rs2
bge x18, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x6a3fa8b2 # initialize rs1
li x26, 0x6a3fa8b2 # initialize rs2
bge x18, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0x366363bf # initialize rs1
li x27, 0x2fb2c058 # initialize rs2
bge x6, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x2fb2c058 # initialize rs1
li x27, 0x2fb2c058 # initialize rs2
bge x6, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x5fbbe960 # initialize rs1
li x28, 0xc68848ba # initialize rs2
bge x22, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xc68848ba # initialize rs1
li x28, 0xc68848ba # initialize rs2
bge x22, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x756fb401 # initialize rs1
li x29, 0xc567aef4 # initialize rs2
bge x26, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xc567aef4 # initialize rs1
li x29, 0xc567aef4 # initialize rs2
bge x26, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0x1b45ee23 # initialize rs1
li x30, 0xccafd82c # initialize rs2
bge x6, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xccafd82c # initialize rs1
li x30, 0xccafd82c # initialize rs2
bge x6, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x9f76b624 # initialize rs1
li x31, 0x8e0bcd02 # initialize rs2
bge x11, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x8e0bcd02 # initialize rs1
li x31, 0x8e0bcd02 # initialize rs2
bge x11, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x00000000 # initialize rs1
li x5, 0x7629c0d1 # initialize rs2
bge x14, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7629c0d1 # initialize rs1
li x5, 0x7629c0d1 # initialize rs2
bge x14, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
li x2, 0x16dc73b7 # initialize rs2
bge x24, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x16dc73b7 # initialize rs1
li x2, 0x16dc73b7 # initialize rs2
bge x24, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x00000002 # initialize rs1
li x3, 0x9056cb1f # initialize rs2
bge x31, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x9056cb1f # initialize rs1
li x3, 0x9056cb1f # initialize rs2
bge x31, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rs1
li x16, 0x47c0cdf7 # initialize rs2
bge x14, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x47c0cdf7 # initialize rs1
li x16, 0x47c0cdf7 # initialize rs2
bge x14, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x80000001 # initialize rs1
li x14, 0xdea01186 # initialize rs2
bge x9, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xdea01186 # initialize rs1
li x14, 0xdea01186 # initialize rs2
bge x9, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x24, 0x7fffffff # initialize rs1
li x3, 0xae52a100 # initialize rs2
bge x24, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xae52a100 # initialize rs1
li x3, 0xae52a100 # initialize rs2
bge x24, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x6, 0x7ffffffe # initialize rs1
li x13, 0xbeecaa59 # initialize rs2
bge x6, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xbeecaa59 # initialize rs1
li x13, 0xbeecaa59 # initialize rs2
bge x6, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x6, 0xb707add4 # initialize rs2
bge x9, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xb707add4 # initialize rs1
li x6, 0xb707add4 # initialize rs2
bge x9, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x14, 0x59d330cc # initialize rs2
bge x8, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x59d330cc # initialize rs1
li x14, 0x59d330cc # initialize rs2
bge x8, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x25, 0x5bbc8872 # initialize rs1
li x1, 0x5804b966 # initialize rs2
bge x25, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5804b966 # initialize rs1
li x1, 0x5804b966 # initialize rs2
bge x25, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x12, 0x18768962 # initialize rs2
bge x25, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x18768962 # initialize rs1
li x12, 0x18768962 # initialize rs2
bge x25, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x5, 0x86035dd7 # initialize rs2
bge x10, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x86035dd7 # initialize rs1
li x5, 0x86035dd7 # initialize rs2
bge x10, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0xb2a9f0ed # initialize rs1
li x20, 0x00000000 # initialize rs2
bge x11, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
bge x11, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0xee3af287 # initialize rs1
li x15, 0x00000001 # initialize rs2
bge x14, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bge x14, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0xbc6e6218 # initialize rs1
li x27, 0x00000002 # initialize rs2
bge x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000002 # initialize rs1
li x27, 0x00000002 # initialize rs2
bge x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x23, 0x42798e4a # initialize rs1
li x12, 0x80000000 # initialize rs2
bge x23, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x80000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
bge x23, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x11, 0xbfc9b39f # initialize rs1
li x5, 0x80000001 # initialize rs2
bge x11, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
bge x11, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x24, 0xf22e5c8c # initialize rs1
li x8, 0x7fffffff # initialize rs2
bge x24, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7fffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bge x24, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x28, 0x116d942d # initialize rs1
li x25, 0x7ffffffe # initialize rs2
bge x28, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
bge x28, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0x8f777529 # initialize rs1
li x9, 0xffffffff # initialize rs2
bge x21, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bge x21, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0x86a918ef # initialize rs1
li x5, 0xfffffffe # initialize rs2
bge x31, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
bge x31, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x10, 0x0ac057e7 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bge x10, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bge x10, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x13, 0x7a8d962e # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bge x13, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bge x13, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x22, 0x2bbc6ac9 # initialize rs1
li x30, 0x55555555 # initialize rs2
bge x22, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x55555555 # initialize rs1
li x30, 0x55555555 # initialize rs2
bge x22, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bge x30, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bge x30, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x17, 0x00000000 # initialize rs1
li x11, 0x00000001 # initialize rs2
bge x17, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
bge x17, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
bge x3, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
bge x3, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x29, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
bge x29, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
bge x29, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x23, 0x00000000 # initialize rs1
li x12, 0x80000001 # initialize rs2
bge x23, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
bge x23, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x12, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
bge x12, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
bge x12, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x28, 0x00000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bge x28, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7ffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bge x28, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffff # initialize rs1
li x3, 0xffffffff # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
bge x16, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
bge x16, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x6, 0x00000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bge x6, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bge x6, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x27, 0x00000000 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
bge x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
bge x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x25, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
bge x25, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
bge x25, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x00000001 # initialize rs1
li x17, 0x00000000 # initialize rs2
bge x22, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
bge x22, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x29, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x29, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x29, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x11, 0x00000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
bge x11, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000002 # initialize rs1
li x6, 0x00000002 # initialize rs2
bge x11, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x6, 0x00000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
bge x6, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
bge x6, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x22, 0x00000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
bge x22, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x10, 0x00000001 # initialize rs1
li x11, 0x7fffffff # initialize rs2
bge x10, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
bge x10, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x17, 0x00000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bge x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
bge x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x00000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
bge x17, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
bge x17, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
bge x8, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
bge x8, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x22, 0x00000001 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5bbc8872 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x10, 0x00000001 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bge x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bge x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x10, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
bge x10, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
bge x10, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x00000002 # initialize rs1
li x20, 0x00000000 # initialize rs2
bge x21, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
bge x21, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x31, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
bge x31, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
bge x31, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x14, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x14, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x14, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x6, 0x80000000 # initialize rs2
bge x12, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
bge x12, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x17, 0x00000002 # initialize rs1
li x21, 0x80000001 # initialize rs2
bge x17, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
bge x17, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x27, 0x00000002 # initialize rs1
li x14, 0x7fffffff # initialize rs2
bge x27, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7fffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
bge x27, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x3, 0x00000002 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
bge x3, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
bge x3, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x00000002 # initialize rs1
li x23, 0xffffffff # initialize rs2
bge x7, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
bge x7, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
bge x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xfffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
bge x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x10, 0x00000002 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
bge x10, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x5bbc8872 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
bge x10, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x9, 0x00000002 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bge x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bge x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x11, 0x00000002 # initialize rs1
li x10, 0x55555555 # initialize rs2
bge x11, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
bge x11, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x24, 0x80000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
bge x24, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
bge x24, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x8, 0x80000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x8, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x8, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x3, 0x80000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
bge x3, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
bge x3, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
bge x19, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
bge x19, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x8, 0x80000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
bge x8, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x80000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
bge x8, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x20, 0x80000000 # initialize rs1
li x22, 0x7fffffff # initialize rs2
bge x20, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bge x20, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x23, 0x80000000 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x9, 0x80000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
bge x9, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
bge x9, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x15, 0x80000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
bge x15, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
bge x15, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x14, 0x80000000 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
bge x14, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc8872 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
bge x14, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x13, 0x80000000 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bge x13, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bge x13, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x14, 0x80000000 # initialize rs1
li x24, 0x55555555 # initialize rs2
bge x14, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
bge x14, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x24, 0x80000001 # initialize rs1
li x15, 0x00000000 # initialize rs2
bge x24, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
bge x24, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x21, 0x80000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
bge x21, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
bge x21, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x12, 0x80000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bge x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x7, 0x80000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
bge x7, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
bge x7, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x3, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
bge x3, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
bge x3, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x9, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
bge x9, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7fffffff # initialize rs1
li x5, 0x7fffffff # initialize rs2
bge x9, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x20, 0x80000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bge x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bge x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x21, 0x80000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
bge x21, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
bge x21, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x80000001 # initialize rs1
li x25, 0xfffffffe # initialize rs2
bge x21, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
bge x21, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x11, 0x80000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
bge x11, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5bbc8872 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
bge x11, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x2, 0x80000001 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bge x2, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
bge x2, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x8, 0x80000001 # initialize rs1
li x11, 0x55555555 # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bge x8, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x1, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
bge x1, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
bge x1, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x5, 0x7fffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
bge x5, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
bge x5, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x9, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
bge x9, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
bge x9, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x19, 0x7fffffff # initialize rs1
li x6, 0x80000000 # initialize rs2
bge x19, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
bge x19, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x10, 0x7fffffff # initialize rs1
li x26, 0x80000001 # initialize rs2
bge x10, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
bge x10, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bge x13, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bge x13, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x22, 0x7fffffff # initialize rs1
li x31, 0x7ffffffe # initialize rs2
bge x22, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7ffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
bge x22, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x26, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bge x26, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bge x26, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x23, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
bge x23, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
bge x23, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x1, 0x7fffffff # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
bge x1, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc8872 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
bge x1, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x25, 0x7fffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bge x25, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bge x25, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x25, 0x7fffffff # initialize rs1
li x26, 0x55555555 # initialize rs2
bge x25, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
bge x25, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x2, 0x7ffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
bge x2, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
bge x2, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x13, 0x7ffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x7, 0x7ffffffe # initialize rs1
li x1, 0x00000002 # initialize rs2
bge x7, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
bge x7, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x6, 0x7ffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
bge x6, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
bge x6, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x27, 0x7ffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
bge x27, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
bge x27, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x10, 0x7ffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
bge x10, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bge x10, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x20, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bge x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bge x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
bge x15, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
bge x15, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x13, 0x7ffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bge x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x8, 0x7ffffffe # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
bge x8, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
bge x8, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x1, 0x7ffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bge x1, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
bge x1, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x24, 0x7ffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
bge x24, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x55555555 # initialize rs1
li x14, 0x55555555 # initialize rs2
bge x24, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x8, 0xffffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
bge x8, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
bge x8, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0xffffffff # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x7, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
bge x7, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0xffffffff # initialize rs1
li x31, 0x00000002 # initialize rs2
bge x15, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000002 # initialize rs1
li x31, 0x00000002 # initialize rs2
bge x15, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x31, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
bge x31, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x80000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
bge x31, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x3, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
bge x3, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x80000001 # initialize rs1
li x19, 0x80000001 # initialize rs2
bge x3, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bge x14, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bge x14, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x15, 0xffffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bge x15, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bge x15, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
bge x7, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
bge x7, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x21, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
bge x21, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffe # initialize rs1
li x27, 0xfffffffe # initialize rs2
bge x21, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
bge x11, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5bbc8872 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
bge x11, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x14, 0xffffffff # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
bge x14, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
bge x14, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0xffffffff # initialize rs1
li x11, 0x55555555 # initialize rs2
bge x28, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bge x28, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0xfffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
bge x9, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
bge x9, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x15, 0xfffffffe # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x15, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
bge x15, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x16, 0xfffffffe # initialize rs1
li x17, 0x00000002 # initialize rs2
bge x16, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
bge x16, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x7, 0xfffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
bge x7, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000000 # initialize rs1
li x25, 0x80000000 # initialize rs2
bge x7, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x25, 0xfffffffe # initialize rs1
li x30, 0x80000001 # initialize rs2
bge x25, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x80000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
bge x25, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x1, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
bge x1, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
bge x1, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x22, 0xfffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
bge x22, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7ffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
bge x22, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffff # initialize rs1
li x3, 0xffffffff # initialize rs2
bge x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
li x29, 0xfffffffe # initialize rs2
bge x19, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xfffffffe # initialize rs1
li x29, 0xfffffffe # initialize rs2
bge x19, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x7, 0xfffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
bge x7, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5bbc8872 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
bge x7, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x19, 0xfffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bge x19, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bge x19, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x24, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
bge x24, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
bge x24, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x14, 0x5bbc8872 # initialize rs1
li x29, 0x00000000 # initialize rs2
bge x14, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
bge x14, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x2, 0x5bbc8872 # initialize rs1
li x21, 0x00000001 # initialize rs2
bge x2, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
bge x2, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x6, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
bge x6, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
bge x6, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x2, 0x5bbc8872 # initialize rs1
li x28, 0x80000000 # initialize rs2
bge x2, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x80000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
bge x2, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x12, 0x5bbc8872 # initialize rs1
li x28, 0x80000001 # initialize rs2
bge x12, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000001 # initialize rs1
li x28, 0x80000001 # initialize rs2
bge x12, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x17, 0x7fffffff # initialize rs2
bge x1, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
bge x1, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x5, 0x5bbc8872 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bge x5, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bge x5, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x18, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
bge x18, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
bge x18, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x21, 0x5bbc8872 # initialize rs1
li x1, 0xfffffffe # initialize rs2
bge x21, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
bge x21, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
bge x3, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
bge x3, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x19, 0x5bbc8872 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bge x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bge x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x11, 0x5bbc8872 # initialize rs1
li x27, 0x55555555 # initialize rs2
bge x11, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
bge x11, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x18, 0xaaaaaaaa # initialize rs1
li x16, 0x00000000 # initialize rs2
bge x18, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
bge x18, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x12, 0xaaaaaaaa # initialize rs1
li x5, 0x00000001 # initialize rs2
bge x12, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000001 # initialize rs1
li x5, 0x00000001 # initialize rs2
bge x12, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x18, 0xaaaaaaaa # initialize rs1
li x29, 0x00000002 # initialize rs2
bge x18, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
bge x18, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x22, 0xaaaaaaaa # initialize rs1
li x24, 0x80000000 # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bge x22, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x11, 0x80000001 # initialize rs2
bge x12, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
bge x12, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x17, 0xaaaaaaaa # initialize rs1
li x30, 0x7fffffff # initialize rs2
bge x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
bge x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bge x10, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bge x10, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x16, 0xaaaaaaaa # initialize rs1
li x13, 0xffffffff # initialize rs2
bge x16, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
bge x16, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x16, 0xfffffffe # initialize rs2
bge x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
bge x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x8, 0xaaaaaaaa # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
bge x8, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
bge x8, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bge x9, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bge x9, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x7, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
bge x7, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
bge x7, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x24, 0x55555555 # initialize rs1
li x22, 0x00000000 # initialize rs2
bge x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
bge x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x28, 0x55555555 # initialize rs1
li x29, 0x00000001 # initialize rs2
bge x28, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
bge x28, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x28, 0x55555555 # initialize rs1
li x20, 0x00000002 # initialize rs2
bge x28, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
bge x28, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x21, 0x55555555 # initialize rs1
li x22, 0x80000000 # initialize rs2
bge x21, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
bge x21, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x20, 0x55555555 # initialize rs1
li x14, 0x80000001 # initialize rs2
bge x20, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x80000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
bge x20, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x13, 0x55555555 # initialize rs1
li x26, 0x7fffffff # initialize rs2
bge x13, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7fffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
bge x13, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x22, 0x55555555 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bge x22, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bge x22, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x10, 0x55555555 # initialize rs1
li x17, 0xffffffff # initialize rs2
bge x10, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
bge x10, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x16, 0x55555555 # initialize rs1
li x17, 0xfffffffe # initialize rs2
bge x16, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xfffffffe # initialize rs1
li x17, 0xfffffffe # initialize rs2
bge x16, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x10, 0x55555555 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
bge x10, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
bge x10, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x27, 0x55555555 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bge x27, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
bge x27, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
bge x15, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
bge x15, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x6c4826d7 # initialize rs1
li x0, 0xa2915901 # initialize rs2
bge x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xa2915901 # initialize rs1
li x0, 0xa2915901 # initialize rs2
bge x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xea121e4b # initialize rs1
li x1, 0x8f7139e6 # initialize rs2
bge x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8f7139e6 # initialize rs1
li x1, 0x8f7139e6 # initialize rs2
bge x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xa744562b # initialize rs1
li x2, 0x904a6439 # initialize rs2
bge x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x904a6439 # initialize rs1
li x2, 0x904a6439 # initialize rs2
bge x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xa585af2c # initialize rs1
li x3, 0x1571d6af # initialize rs2
bge x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x1571d6af # initialize rs1
li x3, 0x1571d6af # initialize rs2
bge x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdbb35b16 # initialize rs1
li x4, 0x71e89f9b # initialize rs2
bge x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x71e89f9b # initialize rs1
li x4, 0x71e89f9b # initialize rs2
bge x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8861a295 # initialize rs1
li x5, 0xce274342 # initialize rs2
bge x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xce274342 # initialize rs1
li x5, 0xce274342 # initialize rs2
bge x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36416314 # initialize rs1
li x6, 0xb4e8e7e4 # initialize rs2
bge x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xb4e8e7e4 # initialize rs1
li x6, 0xb4e8e7e4 # initialize rs2
bge x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf8f99923 # initialize rs1
li x7, 0x1d7dc677 # initialize rs2
bge x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x1d7dc677 # initialize rs1
li x7, 0x1d7dc677 # initialize rs2
bge x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xb8c87ce5 # initialize rs1
li x8, 0x9dbbbb58 # initialize rs2
bge x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x9dbbbb58 # initialize rs1
li x8, 0x9dbbbb58 # initialize rs2
bge x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x7e4bd87e # initialize rs1
li x9, 0x04a6856a # initialize rs2
bge x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x04a6856a # initialize rs1
li x9, 0x04a6856a # initialize rs2
bge x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x2d9bd9bc # initialize rs1
li x10, 0xa77ac5f0 # initialize rs2
bge x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xa77ac5f0 # initialize rs1
li x10, 0xa77ac5f0 # initialize rs2
bge x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x56bb271b # initialize rs1
li x11, 0x6c087086 # initialize rs2
bge x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x6c087086 # initialize rs1
li x11, 0x6c087086 # initialize rs2
bge x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5a751af2 # initialize rs1
li x12, 0x48077a6a # initialize rs2
bge x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x48077a6a # initialize rs1
li x12, 0x48077a6a # initialize rs2
bge x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x459c0c32 # initialize rs1
li x13, 0x7b463107 # initialize rs2
bge x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7b463107 # initialize rs1
li x13, 0x7b463107 # initialize rs2
bge x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2dcd93fe # initialize rs1
li x14, 0x06d5fa73 # initialize rs2
bge x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x06d5fa73 # initialize rs1
li x14, 0x06d5fa73 # initialize rs2
bge x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x79be023e # initialize rs1
li x15, 0xe320ecc2 # initialize rs2
bge x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xe320ecc2 # initialize rs1
li x15, 0xe320ecc2 # initialize rs2
bge x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xbc5f6a45 # initialize rs1
li x16, 0xe9c2c6b2 # initialize rs2
bge x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xe9c2c6b2 # initialize rs1
li x16, 0xe9c2c6b2 # initialize rs2
bge x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xfd887a56 # initialize rs1
li x17, 0x65c2a258 # initialize rs2
bge x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x65c2a258 # initialize rs1
li x17, 0x65c2a258 # initialize rs2
bge x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x4b13e526 # initialize rs1
li x18, 0xb4ca3489 # initialize rs2
bge x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xb4ca3489 # initialize rs1
li x18, 0xb4ca3489 # initialize rs2
bge x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x5ad88368 # initialize rs1
li x19, 0x6d691f91 # initialize rs2
bge x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x6d691f91 # initialize rs1
li x19, 0x6d691f91 # initialize rs2
bge x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x7058aa3e # initialize rs1
li x20, 0xc102b492 # initialize rs2
bge x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xc102b492 # initialize rs1
li x20, 0xc102b492 # initialize rs2
bge x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd99cc866 # initialize rs1
li x21, 0x41382ab4 # initialize rs2
bge x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x41382ab4 # initialize rs1
li x21, 0x41382ab4 # initialize rs2
bge x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x2f1712a2 # initialize rs1
li x22, 0x4c5f5a49 # initialize rs2
bge x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x4c5f5a49 # initialize rs1
li x22, 0x4c5f5a49 # initialize rs2
bge x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x595d5bde # initialize rs1
li x23, 0x9a6ac160 # initialize rs2
bge x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x9a6ac160 # initialize rs1
li x23, 0x9a6ac160 # initialize rs2
bge x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x6e1639c3 # initialize rs1
li x24, 0xa1db6413 # initialize rs2
bge x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xa1db6413 # initialize rs1
li x24, 0xa1db6413 # initialize rs2
bge x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x08841d5e # initialize rs1
li x25, 0x9a6029a2 # initialize rs2
bge x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x9a6029a2 # initialize rs1
li x25, 0x9a6029a2 # initialize rs2
bge x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x217c1b9b # initialize rs1
li x26, 0xe1607069 # initialize rs2
bge x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xe1607069 # initialize rs1
li x26, 0xe1607069 # initialize rs2
bge x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc50270b9 # initialize rs1
li x27, 0xd8dec931 # initialize rs2
bge x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xd8dec931 # initialize rs1
li x27, 0xd8dec931 # initialize rs2
bge x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x4569cbf2 # initialize rs1
li x28, 0x6f2fcb72 # initialize rs2
bge x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x6f2fcb72 # initialize rs1
li x28, 0x6f2fcb72 # initialize rs2
bge x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc972f280 # initialize rs1
li x29, 0xf8d0aa6d # initialize rs2
bge x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xf8d0aa6d # initialize rs1
li x29, 0xf8d0aa6d # initialize rs2
bge x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x77f81cf3 # initialize rs1
li x30, 0x876bd1b6 # initialize rs2
bge x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x876bd1b6 # initialize rs1
li x30, 0x876bd1b6 # initialize rs2
bge x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xe752cae8 # initialize rs1
li x31, 0x073fc6c5 # initialize rs2
bge x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x073fc6c5 # initialize rs1
li x31, 0x073fc6c5 # initialize rs2
bge x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bge x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x2, x30 # perform first operation
bge x15, x3, arbitraryLabel7
nop
arbitraryLabel7:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x7, x3 # perform first operation
bge x18, x10, arbitraryLabel8
nop
arbitraryLabel8:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x3, x1 # perform first operation
bge x10, x20, arbitraryLabel9
nop
arbitraryLabel9:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x12, x3 # perform first operation
bge x26, x14, arbitraryLabel10
nop
arbitraryLabel10:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x23, x11 # perform first operation
bge x26, x22, arbitraryLabel11
nop
arbitraryLabel11:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x16, x8 # perform first operation
bge x10, x1, arbitraryLabel12
nop
arbitraryLabel12:
nop
 # perform second (triggering) operation

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
