///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amomaxu.w.S
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
li x13, 0x69c7478be32ce3d3 # load random value
la x1, scratch # base address
sd x13, 0(x1) # store in memory
li x13, 0xf0b47132845fe900 # load another value into integer register
amomaxu.w x22, x13, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x22, 0x3181f77b9af33266 # load random value
la x2, scratch # base address
sd x22, 0(x2) # store in memory
li x22, 0x1375734baa42a849 # load another value into integer register
amomaxu.w x9, x22, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0x1822570bf36a28c2 # load random value
la x3, scratch # base address
sd x30, 0(x3) # store in memory
li x30, 0x0a684722ecb4dac4 # load another value into integer register
amomaxu.w x26, x30, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xa6d2dbc4a9f90298 # load random value
la x4, scratch # base address
sd x13, 0(x4) # store in memory
li x13, 0x8029866568627522 # load another value into integer register
amomaxu.w x3, x13, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x249426d073fec44a # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0xcafb904cb6ec28ca # load another value into integer register
amomaxu.w x19, x31, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x2fb4afe569d7d2a7 # load random value
la x6, scratch # base address
sd x4, 0(x6) # store in memory
li x4, 0x5b2799047510b45a # load another value into integer register
amomaxu.w x12, x4, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x311f7b07449c5b0b # load random value
la x7, scratch # base address
sd x2, 0(x7) # store in memory
li x2, 0x47e7c5b04d799b0b # load another value into integer register
amomaxu.w x20, x2, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0xe1ba8712c20edb38 # load random value
la x8, scratch # base address
sd x7, 0(x8) # store in memory
li x7, 0x95ad66e8ac3c4d21 # load another value into integer register
amomaxu.w x16, x7, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0xd65b5cb4ba6bc2ce # load random value
la x9, scratch # base address
sd x18, 0(x9) # store in memory
li x18, 0xfd942cfd0ecf64c0 # load another value into integer register
amomaxu.w x20, x18, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0xa73bcef1ee45d23e # load random value
la x10, scratch # base address
sd x7, 0(x10) # store in memory
li x7, 0x6ae482036e23efaa # load another value into integer register
amomaxu.w x24, x7, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x26, 0x545ad06d0b957644 # load random value
la x11, scratch # base address
sd x26, 0(x11) # store in memory
li x26, 0x25309153fb8f0d0c # load another value into integer register
amomaxu.w x8, x26, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x20, 0x6541b39ceec8db96 # load random value
la x12, scratch # base address
sd x20, 0(x12) # store in memory
li x20, 0x5da56078d2dfeb8c # load another value into integer register
amomaxu.w x21, x20, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0xaf965ae00d541c60 # load random value
la x13, scratch # base address
sd x15, 0(x13) # store in memory
li x15, 0xdb28f3ce17d4b59d # load another value into integer register
amomaxu.w x26, x15, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x89022f1717f9b7f0 # load random value
la x14, scratch # base address
sd x12, 0(x14) # store in memory
li x12, 0x35c141d943458a60 # load another value into integer register
amomaxu.w x27, x12, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x0537db930fa41d0b # load random value
la x15, scratch # base address
sd x21, 0(x15) # store in memory
li x21, 0xe6276cd08affa9a9 # load another value into integer register
amomaxu.w x17, x21, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x0000297a3ffdb8bd # load random value
la x16, scratch # base address
sd x1, 0(x16) # store in memory
li x1, 0x891f8ab1bb959bd0 # load another value into integer register
amomaxu.w x31, x1, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x6, 0x632d075a2f2b334d # load random value
la x17, scratch # base address
sd x6, 0(x17) # store in memory
li x6, 0x7ccd19badb74fd9a # load another value into integer register
amomaxu.w x12, x6, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x4e6dcb055084fe22 # load random value
la x18, scratch # base address
sd x1, 0(x18) # store in memory
li x1, 0xc62690ac8347bf10 # load another value into integer register
amomaxu.w x20, x1, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0xe52f204636011cad # load random value
la x19, scratch # base address
sd x17, 0(x19) # store in memory
li x17, 0x9fe1a1fc75e0d9d1 # load another value into integer register
amomaxu.w x7, x17, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x6f3158018dafaef6 # load random value
la x20, scratch # base address
sd x23, 0(x20) # store in memory
li x23, 0xfe03b9d2e6124e7d # load another value into integer register
amomaxu.w x5, x23, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x2, 0xe7fde46bec4276fd # load random value
la x21, scratch # base address
sd x2, 0(x21) # store in memory
li x2, 0x3f201a5f7e3f1d33 # load another value into integer register
amomaxu.w x9, x2, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0x0f3c9a592c51329c # load random value
la x22, scratch # base address
sd x31, 0(x22) # store in memory
li x31, 0xc6bdbd7038d2591d # load another value into integer register
amomaxu.w x21, x31, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x19, 0xcfa0f5258f363e08 # load random value
la x23, scratch # base address
sd x19, 0(x23) # store in memory
li x19, 0x13ff7f6382b4cb98 # load another value into integer register
amomaxu.w x17, x19, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0xe425cf3dd8977a50 # load random value
la x24, scratch # base address
sd x22, 0(x24) # store in memory
li x22, 0xb3868fd0d74379f2 # load another value into integer register
amomaxu.w x26, x22, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x20, 0xa89cfebb60724b8d # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x8aa9383464f185c3 # load another value into integer register
amomaxu.w x27, x20, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x24, 0xa5205756b08f301d # load random value
la x26, scratch # base address
sd x24, 0(x26) # store in memory
li x24, 0xe91503a311c96947 # load another value into integer register
amomaxu.w x25, x24, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x14, 0x097cc83f06a68fc4 # load random value
la x27, scratch # base address
sd x14, 0(x27) # store in memory
li x14, 0x164147887193dd18 # load another value into integer register
amomaxu.w x30, x14, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xa1c6f916eb6d6918 # load random value
la x28, scratch # base address
sd x30, 0(x28) # store in memory
li x30, 0x60ab742f238fca93 # load another value into integer register
amomaxu.w x10, x30, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0x9b457d93e8df6e39 # load random value
la x29, scratch # base address
sd x20, 0(x29) # store in memory
li x20, 0x246b9d7ff57be7cc # load another value into integer register
amomaxu.w x6, x20, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x24, 0x48d07d4d77d2d211 # load random value
la x30, scratch # base address
sd x24, 0(x30) # store in memory
li x24, 0xb207b3f94318c4e1 # load another value into integer register
amomaxu.w x31, x24, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0x49586ddd6f20f4ef # load random value
la x31, scratch # base address
sd x28, 0(x31) # store in memory
li x28, 0x586d741b1c2518fd # load another value into integer register
amomaxu.w x30, x28, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xc5849216f49df085 # load random value
la x11, scratch # base address
sd x0, 0(x11) # store in memory
li x0, 0x1bda33834ff45ed8 # load another value into integer register
amomaxu.w x5, x0, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xc3293d799dcaa57c # load random value
la x7, scratch # base address
sd x1, 0(x7) # store in memory
li x1, 0x199f6d4ac6ab2d73 # load another value into integer register
amomaxu.w x12, x1, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xef078cf510f7d554 # load random value
la x12, scratch # base address
sd x2, 0(x12) # store in memory
li x2, 0xffd7e57843cb11a1 # load another value into integer register
amomaxu.w x24, x2, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x0b85c61c97180bb6 # load random value
la x12, scratch # base address
sd x3, 0(x12) # store in memory
li x3, 0x89c3eaafe73fe6a8 # load another value into integer register
amomaxu.w x31, x3, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8312ead3551545dd # load random value
la x13, scratch # base address
sd x4, 0(x13) # store in memory
li x4, 0x45580bc3db50b98b # load another value into integer register
amomaxu.w x31, x4, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe79c99e33c67570f # load random value
la x1, scratch # base address
sd x5, 0(x1) # store in memory
li x5, 0x009e96d42960ccee # load another value into integer register
amomaxu.w x21, x5, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6f884b8cfe7650fc # load random value
la x24, scratch # base address
sd x6, 0(x24) # store in memory
li x6, 0xaf0a9a6a2d927d2e # load another value into integer register
amomaxu.w x17, x6, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x81b2686f8a8e0e13 # load random value
la x15, scratch # base address
sd x7, 0(x15) # store in memory
li x7, 0x77a06ff6e04b2440 # load another value into integer register
amomaxu.w x30, x7, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x4ee8c412288de591 # load random value
la x27, scratch # base address
sd x8, 0(x27) # store in memory
li x8, 0x2ef78ccc91e20b41 # load another value into integer register
amomaxu.w x25, x8, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8e3d4573b2a0d7d0 # load random value
la x22, scratch # base address
sd x9, 0(x22) # store in memory
li x9, 0xd5ab1fa478932d53 # load another value into integer register
amomaxu.w x29, x9, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xd60d31f417a99417 # load random value
la x8, scratch # base address
sd x10, 0(x8) # store in memory
li x10, 0xb69ebad087f4a3e4 # load another value into integer register
amomaxu.w x30, x10, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x7b02c74bbb1f3be6 # load random value
la x20, scratch # base address
sd x11, 0(x20) # store in memory
li x11, 0xd79c8746984da748 # load another value into integer register
amomaxu.w x29, x11, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x6d153f4a416ea8db # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0x22fda4288daa169f # load another value into integer register
amomaxu.w x1, x12, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xa131aeea10d09504 # load random value
la x21, scratch # base address
sd x13, 0(x21) # store in memory
li x13, 0x9fc4e7de63121d5f # load another value into integer register
amomaxu.w x17, x13, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x7d12e6f25114289d # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0xac192a0e9f32fe27 # load another value into integer register
amomaxu.w x20, x14, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xcc013f36979cc8d8 # load random value
la x28, scratch # base address
sd x15, 0(x28) # store in memory
li x15, 0x161f5a305c20ebf3 # load another value into integer register
amomaxu.w x31, x15, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x990cd381bc0161c3 # load random value
la x5, scratch # base address
sd x16, 0(x5) # store in memory
li x16, 0x54403c42c4ec1ab8 # load another value into integer register
amomaxu.w x9, x16, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x0e6729f899f15df6 # load random value
la x13, scratch # base address
sd x17, 0(x13) # store in memory
li x17, 0xf673bd0c502c6efc # load another value into integer register
amomaxu.w x18, x17, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x88066ea559217bcd # load random value
la x22, scratch # base address
sd x18, 0(x22) # store in memory
li x18, 0xc47ec8ffa01fd9f5 # load another value into integer register
amomaxu.w x21, x18, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x5d422487dc19ca82 # load random value
la x18, scratch # base address
sd x19, 0(x18) # store in memory
li x19, 0x8166d69081148a91 # load another value into integer register
amomaxu.w x30, x19, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x219ee4c1695adee7 # load random value
la x22, scratch # base address
sd x20, 0(x22) # store in memory
li x20, 0x8ac270562df95ebf # load another value into integer register
amomaxu.w x5, x20, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x839678b58b3b9ed9 # load random value
la x18, scratch # base address
sd x21, 0(x18) # store in memory
li x21, 0x6b0f56699fcc6150 # load another value into integer register
amomaxu.w x12, x21, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x935d54db8f386f68 # load random value
la x2, scratch # base address
sd x22, 0(x2) # store in memory
li x22, 0x3c3b26461969ee0a # load another value into integer register
amomaxu.w x28, x22, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xe9d5c6ed3652f7c4 # load random value
la x25, scratch # base address
sd x23, 0(x25) # store in memory
li x23, 0x70236d07751cc764 # load another value into integer register
amomaxu.w x17, x23, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xc09c2fce8e1b3ef6 # load random value
la x5, scratch # base address
sd x24, 0(x5) # store in memory
li x24, 0xf41eb67399f933e8 # load another value into integer register
amomaxu.w x21, x24, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x2b022fc74ceb8165 # load random value
la x1, scratch # base address
sd x25, 0(x1) # store in memory
li x25, 0x440b9b7fdc3268c6 # load another value into integer register
amomaxu.w x8, x25, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x451358a81751569c # load random value
la x28, scratch # base address
sd x26, 0(x28) # store in memory
li x26, 0xec5884ec41c275d6 # load another value into integer register
amomaxu.w x29, x26, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x874a3a12167139bd # load random value
la x31, scratch # base address
sd x27, 0(x31) # store in memory
li x27, 0x21b9b3f727f7d194 # load another value into integer register
amomaxu.w x21, x27, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x5f72ed68afa8d6fa # load random value
la x22, scratch # base address
sd x28, 0(x22) # store in memory
li x28, 0xfe98bc117f8aabf3 # load another value into integer register
amomaxu.w x16, x28, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x53c1b321b5c1feee # load random value
la x21, scratch # base address
sd x29, 0(x21) # store in memory
li x29, 0x03515acfc18c48fb # load another value into integer register
amomaxu.w x24, x29, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xf87c23a0b6059de6 # load random value
la x19, scratch # base address
sd x30, 0(x19) # store in memory
li x30, 0xd47c9799e04bb24a # load another value into integer register
amomaxu.w x14, x30, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x1387260e773e14b9 # load random value
la x7, scratch # base address
sd x31, 0(x7) # store in memory
li x31, 0xaa739cfc93837a3d # load another value into integer register
amomaxu.w x28, x31, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x8, 0xc68e04a422d2d4e8 # load random value
la x25, scratch # base address
sd x8, 0(x25) # store in memory
li x8, 0x4e5cae7db1ce76e8 # load another value into integer register
amomaxu.w x0, x8, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x31, 0xa56c171302303af3 # load random value
la x16, scratch # base address
sd x31, 0(x16) # store in memory
li x31, 0xc058eae619bc562f # load another value into integer register
amomaxu.w x1, x31, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x1, 0x990dd7d1784b4a77 # load random value
la x21, scratch # base address
sd x1, 0(x21) # store in memory
li x1, 0x0ca97da2c9569fd4 # load another value into integer register
amomaxu.w x2, x1, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x25, 0xbd923a5b5daca6a0 # load random value
la x5, scratch # base address
sd x25, 0(x5) # store in memory
li x25, 0xf9a1bddf7209f554 # load another value into integer register
amomaxu.w x3, x25, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xe764f5de94a110a9 # load random value
la x10, scratch # base address
sd x2, 0(x10) # store in memory
li x2, 0xa926fd1275c2930f # load another value into integer register
amomaxu.w x4, x2, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0xf9161d619f45f146 # load random value
la x31, scratch # base address
sd x29, 0(x31) # store in memory
li x29, 0xcbc95308b6cd0a4a # load another value into integer register
amomaxu.w x5, x29, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xe0efc1f1215c371a # load random value
la x5, scratch # base address
sd x30, 0(x5) # store in memory
li x30, 0xa5400d7be99562c0 # load another value into integer register
amomaxu.w x6, x30, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x993dee50d6a808c2 # load random value
la x20, scratch # base address
sd x11, 0(x20) # store in memory
li x11, 0xb595f251fe69dc5c # load another value into integer register
amomaxu.w x7, x11, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x14, 0x028a2351239608c2 # load random value
la x22, scratch # base address
sd x14, 0(x22) # store in memory
li x14, 0xc864db8e66b26972 # load another value into integer register
amomaxu.w x8, x14, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x8ad70eb5a99c4a42 # load random value
la x11, scratch # base address
sd x8, 0(x11) # store in memory
li x8, 0x0e02c7195dc48777 # load another value into integer register
amomaxu.w x9, x8, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xc647a39dc7ab6975 # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0x1abdc6df3d2ada13 # load another value into integer register
amomaxu.w x10, x14, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x95b001cd18bfdcaf # load random value
la x13, scratch # base address
sd x3, 0(x13) # store in memory
li x3, 0xbc9a61c9f3e0b828 # load another value into integer register
amomaxu.w x11, x3, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x7b3741fe9ece2d46 # load random value
la x8, scratch # base address
sd x23, 0(x8) # store in memory
li x23, 0xc3f32be758519193 # load another value into integer register
amomaxu.w x12, x23, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x9, 0xad7ea1a16774f068 # load random value
la x12, scratch # base address
sd x9, 0(x12) # store in memory
li x9, 0xe09fc5914d37e293 # load another value into integer register
amomaxu.w x13, x9, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x1, 0x5381cdc1cfdb2409 # load random value
la x25, scratch # base address
sd x1, 0(x25) # store in memory
li x1, 0xf7b56ca425072e92 # load another value into integer register
amomaxu.w x14, x1, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x27, 0xd7015f34ee4fff42 # load random value
la x21, scratch # base address
sd x27, 0(x21) # store in memory
li x27, 0xfda1defc09e5735b # load another value into integer register
amomaxu.w x15, x27, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x0011df3f8ea55d3b # load random value
la x2, scratch # base address
sd x12, 0(x2) # store in memory
li x12, 0xd8531011b5a8ee0a # load another value into integer register
amomaxu.w x16, x12, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x412de24e94071337 # load random value
la x20, scratch # base address
sd x7, 0(x20) # store in memory
li x7, 0x3bd82fd5f6df4092 # load another value into integer register
amomaxu.w x17, x7, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x9, 0xa58056dd1bbf2853 # load random value
la x28, scratch # base address
sd x9, 0(x28) # store in memory
li x9, 0xa95a33e7a58b6685 # load another value into integer register
amomaxu.w x18, x9, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x5, 0x8def6641c9e6bafc # load random value
la x18, scratch # base address
sd x5, 0(x18) # store in memory
li x5, 0x8faa33bcec12b754 # load another value into integer register
amomaxu.w x19, x5, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x30, 0x4cf320a064961540 # load random value
la x7, scratch # base address
sd x30, 0(x7) # store in memory
li x30, 0x37c3d24c575f2af0 # load another value into integer register
amomaxu.w x20, x30, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x9, 0x3aa02c2aa3e24986 # load random value
la x12, scratch # base address
sd x9, 0(x12) # store in memory
li x9, 0x540e122038cb49a4 # load another value into integer register
amomaxu.w x21, x9, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x416447ba60bd77e8 # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x8559fbdb6a11654b # load another value into integer register
amomaxu.w x22, x20, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x20, 0xc81cba3272ffdaff # load random value
la x24, scratch # base address
sd x20, 0(x24) # store in memory
li x20, 0xa0124c33bd459f4c # load another value into integer register
amomaxu.w x23, x20, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x7, 0x1fda3373fad06ca6 # load random value
la x13, scratch # base address
sd x7, 0(x13) # store in memory
li x7, 0xadb221aa3a214507 # load another value into integer register
amomaxu.w x24, x7, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x20, 0x38188032f0cbc17e # load random value
la x7, scratch # base address
sd x20, 0(x7) # store in memory
li x20, 0x0867b8194f1d97ca # load another value into integer register
amomaxu.w x25, x20, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x18, 0x455de59f271d7108 # load random value
la x6, scratch # base address
sd x18, 0(x6) # store in memory
li x18, 0x8a0d3af46a79bc39 # load another value into integer register
amomaxu.w x26, x18, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x4ebbc1cf4b721ca2 # load random value
la x29, scratch # base address
sd x19, 0(x29) # store in memory
li x19, 0x3e3facbe81b60fe6 # load another value into integer register
amomaxu.w x27, x19, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x7, 0x0fb65cb2b6435565 # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0xcc2ff17858ff0287 # load another value into integer register
amomaxu.w x28, x7, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x23, 0xcb45e029a4d00edb # load random value
la x2, scratch # base address
sd x23, 0(x2) # store in memory
li x23, 0xe7472f6a4bf0370e # load another value into integer register
amomaxu.w x29, x23, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x31, 0x81fb35ea502c1c54 # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0x662e1b6936c05a46 # load another value into integer register
amomaxu.w x30, x31, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x6, 0xb0e57ff048701686 # load random value
la x26, scratch # base address
sd x6, 0(x26) # store in memory
li x6, 0xed8727184b4f3f6b # load another value into integer register
amomaxu.w x31, x6, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x5bba77d3e5192a24 # load random value
la x18, scratch # base address
sd x20, 0(x18) # store in memory
li x20, 0x0000000000000000 # load another value into integer register
amomaxu.w x29, x20, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x4a33f6e128802e67 # load random value
la x23, scratch # base address
sd x18, 0(x23) # store in memory
li x18, 0x0000000000000001 # load another value into integer register
amomaxu.w x1, x18, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x9a023f6bf6f93e9c # load random value
la x18, scratch # base address
sd x17, 0(x18) # store in memory
li x17, 0x0000000000000002 # load another value into integer register
amomaxu.w x21, x17, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0xcf02fa77de5864b3 # load random value
la x15, scratch # base address
sd x22, 0(x15) # store in memory
li x22, 0x8000000000000000 # load another value into integer register
amomaxu.w x1, x22, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x3, 0xff5c3c49c3906e08 # load random value
la x31, scratch # base address
sd x3, 0(x31) # store in memory
li x3, 0x8000000000000001 # load another value into integer register
amomaxu.w x18, x3, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x16, 0xa067041e31667f6b # load random value
la x29, scratch # base address
sd x16, 0(x29) # store in memory
li x16, 0x7fffffffffffffff # load another value into integer register
amomaxu.w x8, x16, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0xef9726c18e7289d8 # load random value
la x22, scratch # base address
sd x20, 0(x22) # store in memory
li x20, 0x7ffffffffffffffe # load another value into integer register
amomaxu.w x15, x20, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x22, 0x732cc1fe2e5a531f # load random value
la x18, scratch # base address
sd x22, 0(x18) # store in memory
li x22, 0xffffffffffffffff # load another value into integer register
amomaxu.w x7, x22, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x27, 0x014b5224467a6df2 # load random value
la x12, scratch # base address
sd x27, 0(x12) # store in memory
li x27, 0xfffffffffffffffe # load another value into integer register
amomaxu.w x6, x27, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x3, 0xc409c5ad73ffbdcc # load random value
la x17, scratch # base address
sd x3, 0(x17) # store in memory
li x3, 0x5bbc887763ae86f2 # load another value into integer register
amomaxu.w x2, x3, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xfa9af245de8fac63 # load random value
la x20, scratch # base address
sd x14, 0(x20) # store in memory
li x14, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amomaxu.w x3, x14, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0xfe8cf62d3e56443d # load random value
la x23, scratch # base address
sd x12, 0(x23) # store in memory
li x12, 0x5555555555555555 # load another value into integer register
amomaxu.w x15, x12, (x23) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0xe02cc726c4212ac0 # load random value
la x2, scratch # base address
sd x21, 0(x2) # store in memory
li x21, 0x00000000ffffffff # load another value into integer register
amomaxu.w x22, x21, (x2) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xce7b870d23e279eb # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0x00000000fffffffe # load another value into integer register
amomaxu.w x14, x18, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x27, 0xd3c0e231beb9cd4e # load random value
la x15, scratch # base address
sd x27, 0(x15) # store in memory
li x27, 0x0000000100000000 # load another value into integer register
amomaxu.w x12, x27, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x24, 0xafd29e4b91f71832 # load random value
la x21, scratch # base address
sd x24, 0(x21) # store in memory
li x24, 0x0000000100000001 # load another value into integer register
amomaxu.w x12, x24, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x223575fbc791e40a # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomaxu.w x11, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd33f828723c16715 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomaxu.w x20, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc07168f55ad88e86 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomaxu.w x20, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf1411e6bdaf76dca # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomaxu.w x25, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb066d6468fc30720 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomaxu.w x6, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0xa566ba6c0f4e885c # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomaxu.w x16, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x53fedab063684e67 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomaxu.w x18, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x0286a64e94c5c23b # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomaxu.w x30, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x7fd23819ab88cd79 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomaxu.w x10, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf7825498a7d0b9ed # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomaxu.w x21, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa802c69ab4ecc74a # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomaxu.w x27, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x855342c4705a4b79 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomaxu.w x24, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0ecb923bc92a77ae # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomaxu.w x22, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x33592e7d271b6f88 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomaxu.w x27, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xfae29ea6f7ca008b # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomaxu.w x7, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6fe9f1c5cba621b7 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomaxu.w x30, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd3374e865071878c # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomaxu.w x7, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x53f0023534e5c219 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomaxu.w x6, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x70fd763771ee2c2a # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomaxu.w x14, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x1c9601cea1d0043c # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomaxu.w x31, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb5a117f6e49c4f99 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomaxu.w x6, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xf06fd40d531adb0c # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomaxu.w x1, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5251f1f7cfaa159b # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomaxu.w x17, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xd188fd34d6cdb06e # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomaxu.w x7, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf3665b273863ab24 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomaxu.w x24, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x97279fe22388be8f # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomaxu.w x20, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xfbc8df9b149a7c55 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomaxu.w x31, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0148fc0357fce130 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomaxu.w x12, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf2f0f53bd8f1ecb6 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomaxu.w x3, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x65949596bbe7a1cc # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomaxu.w x5, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x29bd0e50e7a11c59 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomaxu.w x25, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x24, 0x2ab6de8cd126f38c # load random value
la x1, scratch # base address
sd x24, 0(x1) # store in memory
li x24, 0xfc9b39c1c8ee329a # load another value into integer register
amomaxu.w x1, x24, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x12, 0x28ce3771e56645e8 # load random value
la x2, scratch # base address
sd x12, 0(x2) # store in memory
li x12, 0x5d45a533e49283fd # load another value into integer register
amomaxu.w x2, x12, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x1, 0xe4f00f54833e0fd8 # load random value
la x3, scratch # base address
sd x1, 0(x3) # store in memory
li x1, 0xb9272d4afb5cf76b # load another value into integer register
amomaxu.w x3, x1, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xda1e846624406ddd # load random value
la x4, scratch # base address
sd x23, 0(x4) # store in memory
li x23, 0x35ec6dcdf31f3833 # load another value into integer register
amomaxu.w x4, x23, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x21683679968fa773 # load random value
la x5, scratch # base address
sd x21, 0(x5) # store in memory
li x21, 0xa6fc87615fe56ab5 # load another value into integer register
amomaxu.w x5, x21, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x541b5b53e5acd79b # load random value
la x6, scratch # base address
sd x22, 0(x6) # store in memory
li x22, 0x4ab9fc3192888ec7 # load another value into integer register
amomaxu.w x6, x22, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x3a121141d35f421a # load random value
la x7, scratch # base address
sd x16, 0(x7) # store in memory
li x16, 0x87e99fc12a875c3b # load another value into integer register
amomaxu.w x7, x16, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x23, 0x623541bb183a6bdb # load random value
la x8, scratch # base address
sd x23, 0(x8) # store in memory
li x23, 0x85aabc25a642f6c1 # load another value into integer register
amomaxu.w x8, x23, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x3, 0xa422813b127d4be7 # load random value
la x9, scratch # base address
sd x3, 0(x9) # store in memory
li x3, 0x49a7095b3354beaa # load another value into integer register
amomaxu.w x9, x3, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x9, 0x7481eac82a737bc7 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x8d065dbc1782f65b # load another value into integer register
amomaxu.w x10, x9, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x13, 0x7c1816aad2e622c6 # load random value
la x11, scratch # base address
sd x13, 0(x11) # store in memory
li x13, 0x4052162ff6a2c399 # load another value into integer register
amomaxu.w x11, x13, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x10, 0x8c207248cb0bf792 # load random value
la x12, scratch # base address
sd x10, 0(x12) # store in memory
li x10, 0x6683927a8bf90223 # load another value into integer register
amomaxu.w x12, x10, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x26, 0x9e704d3ec1646235 # load random value
la x13, scratch # base address
sd x26, 0(x13) # store in memory
li x26, 0xb52933109daf9bef # load another value into integer register
amomaxu.w x13, x26, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x8, 0xaf5491d6aa8b09f7 # load random value
la x14, scratch # base address
sd x8, 0(x14) # store in memory
li x8, 0xe602472c084225db # load another value into integer register
amomaxu.w x14, x8, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x5, 0x31fc3044d0a560f5 # load random value
la x15, scratch # base address
sd x5, 0(x15) # store in memory
li x5, 0x6af0bcfcd820d7b8 # load another value into integer register
amomaxu.w x15, x5, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x17, 0x1944e3a67cc30959 # load random value
la x16, scratch # base address
sd x17, 0(x16) # store in memory
li x17, 0xde99c1a1d1a2d090 # load another value into integer register
amomaxu.w x16, x17, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x11, 0x7d3513541d983928 # load random value
la x17, scratch # base address
sd x11, 0(x17) # store in memory
li x11, 0x1a28b60889a64d8b # load another value into integer register
amomaxu.w x17, x11, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x23, 0xb39695178c9b9db9 # load random value
la x18, scratch # base address
sd x23, 0(x18) # store in memory
li x23, 0x2503f68f5adf6864 # load another value into integer register
amomaxu.w x18, x23, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x80c05178120a65af # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomaxu.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x15, 0x6bcdc2d583aad6e0 # load random value
la x20, scratch # base address
sd x15, 0(x20) # store in memory
li x15, 0x4884fd037f82f7ca # load another value into integer register
amomaxu.w x20, x15, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x1, 0xaa73450485e48e02 # load random value
la x21, scratch # base address
sd x1, 0(x21) # store in memory
li x1, 0x6b344a7dbf72fca2 # load another value into integer register
amomaxu.w x21, x1, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x6, 0xea0ab137ede8927e # load random value
la x22, scratch # base address
sd x6, 0(x22) # store in memory
li x6, 0xb1f06df5195c1113 # load another value into integer register
amomaxu.w x22, x6, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x14, 0x7fe77899560b0f65 # load random value
la x23, scratch # base address
sd x14, 0(x23) # store in memory
li x14, 0xc63aa7d678116980 # load another value into integer register
amomaxu.w x23, x14, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x12, 0x3b88a46459ad00cf # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0xd01b2507159b509b # load another value into integer register
amomaxu.w x24, x12, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x3, 0x468f2721c91524df # load random value
la x25, scratch # base address
sd x3, 0(x25) # store in memory
li x3, 0xa84c7e614cd99ac7 # load another value into integer register
amomaxu.w x25, x3, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x2, 0x089b9bf7913d0717 # load random value
la x26, scratch # base address
sd x2, 0(x26) # store in memory
li x2, 0xba80f04974175c7a # load another value into integer register
amomaxu.w x26, x2, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x28, 0x6ef71b18c36f48af # load random value
la x27, scratch # base address
sd x28, 0(x27) # store in memory
li x28, 0x31b08a9da05cacbe # load another value into integer register
amomaxu.w x27, x28, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x078a7aa44f2c776e # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomaxu.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x28, 0xea7565864b119245 # load random value
la x29, scratch # base address
sd x28, 0(x29) # store in memory
li x28, 0xc239a2fd64a50869 # load another value into integer register
amomaxu.w x29, x28, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x29, 0x6727a8e48c63a9f5 # load random value
la x30, scratch # base address
sd x29, 0(x30) # store in memory
li x29, 0x64c6847e5bc0e28b # load another value into integer register
amomaxu.w x30, x29, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x12, 0xca2dafb95eaddc38 # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0xf49e73d203c1fd5e # load another value into integer register
amomaxu.w x31, x12, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x3d88a248093e09a2 # load random value
la x15, scratch # base address
sd x0, 0(x15) # store in memory
li x0, 0x2684f2ed8c7a2824 # load another value into integer register
amomaxu.w x0, x0, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x31b72347e9b1ccb5 # load random value
la x17, scratch # base address
sd x1, 0(x17) # store in memory
li x1, 0x608c62c38d317f1a # load another value into integer register
amomaxu.w x1, x1, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x810cc88fba2dc23e # load random value
la x1, scratch # base address
sd x2, 0(x1) # store in memory
li x2, 0xd76048fd9cf37076 # load another value into integer register
amomaxu.w x2, x2, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x744339b29de8aae1 # load random value
la x31, scratch # base address
sd x3, 0(x31) # store in memory
li x3, 0xd1d37a2a90d6fde2 # load another value into integer register
amomaxu.w x3, x3, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9308d917d9687664 # load random value
la x12, scratch # base address
sd x4, 0(x12) # store in memory
li x4, 0x7e4752f9f280f2a8 # load another value into integer register
amomaxu.w x4, x4, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4d807f2133e36816 # load random value
la x3, scratch # base address
sd x5, 0(x3) # store in memory
li x5, 0xa30255cdc9b98126 # load another value into integer register
amomaxu.w x5, x5, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xec8543587c51221a # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0x505aff787b9da835 # load another value into integer register
amomaxu.w x6, x6, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xba6c5b852d2385bb # load random value
la x17, scratch # base address
sd x7, 0(x17) # store in memory
li x7, 0x58733d9c1293eb2c # load another value into integer register
amomaxu.w x7, x7, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xa3a026035ac8559f # load random value
la x18, scratch # base address
sd x8, 0(x18) # store in memory
li x8, 0xfadcdf7f6e6b76ad # load another value into integer register
amomaxu.w x8, x8, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x9c2fee7d8611eb4a # load random value
la x29, scratch # base address
sd x9, 0(x29) # store in memory
li x9, 0x338dc7d9defe7d15 # load another value into integer register
amomaxu.w x9, x9, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x13f77645133c50a0 # load random value
la x15, scratch # base address
sd x10, 0(x15) # store in memory
li x10, 0xc03b43f6d8ab6021 # load another value into integer register
amomaxu.w x10, x10, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xdd80f6891d6960a1 # load random value
la x14, scratch # base address
sd x11, 0(x14) # store in memory
li x11, 0x6dca9f2cfb4ad782 # load another value into integer register
amomaxu.w x11, x11, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x14ff92610bce938e # load random value
la x7, scratch # base address
sd x12, 0(x7) # store in memory
li x12, 0xbd7e09ac0c885ffd # load another value into integer register
amomaxu.w x12, x12, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x7b8be9cbbb3b3c0b # load random value
la x15, scratch # base address
sd x13, 0(x15) # store in memory
li x13, 0x010bcada77f5756d # load another value into integer register
amomaxu.w x13, x13, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xe8c7d8eabfa34fe7 # load random value
la x26, scratch # base address
sd x14, 0(x26) # store in memory
li x14, 0xddacb4e8b06d60df # load another value into integer register
amomaxu.w x14, x14, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x8aff0ad6fa72fbe4 # load random value
la x8, scratch # base address
sd x15, 0(x8) # store in memory
li x15, 0xbbedbd5bbdf1262e # load another value into integer register
amomaxu.w x15, x15, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x9289979f4cde62cd # load random value
la x26, scratch # base address
sd x16, 0(x26) # store in memory
li x16, 0x1c1bb935a35408f1 # load another value into integer register
amomaxu.w x16, x16, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x06e8a33366c6d44a # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomaxu.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xc3b3915b22d90697 # load random value
la x2, scratch # base address
sd x18, 0(x2) # store in memory
li x18, 0x73a7e8b3657e39cf # load another value into integer register
amomaxu.w x18, x18, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x8f5fbd62dae7fcb4 # load random value
la x22, scratch # base address
sd x19, 0(x22) # store in memory
li x19, 0x73aae88ab021fb46 # load another value into integer register
amomaxu.w x19, x19, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x20d20f601fef2384 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomaxu.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xf86679c521789110 # load random value
la x14, scratch # base address
sd x21, 0(x14) # store in memory
li x21, 0x29573178d5ad13c2 # load another value into integer register
amomaxu.w x21, x21, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x3f31c7466a6c1aad # load random value
la x5, scratch # base address
sd x22, 0(x5) # store in memory
li x22, 0xcbc2850453fa770e # load another value into integer register
amomaxu.w x22, x22, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xba05e509c66b4c47 # load random value
la x27, scratch # base address
sd x23, 0(x27) # store in memory
li x23, 0x3242b48855fcab59 # load another value into integer register
amomaxu.w x23, x23, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x6b704b45b9097d35 # load random value
la x30, scratch # base address
sd x24, 0(x30) # store in memory
li x24, 0xc720f4901e7a4c62 # load another value into integer register
amomaxu.w x24, x24, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x93415dfd1dc3309c # load random value
la x20, scratch # base address
sd x25, 0(x20) # store in memory
li x25, 0x86dfaf6b09fcc7cc # load another value into integer register
amomaxu.w x25, x25, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xdd15c1128456ddb3 # load random value
la x24, scratch # base address
sd x26, 0(x24) # store in memory
li x26, 0x770a7fc7b8d79245 # load another value into integer register
amomaxu.w x26, x26, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xb074c7fd0d13f709 # load random value
la x3, scratch # base address
sd x27, 0(x3) # store in memory
li x27, 0xea6bb8059fb2816e # load another value into integer register
amomaxu.w x27, x27, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x67b565af3e8e1135 # load random value
la x29, scratch # base address
sd x28, 0(x29) # store in memory
li x28, 0xc4d86738f2a9e716 # load another value into integer register
amomaxu.w x28, x28, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x23c9b71bf9722a5e # load random value
la x8, scratch # base address
sd x29, 0(x8) # store in memory
li x29, 0x374a3c4186de3ee6 # load another value into integer register
amomaxu.w x29, x29, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x9e1c3b71ff7840c7 # load random value
la x23, scratch # base address
sd x30, 0(x23) # store in memory
li x30, 0x86feb93920cbbbc3 # load another value into integer register
amomaxu.w x30, x30, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x4fa8b23fd01da7e5 # load random value
la x20, scratch # base address
sd x31, 0(x20) # store in memory
li x31, 0xe62bffecba50af2c # load another value into integer register
amomaxu.w x31, x31, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xdaaf34e9b8941c48 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomaxu.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x79f6dc272e4e7768 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomaxu.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x6056773bae261a69 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomaxu.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x03ab32d33aead346 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomaxu.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3f69158a72fff274 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomaxu.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9c13dd98751583db # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomaxu.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0b30b5a015b7c588 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomaxu.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbc1efcf436818e66 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomaxu.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x118990e7186a036a # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomaxu.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5c02cbf611bad680 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomaxu.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb8a3323fe3e1ac76 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomaxu.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8576ebb91da48fb7 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomaxu.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3b47cba137131979 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomaxu.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xb9738b568fcdccfd # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomaxu.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7054275ab726d30c # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomaxu.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x593240d476f44749 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomaxu.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3e69ee2075a73ea9 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomaxu.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x01ff09e5cc3f0de1 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomaxu.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7cb27370e5d34b6b # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomaxu.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x49841e1e58a179f1 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomaxu.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x38ab9c9c58c85b99 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomaxu.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x8474fad96e2baf1c # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomaxu.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbd5b3cd581b00119 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomaxu.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x2f35ce0aa2828b02 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomaxu.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x0e09b9fc31441ab6 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomaxu.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8c20df66d82b9379 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomaxu.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc205e1965ca6db1e # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomaxu.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x2a1c42b9cec1d44b # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomaxu.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5cd1300295c70b95 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomaxu.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x683884bd6c2b6adf # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomaxu.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x2609d649c2d3af2c # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomaxu.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
add x22, x20, x26 # perform first operation
amomaxu.w x16, x14, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
add x8, x18, x10 # perform first operation
amomaxu.w x9, x6, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x7, scratch
add x2, x25, x31 # perform first operation
amomaxu.w x17, x22, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
add x2, x2, x0 # perform first operation
amomaxu.w x1, x2, (x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x25, scratch
add x25, x25, x0 # perform first operation
amomaxu.w x12, x16, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
add x18, x18, x0 # perform first operation
amomaxu.w x18, x31, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x29, scratch
add x19, x10, x14 # perform first operation
amomaxu.w x19, x11, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x21, scratch
add x3, x6, x25 # perform first operation
amomaxu.w x3, x2, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x2, scratch
add x22, x15, x24 # perform first operation
amomaxu.w x22, x5, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x13, scratch
add x22, x10, x20 # perform first operation
amomaxu.w x10, x21, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
add x8, x18, x16 # perform first operation
amomaxu.w x16, x25, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x28, scratch
add x2, x3, x19 # perform first operation
amomaxu.w x29, x22, (x28) # perform second (triggering) operation

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
