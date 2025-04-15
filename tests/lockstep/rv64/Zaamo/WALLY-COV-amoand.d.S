///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoand.d.S
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
li x30, 0x5dd5b3f9badda20e # load random value
la x1, scratch # base address
sd x30, 0(x1) # store in memory
li x30, 0x6f4a7f85509f3842 # load another value into integer register
amoand.d x29, x30, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x4e059c7aef62b5dc # load random value
la x2, scratch # base address
sd x13, 0(x2) # store in memory
li x13, 0x5fa630465051eb79 # load another value into integer register
amoand.d x27, x13, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0x997847144298c46b # load random value
la x3, scratch # base address
sd x29, 0(x3) # store in memory
li x29, 0xb64a358b06fe6dd2 # load another value into integer register
amoand.d x30, x29, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x59f1ead5f4d0cd83 # load random value
la x4, scratch # base address
sd x28, 0(x4) # store in memory
li x28, 0x0e6b7fb85a65bf85 # load another value into integer register
amoand.d x23, x28, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x2e9fa1bbc00672f5 # load random value
la x5, scratch # base address
sd x25, 0(x5) # store in memory
li x25, 0x8afb61019f7a87fe # load another value into integer register
amoand.d x4, x25, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x627ab42c54b4d1e8 # load random value
la x6, scratch # base address
sd x31, 0(x6) # store in memory
li x31, 0xa59b0c607d39971f # load another value into integer register
amoand.d x16, x31, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x3ce823718751f2b0 # load random value
la x7, scratch # base address
sd x6, 0(x7) # store in memory
li x6, 0x179d4bb767d98975 # load another value into integer register
amoand.d x12, x6, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0x51a5126f00c59a74 # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0xdffcfdf99ad6058c # load another value into integer register
amoand.d x29, x14, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x95f2858054eb43de # load random value
la x9, scratch # base address
sd x17, 0(x9) # store in memory
li x17, 0xd96233d09a93e4a4 # load another value into integer register
amoand.d x22, x17, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0x79db1b2f040d2e5b # load random value
la x10, scratch # base address
sd x19, 0(x10) # store in memory
li x19, 0xd504f81b152b71b0 # load another value into integer register
amoand.d x27, x19, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0xea821f33d829cf2e # load random value
la x11, scratch # base address
sd x24, 0(x11) # store in memory
li x24, 0x453aa9560e447af0 # load another value into integer register
amoand.d x30, x24, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xc1075fc62a433f5f # load random value
la x12, scratch # base address
sd x15, 0(x12) # store in memory
li x15, 0x3c4aeb3829e9417f # load another value into integer register
amoand.d x27, x15, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x56f2fc2481a738da # load random value
la x13, scratch # base address
sd x2, 0(x13) # store in memory
li x2, 0x55628f1ee8a17726 # load another value into integer register
amoand.d x5, x2, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x89c0bc3ddbb5b73b # load random value
la x14, scratch # base address
sd x13, 0(x14) # store in memory
li x13, 0xe255e9ddd3562261 # load another value into integer register
amoand.d x6, x13, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0x29dd42f6218805d3 # load random value
la x15, scratch # base address
sd x31, 0(x15) # store in memory
li x31, 0xb061d84a286da999 # load another value into integer register
amoand.d x20, x31, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x9, 0xce830d69351a9a54 # load random value
la x16, scratch # base address
sd x9, 0(x16) # store in memory
li x9, 0xd6b9338ec44211ae # load another value into integer register
amoand.d x6, x9, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x1f4f9378751aec99 # load random value
la x17, scratch # base address
sd x2, 0(x17) # store in memory
li x2, 0x8e69d822e60ffa9d # load another value into integer register
amoand.d x30, x2, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0x38ab1c4c6b41d397 # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0x29cdec32ee9e2522 # load another value into integer register
amoand.d x19, x25, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x31, 0x3851c791342d07a2 # load random value
la x19, scratch # base address
sd x31, 0(x19) # store in memory
li x31, 0x9aa86659f8930b78 # load another value into integer register
amoand.d x17, x31, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x13, 0x4e29b2dec4f8810d # load random value
la x20, scratch # base address
sd x13, 0(x20) # store in memory
li x13, 0x0911963e8c39ab65 # load another value into integer register
amoand.d x19, x13, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0x003df013ab0920e5 # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0xa0b8889391440ace # load another value into integer register
amoand.d x22, x30, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x5, 0xf39782d8d1dc0f74 # load random value
la x22, scratch # base address
sd x5, 0(x22) # store in memory
li x5, 0x2010223a149db659 # load another value into integer register
amoand.d x1, x5, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0xcc2a45b604df7904 # load random value
la x23, scratch # base address
sd x9, 0(x23) # store in memory
li x9, 0x6b09d3e0233fb72a # load another value into integer register
amoand.d x21, x9, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x21, 0xb2a5861afe4b4f4e # load random value
la x24, scratch # base address
sd x21, 0(x24) # store in memory
li x21, 0x3503d718c6981dcb # load another value into integer register
amoand.d x9, x21, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x20, 0x6745788fe948f2fc # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x405ea085e27ae999 # load another value into integer register
amoand.d x17, x20, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x21bb7b357331a191 # load random value
la x26, scratch # base address
sd x1, 0(x26) # store in memory
li x1, 0x2768bc65565b60f6 # load another value into integer register
amoand.d x10, x1, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0x09e3b7f51e7de8ec # load random value
la x27, scratch # base address
sd x9, 0(x27) # store in memory
li x9, 0xefd158228248a968 # load another value into integer register
amoand.d x19, x9, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x20, 0x8a379e27506a76c1 # load random value
la x28, scratch # base address
sd x20, 0(x28) # store in memory
li x20, 0x93b7b6af1c400bd2 # load another value into integer register
amoand.d x25, x20, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x25, 0x5e30764030e5fc57 # load random value
la x29, scratch # base address
sd x25, 0(x29) # store in memory
li x25, 0xf4e03e9dc7c080dc # load another value into integer register
amoand.d x8, x25, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x19, 0xc1d4c1966460f250 # load random value
la x30, scratch # base address
sd x19, 0(x30) # store in memory
li x19, 0x09ffc4a3d877054a # load another value into integer register
amoand.d x2, x19, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0x6855274857a25294 # load random value
la x31, scratch # base address
sd x17, 0(x31) # store in memory
li x17, 0xc67a0e836ed80cca # load another value into integer register
amoand.d x1, x17, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xe6272a751981ff0f # load random value
la x30, scratch # base address
sd x0, 0(x30) # store in memory
li x0, 0x9a105724168745c9 # load another value into integer register
amoand.d x15, x0, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xdf35ae2d2f0d5ffc # load random value
la x2, scratch # base address
sd x1, 0(x2) # store in memory
li x1, 0xc190b8ec1f3250f5 # load another value into integer register
amoand.d x29, x1, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xbb8c48b4a84caef6 # load random value
la x22, scratch # base address
sd x2, 0(x22) # store in memory
li x2, 0x008fc3eb97f12997 # load another value into integer register
amoand.d x1, x2, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x9598731d7a69f1cd # load random value
la x5, scratch # base address
sd x3, 0(x5) # store in memory
li x3, 0x31e1144dad290173 # load another value into integer register
amoand.d x26, x3, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2d582029c5de8741 # load random value
la x19, scratch # base address
sd x4, 0(x19) # store in memory
li x4, 0x0bc450d627b95665 # load another value into integer register
amoand.d x25, x4, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x085b68fe9283e4af # load random value
la x23, scratch # base address
sd x5, 0(x23) # store in memory
li x5, 0x6e100fb1dd7c9f81 # load another value into integer register
amoand.d x1, x5, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2fca33a0692a6867 # load random value
la x1, scratch # base address
sd x6, 0(x1) # store in memory
li x6, 0xf2c67b3dad59f367 # load another value into integer register
amoand.d x14, x6, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7071e3b5609e6ba4 # load random value
la x31, scratch # base address
sd x7, 0(x31) # store in memory
li x7, 0x070fcde3c2333571 # load another value into integer register
amoand.d x1, x7, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xc0dd8e3583435af2 # load random value
la x7, scratch # base address
sd x8, 0(x7) # store in memory
li x8, 0x1a1762e04e0a6518 # load another value into integer register
amoand.d x12, x8, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8a348537d362eb22 # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x84596f8200fc4d1d # load another value into integer register
amoand.d x23, x9, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xa44db71308f216a5 # load random value
la x2, scratch # base address
sd x10, 0(x2) # store in memory
li x10, 0x6f8d6fc037e59b01 # load another value into integer register
amoand.d x3, x10, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xfb15822d7b97b87a # load random value
la x25, scratch # base address
sd x11, 0(x25) # store in memory
li x11, 0x38bea69dcf49c34a # load another value into integer register
amoand.d x14, x11, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x63b34d3a9333badb # load random value
la x26, scratch # base address
sd x12, 0(x26) # store in memory
li x12, 0x1fc38361695e7a37 # load another value into integer register
amoand.d x10, x12, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x4e1603371bd6ec0f # load random value
la x10, scratch # base address
sd x13, 0(x10) # store in memory
li x13, 0x83bbf1c623f2fe29 # load another value into integer register
amoand.d x21, x13, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x1ab8b7b4e3c4de6c # load random value
la x19, scratch # base address
sd x14, 0(x19) # store in memory
li x14, 0x09b36d6353991510 # load another value into integer register
amoand.d x18, x14, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xdcba20a7f1d6c45c # load random value
la x7, scratch # base address
sd x15, 0(x7) # store in memory
li x15, 0x2d8dad9d66ba5272 # load another value into integer register
amoand.d x29, x15, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x3fd7e12e452677f7 # load random value
la x23, scratch # base address
sd x16, 0(x23) # store in memory
li x16, 0x58e2540aa95e5f11 # load another value into integer register
amoand.d x27, x16, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x1d51f55716ac6190 # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0xc79c266d151ede9f # load another value into integer register
amoand.d x1, x17, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x67175238a14f8935 # load random value
la x1, scratch # base address
sd x18, 0(x1) # store in memory
li x18, 0xd43a67d4d98b8e95 # load another value into integer register
amoand.d x30, x18, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xac7a80db3e73217e # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0x2a8536d32b3a31ed # load another value into integer register
amoand.d x12, x19, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x1d20c91e6504d5de # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0x8efbdd861358d606 # load another value into integer register
amoand.d x12, x20, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x35b2ab2e51902fef # load random value
la x23, scratch # base address
sd x21, 0(x23) # store in memory
li x21, 0x8d60b3a640269d8c # load another value into integer register
amoand.d x17, x21, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x8b8847e1de940a8f # load random value
la x16, scratch # base address
sd x22, 0(x16) # store in memory
li x22, 0x9fa9420396aa7c02 # load another value into integer register
amoand.d x15, x22, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xdbca80b3979bcbd7 # load random value
la x26, scratch # base address
sd x23, 0(x26) # store in memory
li x23, 0x9473737c118e3bca # load another value into integer register
amoand.d x17, x23, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xca645a4d06f1e1a1 # load random value
la x28, scratch # base address
sd x24, 0(x28) # store in memory
li x24, 0xae930474962008cd # load another value into integer register
amoand.d x25, x24, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x2959bee9cfbe0ae4 # load random value
la x1, scratch # base address
sd x25, 0(x1) # store in memory
li x25, 0xfb6e66971f04ed5c # load another value into integer register
amoand.d x12, x25, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x20ab58d559e724ba # load random value
la x5, scratch # base address
sd x26, 0(x5) # store in memory
li x26, 0xc11d01c1a3cd3944 # load another value into integer register
amoand.d x25, x26, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x915daed262e4d2ec # load random value
la x12, scratch # base address
sd x27, 0(x12) # store in memory
li x27, 0xfcc584acd2c676d5 # load another value into integer register
amoand.d x11, x27, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x90432766779ed588 # load random value
la x10, scratch # base address
sd x28, 0(x10) # store in memory
li x28, 0xb3024b61315e2bca # load another value into integer register
amoand.d x15, x28, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x95263bac4fca95be # load random value
la x10, scratch # base address
sd x29, 0(x10) # store in memory
li x29, 0x39959d4d317d924f # load another value into integer register
amoand.d x24, x29, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x50499308449ca776 # load random value
la x20, scratch # base address
sd x30, 0(x20) # store in memory
li x30, 0x991e02788217fdc0 # load another value into integer register
amoand.d x13, x30, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x538070c139e981e3 # load random value
la x8, scratch # base address
sd x31, 0(x8) # store in memory
li x31, 0x6338b8a0c05a2e6c # load another value into integer register
amoand.d x30, x31, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x0877faf62ec5f415 # load random value
la x6, scratch # base address
sd x3, 0(x6) # store in memory
li x3, 0xad774510e1443c6d # load another value into integer register
amoand.d x0, x3, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x18, 0xc71b1b201a7ff3a6 # load random value
la x23, scratch # base address
sd x18, 0(x23) # store in memory
li x18, 0x244371470c55c1e4 # load another value into integer register
amoand.d x1, x18, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x0b252d764ce3128d # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0x064dccee44360a29 # load another value into integer register
amoand.d x2, x12, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x21, 0x587b67c95ccf9f20 # load random value
la x10, scratch # base address
sd x21, 0(x10) # store in memory
li x21, 0x3b00ca1ba821f67d # load another value into integer register
amoand.d x3, x21, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x4fa90bb8e3c649e1 # load random value
la x1, scratch # base address
sd x22, 0(x1) # store in memory
li x22, 0x7385ebe317fe8cdf # load another value into integer register
amoand.d x4, x22, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x12a4cfa647ebb542 # load random value
la x27, scratch # base address
sd x3, 0(x27) # store in memory
li x3, 0x06fe8bd62c239e5b # load another value into integer register
amoand.d x5, x3, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0xc53dc34312aba5dc # load random value
la x23, scratch # base address
sd x14, 0(x23) # store in memory
li x14, 0xc34e07b75f512b97 # load another value into integer register
amoand.d x6, x14, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x3711857fa9dadcd9 # load random value
la x25, scratch # base address
sd x11, 0(x25) # store in memory
li x11, 0x3612b263abd72637 # load another value into integer register
amoand.d x7, x11, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xa0080dfe2eb450e6 # load random value
la x2, scratch # base address
sd x5, 0(x2) # store in memory
li x5, 0xe342000edf41c7c2 # load another value into integer register
amoand.d x8, x5, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x25, 0xc3b7573fce313a1f # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0xa4921583454f92ca # load another value into integer register
amoand.d x9, x25, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x29, 0x7dd7a249dceac07c # load random value
la x17, scratch # base address
sd x29, 0(x17) # store in memory
li x29, 0x1ccffe05f279891a # load another value into integer register
amoand.d x10, x29, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x2636a94431ba6ec1 # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0x3be400f3055af01e # load another value into integer register
amoand.d x11, x11, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x23, 0xa0a42298bab78790 # load random value
la x30, scratch # base address
sd x23, 0(x30) # store in memory
li x23, 0x3012a6edfcd68f53 # load another value into integer register
amoand.d x12, x23, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xcf98eb500b57cb76 # load random value
la x20, scratch # base address
sd x10, 0(x20) # store in memory
li x10, 0x6cba7b3440b06f5b # load another value into integer register
amoand.d x13, x10, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x29, 0xb3d30605a598952c # load random value
la x19, scratch # base address
sd x29, 0(x19) # store in memory
li x29, 0xf8cb52e9f20c74d7 # load another value into integer register
amoand.d x14, x29, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x29, 0xd1135c2a86ef6b0e # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0xd3dd1216b4e181ab # load another value into integer register
amoand.d x15, x29, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x24, 0xf2bc6523e48a58e6 # load random value
la x2, scratch # base address
sd x24, 0(x2) # store in memory
li x24, 0x0c0a29abac88519d # load another value into integer register
amoand.d x16, x24, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x3, 0x6e15c4e9460e0bf9 # load random value
la x11, scratch # base address
sd x3, 0(x11) # store in memory
li x3, 0x4a6a0c878b1fb628 # load another value into integer register
amoand.d x17, x3, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x1, 0xd68eee0fb603df8f # load random value
la x28, scratch # base address
sd x1, 0(x28) # store in memory
li x1, 0x8ef9083810258f5c # load another value into integer register
amoand.d x18, x1, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x6, 0xb1d4e460d8ac546d # load random value
la x23, scratch # base address
sd x6, 0(x23) # store in memory
li x6, 0x6775225ef4a1105e # load another value into integer register
amoand.d x19, x6, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x889f27f8a3c017ab # load random value
la x24, scratch # base address
sd x21, 0(x24) # store in memory
li x21, 0x279e339d656bc863 # load another value into integer register
amoand.d x20, x21, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xc67cb7ff64bc7fdd # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0x3baee22637a6c173 # load another value into integer register
amoand.d x21, x30, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x5afa4acfad164a1f # load random value
la x12, scratch # base address
sd x24, 0(x12) # store in memory
li x24, 0x5fc2053edce2203f # load another value into integer register
amoand.d x22, x24, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x62a267969de1c561 # load random value
la x25, scratch # base address
sd x22, 0(x25) # store in memory
li x22, 0x63901d83e707220c # load another value into integer register
amoand.d x23, x22, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x26, 0xe16e8d18c61e5fb5 # load random value
la x14, scratch # base address
sd x26, 0(x14) # store in memory
li x26, 0x4754a201e4260be1 # load another value into integer register
amoand.d x24, x26, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x1, 0xee3cae9164fb7e78 # load random value
la x13, scratch # base address
sd x1, 0(x13) # store in memory
li x1, 0x0d020cb7e64e6d2c # load another value into integer register
amoand.d x25, x1, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x25, 0x53081e8b32aed0c8 # load random value
la x2, scratch # base address
sd x25, 0(x2) # store in memory
li x25, 0x9b31527ff3a19de7 # load another value into integer register
amoand.d x26, x25, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x20, 0x25707c01574981b2 # load random value
la x25, scratch # base address
sd x20, 0(x25) # store in memory
li x20, 0x55d56b2bf0527939 # load another value into integer register
amoand.d x27, x20, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x6, 0x4b2697bbd5912510 # load random value
la x1, scratch # base address
sd x6, 0(x1) # store in memory
li x6, 0x154712f8e3474e64 # load another value into integer register
amoand.d x28, x6, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x623e9e52aae29523 # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0xef5b93c005ac6587 # load another value into integer register
amoand.d x29, x29, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x3a2d59672b2c888c # load random value
la x1, scratch # base address
sd x18, 0(x1) # store in memory
li x18, 0x1decf8c72ccff7c5 # load another value into integer register
amoand.d x30, x18, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x21, 0x5d928302d9fa9977 # load random value
la x28, scratch # base address
sd x21, 0(x28) # store in memory
li x21, 0x0b4ba16f7ef025a0 # load another value into integer register
amoand.d x31, x21, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x78a4a11f7434f697 # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0x0000000000000000 # load another value into integer register
amoand.d x25, x6, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x4d9db83a8a219d1e # load random value
la x10, scratch # base address
sd x18, 0(x10) # store in memory
li x18, 0x0000000000000001 # load another value into integer register
amoand.d x26, x18, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x176bc974d250f4be # load random value
la x8, scratch # base address
sd x23, 0(x8) # store in memory
li x23, 0x0000000000000002 # load another value into integer register
amoand.d x15, x23, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0x8de488884ad28c44 # load random value
la x8, scratch # base address
sd x11, 0(x8) # store in memory
li x11, 0x8000000000000000 # load another value into integer register
amoand.d x2, x11, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x29, 0x39eace499e209ded # load random value
la x8, scratch # base address
sd x29, 0(x8) # store in memory
li x29, 0x8000000000000001 # load another value into integer register
amoand.d x1, x29, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x901717d0549347bf # load random value
la x15, scratch # base address
sd x10, 0(x15) # store in memory
li x10, 0x7fffffffffffffff # load another value into integer register
amoand.d x22, x10, (x15) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0xc1bdaa157bd30d0b # load random value
la x30, scratch # base address
sd x11, 0(x30) # store in memory
li x11, 0x7ffffffffffffffe # load another value into integer register
amoand.d x19, x11, (x30) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0x292901e944def851 # load random value
la x9, scratch # base address
sd x28, 0(x9) # store in memory
li x28, 0xffffffffffffffff # load another value into integer register
amoand.d x31, x28, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x11, 0x605fc6d85236e37b # load random value
la x12, scratch # base address
sd x11, 0(x12) # store in memory
li x11, 0xfffffffffffffffe # load another value into integer register
amoand.d x28, x11, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x29, 0x66c132fe8a8951f7 # load random value
la x11, scratch # base address
sd x29, 0(x11) # store in memory
li x29, 0x5bbc887763ae86f2 # load another value into integer register
amoand.d x19, x29, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0x362fec6692505859 # load random value
la x6, scratch # base address
sd x24, 0(x6) # store in memory
li x24, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoand.d x8, x24, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x22, 0xc3d79b5b6c10da04 # load random value
la x24, scratch # base address
sd x22, 0(x24) # store in memory
li x22, 0x5555555555555555 # load another value into integer register
amoand.d x30, x22, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0x7f6a12daf1553b7e # load random value
la x29, scratch # base address
sd x24, 0(x29) # store in memory
li x24, 0x00000000ffffffff # load another value into integer register
amoand.d x15, x24, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x9c7f20054bc5a842 # load random value
la x11, scratch # base address
sd x17, 0(x11) # store in memory
li x17, 0x00000000fffffffe # load another value into integer register
amoand.d x9, x17, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x22, 0x48222151a6c838e7 # load random value
la x28, scratch # base address
sd x22, 0(x28) # store in memory
li x22, 0x0000000100000000 # load another value into integer register
amoand.d x13, x22, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x5, 0x9670cb454ee04e50 # load random value
la x18, scratch # base address
sd x5, 0(x18) # store in memory
li x5, 0x0000000100000001 # load another value into integer register
amoand.d x11, x5, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa4b23e4fbe4bd29a # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoand.d x9, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x99c8ad4bf184c1bb # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoand.d x12, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6cf2dbc3111644a6 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoand.d x17, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf3cd9770d8573db1 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoand.d x3, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x54d229f3924b191a # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoand.d x1, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7b0b76e5b747d833 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoand.d x15, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9e49ab57da76f5e6 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoand.d x23, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xbaceb4d8940dd0bf # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoand.d x7, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x220302ad7f2e258a # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoand.d x7, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x68afc8b42159cc19 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoand.d x2, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf77c2d4362815121 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoand.d x30, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x84074d7bb7a0ce44 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoand.d x3, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfb9bae7fc419abb6 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoand.d x20, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xfc56d58deb064e65 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoand.d x29, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2dda990a32399f05 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoand.d x14, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x007f8f6ac536fd69 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoand.d x6, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1c6af175900d2701 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoand.d x7, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x12db88c42dd8713c # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoand.d x21, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xeb643025af6b37b9 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoand.d x8, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x2bb29c706f9a3bf9 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoand.d x20, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1dddb8259e36cc74 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoand.d x8, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x94cc06ef9e04f440 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoand.d x3, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5ed782dbe193fe49 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoand.d x6, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x0a5f81e2b0cfaca7 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoand.d x9, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x8ebfced7337d02bc # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoand.d x15, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x5d6ff7ab9805475b # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoand.d x17, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc2b467a7d95d3390 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoand.d x7, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x2765271939f75663 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoand.d x16, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x02f7318a9d03b0dd # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoand.d x3, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3e936e8e3bb80a00 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoand.d x22, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x9408557f16f169e2 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoand.d x13, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x22, 0x8b67ce00280d1d5e # load random value
la x1, scratch # base address
sd x22, 0(x1) # store in memory
li x22, 0x580690771ebabc14 # load another value into integer register
amoand.d x1, x22, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x5, 0x59f168eef0b3dc67 # load random value
la x2, scratch # base address
sd x5, 0(x2) # store in memory
li x5, 0xe9a6e73609619f53 # load another value into integer register
amoand.d x2, x5, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x31, 0x0459e873cf2457ec # load random value
la x3, scratch # base address
sd x31, 0(x3) # store in memory
li x31, 0xb94f8b7a7fc449ff # load another value into integer register
amoand.d x3, x31, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x39bb0f926127b976 # load random value
la x4, scratch # base address
sd x8, 0(x4) # store in memory
li x8, 0x175e2b40213ddb15 # load another value into integer register
amoand.d x4, x8, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x0002b7f0456f6e3a # load random value
la x5, scratch # base address
sd x22, 0(x5) # store in memory
li x22, 0xc5f88a1561878388 # load another value into integer register
amoand.d x5, x22, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x77b5769a481dbf83 # load random value
la x6, scratch # base address
sd x9, 0(x6) # store in memory
li x9, 0xdd237f71a0369f56 # load another value into integer register
amoand.d x6, x9, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0xf17e9079420bdc3c # load random value
la x7, scratch # base address
sd x1, 0(x7) # store in memory
li x1, 0x46d23ca5d0d3c82b # load another value into integer register
amoand.d x7, x1, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x23, 0x85c529f22a38e56f # load random value
la x8, scratch # base address
sd x23, 0(x8) # store in memory
li x23, 0x10e153fd03818ae1 # load another value into integer register
amoand.d x8, x23, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x22, 0x1d6ff405e19410e6 # load random value
la x9, scratch # base address
sd x22, 0(x9) # store in memory
li x22, 0xac78424a4a723122 # load another value into integer register
amoand.d x9, x22, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x16, 0x992182d762cb5a32 # load random value
la x10, scratch # base address
sd x16, 0(x10) # store in memory
li x16, 0xd0d6bf22547dc504 # load another value into integer register
amoand.d x10, x16, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x2, 0x22099f8b2473ec24 # load random value
la x11, scratch # base address
sd x2, 0(x11) # store in memory
li x2, 0xae9a047abecda05c # load another value into integer register
amoand.d x11, x2, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x8, 0x77615700acda9997 # load random value
la x12, scratch # base address
sd x8, 0(x12) # store in memory
li x8, 0xfff3515c5e6a59a0 # load another value into integer register
amoand.d x12, x8, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x9, 0x4b70a7843e53104e # load random value
la x13, scratch # base address
sd x9, 0(x13) # store in memory
li x9, 0xc4b187430b279f6f # load another value into integer register
amoand.d x13, x9, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x8, 0x9ea581e1ebc05832 # load random value
la x14, scratch # base address
sd x8, 0(x14) # store in memory
li x8, 0x4ec7c4cd02bbdf55 # load another value into integer register
amoand.d x14, x8, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x6, 0x45c39ed5a1a0e95e # load random value
la x15, scratch # base address
sd x6, 0(x15) # store in memory
li x6, 0xe66ee35279d2daa9 # load another value into integer register
amoand.d x15, x6, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x7, 0xeecd68711a515f3c # load random value
la x16, scratch # base address
sd x7, 0(x16) # store in memory
li x7, 0x0560f8b2d37f0286 # load another value into integer register
amoand.d x16, x7, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x29, 0xb6a5f41f00e91f72 # load random value
la x17, scratch # base address
sd x29, 0(x17) # store in memory
li x29, 0x69f69ba6ae23ce59 # load another value into integer register
amoand.d x17, x29, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8ba113cdd37cf2d0 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoand.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x24, 0x2cd7eff09309f0eb # load random value
la x19, scratch # base address
sd x24, 0(x19) # store in memory
li x24, 0xf75b62ec6825ab6d # load another value into integer register
amoand.d x19, x24, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x13, 0x3c9d6d598aa4dcd7 # load random value
la x20, scratch # base address
sd x13, 0(x20) # store in memory
li x13, 0x1cb7a5086e24b9d0 # load another value into integer register
amoand.d x20, x13, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x1, 0xd709cc9c84f74a38 # load random value
la x21, scratch # base address
sd x1, 0(x21) # store in memory
li x1, 0x18dbb4d418babaf7 # load another value into integer register
amoand.d x21, x1, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x9, 0x09e69f3ece12e9d1 # load random value
la x22, scratch # base address
sd x9, 0(x22) # store in memory
li x9, 0xadce1018e80119ae # load another value into integer register
amoand.d x22, x9, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x24, 0xa788b65e19146b7b # load random value
la x23, scratch # base address
sd x24, 0(x23) # store in memory
li x24, 0x09d918bfccbc6e04 # load another value into integer register
amoand.d x23, x24, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x15, 0xab691841cf0963a4 # load random value
la x24, scratch # base address
sd x15, 0(x24) # store in memory
li x15, 0xbf05411e6637d274 # load another value into integer register
amoand.d x24, x15, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x18, 0x023fba47caebe0a5 # load random value
la x25, scratch # base address
sd x18, 0(x25) # store in memory
li x18, 0x6113aa0a4734922e # load another value into integer register
amoand.d x25, x18, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x19, 0x2f1f22b6d13603fc # load random value
la x26, scratch # base address
sd x19, 0(x26) # store in memory
li x19, 0xd4c1f83938a9adb2 # load another value into integer register
amoand.d x26, x19, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2621a9458313179e # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoand.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x10, 0x004bdc9833d96f9a # load random value
la x28, scratch # base address
sd x10, 0(x28) # store in memory
li x10, 0xf0d086fe5a689d4f # load another value into integer register
amoand.d x28, x10, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x19, 0x708dc013916bc1d8 # load random value
la x29, scratch # base address
sd x19, 0(x29) # store in memory
li x19, 0xdbd755a68b9abef1 # load another value into integer register
amoand.d x29, x19, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x2, 0x32213c3d5d243208 # load random value
la x30, scratch # base address
sd x2, 0(x30) # store in memory
li x2, 0xe2220ceeda95642e # load another value into integer register
amoand.d x30, x2, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x20, 0xe406eaedd170f0f8 # load random value
la x31, scratch # base address
sd x20, 0(x31) # store in memory
li x20, 0x3f5624e480e2283f # load another value into integer register
amoand.d x31, x20, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x3090d4665bb2b12e # load random value
la x5, scratch # base address
sd x0, 0(x5) # store in memory
li x0, 0x7a96d2e3e4ed9dde # load another value into integer register
amoand.d x0, x0, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x0da430594471f873 # load random value
la x29, scratch # base address
sd x1, 0(x29) # store in memory
li x1, 0xc3ab2f5ba8c16d6f # load another value into integer register
amoand.d x1, x1, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xa0cd6225ffb10a66 # load random value
la x24, scratch # base address
sd x2, 0(x24) # store in memory
li x2, 0xac04ba068188f636 # load another value into integer register
amoand.d x2, x2, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x4c10f09af3400132 # load random value
la x2, scratch # base address
sd x3, 0(x2) # store in memory
li x3, 0xb63b6aa29b3e6369 # load another value into integer register
amoand.d x3, x3, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb2304457c21949ce # load random value
la x27, scratch # base address
sd x4, 0(x27) # store in memory
li x4, 0x68cf5757e8bb85f1 # load another value into integer register
amoand.d x4, x4, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4e011baa9f069b94 # load random value
la x9, scratch # base address
sd x5, 0(x9) # store in memory
li x5, 0x9ffd85102fb9ba58 # load another value into integer register
amoand.d x5, x5, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0a6334a2da057824 # load random value
la x17, scratch # base address
sd x6, 0(x17) # store in memory
li x6, 0x113d4337e5ec05a3 # load another value into integer register
amoand.d x6, x6, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5880534de7c60d06 # load random value
la x3, scratch # base address
sd x7, 0(x3) # store in memory
li x7, 0x9c6b899c6e524901 # load another value into integer register
amoand.d x7, x7, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x7413e791f0483d14 # load random value
la x26, scratch # base address
sd x8, 0(x26) # store in memory
li x8, 0x8fc19928166608ab # load another value into integer register
amoand.d x8, x8, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x3dd24e8547e12cde # load random value
la x25, scratch # base address
sd x9, 0(x25) # store in memory
li x9, 0x3d6dcd8de1bf5f9e # load another value into integer register
amoand.d x9, x9, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xca6a3b3bafad3e55 # load random value
la x27, scratch # base address
sd x10, 0(x27) # store in memory
li x10, 0xf74782bab48e0393 # load another value into integer register
amoand.d x10, x10, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x4d28f8c0cdcf5159 # load random value
la x19, scratch # base address
sd x11, 0(x19) # store in memory
li x11, 0x388139959705d99c # load another value into integer register
amoand.d x11, x11, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x4e92b51703dd5c75 # load random value
la x3, scratch # base address
sd x12, 0(x3) # store in memory
li x12, 0x8372e4a41d4a478f # load another value into integer register
amoand.d x12, x12, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x5d133932a810a4a3 # load random value
la x31, scratch # base address
sd x13, 0(x31) # store in memory
li x13, 0xb290d99f4ab7de66 # load another value into integer register
amoand.d x13, x13, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x282c46e68f646a43 # load random value
la x3, scratch # base address
sd x14, 0(x3) # store in memory
li x14, 0x3f862fd1d25c93e5 # load another value into integer register
amoand.d x14, x14, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x4f083cb41970139d # load random value
la x31, scratch # base address
sd x15, 0(x31) # store in memory
li x15, 0x240bc786003d7144 # load another value into integer register
amoand.d x15, x15, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xf025901a2b20c623 # load random value
la x17, scratch # base address
sd x16, 0(x17) # store in memory
li x16, 0x12eaf6aaf2abd429 # load another value into integer register
amoand.d x16, x16, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x033382d852e72d8e # load random value
la x21, scratch # base address
sd x17, 0(x21) # store in memory
li x17, 0xe3248d2db14216ab # load another value into integer register
amoand.d x17, x17, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x5b975c4d33504e4f # load random value
la x27, scratch # base address
sd x18, 0(x27) # store in memory
li x18, 0xfe985f68f4b136ba # load another value into integer register
amoand.d x18, x18, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x45c598ff46c17aad # load random value
la x7, scratch # base address
sd x19, 0(x7) # store in memory
li x19, 0xb68be66dcffbf48a # load another value into integer register
amoand.d x19, x19, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x990263a6549a0b30 # load random value
la x8, scratch # base address
sd x20, 0(x8) # store in memory
li x20, 0xc4b2456b3b76f2b0 # load another value into integer register
amoand.d x20, x20, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xfbc4a7d22613611f # load random value
la x11, scratch # base address
sd x21, 0(x11) # store in memory
li x21, 0x84a809fb805938c0 # load another value into integer register
amoand.d x21, x21, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xfccfdcbf05915820 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoand.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x564c0617714715ad # load random value
la x13, scratch # base address
sd x23, 0(x13) # store in memory
li x23, 0x8ee2751d6db34cd6 # load another value into integer register
amoand.d x23, x23, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xa4f5c695fbaa193c # load random value
la x28, scratch # base address
sd x24, 0(x28) # store in memory
li x24, 0x2532f1fd44e4d114 # load another value into integer register
amoand.d x24, x24, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x281565218e1cb25c # load random value
la x20, scratch # base address
sd x25, 0(x20) # store in memory
li x25, 0xaf5bffb9fb085c69 # load another value into integer register
amoand.d x25, x25, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x039678f430496a0c # load random value
la x10, scratch # base address
sd x26, 0(x10) # store in memory
li x26, 0x37e98436cf9c8e94 # load another value into integer register
amoand.d x26, x26, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x46e91a3d37a7e0d0 # load random value
la x21, scratch # base address
sd x27, 0(x21) # store in memory
li x27, 0x1ed0737fd4f2407e # load another value into integer register
amoand.d x27, x27, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x1a4a9854c3773ef9 # load random value
la x27, scratch # base address
sd x28, 0(x27) # store in memory
li x28, 0x0116ae2034699c1a # load another value into integer register
amoand.d x28, x28, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x9b65e43972d0f71b # load random value
la x19, scratch # base address
sd x29, 0(x19) # store in memory
li x29, 0xe2b0efc7262e9587 # load another value into integer register
amoand.d x29, x29, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xe372adcaee952d34 # load random value
la x17, scratch # base address
sd x30, 0(x17) # store in memory
li x30, 0x54ce72e4443c6e3a # load another value into integer register
amoand.d x30, x30, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xa253e8974fcbc110 # load random value
la x20, scratch # base address
sd x31, 0(x20) # store in memory
li x31, 0x88d6860b81a99407 # load another value into integer register
amoand.d x31, x31, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x08978dbe810c64bc # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoand.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7a535a575b98cbce # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoand.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x29350015544eabd5 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoand.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9cba137e912669ac # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoand.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfc8354671da37098 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoand.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe072ba299620339 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoand.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x18eea3763292ccdc # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoand.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xdbea5cec92145e5d # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoand.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3cfd1516e79bd11d # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoand.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x36cef7e97209030e # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoand.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf7bbbf064228038f # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoand.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd55ca1fbfe25a5fa # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoand.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x0b8867c8e4fb45d6 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoand.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf67a0a74f7a83903 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoand.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5659157308949054 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoand.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xd1a47ae9bcf74886 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoand.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xffee3e70090ea11c # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoand.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x531069833f10c2d0 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoand.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x15d57e8925b030f1 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoand.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa17bab46d0aa7ef9 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoand.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2553be22381a70ab # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoand.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7164c989e589a41c # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoand.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x39f58559264c55f5 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoand.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x9fee6dacd760e1e7 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoand.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x975747c8e3f7ff32 # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoand.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x567c8bdd27bf592e # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoand.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x005b19790a9fd066 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoand.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd6f2eac3247dc53a # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoand.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2ccd79524e75a18b # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoand.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa9e1184450e7701a # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoand.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x31fe417abd2953a6 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoand.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
add x12, x15, x7 # perform first operation
amoand.d x17, x14, (x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, scratch
add x16, x24, x23 # perform first operation
amoand.d x10, x27, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
add x28, x8, x6 # perform first operation
amoand.d x25, x2, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x5, scratch
add x1, x1, x0 # perform first operation
amoand.d x24, x25, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
add x20, x20, x0 # perform first operation
amoand.d x21, x2, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x8, scratch
add x10, x10, x0 # perform first operation
amoand.d x22, x15, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
add x23, x1, x18 # perform first operation
amoand.d x23, x11, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x26, scratch
add x6, x2, x16 # perform first operation
amoand.d x6, x30, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
add x12, x1, x16 # perform first operation
amoand.d x12, x6, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
add x21, x30, x24 # perform first operation
amoand.d x30, x7, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x1, scratch
add x14, x19, x25 # perform first operation
amoand.d x25, x23, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x28, scratch
add x2, x7, x13 # perform first operation
amoand.d x10, x12, (x28) # perform second (triggering) operation

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
