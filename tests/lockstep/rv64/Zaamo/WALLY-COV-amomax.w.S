///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amomax.w.S
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
li x9, 0x0e6dfd1afc0d8cbf # load random value
la x1, scratch # base address
sd x9, 0(x1) # store in memory
li x9, 0xd3b982d15eb41163 # load another value into integer register
amomax.w x24, x9, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x28, 0xecba358aed1fcf0c # load random value
la x2, scratch # base address
sd x28, 0(x2) # store in memory
li x28, 0x57c3ca05f29db14d # load another value into integer register
amomax.w x1, x28, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0x956f48108ffae6fe # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0xb138493b2f10f10c # load another value into integer register
amomax.w x27, x21, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x7758e691bbdd7bbd # load random value
la x4, scratch # base address
sd x18, 0(x4) # store in memory
li x18, 0x223fe1d7fc958058 # load another value into integer register
amomax.w x13, x18, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0xf6548dd5dc5b2561 # load random value
la x5, scratch # base address
sd x23, 0(x5) # store in memory
li x23, 0x217800c717fb1ff0 # load another value into integer register
amomax.w x27, x23, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0xb830e525867309ba # load random value
la x6, scratch # base address
sd x11, 0(x6) # store in memory
li x11, 0xf4325cc617e6f2bd # load another value into integer register
amomax.w x28, x11, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x50c1877f5b3aede5 # load random value
la x7, scratch # base address
sd x21, 0(x7) # store in memory
li x21, 0x900236f4cd686095 # load another value into integer register
amomax.w x28, x21, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0x38083179859195bf # load random value
la x8, scratch # base address
sd x5, 0(x8) # store in memory
li x5, 0x3e80263a2332b055 # load another value into integer register
amomax.w x16, x5, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x6a0473167f3ba5eb # load random value
la x9, scratch # base address
sd x16, 0(x9) # store in memory
li x16, 0xc8f2ce8421048a55 # load another value into integer register
amomax.w x5, x16, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x27, 0x61e6e48d34496def # load random value
la x10, scratch # base address
sd x27, 0(x10) # store in memory
li x27, 0xb8ad602be1b0ada3 # load another value into integer register
amomax.w x11, x27, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0xb2f03f3fd3d66b23 # load random value
la x11, scratch # base address
sd x16, 0(x11) # store in memory
li x16, 0x76d8d6038116a503 # load another value into integer register
amomax.w x12, x16, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0xd819f311fbfbf78b # load random value
la x12, scratch # base address
sd x5, 0(x12) # store in memory
li x5, 0xdaba27e2553c39ba # load another value into integer register
amomax.w x22, x5, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0xa6f1a04d52a4c448 # load random value
la x13, scratch # base address
sd x31, 0(x13) # store in memory
li x31, 0xa72b937087189473 # load another value into integer register
amomax.w x26, x31, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x25, 0xba517077fd9bd3e7 # load random value
la x14, scratch # base address
sd x25, 0(x14) # store in memory
li x25, 0xdcc3416590904fa0 # load another value into integer register
amomax.w x29, x25, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0x22576cf20d486323 # load random value
la x15, scratch # base address
sd x30, 0(x15) # store in memory
li x30, 0x4c0597a836a8a8fd # load another value into integer register
amomax.w x19, x30, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x14, 0x82c08248250cfbdb # load random value
la x16, scratch # base address
sd x14, 0(x16) # store in memory
li x14, 0xbf9b5d9af6dd6f78 # load another value into integer register
amomax.w x5, x14, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0xa0b41fe8495099c7 # load random value
la x17, scratch # base address
sd x9, 0(x17) # store in memory
li x9, 0xf4c475342fa315e7 # load another value into integer register
amomax.w x30, x9, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0x7ade765e428dd241 # load random value
la x18, scratch # base address
sd x20, 0(x18) # store in memory
li x20, 0x88f1a570bf37dd19 # load another value into integer register
amomax.w x12, x20, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0x7cbac6ce33dc3e1e # load random value
la x19, scratch # base address
sd x26, 0(x19) # store in memory
li x26, 0xfcbef260c03123c3 # load another value into integer register
amomax.w x9, x26, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0xfad0333ef284c3fe # load random value
la x20, scratch # base address
sd x16, 0(x20) # store in memory
li x16, 0x15627dee039c04ae # load another value into integer register
amomax.w x2, x16, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0xfba3d91307b62dbd # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0xfc29f388bdbc3966 # load another value into integer register
amomax.w x2, x30, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x12, 0x54aad77486dd075d # load random value
la x22, scratch # base address
sd x12, 0(x22) # store in memory
li x12, 0x91515cefda61c4cd # load another value into integer register
amomax.w x29, x12, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x8822b3dce22e501d # load random value
la x23, scratch # base address
sd x9, 0(x23) # store in memory
li x9, 0xd93123314f635d49 # load another value into integer register
amomax.w x11, x9, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x1, 0xa2c3e16dfa61e07a # load random value
la x24, scratch # base address
sd x1, 0(x24) # store in memory
li x1, 0x609feffd72d6fa3e # load another value into integer register
amomax.w x30, x1, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x75316be79ff8615d # load random value
la x25, scratch # base address
sd x31, 0(x25) # store in memory
li x31, 0xa2088d3482ec099c # load another value into integer register
amomax.w x10, x31, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x23, 0x3c021d2ddc379160 # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0xc4a49b32b0b8228f # load another value into integer register
amomax.w x25, x23, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0x297a49a1423e166e # load random value
la x27, scratch # base address
sd x31, 0(x27) # store in memory
li x31, 0x66277f42f0dbec2c # load another value into integer register
amomax.w x5, x31, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x24, 0xa17d5c6df181b4e7 # load random value
la x28, scratch # base address
sd x24, 0(x28) # store in memory
li x24, 0x8525cf1822bea4a4 # load another value into integer register
amomax.w x20, x24, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x7, 0xb423e4de03b5cfe2 # load random value
la x29, scratch # base address
sd x7, 0(x29) # store in memory
li x7, 0xd975c928b7e7bbbf # load another value into integer register
amomax.w x31, x7, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0xa84cbb2c4b842d72 # load random value
la x30, scratch # base address
sd x16, 0(x30) # store in memory
li x16, 0xb098b581f5173ddd # load another value into integer register
amomax.w x12, x16, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x98eb25f2723ec863 # load random value
la x31, scratch # base address
sd x10, 0(x31) # store in memory
li x10, 0xf898e7d20a0de9ed # load another value into integer register
amomax.w x3, x10, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x79ab25c1a5e90209 # load random value
la x10, scratch # base address
sd x0, 0(x10) # store in memory
li x0, 0xa727f25c580e7985 # load another value into integer register
amomax.w x18, x0, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xbb6ea50a3e80380a # load random value
la x25, scratch # base address
sd x1, 0(x25) # store in memory
li x1, 0xb57ac1ac97d61f89 # load another value into integer register
amomax.w x14, x1, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xdc7c550e01c7adaf # load random value
la x5, scratch # base address
sd x2, 0(x5) # store in memory
li x2, 0xfa3999475aab3598 # load another value into integer register
amomax.w x15, x2, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x157974925b37e821 # load random value
la x15, scratch # base address
sd x3, 0(x15) # store in memory
li x3, 0xe39730bc8305444c # load another value into integer register
amomax.w x14, x3, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb20934d6649e400e # load random value
la x1, scratch # base address
sd x4, 0(x1) # store in memory
li x4, 0x853b218e23acd309 # load another value into integer register
amomax.w x29, x4, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2dd74f9f11ae60e0 # load random value
la x2, scratch # base address
sd x5, 0(x2) # store in memory
li x5, 0xd89cc192c74424ce # load another value into integer register
amomax.w x17, x5, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x12bc9f23f3bacce1 # load random value
la x8, scratch # base address
sd x6, 0(x8) # store in memory
li x6, 0x377c39b7e9ba5f8f # load another value into integer register
amomax.w x11, x6, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x95c2feb7a109b58f # load random value
la x4, scratch # base address
sd x7, 0(x4) # store in memory
li x7, 0xa61747dc89aa4214 # load another value into integer register
amomax.w x26, x7, (x4) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xc3c02e6b3c1e50dc # load random value
la x26, scratch # base address
sd x8, 0(x26) # store in memory
li x8, 0x98610bed0cccfb47 # load another value into integer register
amomax.w x1, x8, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x57703b9c10c27770 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0xdb72215349c26ffa # load another value into integer register
amomax.w x7, x9, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x87203f970ba10c13 # load random value
la x1, scratch # base address
sd x10, 0(x1) # store in memory
li x10, 0xee57ae3f0929646f # load another value into integer register
amomax.w x6, x10, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x5c913a9678893388 # load random value
la x3, scratch # base address
sd x11, 0(x3) # store in memory
li x11, 0x17caf163e11ffcf9 # load another value into integer register
amomax.w x31, x11, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x0fe82759e0d9e7e8 # load random value
la x1, scratch # base address
sd x12, 0(x1) # store in memory
li x12, 0x8637fcc9b72a0a32 # load another value into integer register
amomax.w x7, x12, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x61203882bd1394f8 # load random value
la x30, scratch # base address
sd x13, 0(x30) # store in memory
li x13, 0xeec9101424d76dbb # load another value into integer register
amomax.w x27, x13, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xb9e8f25bd837c958 # load random value
la x26, scratch # base address
sd x14, 0(x26) # store in memory
li x14, 0x3d5ab5cedf3c76ac # load another value into integer register
amomax.w x11, x14, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x5089a9028b4f7a88 # load random value
la x24, scratch # base address
sd x15, 0(x24) # store in memory
li x15, 0xd5e9f6f7b8f6e6a7 # load another value into integer register
amomax.w x9, x15, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x2558ccf8279e3913 # load random value
la x15, scratch # base address
sd x16, 0(x15) # store in memory
li x16, 0xee3737dc1f103347 # load another value into integer register
amomax.w x12, x16, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x1fabd83818406281 # load random value
la x11, scratch # base address
sd x17, 0(x11) # store in memory
li x17, 0xdc300226985f5613 # load another value into integer register
amomax.w x19, x17, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xc0c2a6d750358a53 # load random value
la x1, scratch # base address
sd x18, 0(x1) # store in memory
li x18, 0x9f1986b1ce0d5332 # load another value into integer register
amomax.w x31, x18, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x7f99014d2c3686a3 # load random value
la x6, scratch # base address
sd x19, 0(x6) # store in memory
li x19, 0xea3831eccf3f2c39 # load another value into integer register
amomax.w x23, x19, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x7e0fa7a0d62b113d # load random value
la x3, scratch # base address
sd x20, 0(x3) # store in memory
li x20, 0xa5d497790641c987 # load another value into integer register
amomax.w x19, x20, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x377ee8fca5d4de60 # load random value
la x11, scratch # base address
sd x21, 0(x11) # store in memory
li x21, 0x0a7c4d6e3aefa905 # load another value into integer register
amomax.w x1, x21, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x09392790fff05509 # load random value
la x18, scratch # base address
sd x22, 0(x18) # store in memory
li x22, 0x25446c16cec498af # load another value into integer register
amomax.w x3, x22, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xa64fb7ed1998220b # load random value
la x7, scratch # base address
sd x23, 0(x7) # store in memory
li x23, 0xfe470fdf5c66772c # load another value into integer register
amomax.w x19, x23, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x0d80e737ec90a717 # load random value
la x13, scratch # base address
sd x24, 0(x13) # store in memory
li x24, 0xc32cc64bbefa03bc # load another value into integer register
amomax.w x27, x24, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x65e164e3b293f81f # load random value
la x11, scratch # base address
sd x25, 0(x11) # store in memory
li x25, 0x0de18d541f3d4cd5 # load another value into integer register
amomax.w x15, x25, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x8b52f92f121c96ea # load random value
la x22, scratch # base address
sd x26, 0(x22) # store in memory
li x26, 0xdb75b7e0cbfb14ba # load another value into integer register
amomax.w x31, x26, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xde578caee544284a # load random value
la x26, scratch # base address
sd x27, 0(x26) # store in memory
li x27, 0x788c8fb98a6fc9d3 # load another value into integer register
amomax.w x9, x27, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xcfd4c2753ee396ee # load random value
la x26, scratch # base address
sd x28, 0(x26) # store in memory
li x28, 0xbb2343e91b73cda8 # load another value into integer register
amomax.w x8, x28, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x443d40cda10c6cee # load random value
la x21, scratch # base address
sd x29, 0(x21) # store in memory
li x29, 0x089d25f878ddd274 # load another value into integer register
amomax.w x6, x29, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x3d9e24f9bb3049d5 # load random value
la x18, scratch # base address
sd x30, 0(x18) # store in memory
li x30, 0xcfde522220f8874b # load another value into integer register
amomax.w x7, x30, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x94670c2a0cf2618e # load random value
la x24, scratch # base address
sd x31, 0(x24) # store in memory
li x31, 0x658927acc624288b # load another value into integer register
amomax.w x20, x31, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x4, 0x5de454f9122d3ecb # load random value
la x6, scratch # base address
sd x4, 0(x6) # store in memory
li x4, 0x2cfa56eaff4f70b8 # load another value into integer register
amomax.w x0, x4, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x31, 0x446897da22f19198 # load random value
la x7, scratch # base address
sd x31, 0(x7) # store in memory
li x31, 0xf1c1d3c97189fba8 # load another value into integer register
amomax.w x1, x31, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x512bb59cf907aae1 # load random value
la x7, scratch # base address
sd x30, 0(x7) # store in memory
li x30, 0xe66487fc07837245 # load another value into integer register
amomax.w x2, x30, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x19890fc94e5de67a # load random value
la x8, scratch # base address
sd x22, 0(x8) # store in memory
li x22, 0x6cd8c70baf58ff5f # load another value into integer register
amomax.w x3, x22, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x19, 0x1488ad117b987996 # load random value
la x9, scratch # base address
sd x19, 0(x9) # store in memory
li x19, 0xdc28b63a3d437107 # load another value into integer register
amomax.w x4, x19, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x43b0fa9d54644a52 # load random value
la x12, scratch # base address
sd x23, 0(x12) # store in memory
li x23, 0x35a49061c96978cc # load another value into integer register
amomax.w x5, x23, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x92e48761d6aaa2a1 # load random value
la x16, scratch # base address
sd x20, 0(x16) # store in memory
li x20, 0x674640c19863955f # load another value into integer register
amomax.w x6, x20, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x494ff785a12706a4 # load random value
la x21, scratch # base address
sd x28, 0(x21) # store in memory
li x28, 0x3fb98a450912f6a4 # load another value into integer register
amomax.w x7, x28, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x27, 0xb430ad91a6021c7b # load random value
la x8, scratch # base address
sd x27, 0(x8) # store in memory
li x27, 0x2a0e9a7456279e1c # load another value into integer register
amomax.w x8, x27, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xb5d27b39e6534e0a # load random value
la x24, scratch # base address
sd x2, 0(x24) # store in memory
li x2, 0xec480f86fed42b55 # load another value into integer register
amomax.w x9, x2, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x23, 0xda4c52846839e46a # load random value
la x28, scratch # base address
sd x23, 0(x28) # store in memory
li x23, 0x9ecd782d6ce0f2f1 # load another value into integer register
amomax.w x10, x23, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x15, 0x3198dfcbf16a3e18 # load random value
la x20, scratch # base address
sd x15, 0(x20) # store in memory
li x15, 0x117d0411b1ddcc4f # load another value into integer register
amomax.w x11, x15, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x26, 0x44dabed3f8d33637 # load random value
la x31, scratch # base address
sd x26, 0(x31) # store in memory
li x26, 0xdf83eb4a43f86dbc # load another value into integer register
amomax.w x12, x26, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xd4a66c4358e196d1 # load random value
la x28, scratch # base address
sd x27, 0(x28) # store in memory
li x27, 0xc7c2ff78a7b995a7 # load another value into integer register
amomax.w x13, x27, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x1042d31c24a14f67 # load random value
la x11, scratch # base address
sd x9, 0(x11) # store in memory
li x9, 0x8eeebcb2514df09d # load another value into integer register
amomax.w x14, x9, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xf6073e30bade1b9f # load random value
la x10, scratch # base address
sd x12, 0(x10) # store in memory
li x12, 0xbc3a87fa3bc84084 # load another value into integer register
amomax.w x15, x12, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x19, 0x53f29f80ae3f3d87 # load random value
la x16, scratch # base address
sd x19, 0(x16) # store in memory
li x19, 0x23894c36ed7f3378 # load another value into integer register
amomax.w x16, x19, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x26c6a7e8ee951a09 # load random value
la x5, scratch # base address
sd x17, 0(x5) # store in memory
li x17, 0xf39345cc45c15835 # load another value into integer register
amomax.w x17, x17, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x30, 0xac14e248db061b94 # load random value
la x31, scratch # base address
sd x30, 0(x31) # store in memory
li x30, 0x8f77dd75455123c6 # load another value into integer register
amomax.w x18, x30, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x29, 0x34a8416abc8fb471 # load random value
la x30, scratch # base address
sd x29, 0(x30) # store in memory
li x29, 0x00c4d5bccfd40a61 # load another value into integer register
amomax.w x19, x29, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x3, 0xaa6a731b45dfa7b0 # load random value
la x18, scratch # base address
sd x3, 0(x18) # store in memory
li x3, 0x02bf25dacbd7d3c8 # load another value into integer register
amomax.w x20, x3, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x14, 0x0f15f0d5c156e913 # load random value
la x3, scratch # base address
sd x14, 0(x3) # store in memory
li x14, 0xf67df02cb1ff9cd1 # load another value into integer register
amomax.w x21, x14, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x21, 0xa51c5f4845be5065 # load random value
la x24, scratch # base address
sd x21, 0(x24) # store in memory
li x21, 0x2b88c7b5db37929b # load another value into integer register
amomax.w x22, x21, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x806d899cc5bacecd # load random value
la x28, scratch # base address
sd x23, 0(x28) # store in memory
li x23, 0xd434f1aa4381543f # load another value into integer register
amomax.w x23, x23, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x15, 0x2cd3957962cb36fa # load random value
la x9, scratch # base address
sd x15, 0(x9) # store in memory
li x15, 0x90ce90d422e069bb # load another value into integer register
amomax.w x24, x15, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xa0c36d72147c89b8 # load random value
la x7, scratch # base address
sd x19, 0(x7) # store in memory
li x19, 0xa877512d823d29fb # load another value into integer register
amomax.w x25, x19, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x29, 0x16863af992592e91 # load random value
la x14, scratch # base address
sd x29, 0(x14) # store in memory
li x29, 0x569b34055785d0fe # load another value into integer register
amomax.w x26, x29, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x25, 0xa1c2307a7e531a6d # load random value
la x6, scratch # base address
sd x25, 0(x6) # store in memory
li x25, 0x1d36b51be811701c # load another value into integer register
amomax.w x27, x25, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x643dc79d2baeaf88 # load random value
la x19, scratch # base address
sd x11, 0(x19) # store in memory
li x11, 0x78eea5916f6d6866 # load another value into integer register
amomax.w x28, x11, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x016bb92e3302b27d # load random value
la x1, scratch # base address
sd x10, 0(x1) # store in memory
li x10, 0x1a5e144e84166265 # load another value into integer register
amomax.w x29, x10, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x31, 0xa5f5afcb864d0366 # load random value
la x8, scratch # base address
sd x31, 0(x8) # store in memory
li x31, 0xfa5fdf27fe7eaa65 # load another value into integer register
amomax.w x30, x31, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x25, 0xe5309389ad081818 # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0xaa1da743e2250314 # load another value into integer register
amomax.w x31, x25, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x599ce6952d68ae81 # load random value
la x3, scratch # base address
sd x23, 0(x3) # store in memory
li x23, 0x0000000000000000 # load another value into integer register
amomax.w x1, x23, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x21, 0xe5684d81dbd49414 # load random value
la x13, scratch # base address
sd x21, 0(x13) # store in memory
li x21, 0x0000000000000001 # load another value into integer register
amomax.w x17, x21, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x9af181a15a86e82c # load random value
la x19, scratch # base address
sd x5, 0(x19) # store in memory
li x5, 0x0000000000000002 # load another value into integer register
amomax.w x1, x5, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x855508a7891f936c # load random value
la x6, scratch # base address
sd x13, 0(x6) # store in memory
li x13, 0x8000000000000000 # load another value into integer register
amomax.w x18, x13, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x18, 0x3944ed51ef082d14 # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0x8000000000000001 # load another value into integer register
amomax.w x23, x18, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0xf11d152bd0c97054 # load random value
la x28, scratch # base address
sd x8, 0(x28) # store in memory
li x8, 0x7fffffffffffffff # load another value into integer register
amomax.w x31, x8, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x26, 0x9dca848c73a8ae60 # load random value
la x17, scratch # base address
sd x26, 0(x17) # store in memory
li x26, 0x7ffffffffffffffe # load another value into integer register
amomax.w x9, x26, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x22, 0xdf0d821a999ee682 # load random value
la x25, scratch # base address
sd x22, 0(x25) # store in memory
li x22, 0xffffffffffffffff # load another value into integer register
amomax.w x24, x22, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0x81ae939240363120 # load random value
la x26, scratch # base address
sd x15, 0(x26) # store in memory
li x15, 0xfffffffffffffffe # load another value into integer register
amomax.w x22, x15, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x27, 0x6141d0e95da0f8f2 # load random value
la x11, scratch # base address
sd x27, 0(x11) # store in memory
li x27, 0x5bbc887763ae86f2 # load another value into integer register
amomax.w x24, x27, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0x27b2ae582621d446 # load random value
la x8, scratch # base address
sd x5, 0(x8) # store in memory
li x5, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amomax.w x14, x5, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0xd6c960bae9c90a35 # load random value
la x31, scratch # base address
sd x15, 0(x31) # store in memory
li x15, 0x5555555555555555 # load another value into integer register
amomax.w x21, x15, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0xcd5dc288b1e6d56b # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0x00000000ffffffff # load another value into integer register
amomax.w x2, x29, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0xdefeae8620ac7cbd # load random value
la x29, scratch # base address
sd x12, 0(x29) # store in memory
li x12, 0x00000000fffffffe # load another value into integer register
amomax.w x30, x12, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x16, 0x8cf85b4a3be2256b # load random value
la x18, scratch # base address
sd x16, 0(x18) # store in memory
li x16, 0x0000000100000000 # load another value into integer register
amomax.w x27, x16, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0x9321bcec6b852e7c # load random value
la x27, scratch # base address
sd x12, 0(x27) # store in memory
li x12, 0x0000000100000001 # load another value into integer register
amomax.w x22, x12, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x28c3e90f5625a9d1 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomax.w x30, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x2dff897e1380451e # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomax.w x2, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x1d3c421315b9835a # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomax.w x20, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc83f14b6dca60717 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomax.w x11, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9a3eb31a6d2d6d7b # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomax.w x12, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd2870739517d7ec2 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomax.w x1, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9bab93b8bb7d12c3 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomax.w x21, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa3babfb16e5fea5d # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomax.w x14, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x3dd1d7b6169bdc07 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomax.w x6, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x2898ab698e51aa85 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomax.w x31, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xc20fd87a7fb44119 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomax.w x16, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc066fb3955cd3ece # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomax.w x24, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5edb0478b99d5b6e # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomax.w x7, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9904e3a86887a859 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomax.w x9, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf8071689bda32ed0 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomax.w x7, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x8a1052d93c5f4721 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomax.w x20, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xfd444f86736789b9 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomax.w x30, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x5f6aa2d2c26a704d # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomax.w x27, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1f6d290d45784d76 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomax.w x2, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9d405307bce6e125 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomax.w x24, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xece3c268bb9c449c # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomax.w x7, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd16fd9a878e40071 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomax.w x29, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x31cc0c38326a7ca8 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomax.w x22, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x94c75e4a3530511b # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomax.w x9, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x13a683dda82a0e5d # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomax.w x23, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe1444629b3450601 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomax.w x7, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xda9c623bee71e887 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomax.w x31, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xabf619c2f81be639 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomax.w x2, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x08cbf836831b71bc # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomax.w x3, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xcb9c9eb85ada02fe # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomax.w x11, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x21ed053972cdb79b # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomax.w x23, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x9, 0x170db6a4a241ac03 # load random value
la x1, scratch # base address
sd x9, 0(x1) # store in memory
li x9, 0xe353455953623ea5 # load another value into integer register
amomax.w x1, x9, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x14, 0x665234bf953ca4cc # load random value
la x2, scratch # base address
sd x14, 0(x2) # store in memory
li x14, 0xd89ad42d9bfbdc97 # load another value into integer register
amomax.w x2, x14, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x25, 0x0041754a6cd8c130 # load random value
la x3, scratch # base address
sd x25, 0(x3) # store in memory
li x25, 0x70d51ac46c59d16a # load another value into integer register
amomax.w x3, x25, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x66b2d6cafc238594 # load random value
la x4, scratch # base address
sd x31, 0(x4) # store in memory
li x31, 0xe95da14bb221383f # load another value into integer register
amomax.w x4, x31, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x215cd5a26b2e7895 # load random value
la x5, scratch # base address
sd x12, 0(x5) # store in memory
li x12, 0xae7952ff019711a1 # load another value into integer register
amomax.w x5, x12, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xfecf3832ea4f8871 # load random value
la x6, scratch # base address
sd x1, 0(x6) # store in memory
li x1, 0xf09ab5db6be6060e # load another value into integer register
amomax.w x6, x1, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x1ec68e0d1bc98bdf # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0xe8845631b1839a36 # load another value into integer register
amomax.w x7, x27, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x20, 0xfac4d451220e09d5 # load random value
la x8, scratch # base address
sd x20, 0(x8) # store in memory
li x20, 0x778ea71e4ba366d5 # load another value into integer register
amomax.w x8, x20, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x27, 0x947c7893a245dcba # load random value
la x9, scratch # base address
sd x27, 0(x9) # store in memory
li x27, 0x5b92549d3eea0972 # load another value into integer register
amomax.w x9, x27, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x8, 0x5d3f28827a14fb6a # load random value
la x10, scratch # base address
sd x8, 0(x10) # store in memory
li x8, 0x3f95b4ed4b495ecb # load another value into integer register
amomax.w x10, x8, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x17, 0x9d0a0605cfbcd62c # load random value
la x11, scratch # base address
sd x17, 0(x11) # store in memory
li x17, 0x670a638d22b74efa # load another value into integer register
amomax.w x11, x17, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x25, 0xeabd0b0b8507ed35 # load random value
la x12, scratch # base address
sd x25, 0(x12) # store in memory
li x25, 0x21d7d80e7364ebc9 # load another value into integer register
amomax.w x12, x25, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x26, 0x6fcdfb0c5bd9c9cf # load random value
la x13, scratch # base address
sd x26, 0(x13) # store in memory
li x26, 0xe52f8257882893a4 # load another value into integer register
amomax.w x13, x26, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x26, 0x617e9cd867d96f48 # load random value
la x14, scratch # base address
sd x26, 0(x14) # store in memory
li x26, 0x5430811b1ac8c14c # load another value into integer register
amomax.w x14, x26, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x18, 0xa44943ca51c52afa # load random value
la x15, scratch # base address
sd x18, 0(x15) # store in memory
li x18, 0xf9faa8db60e2cb29 # load another value into integer register
amomax.w x15, x18, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x17, 0x6295850ea600f39e # load random value
la x16, scratch # base address
sd x17, 0(x16) # store in memory
li x17, 0xb316877cc661e9ef # load another value into integer register
amomax.w x16, x17, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x7, 0xcaa61d9eb00cd0c8 # load random value
la x17, scratch # base address
sd x7, 0(x17) # store in memory
li x7, 0x93970289bd06d664 # load another value into integer register
amomax.w x17, x7, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x17, 0x255e6f6cd947149d # load random value
la x18, scratch # base address
sd x17, 0(x18) # store in memory
li x17, 0x931a7158437f6e99 # load another value into integer register
amomax.w x18, x17, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x8, 0xbf7db9b73c4902bf # load random value
la x19, scratch # base address
sd x8, 0(x19) # store in memory
li x8, 0x58acab4e5ebe0258 # load another value into integer register
amomax.w x19, x8, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x1, 0xeda468efe4c56e1c # load random value
la x20, scratch # base address
sd x1, 0(x20) # store in memory
li x1, 0x7fd6003cffe0770c # load another value into integer register
amomax.w x20, x1, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x1cf6eee0c0a8f809 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomax.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x9, 0x3f52511592b779cb # load random value
la x22, scratch # base address
sd x9, 0(x22) # store in memory
li x9, 0x67b330ab18fc14b3 # load another value into integer register
amomax.w x22, x9, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x15, 0x6c36453755e46186 # load random value
la x23, scratch # base address
sd x15, 0(x23) # store in memory
li x15, 0xb825b491532b24f3 # load another value into integer register
amomax.w x23, x15, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x25, 0xc2f22fb2334c6186 # load random value
la x24, scratch # base address
sd x25, 0(x24) # store in memory
li x25, 0x265154675891690a # load another value into integer register
amomax.w x24, x25, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x12, 0x63ec0266b6124c5b # load random value
la x25, scratch # base address
sd x12, 0(x25) # store in memory
li x12, 0xf9847a1aa1a13615 # load another value into integer register
amomax.w x25, x12, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x21, 0xf1449c4bc12e62f0 # load random value
la x26, scratch # base address
sd x21, 0(x26) # store in memory
li x21, 0x7070d9ddb11fee75 # load another value into integer register
amomax.w x26, x21, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x7, 0xe55c171e420b12c1 # load random value
la x27, scratch # base address
sd x7, 0(x27) # store in memory
li x7, 0xe8f4499391976270 # load another value into integer register
amomax.w x27, x7, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x15, 0xe6341aea9846191e # load random value
la x28, scratch # base address
sd x15, 0(x28) # store in memory
li x15, 0x070444a00b33506d # load another value into integer register
amomax.w x28, x15, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x15, 0xeb900b5f1b46a310 # load random value
la x29, scratch # base address
sd x15, 0(x29) # store in memory
li x15, 0xa285b46f162cad3f # load another value into integer register
amomax.w x29, x15, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x1, 0x3ef5e9530e83eb96 # load random value
la x30, scratch # base address
sd x1, 0(x30) # store in memory
li x1, 0xae00d98de6f0266a # load another value into integer register
amomax.w x30, x1, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x13, 0xa2a683ed149c4bae # load random value
la x31, scratch # base address
sd x13, 0(x31) # store in memory
li x13, 0x42a1d40394831dbf # load another value into integer register
amomax.w x31, x13, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xa18a15a775cae6b1 # load random value
la x10, scratch # base address
sd x0, 0(x10) # store in memory
li x0, 0x05572ce76c6d415c # load another value into integer register
amomax.w x0, x0, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x1fdf88ef2bac62c8 # load random value
la x31, scratch # base address
sd x1, 0(x31) # store in memory
li x1, 0xba991a487915a55f # load another value into integer register
amomax.w x1, x1, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xa66b78f112e94cae # load random value
la x22, scratch # base address
sd x2, 0(x22) # store in memory
li x2, 0x48fc6806a045c465 # load another value into integer register
amomax.w x2, x2, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x536b817d4c4faba4 # load random value
la x22, scratch # base address
sd x3, 0(x22) # store in memory
li x3, 0xb8c277b35dc4475f # load another value into integer register
amomax.w x3, x3, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc367db272192e53b # load random value
la x18, scratch # base address
sd x4, 0(x18) # store in memory
li x4, 0x10e7cb0957563af4 # load another value into integer register
amomax.w x4, x4, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x45eb358fd65ce36b # load random value
la x4, scratch # base address
sd x5, 0(x4) # store in memory
li x5, 0xee679146bd4bbd39 # load another value into integer register
amomax.w x5, x5, (x4) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8bbfe8522f4a585b # load random value
la x21, scratch # base address
sd x6, 0(x21) # store in memory
li x6, 0xc9fda0352dd404a4 # load another value into integer register
amomax.w x6, x6, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x094968b3e7e378c9 # load random value
la x28, scratch # base address
sd x7, 0(x28) # store in memory
li x7, 0xdc1f4207bf266353 # load another value into integer register
amomax.w x7, x7, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x9b3bf133b91df96f # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomax.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x41b967b987c0efe2 # load random value
la x3, scratch # base address
sd x9, 0(x3) # store in memory
li x9, 0x2632d0cc1311ed13 # load another value into integer register
amomax.w x9, x9, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xafb37ac1f9601d42 # load random value
la x15, scratch # base address
sd x10, 0(x15) # store in memory
li x10, 0x7c0b88de7ada9ede # load another value into integer register
amomax.w x10, x10, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x7140ff5fe709c3dc # load random value
la x7, scratch # base address
sd x11, 0(x7) # store in memory
li x11, 0xd386e2a1f52a7e16 # load another value into integer register
amomax.w x11, x11, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbf63588f1775bd03 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomax.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xc55d9972b0d81585 # load random value
la x14, scratch # base address
sd x13, 0(x14) # store in memory
li x13, 0x3cd73b3152dc72b3 # load another value into integer register
amomax.w x13, x13, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xe3bd08b37400bd6f # load random value
la x16, scratch # base address
sd x14, 0(x16) # store in memory
li x14, 0x09ecb0f6ab70bc15 # load another value into integer register
amomax.w x14, x14, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xabd692b3dbe4177f # load random value
la x2, scratch # base address
sd x15, 0(x2) # store in memory
li x15, 0xe4c23e8c71fd613b # load another value into integer register
amomax.w x15, x15, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x090ea1272c3f275b # load random value
la x24, scratch # base address
sd x16, 0(x24) # store in memory
li x16, 0x1599e07c285421c9 # load another value into integer register
amomax.w x16, x16, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x0e1d3184f19fa6d6 # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0x2ea63939fbeb313e # load another value into integer register
amomax.w x17, x17, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xff16629b0d14f0d1 # load random value
la x25, scratch # base address
sd x18, 0(x25) # store in memory
li x18, 0x5e4837bbaf3c1a66 # load another value into integer register
amomax.w x18, x18, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x78c9f407f32526ad # load random value
la x21, scratch # base address
sd x19, 0(x21) # store in memory
li x19, 0xf0591e34ea2fab42 # load another value into integer register
amomax.w x19, x19, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x37cef7705d67480e # load random value
la x9, scratch # base address
sd x20, 0(x9) # store in memory
li x20, 0x913f3de0aec867b7 # load another value into integer register
amomax.w x20, x20, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xb89ab7b575824c76 # load random value
la x3, scratch # base address
sd x21, 0(x3) # store in memory
li x21, 0xdb5bd6eb383d4910 # load another value into integer register
amomax.w x21, x21, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xbfe22f4d77cfdf19 # load random value
la x29, scratch # base address
sd x22, 0(x29) # store in memory
li x22, 0xc384231953880841 # load another value into integer register
amomax.w x22, x22, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x06ab0d256c6d6bf7 # load random value
la x17, scratch # base address
sd x23, 0(x17) # store in memory
li x23, 0xc60e37caf68a51d7 # load another value into integer register
amomax.w x23, x23, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x03c91b849eb5a365 # load random value
la x8, scratch # base address
sd x24, 0(x8) # store in memory
li x24, 0x15badd7929b9e647 # load another value into integer register
amomax.w x24, x24, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0xddc5efead3e3349d # load random value
la x14, scratch # base address
sd x25, 0(x14) # store in memory
li x25, 0xca9dec0307203b46 # load another value into integer register
amomax.w x25, x25, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x0a08ba5feb509c52 # load random value
la x23, scratch # base address
sd x26, 0(x23) # store in memory
li x26, 0xe8821acc6678473a # load another value into integer register
amomax.w x26, x26, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x7a5e640346747a97 # load random value
la x16, scratch # base address
sd x27, 0(x16) # store in memory
li x27, 0x7e19d6d0ba3bfd74 # load another value into integer register
amomax.w x27, x27, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xc37e9b325e52a542 # load random value
la x14, scratch # base address
sd x28, 0(x14) # store in memory
li x28, 0x78b4aa39788c139c # load another value into integer register
amomax.w x28, x28, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x8de0a19d920826fe # load random value
la x30, scratch # base address
sd x29, 0(x30) # store in memory
li x29, 0x18f51beb49157a1e # load another value into integer register
amomax.w x29, x29, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x09031119ee13a0b8 # load random value
la x9, scratch # base address
sd x30, 0(x9) # store in memory
li x30, 0xdb3d93477119c743 # load another value into integer register
amomax.w x30, x30, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x6dd09196716465a5 # load random value
la x28, scratch # base address
sd x31, 0(x28) # store in memory
li x31, 0x4877660b0a3e5cbb # load another value into integer register
amomax.w x31, x31, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd375ce13273a1025 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomax.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3796fe5ba149059c # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomax.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x5ca1f132fdbcc88c # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomax.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x308cff7462ded2e1 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomax.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf3225fb0b7a8f80b # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomax.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfa43e4e789410105 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomax.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa224c070039e824b # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomax.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x498967ec47c22cc4 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomax.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xeb6414f9847e0073 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomax.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xdf588d3fda9f0a47 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomax.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xaddd9d508b9f1c3a # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomax.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x1e0166adb26d5fe8 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomax.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xcb7a67b6e3cf3dba # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomax.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x5b892e30101fa424 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomax.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf0b79829e58e6ff5 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomax.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2be688eb498a306f # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomax.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x372228d779c214f6 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomax.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x48914d084bfe3858 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomax.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x293cfd639e8510bf # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomax.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x3ed225cbacd4a5a1 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomax.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x3b7ef651a6d0238d # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomax.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xedf850bf1fe97289 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomax.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xf1cf73e31c699565 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomax.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x931e0b6aa7e86154 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomax.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x104c33179f6166d0 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomax.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa36d2984d2c00d92 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomax.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x3f8827033928d1f4 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomax.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xa3662d18fd2ac876 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomax.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x608ba9e1abb0f086 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomax.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x804f3210c38ab963 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomax.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xcfea640f63398530 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomax.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
add x24, x19, x14 # perform first operation
amomax.w x5, x12, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
add x5, x3, x12 # perform first operation
amomax.w x21, x27, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
add x1, x2, x25 # perform first operation
amomax.w x29, x31, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
add x9, x9, x0 # perform first operation
amomax.w x5, x9, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
add x5, x5, x0 # perform first operation
amomax.w x16, x26, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x5, scratch
add x9, x9, x0 # perform first operation
amomax.w x8, x13, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x23, scratch
add x8, x12, x5 # perform first operation
amomax.w x8, x31, (x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x1, scratch
add x5, x17, x14 # perform first operation
amomax.w x5, x26, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
add x12, x14, x18 # perform first operation
amomax.w x12, x8, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
add x9, x11, x20 # perform first operation
amomax.w x11, x13, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x26, x1, x25 # perform first operation
amomax.w x25, x18, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x1, scratch
add x27, x8, x21 # perform first operation
amomax.w x24, x30, (x1) # perform second (triggering) operation

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
