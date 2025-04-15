///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoand.w.S
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
li x15, 0xd239692e887f47e2 # load random value
la x1, scratch # base address
sd x15, 0(x1) # store in memory
li x15, 0x96b2b06776a5ca12 # load another value into integer register
amoand.w x8, x15, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0xe17ceda361af0372 # load random value
la x2, scratch # base address
sd x17, 0(x2) # store in memory
li x17, 0x7aa741f8bf053d2a # load another value into integer register
amoand.w x23, x17, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x1e089c1bcdecb4c8 # load random value
la x3, scratch # base address
sd x1, 0(x3) # store in memory
li x1, 0x786a4fc5712dcb41 # load another value into integer register
amoand.w x10, x1, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x23241ec2ce2b5fc2 # load random value
la x4, scratch # base address
sd x29, 0(x4) # store in memory
li x29, 0x1e6b0afa3c5b8d5c # load another value into integer register
amoand.w x13, x29, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x7cdd3b9d7178ff41 # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0x55afe5b7e81ee083 # load another value into integer register
amoand.w x11, x18, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x179308af42847620 # load random value
la x6, scratch # base address
sd x8, 0(x6) # store in memory
li x8, 0x08df635bb51f42ba # load another value into integer register
amoand.w x7, x8, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x27, 0xf04dd7a79c749ee7 # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0xd6fcc37988946274 # load another value into integer register
amoand.w x13, x27, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x2c8a959a1fd62472 # load random value
la x8, scratch # base address
sd x27, 0(x8) # store in memory
li x27, 0x19949228eb312f49 # load another value into integer register
amoand.w x12, x27, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x459b5dfc2fb43002 # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0xda713e7c215e2e1d # load another value into integer register
amoand.w x18, x29, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0x61ca3190d3231877 # load random value
la x10, scratch # base address
sd x7, 0(x10) # store in memory
li x7, 0xcb2bd34d29792a4c # load another value into integer register
amoand.w x15, x7, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xb5ae0e904d077721 # load random value
la x11, scratch # base address
sd x13, 0(x11) # store in memory
li x13, 0x5aea95bef530bc16 # load another value into integer register
amoand.w x28, x13, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xc9904161fba8dcd6 # load random value
la x12, scratch # base address
sd x27, 0(x12) # store in memory
li x27, 0x2d26cae0935270ee # load another value into integer register
amoand.w x2, x27, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0x752af198a1aa7fae # load random value
la x13, scratch # base address
sd x3, 0(x13) # store in memory
li x3, 0xde121f886a92d8d0 # load another value into integer register
amoand.w x1, x3, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0xa40cd143cb6707a1 # load random value
la x14, scratch # base address
sd x6, 0(x14) # store in memory
li x6, 0xfb6e517ab9e69de6 # load another value into integer register
amoand.w x31, x6, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x17, 0x1d3c28389dd1caf7 # load random value
la x15, scratch # base address
sd x17, 0(x15) # store in memory
li x17, 0xc3557318a2c9cb4e # load another value into integer register
amoand.w x9, x17, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x25, 0x41f4c6c62e6dcfb9 # load random value
la x16, scratch # base address
sd x25, 0(x16) # store in memory
li x25, 0x193627f60c899a74 # load another value into integer register
amoand.w x22, x25, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0x9800e4300cce2d9e # load random value
la x17, scratch # base address
sd x18, 0(x17) # store in memory
li x18, 0x30a43c84e0b7d0cc # load another value into integer register
amoand.w x26, x18, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x13, 0x278b54da8dfe6bfa # load random value
la x18, scratch # base address
sd x13, 0(x18) # store in memory
li x13, 0xccb8b350570544ab # load another value into integer register
amoand.w x10, x13, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0xa3a4a8e45c3ef565 # load random value
la x19, scratch # base address
sd x28, 0(x19) # store in memory
li x28, 0x47bfa2fff676e651 # load another value into integer register
amoand.w x29, x28, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x63dc496267c5bd17 # load random value
la x20, scratch # base address
sd x2, 0(x20) # store in memory
li x2, 0x060b9d334042f99e # load another value into integer register
amoand.w x23, x2, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0xbfc91f8df72cfc98 # load random value
la x21, scratch # base address
sd x23, 0(x21) # store in memory
li x23, 0xd8b384e6f29a1ebb # load another value into integer register
amoand.w x7, x23, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x5, 0x6f5716c8c62559a0 # load random value
la x22, scratch # base address
sd x5, 0(x22) # store in memory
li x5, 0x6a755719f37f5cb6 # load another value into integer register
amoand.w x27, x5, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x12, 0x900222129b5dceee # load random value
la x23, scratch # base address
sd x12, 0(x23) # store in memory
li x12, 0x1916001d2440230a # load another value into integer register
amoand.w x26, x12, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0x33d34c8c330974c6 # load random value
la x24, scratch # base address
sd x3, 0(x24) # store in memory
li x3, 0x5598eee9356af0f3 # load another value into integer register
amoand.w x10, x3, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x27, 0xb748d74037e284d1 # load random value
la x25, scratch # base address
sd x27, 0(x25) # store in memory
li x27, 0x679790aea0d245c5 # load another value into integer register
amoand.w x31, x27, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x19, 0x42571e1c07fb89fd # load random value
la x26, scratch # base address
sd x19, 0(x26) # store in memory
li x19, 0x3a741c44dfe8f42f # load another value into integer register
amoand.w x3, x19, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0xc1a4a6d9b7766b1e # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0x6330727c4aecefd0 # load another value into integer register
amoand.w x15, x11, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x2d55b467dd07feac # load random value
la x28, scratch # base address
sd x17, 0(x28) # store in memory
li x17, 0xb69d7aa90ebaa367 # load another value into integer register
amoand.w x29, x17, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x30, 0xfaff1b973c06f8ec # load random value
la x29, scratch # base address
sd x30, 0(x29) # store in memory
li x30, 0x9c817d7dd4e4a9b7 # load another value into integer register
amoand.w x22, x30, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0xdc9e1fccd459d978 # load random value
la x30, scratch # base address
sd x3, 0(x30) # store in memory
li x3, 0x60eea1b4db96f46d # load another value into integer register
amoand.w x25, x3, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x26, 0x39bc82ace707b527 # load random value
la x31, scratch # base address
sd x26, 0(x31) # store in memory
li x26, 0x5863256ad2a06bac # load another value into integer register
amoand.w x15, x26, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x0063fb2bd58270ac # load random value
la x25, scratch # base address
sd x0, 0(x25) # store in memory
li x0, 0x3aa8ccfa518ca512 # load another value into integer register
amoand.w x2, x0, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xc1bc5044fa88f320 # load random value
la x9, scratch # base address
sd x1, 0(x9) # store in memory
li x1, 0x5093a2ccaf25a8a8 # load another value into integer register
amoand.w x24, x1, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xd06ee736ab382c7a # load random value
la x17, scratch # base address
sd x2, 0(x17) # store in memory
li x2, 0x8b6761007b20c0a6 # load another value into integer register
amoand.w x10, x2, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xc43e7af7a6e0b0a8 # load random value
la x17, scratch # base address
sd x3, 0(x17) # store in memory
li x3, 0xe36151a9232f38ae # load another value into integer register
amoand.w x29, x3, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcc23aae4fce47693 # load random value
la x29, scratch # base address
sd x4, 0(x29) # store in memory
li x4, 0x5250fc6823f7085e # load another value into integer register
amoand.w x14, x4, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x324ad015e77e14bc # load random value
la x17, scratch # base address
sd x5, 0(x17) # store in memory
li x5, 0x879c46fd7f054ee6 # load another value into integer register
amoand.w x28, x5, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2b5a0059dc6f5ac6 # load random value
la x28, scratch # base address
sd x6, 0(x28) # store in memory
li x6, 0xde8a0584f4c58069 # load another value into integer register
amoand.w x30, x6, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x821e99fe08963fb5 # load random value
la x5, scratch # base address
sd x7, 0(x5) # store in memory
li x7, 0xfcf859cbf5fb1437 # load another value into integer register
amoand.w x3, x7, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x70ffba752df842ea # load random value
la x19, scratch # base address
sd x8, 0(x19) # store in memory
li x8, 0x233fb021464f46d9 # load another value into integer register
amoand.w x2, x8, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x9551935e2fd1a872 # load random value
la x23, scratch # base address
sd x9, 0(x23) # store in memory
li x9, 0x8b01c65b593dae29 # load another value into integer register
amoand.w x7, x9, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xf31645d14791de4a # load random value
la x13, scratch # base address
sd x10, 0(x13) # store in memory
li x10, 0xa3623faca29a4f93 # load another value into integer register
amoand.w x18, x10, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x17f9d00b07043d05 # load random value
la x22, scratch # base address
sd x11, 0(x22) # store in memory
li x11, 0x492a8cdd88b24dc9 # load another value into integer register
amoand.w x24, x11, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xf62a6c0ed3950b02 # load random value
la x5, scratch # base address
sd x12, 0(x5) # store in memory
li x12, 0xc5cb9b505eaa4dbb # load another value into integer register
amoand.w x17, x12, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x220a974619819c28 # load random value
la x6, scratch # base address
sd x13, 0(x6) # store in memory
li x13, 0xfda9ab045bef1fa8 # load another value into integer register
amoand.w x28, x13, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xa3ad60b01f48d6f2 # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0xbe146e3f514d358e # load another value into integer register
amoand.w x7, x14, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xefdef934d5711189 # load random value
la x8, scratch # base address
sd x15, 0(x8) # store in memory
li x15, 0xea033e377291e4ef # load another value into integer register
amoand.w x9, x15, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xb406122f326cda0d # load random value
la x30, scratch # base address
sd x16, 0(x30) # store in memory
li x16, 0x7704932413fa73eb # load another value into integer register
amoand.w x19, x16, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xcb28966616085df7 # load random value
la x6, scratch # base address
sd x17, 0(x6) # store in memory
li x17, 0x25a55b4fcc601932 # load another value into integer register
amoand.w x18, x17, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x12c05f191c2614ad # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0x21a6216becd123b3 # load another value into integer register
amoand.w x17, x18, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x1431875736956acf # load random value
la x26, scratch # base address
sd x19, 0(x26) # store in memory
li x19, 0x872ae1ff14ca9b0e # load another value into integer register
amoand.w x15, x19, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xaa41bf9011dd161c # load random value
la x5, scratch # base address
sd x20, 0(x5) # store in memory
li x20, 0xed2fd9314eaebf49 # load another value into integer register
amoand.w x23, x20, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x71b9522035a1b097 # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0x7f5805c5e88d4c0a # load another value into integer register
amoand.w x16, x21, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x56b190dcb2e670ab # load random value
la x20, scratch # base address
sd x22, 0(x20) # store in memory
li x22, 0xa9042db08d5dc080 # load another value into integer register
amoand.w x1, x22, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xd63682a6f4d34069 # load random value
la x1, scratch # base address
sd x23, 0(x1) # store in memory
li x23, 0xd70d01f82ce25073 # load another value into integer register
amoand.w x18, x23, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xa2dc3604bb634e0c # load random value
la x18, scratch # base address
sd x24, 0(x18) # store in memory
li x24, 0x6d7f942749cecfcd # load another value into integer register
amoand.w x16, x24, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xb2674cd7f1752cf1 # load random value
la x15, scratch # base address
sd x25, 0(x15) # store in memory
li x25, 0x6537c262f0d30526 # load another value into integer register
amoand.w x7, x25, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x1e98104660844662 # load random value
la x9, scratch # base address
sd x26, 0(x9) # store in memory
li x26, 0x23d8bd045845b471 # load another value into integer register
amoand.w x27, x26, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x88c6daf76a01bc84 # load random value
la x30, scratch # base address
sd x27, 0(x30) # store in memory
li x27, 0x6d41af48bb2e2154 # load another value into integer register
amoand.w x2, x27, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x0ed5c3996d596f71 # load random value
la x22, scratch # base address
sd x28, 0(x22) # store in memory
li x28, 0xb83e329bbc264a36 # load another value into integer register
amoand.w x27, x28, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x9e042339ebf2d097 # load random value
la x28, scratch # base address
sd x29, 0(x28) # store in memory
li x29, 0x1df777df118f332f # load another value into integer register
amoand.w x15, x29, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x223880cf1a1d879d # load random value
la x1, scratch # base address
sd x30, 0(x1) # store in memory
li x30, 0xe3231f47d78b8bb6 # load another value into integer register
amoand.w x20, x30, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xc73b0be78edaa236 # load random value
la x26, scratch # base address
sd x31, 0(x26) # store in memory
li x31, 0xe89aeb4e171e0f5a # load another value into integer register
amoand.w x20, x31, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x5807b7259afcbdf3 # load random value
la x20, scratch # base address
sd x21, 0(x20) # store in memory
li x21, 0x545b36c651405f4f # load another value into integer register
amoand.w x0, x21, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x3, 0xde3bd4783b91a457 # load random value
la x17, scratch # base address
sd x3, 0(x17) # store in memory
li x3, 0x2b8c83c9c26a7cef # load another value into integer register
amoand.w x1, x3, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x12, 0xd030cb6e09b48aab # load random value
la x16, scratch # base address
sd x12, 0(x16) # store in memory
li x12, 0x7ee98343081277ab # load another value into integer register
amoand.w x2, x12, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x10, 0x9363b6198f184ef2 # load random value
la x24, scratch # base address
sd x10, 0(x24) # store in memory
li x10, 0xa176df3bc7759925 # load another value into integer register
amoand.w x3, x10, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x6320e367fd022096 # load random value
la x3, scratch # base address
sd x13, 0(x3) # store in memory
li x13, 0x67baba70d4a515cc # load another value into integer register
amoand.w x4, x13, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xd55eb75ba301ad2c # load random value
la x4, scratch # base address
sd x2, 0(x4) # store in memory
li x2, 0x6489c50918be023c # load another value into integer register
amoand.w x5, x2, (x4) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xfaa7f246f2a39ce0 # load random value
la x26, scratch # base address
sd x25, 0(x26) # store in memory
li x25, 0x0638d7e6513aed23 # load another value into integer register
amoand.w x6, x25, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0xdc56a6ebfa95ea4f # load random value
la x17, scratch # base address
sd x21, 0(x17) # store in memory
li x21, 0xc2b60ec3e5b8e542 # load another value into integer register
amoand.w x7, x21, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x28, 0xad6f08e8adee5b49 # load random value
la x11, scratch # base address
sd x28, 0(x11) # store in memory
li x28, 0x300ecb5664774ddf # load another value into integer register
amoand.w x8, x28, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x6e25bc7edbc59fcc # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0x6a704b23fc7ee9e7 # load another value into integer register
amoand.w x9, x6, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x6def10d571f7fae1 # load random value
la x19, scratch # base address
sd x27, 0(x19) # store in memory
li x27, 0x0adb9b92eac4f01c # load another value into integer register
amoand.w x10, x27, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x9, 0x911246274fbb9004 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x586fac2774eb5cc7 # load another value into integer register
amoand.w x11, x9, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x24, 0x4b92898f7a7ddbfb # load random value
la x20, scratch # base address
sd x24, 0(x20) # store in memory
li x24, 0x0bfb75055ddac2c4 # load another value into integer register
amoand.w x12, x24, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x8dd9275f938e60da # load random value
la x3, scratch # base address
sd x11, 0(x3) # store in memory
li x11, 0x7371f68c810bb3a1 # load another value into integer register
amoand.w x13, x11, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x31646e148aea8263 # load random value
la x27, scratch # base address
sd x21, 0(x27) # store in memory
li x21, 0x383813898f473650 # load another value into integer register
amoand.w x14, x21, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x3, 0xe8d92dd92011fab4 # load random value
la x15, scratch # base address
sd x3, 0(x15) # store in memory
li x3, 0xa4a976bc92c1fb3b # load another value into integer register
amoand.w x15, x3, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x20, 0x5b1f7af6ac0e4666 # load random value
la x17, scratch # base address
sd x20, 0(x17) # store in memory
li x20, 0xb96e8e435fa82fae # load another value into integer register
amoand.w x16, x20, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x1, 0xc437722932d9cb03 # load random value
la x31, scratch # base address
sd x1, 0(x31) # store in memory
li x1, 0xcb6a88b5b60ea889 # load another value into integer register
amoand.w x17, x1, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xd693cf67e3094a52 # load random value
la x28, scratch # base address
sd x7, 0(x28) # store in memory
li x7, 0xb90349026d01be14 # load another value into integer register
amoand.w x18, x7, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x7, 0x323257431fc95271 # load random value
la x6, scratch # base address
sd x7, 0(x6) # store in memory
li x7, 0x76f090e032714223 # load another value into integer register
amoand.w x19, x7, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x11, 0xd21de478dd75035d # load random value
la x17, scratch # base address
sd x11, 0(x17) # store in memory
li x11, 0xfa19d5769961fcc7 # load another value into integer register
amoand.w x20, x11, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x26, 0xe51f71a69a913433 # load random value
la x27, scratch # base address
sd x26, 0(x27) # store in memory
li x26, 0x92262c1257eb4bc0 # load another value into integer register
amoand.w x21, x26, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x1, 0x10b3687960387b5d # load random value
la x5, scratch # base address
sd x1, 0(x5) # store in memory
li x1, 0xf57ad5007bbb2b81 # load another value into integer register
amoand.w x22, x1, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x6352c466485536ae # load random value
la x11, scratch # base address
sd x20, 0(x11) # store in memory
li x20, 0x0c0b2d3ab326404d # load another value into integer register
amoand.w x23, x20, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x215df95892e7039b # load random value
la x27, scratch # base address
sd x19, 0(x27) # store in memory
li x19, 0x5886aa0ea9161db7 # load another value into integer register
amoand.w x24, x19, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x9, 0xf096d4d4b6b12781 # load random value
la x17, scratch # base address
sd x9, 0(x17) # store in memory
li x9, 0x317578e6e06d4dc9 # load another value into integer register
amoand.w x25, x9, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x28, 0x18b3e888e832349d # load random value
la x15, scratch # base address
sd x28, 0(x15) # store in memory
li x28, 0x5492edbf9574040f # load another value into integer register
amoand.w x26, x28, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x12, 0x1a5f808bee7fe4a0 # load random value
la x14, scratch # base address
sd x12, 0(x14) # store in memory
li x12, 0x82769df83d1e2fa6 # load another value into integer register
amoand.w x27, x12, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x8, 0xf7355657bf9e38f1 # load random value
la x21, scratch # base address
sd x8, 0(x21) # store in memory
li x8, 0x31326c7d8baeaded # load another value into integer register
amoand.w x28, x8, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x13, 0xd3bde5d176688c77 # load random value
la x31, scratch # base address
sd x13, 0(x31) # store in memory
li x13, 0x7ea5dcade7021d7d # load another value into integer register
amoand.w x29, x13, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x074f3b4eceffbfcb # load random value
la x18, scratch # base address
sd x17, 0(x18) # store in memory
li x17, 0x313b9917063af287 # load another value into integer register
amoand.w x30, x17, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x02b88616644f8891 # load random value
la x6, scratch # base address
sd x10, 0(x6) # store in memory
li x10, 0xab72effdc58ae70b # load another value into integer register
amoand.w x31, x10, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0xf767f1ad78c2f714 # load random value
la x9, scratch # base address
sd x24, 0(x9) # store in memory
li x24, 0x0000000000000000 # load another value into integer register
amoand.w x15, x24, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x6c30b7b9726b26d4 # load random value
la x24, scratch # base address
sd x6, 0(x24) # store in memory
li x6, 0x0000000000000001 # load another value into integer register
amoand.w x13, x6, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0xd59512d85c94fe30 # load random value
la x14, scratch # base address
sd x15, 0(x14) # store in memory
li x15, 0x0000000000000002 # load another value into integer register
amoand.w x17, x15, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0xdea2f889ba19c4f8 # load random value
la x1, scratch # base address
sd x15, 0(x1) # store in memory
li x15, 0x8000000000000000 # load another value into integer register
amoand.w x6, x15, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x2495b62fa9b87379 # load random value
la x9, scratch # base address
sd x1, 0(x9) # store in memory
li x1, 0x8000000000000001 # load another value into integer register
amoand.w x20, x1, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0xcec8af4f3b244e1d # load random value
la x24, scratch # base address
sd x31, 0(x24) # store in memory
li x31, 0x7fffffffffffffff # load another value into integer register
amoand.w x18, x31, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x25, 0xd298e2ef4765dab5 # load random value
la x16, scratch # base address
sd x25, 0(x16) # store in memory
li x25, 0x7ffffffffffffffe # load another value into integer register
amoand.w x8, x25, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x27, 0xb1371c3faf454d2c # load random value
la x2, scratch # base address
sd x27, 0(x2) # store in memory
li x27, 0xffffffffffffffff # load another value into integer register
amoand.w x24, x27, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x7, 0x844e1194a42f90a5 # load random value
la x30, scratch # base address
sd x7, 0(x30) # store in memory
li x7, 0xfffffffffffffffe # load another value into integer register
amoand.w x28, x7, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x3, 0x7de7f75e13e1351a # load random value
la x5, scratch # base address
sd x3, 0(x5) # store in memory
li x3, 0x5bbc887763ae86f2 # load another value into integer register
amoand.w x21, x3, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xf4c7b0a3ccdfb7ad # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoand.w x20, x8, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x08ee9c34c1c61e13 # load random value
la x11, scratch # base address
sd x7, 0(x11) # store in memory
li x7, 0x5555555555555555 # load another value into integer register
amoand.w x3, x7, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xb4e6f63acbab44b0 # load random value
la x13, scratch # base address
sd x2, 0(x13) # store in memory
li x2, 0x00000000ffffffff # load another value into integer register
amoand.w x6, x2, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0x7aa05e8d43213f75 # load random value
la x19, scratch # base address
sd x16, 0(x19) # store in memory
li x16, 0x00000000fffffffe # load another value into integer register
amoand.w x8, x16, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x23, 0x2d4fcc4291cee03e # load random value
la x20, scratch # base address
sd x23, 0(x20) # store in memory
li x23, 0x0000000100000000 # load another value into integer register
amoand.w x11, x23, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x6, 0x53f960b9b0430f75 # load random value
la x24, scratch # base address
sd x6, 0(x24) # store in memory
li x6, 0x0000000100000001 # load another value into integer register
amoand.w x17, x6, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xf6cb29eab93480b2 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoand.w x20, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd904d68929f2e8a1 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoand.w x7, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x94b3e39e57ccfeaf # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoand.w x31, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3a90de78ea6fc32b # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoand.w x3, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0c20445edb47eba3 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoand.w x23, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf03e2e1734747f4e # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoand.w x29, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x76b442eacbcbc3da # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoand.w x31, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x650417f2c6490d8e # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoand.w x22, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9b18fbba65a34fd2 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoand.w x9, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa516d7c73f1a143f # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoand.w x13, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x5cd53fa22122e1a3 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoand.w x23, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xcdba481add076c72 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoand.w x19, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xce23c065b8077baf # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoand.w x5, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc3af1ef93f362b40 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoand.w x26, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x4b4720e469a588e2 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoand.w x8, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xaf1aa3a4b869d114 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoand.w x13, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xc86936451d9cc226 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoand.w x11, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xdbe55badb9acafdc # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoand.w x14, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe55c3e996cd3070a # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoand.w x25, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf2698a7d3dbce779 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoand.w x25, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x437d15b3739cdd29 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoand.w x25, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7b37f4d0abf9e9ea # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoand.w x19, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2b411fa469cab3b3 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoand.w x19, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7e2d9a50928420e8 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoand.w x1, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x7a0b364441284a75 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoand.w x29, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x09d3f40612b2e263 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoand.w x23, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x14f1266dcf9f1071 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoand.w x17, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xe46d94118bd38c71 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoand.w x12, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3ec29d9d4c67ce30 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoand.w x6, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xe2143df6475d46e6 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoand.w x27, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xb3cd60b71da0a386 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoand.w x14, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x21, 0x8559f50be621e59e # load random value
la x1, scratch # base address
sd x21, 0(x1) # store in memory
li x21, 0xb9a0d4ede68596fe # load another value into integer register
amoand.w x1, x21, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x5, 0x3299973ed17a1a47 # load random value
la x2, scratch # base address
sd x5, 0(x2) # store in memory
li x5, 0xaee9fd1f98ec1555 # load another value into integer register
amoand.w x2, x5, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x8, 0x08de874cf67bec85 # load random value
la x3, scratch # base address
sd x8, 0(x3) # store in memory
li x8, 0xfd1600ae301d8088 # load another value into integer register
amoand.w x3, x8, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0xb5c3d034517374d6 # load random value
la x4, scratch # base address
sd x17, 0(x4) # store in memory
li x17, 0xe20db16d24efcdd9 # load another value into integer register
amoand.w x4, x17, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x67a18c5bb2801653 # load random value
la x5, scratch # base address
sd x14, 0(x5) # store in memory
li x14, 0xdf6510553fc7e8aa # load another value into integer register
amoand.w x5, x14, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xd12678754fab70c5 # load random value
la x6, scratch # base address
sd x31, 0(x6) # store in memory
li x31, 0x59f052d0ba87cf5f # load another value into integer register
amoand.w x6, x31, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x7e3fa3d2d37b475e # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0x92be0b946a313bf2 # load another value into integer register
amoand.w x7, x27, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x27, 0x40b1a298a883dc26 # load random value
la x8, scratch # base address
sd x27, 0(x8) # store in memory
li x27, 0xb3ac280452e1c4fe # load another value into integer register
amoand.w x8, x27, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x30, 0xbbf9d4434eac78e9 # load random value
la x9, scratch # base address
sd x30, 0(x9) # store in memory
li x30, 0xcabe2d811b369588 # load another value into integer register
amoand.w x9, x30, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x30, 0x0fb46f824a664ebb # load random value
la x10, scratch # base address
sd x30, 0(x10) # store in memory
li x30, 0x4d6daafc80d2420e # load another value into integer register
amoand.w x10, x30, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x30, 0x0e2c59c67c53666f # load random value
la x11, scratch # base address
sd x30, 0(x11) # store in memory
li x30, 0x4c273e59ed57f71b # load another value into integer register
amoand.w x11, x30, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x15, 0x3a47800ef1ad18bc # load random value
la x12, scratch # base address
sd x15, 0(x12) # store in memory
li x15, 0xfd0574d4a9d69161 # load another value into integer register
amoand.w x12, x15, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x7, 0x267d31cd7191022d # load random value
la x13, scratch # base address
sd x7, 0(x13) # store in memory
li x7, 0x4bdee9b55319c11d # load another value into integer register
amoand.w x13, x7, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x22, 0xeb11c357c49a6560 # load random value
la x14, scratch # base address
sd x22, 0(x14) # store in memory
li x22, 0x0f585a7bf1340b95 # load another value into integer register
amoand.w x14, x22, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x22, 0x1dbf0746a0237499 # load random value
la x15, scratch # base address
sd x22, 0(x15) # store in memory
li x22, 0x82ee980d548087b6 # load another value into integer register
amoand.w x15, x22, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x7, 0xbac77c58256a823d # load random value
la x16, scratch # base address
sd x7, 0(x16) # store in memory
li x7, 0xc9d4fe7cf51277f1 # load another value into integer register
amoand.w x16, x7, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x25, 0x1148a7a9b200cfbe # load random value
la x17, scratch # base address
sd x25, 0(x17) # store in memory
li x25, 0xa818eccda4acf3a2 # load another value into integer register
amoand.w x17, x25, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x1, 0x1f31cbf38d4d0598 # load random value
la x18, scratch # base address
sd x1, 0(x18) # store in memory
li x1, 0xba96793e5c006925 # load another value into integer register
amoand.w x18, x1, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x7, 0x27942ba31f6f76da # load random value
la x19, scratch # base address
sd x7, 0(x19) # store in memory
li x7, 0xbc9378287421681b # load another value into integer register
amoand.w x19, x7, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x16, 0xa8946876581890a4 # load random value
la x20, scratch # base address
sd x16, 0(x20) # store in memory
li x16, 0x54272708a8bb7fea # load another value into integer register
amoand.w x20, x16, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x3, 0x66cb65a276487beb # load random value
la x21, scratch # base address
sd x3, 0(x21) # store in memory
li x3, 0x355b5270471e056f # load another value into integer register
amoand.w x21, x3, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x1, 0xb527740ef49ec565 # load random value
la x22, scratch # base address
sd x1, 0(x22) # store in memory
li x1, 0xce925b8b51611e62 # load another value into integer register
amoand.w x22, x1, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x13, 0x1a915a3122818e55 # load random value
la x23, scratch # base address
sd x13, 0(x23) # store in memory
li x13, 0xf8ff4df5dec0b325 # load another value into integer register
amoand.w x23, x13, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x5, 0xa83d0a264bdf58b5 # load random value
la x24, scratch # base address
sd x5, 0(x24) # store in memory
li x5, 0x170dcf3f31dd40f1 # load another value into integer register
amoand.w x24, x5, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x23, 0xd41ec399b7a9f2cb # load random value
la x25, scratch # base address
sd x23, 0(x25) # store in memory
li x23, 0xbc0421047adbc198 # load another value into integer register
amoand.w x25, x23, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x23, 0xb4cda153dd7b31a9 # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0x1cdd40d2e439634d # load another value into integer register
amoand.w x26, x23, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x25, 0x3a2935f27ea22e4d # load random value
la x27, scratch # base address
sd x25, 0(x27) # store in memory
li x25, 0x468f00150e30f799 # load another value into integer register
amoand.w x27, x25, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x22, 0x89683efa58b1dda0 # load random value
la x28, scratch # base address
sd x22, 0(x28) # store in memory
li x22, 0x42a8d3d153d3a8f9 # load another value into integer register
amoand.w x28, x22, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x17, 0x73d8f8faa1530668 # load random value
la x29, scratch # base address
sd x17, 0(x29) # store in memory
li x17, 0xac75225ad7b26aab # load another value into integer register
amoand.w x29, x17, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x16, 0xcce9370622015ad7 # load random value
la x30, scratch # base address
sd x16, 0(x30) # store in memory
li x16, 0x5a99ffa8f3360902 # load another value into integer register
amoand.w x30, x16, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x6, 0x56f4d7a939d35bac # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0x1ab812c959678f74 # load another value into integer register
amoand.w x31, x6, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xb4a8c00d2756b46e # load random value
la x25, scratch # base address
sd x0, 0(x25) # store in memory
li x0, 0x460be3d9a1c5e883 # load another value into integer register
amoand.w x0, x0, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x20f968b534602fd6 # load random value
la x7, scratch # base address
sd x1, 0(x7) # store in memory
li x1, 0xd7b0d5221e609029 # load another value into integer register
amoand.w x1, x1, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x93affcaa695108df # load random value
la x6, scratch # base address
sd x2, 0(x6) # store in memory
li x2, 0xe7426320bd7c6342 # load another value into integer register
amoand.w x2, x2, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xf6dc02b7ac5c7415 # load random value
la x26, scratch # base address
sd x3, 0(x26) # store in memory
li x3, 0x255a7692d958a72c # load another value into integer register
amoand.w x3, x3, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xce8b722d4f6ded36 # load random value
la x12, scratch # base address
sd x4, 0(x12) # store in memory
li x4, 0xa6a0688d0f5b46ff # load another value into integer register
amoand.w x4, x4, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9d7516e5962f51ef # load random value
la x25, scratch # base address
sd x5, 0(x25) # store in memory
li x5, 0x74ec2e8262bb60ad # load another value into integer register
amoand.w x5, x5, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0a980a4bb63945a6 # load random value
la x28, scratch # base address
sd x6, 0(x28) # store in memory
li x6, 0x005e83579620db92 # load another value into integer register
amoand.w x6, x6, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3876eebab935574c # load random value
la x26, scratch # base address
sd x7, 0(x26) # store in memory
li x7, 0xa7d29c32fdc69b5f # load another value into integer register
amoand.w x7, x7, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x8d18532b67d4f164 # load random value
la x15, scratch # base address
sd x8, 0(x15) # store in memory
li x8, 0xfec741bab11e04ff # load another value into integer register
amoand.w x8, x8, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xd3a9174191e83c1b # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0x3a34e6fc8c75f73d # load another value into integer register
amoand.w x9, x9, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xa3e2ee575d3d6a0e # load random value
la x26, scratch # base address
sd x10, 0(x26) # store in memory
li x10, 0xe0fa56978afcbdff # load another value into integer register
amoand.w x10, x10, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xfcda1cd62d76d2b6 # load random value
la x24, scratch # base address
sd x11, 0(x24) # store in memory
li x11, 0xddc5c1b87591ddd0 # load another value into integer register
amoand.w x11, x11, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x51e6954edfdacf4b # load random value
la x9, scratch # base address
sd x12, 0(x9) # store in memory
li x12, 0x6b5bfeacd36d11fb # load another value into integer register
amoand.w x12, x12, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x9b3684acc2c23da6 # load random value
la x9, scratch # base address
sd x13, 0(x9) # store in memory
li x13, 0x76cc5d8dc989991e # load another value into integer register
amoand.w x13, x13, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xeebaed89c122984a # load random value
la x5, scratch # base address
sd x14, 0(x5) # store in memory
li x14, 0xff8abf64d134eb72 # load another value into integer register
amoand.w x14, x14, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xcb08c9a13b979e1f # load random value
la x3, scratch # base address
sd x15, 0(x3) # store in memory
li x15, 0x4939477cc3651a94 # load another value into integer register
amoand.w x15, x15, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xc7c2e158e5524bdc # load random value
la x12, scratch # base address
sd x16, 0(x12) # store in memory
li x16, 0x2e903af0c5e4ae2e # load another value into integer register
amoand.w x16, x16, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x3ef8958b7ca05fe8 # load random value
la x21, scratch # base address
sd x17, 0(x21) # store in memory
li x17, 0x4e76145a36a9d6fd # load another value into integer register
amoand.w x17, x17, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xea6fa26d0dfbd342 # load random value
la x28, scratch # base address
sd x18, 0(x28) # store in memory
li x18, 0x246c05ea938b8098 # load another value into integer register
amoand.w x18, x18, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xa2d9f928190ad9ed # load random value
la x31, scratch # base address
sd x19, 0(x31) # store in memory
li x19, 0xb2265115baf4825f # load another value into integer register
amoand.w x19, x19, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x597188a3bc38ff43 # load random value
la x30, scratch # base address
sd x20, 0(x30) # store in memory
li x20, 0xd89ebf5e244e7a66 # load another value into integer register
amoand.w x20, x20, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x65a33a28dba701eb # load random value
la x28, scratch # base address
sd x21, 0(x28) # store in memory
li x21, 0x857d89cd07bb4cbe # load another value into integer register
amoand.w x21, x21, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x0d071efa89055207 # load random value
la x8, scratch # base address
sd x22, 0(x8) # store in memory
li x22, 0x60e373dad183623a # load another value into integer register
amoand.w x22, x22, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x19f9746a6e12327e # load random value
la x24, scratch # base address
sd x23, 0(x24) # store in memory
li x23, 0xc3d6febac792b024 # load another value into integer register
amoand.w x23, x23, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xed2cadbda3f5e3f8 # load random value
la x22, scratch # base address
sd x24, 0(x22) # store in memory
li x24, 0x8a4b059de2f743d3 # load another value into integer register
amoand.w x24, x24, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x606d39e1aaa9a05a # load random value
la x5, scratch # base address
sd x25, 0(x5) # store in memory
li x25, 0x7cd478efb95fb4d0 # load another value into integer register
amoand.w x25, x25, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x5c2b5f81b56081a3 # load random value
la x12, scratch # base address
sd x26, 0(x12) # store in memory
li x26, 0x40cea4e50017c4a3 # load another value into integer register
amoand.w x26, x26, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x3f56607f441d6203 # load random value
la x30, scratch # base address
sd x27, 0(x30) # store in memory
li x27, 0x76d7fe36a5aaf99e # load another value into integer register
amoand.w x27, x27, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x467030c73ee9f80a # load random value
la x27, scratch # base address
sd x28, 0(x27) # store in memory
li x28, 0x1a56f5b1dc94e8cb # load another value into integer register
amoand.w x28, x28, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x849a453116a4581f # load random value
la x25, scratch # base address
sd x29, 0(x25) # store in memory
li x29, 0xbafdb0b69f3e15c7 # load another value into integer register
amoand.w x29, x29, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x261605fc58269522 # load random value
la x9, scratch # base address
sd x30, 0(x9) # store in memory
li x30, 0x42e24bcca116bf38 # load another value into integer register
amoand.w x30, x30, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x7e2f5743acf5b801 # load random value
la x12, scratch # base address
sd x31, 0(x12) # store in memory
li x31, 0xebfb629c21470892 # load another value into integer register
amoand.w x31, x31, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x23673955d01a8247 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoand.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xad60fd3918ba69bf # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoand.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1dfd790b012c75e5 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoand.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x41d22e8f5b4cb131 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoand.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x37c20a0a297ca62b # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoand.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5d193c2a43914242 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoand.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2d62b90a9e294e86 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoand.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x98df63864dd56445 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoand.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5da04a1069deab59 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoand.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xcdd262b100eb1a3e # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoand.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x47eb101c90f15fc2 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoand.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5c3ad7253c9a2d7d # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoand.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x84a928ffb9e876c0 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoand.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x1f5b4d5fb1b0a29b # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoand.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x61bed364d21aede6 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoand.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x7dcd6871147189cb # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoand.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf2cae9aec3a4bb86 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoand.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x4050e01141d4b970 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoand.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xfb88cdf3e98b665f # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoand.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x810f9df1097a3c31 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoand.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc38174ddae2817e9 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoand.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x367851b4b805f1c9 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoand.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x82bfbeb0e5495122 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoand.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe9a65c07dfec4fcb # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoand.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x71a6a93097f7fe90 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoand.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7928d9226d2e027b # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoand.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x9e6130a83ebe79ea # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoand.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0da84b0c08b0f208 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoand.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2c4dda39cb64c66f # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoand.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x297a7629ee9daea7 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoand.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8a83988121b19474 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoand.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x26, scratch
add x23, x17, x14 # perform first operation
amoand.w x21, x29, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
add x9, x30, x28 # perform first operation
amoand.w x31, x21, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x23, scratch
add x7, x30, x6 # perform first operation
amoand.w x5, x13, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
add x5, x5, x0 # perform first operation
amoand.w x23, x5, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
add x15, x15, x0 # perform first operation
amoand.w x12, x30, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
add x6, x6, x0 # perform first operation
amoand.w x17, x8, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x31, scratch
add x26, x9, x12 # perform first operation
amoand.w x26, x20, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x7, scratch
add x27, x26, x22 # perform first operation
amoand.w x27, x23, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x20, scratch
add x14, x24, x3 # perform first operation
amoand.w x14, x5, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x5, x25, x6 # perform first operation
amoand.w x25, x16, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x22, scratch
add x1, x3, x18 # perform first operation
amoand.w x18, x12, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x7, scratch
add x23, x29, x18 # perform first operation
amoand.w x17, x10, (x7) # perform second (triggering) operation

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
