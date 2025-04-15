///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amoor.w.S
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
li x13, 0x7b9bcbe4404be8a8 # load random value
la x1, scratch # base address
sd x13, 0(x1) # store in memory
li x13, 0x43b916c2ff886494 # load another value into integer register
amoor.w x6, x13, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x3, 0xa1ce8c4b759bef3a # load random value
la x2, scratch # base address
sd x3, 0(x2) # store in memory
li x3, 0x2d2677ccca6383b3 # load another value into integer register
amoor.w x19, x3, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0x14a3bcbf9cebfff0 # load random value
la x3, scratch # base address
sd x9, 0(x3) # store in memory
li x9, 0x8a8d1fee90be12c9 # load another value into integer register
amoor.w x24, x9, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x1c6bb8e110e0e4d5 # load random value
la x4, scratch # base address
sd x27, 0(x4) # store in memory
li x27, 0x41ad4c0dd210847d # load another value into integer register
amoor.w x3, x27, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x27, 0xa490bd043339bfb5 # load random value
la x5, scratch # base address
sd x27, 0(x5) # store in memory
li x27, 0x7073a0d56ca2324f # load another value into integer register
amoor.w x6, x27, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x668f203cc24d142a # load random value
la x6, scratch # base address
sd x17, 0(x6) # store in memory
li x17, 0xee455fab480b29e2 # load another value into integer register
amoor.w x14, x17, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0xde4c28c60933e978 # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0x768e5812590cea83 # load another value into integer register
amoor.w x18, x27, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0x5be934095495ecb0 # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0xa7ed6bac4330e90d # load another value into integer register
amoor.w x23, x19, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0xe33e66869643ab15 # load random value
la x9, scratch # base address
sd x1, 0(x9) # store in memory
li x1, 0x9ab5f29ce5898864 # load another value into integer register
amoor.w x15, x1, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x26df1e00e265974a # load random value
la x10, scratch # base address
sd x9, 0(x10) # store in memory
li x9, 0x8b6b34ac25d81208 # load another value into integer register
amoor.w x31, x9, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x20, 0xd184bbefb4a9e40e # load random value
la x11, scratch # base address
sd x20, 0(x11) # store in memory
li x20, 0x2998b058c5f391bc # load another value into integer register
amoor.w x15, x20, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x1d3a65cfd557c94f # load random value
la x12, scratch # base address
sd x31, 0(x12) # store in memory
li x31, 0x3343b025aea3ae16 # load another value into integer register
amoor.w x2, x31, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0xceba33e6d1ebc645 # load random value
la x13, scratch # base address
sd x7, 0(x13) # store in memory
li x7, 0xd2dd608d1e9e42cd # load another value into integer register
amoor.w x17, x7, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x754a0c41d8e47192 # load random value
la x14, scratch # base address
sd x17, 0(x14) # store in memory
li x17, 0x086868aa36fc119c # load another value into integer register
amoor.w x8, x17, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0xecbc4cd95f966bbd # load random value
la x15, scratch # base address
sd x10, 0(x15) # store in memory
li x10, 0x9168c86ba0fc107b # load another value into integer register
amoor.w x17, x10, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x6, 0xab720d8bfc091ea0 # load random value
la x16, scratch # base address
sd x6, 0(x16) # store in memory
li x6, 0x88cd005a38ec7560 # load another value into integer register
amoor.w x25, x6, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0xc0786a2aa06a4c59 # load random value
la x17, scratch # base address
sd x31, 0(x17) # store in memory
li x31, 0x83a25d63b0026e18 # load another value into integer register
amoor.w x8, x31, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x6d5497ef79cf3279 # load random value
la x18, scratch # base address
sd x16, 0(x18) # store in memory
li x16, 0x1ba0c0b72679edc1 # load another value into integer register
amoor.w x31, x16, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0xdc64615b84c78c41 # load random value
la x19, scratch # base address
sd x1, 0(x19) # store in memory
li x1, 0x23d3532b00981526 # load another value into integer register
amoor.w x17, x1, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x5352d85ac31b9a9a # load random value
la x20, scratch # base address
sd x22, 0(x20) # store in memory
li x22, 0x13ab6a37f31cb8a4 # load another value into integer register
amoor.w x23, x22, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0x8f413761f62f2845 # load random value
la x21, scratch # base address
sd x30, 0(x21) # store in memory
li x30, 0x532bb3dba4511035 # load another value into integer register
amoor.w x27, x30, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0x406fa56579986081 # load random value
la x22, scratch # base address
sd x1, 0(x22) # store in memory
li x1, 0x2933d6643240f527 # load another value into integer register
amoor.w x30, x1, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x76bdc86409666978 # load random value
la x23, scratch # base address
sd x31, 0(x23) # store in memory
li x31, 0x38f6ee926d69d548 # load another value into integer register
amoor.w x2, x31, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x1, 0x3fab304301f286d2 # load random value
la x24, scratch # base address
sd x1, 0(x24) # store in memory
li x1, 0xb19863346db81182 # load another value into integer register
amoor.w x12, x1, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x6, 0x54515b8a93ebb15b # load random value
la x25, scratch # base address
sd x6, 0(x25) # store in memory
li x6, 0xbc2966ebbbdb1122 # load another value into integer register
amoor.w x9, x6, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0xb19e9d9688080e00 # load random value
la x26, scratch # base address
sd x11, 0(x26) # store in memory
li x11, 0x0e1533313a5e64e2 # load another value into integer register
amoor.w x5, x11, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x3144fa821b7480e6 # load random value
la x27, scratch # base address
sd x21, 0(x27) # store in memory
li x21, 0xd4191c5aea9ee41a # load another value into integer register
amoor.w x8, x21, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x16, 0x0d6ba53d80a5c63e # load random value
la x28, scratch # base address
sd x16, 0(x28) # store in memory
li x16, 0x5a2956a0fd31e096 # load another value into integer register
amoor.w x11, x16, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x9983e839345e0e40 # load random value
la x29, scratch # base address
sd x27, 0(x29) # store in memory
li x27, 0x20252ed00cf453ce # load another value into integer register
amoor.w x21, x27, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0x14965afd884097ba # load random value
la x30, scratch # base address
sd x29, 0(x30) # store in memory
li x29, 0xe6912ad47843b95e # load another value into integer register
amoor.w x16, x29, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x3, 0xd2b2646812cf75c9 # load random value
la x31, scratch # base address
sd x3, 0(x31) # store in memory
li x3, 0xbc4b9149412efb70 # load another value into integer register
amoor.w x5, x3, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x8ca064244cea6569 # load random value
la x30, scratch # base address
sd x0, 0(x30) # store in memory
li x0, 0xd11f055a3d06fee6 # load another value into integer register
amoor.w x5, x0, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x2362a01ee9f11725 # load random value
la x17, scratch # base address
sd x1, 0(x17) # store in memory
li x1, 0xa12b3d3c56a59ecf # load another value into integer register
amoor.w x27, x1, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x3adc3394f4552991 # load random value
la x23, scratch # base address
sd x2, 0(x23) # store in memory
li x2, 0xc9562a27c9fa07d5 # load another value into integer register
amoor.w x5, x2, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x4ee80a1b91f9729c # load random value
la x24, scratch # base address
sd x3, 0(x24) # store in memory
li x3, 0x4bc4a297e71ea3ad # load another value into integer register
amoor.w x16, x3, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7e10696218cbc65c # load random value
la x1, scratch # base address
sd x4, 0(x1) # store in memory
li x4, 0xff9878da29e0f07a # load another value into integer register
amoor.w x9, x4, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e2c46029febdea1 # load random value
la x6, scratch # base address
sd x5, 0(x6) # store in memory
li x5, 0xd7319802181a753a # load another value into integer register
amoor.w x26, x5, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x6, 0xe7eb1663375a2075 # load random value
la x31, scratch # base address
sd x6, 0(x31) # store in memory
li x6, 0xe4ef7d8377c69c39 # load another value into integer register
amoor.w x27, x6, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x644dd3179743b580 # load random value
la x14, scratch # base address
sd x7, 0(x14) # store in memory
li x7, 0x977ad5155ba29510 # load another value into integer register
amoor.w x15, x7, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x753d7ec13c8dc516 # load random value
la x13, scratch # base address
sd x8, 0(x13) # store in memory
li x8, 0xd4d599a417c93a97 # load another value into integer register
amoor.w x12, x8, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x087f2b936ca86543 # load random value
la x17, scratch # base address
sd x9, 0(x17) # store in memory
li x9, 0x1b8fd2149106efeb # load another value into integer register
amoor.w x15, x9, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x1e9fd6202a21e2f1 # load random value
la x21, scratch # base address
sd x10, 0(x21) # store in memory
li x10, 0xb00270054a9c6988 # load another value into integer register
amoor.w x23, x10, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xab065c75a298f52b # load random value
la x22, scratch # base address
sd x11, 0(x22) # store in memory
li x11, 0x50205eccbf55dbda # load another value into integer register
amoor.w x18, x11, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x7713cd3b615f6424 # load random value
la x18, scratch # base address
sd x12, 0(x18) # store in memory
li x12, 0xc26af8b52277f6c2 # load another value into integer register
amoor.w x30, x12, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x0044d38586501388 # load random value
la x26, scratch # base address
sd x13, 0(x26) # store in memory
li x13, 0xd7cdec7eef2ed55e # load another value into integer register
amoor.w x5, x13, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xc8a2e7bd26e556fd # load random value
la x5, scratch # base address
sd x14, 0(x5) # store in memory
li x14, 0xb36195ef991bbad8 # load another value into integer register
amoor.w x18, x14, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x0e124820e4715707 # load random value
la x16, scratch # base address
sd x15, 0(x16) # store in memory
li x15, 0xd5dd66e32b8751d0 # load another value into integer register
amoor.w x8, x15, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xde5e5acee306844a # load random value
la x7, scratch # base address
sd x16, 0(x7) # store in memory
li x16, 0x27745631ec05d3d2 # load another value into integer register
amoor.w x3, x16, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x77f9c8adbb64a077 # load random value
la x13, scratch # base address
sd x17, 0(x13) # store in memory
li x17, 0xe93bc7ea55e548c0 # load another value into integer register
amoor.w x15, x17, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x5d63457fc3cc4274 # load random value
la x20, scratch # base address
sd x18, 0(x20) # store in memory
li x18, 0xdd708beae8fc9902 # load another value into integer register
amoor.w x29, x18, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x171ac655ddfa3976 # load random value
la x8, scratch # base address
sd x19, 0(x8) # store in memory
li x19, 0xf860714f8582d61a # load another value into integer register
amoor.w x25, x19, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x820ec186b32dae0e # load random value
la x7, scratch # base address
sd x20, 0(x7) # store in memory
li x20, 0x11341d8ba65ae5e6 # load another value into integer register
amoor.w x13, x20, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x162a6e6ed0311d97 # load random value
la x2, scratch # base address
sd x21, 0(x2) # store in memory
li x21, 0x97d07837502dceb5 # load another value into integer register
amoor.w x20, x21, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xb68bce1565519f97 # load random value
la x2, scratch # base address
sd x22, 0(x2) # store in memory
li x22, 0x5d4e1ba116b27e73 # load another value into integer register
amoor.w x6, x22, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x7b2b7ece6ee4574a # load random value
la x7, scratch # base address
sd x23, 0(x7) # store in memory
li x23, 0x225ba6d145fbda49 # load another value into integer register
amoor.w x11, x23, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x44414a1fe9bacd48 # load random value
la x14, scratch # base address
sd x24, 0(x14) # store in memory
li x24, 0x9c078dab2b500f09 # load another value into integer register
amoor.w x9, x24, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x4e0b3d65fe3c8b00 # load random value
la x21, scratch # base address
sd x25, 0(x21) # store in memory
li x25, 0xc26272d499f21646 # load another value into integer register
amoor.w x5, x25, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x3550a851ec42ce8f # load random value
la x6, scratch # base address
sd x26, 0(x6) # store in memory
li x26, 0x1d94f28bdaaa370f # load another value into integer register
amoor.w x31, x26, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x04a4983d2024992b # load random value
la x2, scratch # base address
sd x27, 0(x2) # store in memory
li x27, 0x2d9adf45f37a6e18 # load another value into integer register
amoor.w x24, x27, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xf8838ca600bb6f55 # load random value
la x14, scratch # base address
sd x28, 0(x14) # store in memory
li x28, 0xd8395ba75a4cf3dc # load another value into integer register
amoor.w x2, x28, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xcf2ecd28e3d0cfbe # load random value
la x16, scratch # base address
sd x29, 0(x16) # store in memory
li x29, 0x12b1faea1c779886 # load another value into integer register
amoor.w x30, x29, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xa1c114c1108a6a22 # load random value
la x31, scratch # base address
sd x30, 0(x31) # store in memory
li x30, 0x1a1ef8c71fdb1a66 # load another value into integer register
amoor.w x19, x30, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xa990ed7a9741d132 # load random value
la x5, scratch # base address
sd x31, 0(x5) # store in memory
li x31, 0x5f3a62743c931d53 # load another value into integer register
amoor.w x9, x31, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x23, 0xb0a1285ed7094d61 # load random value
la x7, scratch # base address
sd x23, 0(x7) # store in memory
li x23, 0x67df5e76e237450b # load another value into integer register
amoor.w x0, x23, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x827f74ae43a28e72 # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0xd30e7613ed4855a7 # load another value into integer register
amoor.w x1, x20, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x1f49966371e598c6 # load random value
la x30, scratch # base address
sd x8, 0(x30) # store in memory
li x8, 0x618d66a56a041272 # load another value into integer register
amoor.w x2, x8, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x541489c1a3f9af04 # load random value
la x7, scratch # base address
sd x22, 0(x7) # store in memory
li x22, 0x432848b67d2f7038 # load another value into integer register
amoor.w x3, x22, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0xa4cf98af80325eef # load random value
la x22, scratch # base address
sd x31, 0(x22) # store in memory
li x31, 0xacfe6d2c6c5f698e # load another value into integer register
amoor.w x4, x31, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xc5d4e392bb145f44 # load random value
la x13, scratch # base address
sd x2, 0(x13) # store in memory
li x2, 0xb3b0d87cb338e49b # load another value into integer register
amoor.w x5, x2, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xe149bb0125a2c69d # load random value
la x3, scratch # base address
sd x17, 0(x3) # store in memory
li x17, 0xcb222497ca07073c # load another value into integer register
amoor.w x6, x17, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x767e5c6f64805b2a # load random value
la x30, scratch # base address
sd x23, 0(x30) # store in memory
li x23, 0x67d6d720c6b7e266 # load another value into integer register
amoor.w x7, x23, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x18, 0xe780757596027ecc # load random value
la x5, scratch # base address
sd x18, 0(x5) # store in memory
li x18, 0x1aca1062129974f7 # load another value into integer register
amoor.w x8, x18, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x7, 0xa7126ae4e64a9147 # load random value
la x21, scratch # base address
sd x7, 0(x21) # store in memory
li x7, 0x7cbff9d41185e6b1 # load another value into integer register
amoor.w x9, x7, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x5463f01f4b25f067 # load random value
la x16, scratch # base address
sd x8, 0(x16) # store in memory
li x8, 0xe556b166606aa5b6 # load another value into integer register
amoor.w x10, x8, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x3ad5cf0ad2046253 # load random value
la x23, scratch # base address
sd x3, 0(x23) # store in memory
li x3, 0xdc039f032fbd35c1 # load another value into integer register
amoor.w x11, x3, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x18, 0xf7c056406c15b521 # load random value
la x2, scratch # base address
sd x18, 0(x2) # store in memory
li x18, 0xe2fe48d011209453 # load another value into integer register
amoor.w x12, x18, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x20, 0xf9efd4b9fb5e53b5 # load random value
la x24, scratch # base address
sd x20, 0(x24) # store in memory
li x20, 0x03526462fa4d27bf # load another value into integer register
amoor.w x13, x20, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x864b7175ac5c0203 # load random value
la x12, scratch # base address
sd x2, 0(x12) # store in memory
li x2, 0x5430d6bfb6fc2dfa # load another value into integer register
amoor.w x14, x2, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x0438f0b29a3b102a # load random value
la x9, scratch # base address
sd x8, 0(x9) # store in memory
li x8, 0xaad563cc8357b3db # load another value into integer register
amoor.w x15, x8, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x27, 0xf7feb743fb06c900 # load random value
la x31, scratch # base address
sd x27, 0(x31) # store in memory
li x27, 0x4f72b6aa0eca442e # load another value into integer register
amoor.w x16, x27, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x6, 0x9df0637e74d41c80 # load random value
la x12, scratch # base address
sd x6, 0(x12) # store in memory
li x6, 0x2bcd54736e9c2164 # load another value into integer register
amoor.w x17, x6, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x266d7c3bf6d2953c # load random value
la x28, scratch # base address
sd x30, 0(x28) # store in memory
li x30, 0xfefba01ed68286c1 # load another value into integer register
amoor.w x18, x30, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x21, 0xa3cf791c26500985 # load random value
la x10, scratch # base address
sd x21, 0(x10) # store in memory
li x21, 0x303d62260b9541f0 # load another value into integer register
amoor.w x19, x21, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x03d275f77cb0b66b # load random value
la x1, scratch # base address
sd x3, 0(x1) # store in memory
li x3, 0x73e74d07baf5c140 # load another value into integer register
amoor.w x20, x3, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x7d5d57030a496c44 # load random value
la x21, scratch # base address
sd x10, 0(x21) # store in memory
li x10, 0x37fa6e6550bba6a2 # load another value into integer register
amoor.w x21, x10, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x25, 0xa640f05a9dfb9d24 # load random value
la x1, scratch # base address
sd x25, 0(x1) # store in memory
li x25, 0x308bf0c4c992815c # load another value into integer register
amoor.w x22, x25, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x24, 0x47d1c21c67a944cf # load random value
la x8, scratch # base address
sd x24, 0(x8) # store in memory
li x24, 0x32c65eb391d460ef # load another value into integer register
amoor.w x23, x24, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xeda9148b1475950d # load random value
la x6, scratch # base address
sd x13, 0(x6) # store in memory
li x13, 0x77d28ddbb72f409a # load another value into integer register
amoor.w x24, x13, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x22, 0xb1de6159c11b4273 # load random value
la x9, scratch # base address
sd x22, 0(x9) # store in memory
li x22, 0xc51f0d8db7c9e38b # load another value into integer register
amoor.w x25, x22, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x48b957dedd683da7 # load random value
la x22, scratch # base address
sd x19, 0(x22) # store in memory
li x19, 0x9b7827eb0a0b2167 # load another value into integer register
amoor.w x26, x19, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x25, 0x2529e38c1180fd1a # load random value
la x9, scratch # base address
sd x25, 0(x9) # store in memory
li x25, 0x5dbfb36c840c29d5 # load another value into integer register
amoor.w x27, x25, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x747db6c58f258a5c # load random value
la x20, scratch # base address
sd x28, 0(x20) # store in memory
li x28, 0xfdd353f211fdd9c8 # load another value into integer register
amoor.w x28, x28, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x30, 0xf9118b92b0e054ad # load random value
la x25, scratch # base address
sd x30, 0(x25) # store in memory
li x30, 0x1eefc961561795b7 # load another value into integer register
amoor.w x29, x30, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x60cfe30401aadb5f # load random value
la x26, scratch # base address
sd x1, 0(x26) # store in memory
li x1, 0x04711ae5472fda1d # load another value into integer register
amoor.w x30, x1, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x27, 0xf4e15806d7ac9a93 # load random value
la x16, scratch # base address
sd x27, 0(x16) # store in memory
li x27, 0xa807b81ca30eeff7 # load another value into integer register
amoor.w x31, x27, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x8fc92ca971a8d219 # load random value
la x29, scratch # base address
sd x9, 0(x29) # store in memory
li x9, 0x0000000000000000 # load another value into integer register
amoor.w x22, x9, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0xcdd3eefbda7a4db1 # load random value
la x11, scratch # base address
sd x29, 0(x11) # store in memory
li x29, 0x0000000000000001 # load another value into integer register
amoor.w x9, x29, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x18, 0xb8ac28c0a16a812c # load random value
la x8, scratch # base address
sd x18, 0(x8) # store in memory
li x18, 0x0000000000000002 # load another value into integer register
amoor.w x12, x18, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x6, 0xdc335cd7ede220d6 # load random value
la x29, scratch # base address
sd x6, 0(x29) # store in memory
li x6, 0x8000000000000000 # load another value into integer register
amoor.w x21, x6, (x29) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x7, 0x77f7f5c1e5f4d04a # load random value
la x25, scratch # base address
sd x7, 0(x25) # store in memory
li x7, 0x8000000000000001 # load another value into integer register
amoor.w x11, x7, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x842fbdebe06f7379 # load random value
la x9, scratch # base address
sd x18, 0(x9) # store in memory
li x18, 0x7fffffffffffffff # load another value into integer register
amoor.w x24, x18, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0xec43313cc0897f74 # load random value
la x24, scratch # base address
sd x20, 0(x24) # store in memory
li x20, 0x7ffffffffffffffe # load another value into integer register
amoor.w x9, x20, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0x3d8209c9e85846b6 # load random value
la x13, scratch # base address
sd x15, 0(x13) # store in memory
li x15, 0xffffffffffffffff # load another value into integer register
amoor.w x29, x15, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0xa983e992f29a4d71 # load random value
la x12, scratch # base address
sd x8, 0(x12) # store in memory
li x8, 0xfffffffffffffffe # load another value into integer register
amoor.w x2, x8, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x3, 0x029b15e32db9199b # load random value
la x16, scratch # base address
sd x3, 0(x16) # store in memory
li x3, 0x5bbc887763ae86f2 # load another value into integer register
amoor.w x10, x3, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0x24887cf97ea4450a # load random value
la x8, scratch # base address
sd x24, 0(x8) # store in memory
li x24, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amoor.w x28, x24, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x18, 0x803b2b8a8eeb8016 # load random value
la x31, scratch # base address
sd x18, 0(x31) # store in memory
li x18, 0x5555555555555555 # load another value into integer register
amoor.w x14, x18, (x31) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x0d41b32b787e674a # load random value
la x9, scratch # base address
sd x28, 0(x9) # store in memory
li x28, 0x00000000ffffffff # load another value into integer register
amoor.w x25, x28, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x5703f90a34265bec # load random value
la x3, scratch # base address
sd x23, 0(x3) # store in memory
li x23, 0x00000000fffffffe # load another value into integer register
amoor.w x13, x23, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0x22994e2bebb17e7f # load random value
la x8, scratch # base address
sd x25, 0(x8) # store in memory
li x25, 0x0000000100000000 # load another value into integer register
amoor.w x31, x25, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x965a5ea632782755 # load random value
la x14, scratch # base address
sd x18, 0(x14) # store in memory
li x18, 0x0000000100000001 # load another value into integer register
amoor.w x25, x18, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x5463ecc35fa15a36 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoor.w x27, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x9561c28a501c1420 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoor.w x27, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xf994ee5ededf2054 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoor.w x19, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfbd437110e0dc03d # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoor.w x6, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2590b6a2566ce6ed # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoor.w x1, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x754640b6574dfbe8 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoor.w x18, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc6a15f0eb13ca20b # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoor.w x5, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9b2420786df077f5 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoor.w x5, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xf9b8a09d652a66fe # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoor.w x27, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x615fdad843af93ef # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoor.w x29, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x297c87d458effd01 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoor.w x2, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd4340f15f99deeb2 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoor.w x31, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x022c973127702227 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoor.w x1, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xae3e5ed33a830eb8 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoor.w x1, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf38af4ef6cf4772e # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoor.w x24, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x48b41fbeb528d094 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoor.w x12, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x46f863fd24a79352 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoor.w x31, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x05b9fa47b1693957 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoor.w x6, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x31ca4aea68564b44 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoor.w x2, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x2c9a68214f5c42de # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoor.w x28, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x99993587f455b803 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoor.w x16, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xea25c26df77e1edb # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoor.w x9, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xddbc39ed5fcac0c7 # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoor.w x20, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x141d58fede8e9656 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoor.w x8, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe1ba02021aa52fdc # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoor.w x23, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x7091db0db6ab3581 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoor.w x28, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x24fe43fc1d13fab5 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoor.w x29, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x37daac72d3e603c2 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoor.w x23, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xe0c6fd24c80d4616 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoor.w x8, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x786a29cc8fbf2b5a # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoor.w x17, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x825bb02ebca09a67 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoor.w x24, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x28, 0xc7b03fdc886c9441 # load random value
la x1, scratch # base address
sd x28, 0(x1) # store in memory
li x28, 0x3c3855ce30f2ca92 # load another value into integer register
amoor.w x1, x28, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x27, 0x87e13e3769fd51a3 # load random value
la x2, scratch # base address
sd x27, 0(x2) # store in memory
li x27, 0xf92d44df97f0048e # load another value into integer register
amoor.w x2, x27, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x10, 0x849b4560ac7f6fb3 # load random value
la x3, scratch # base address
sd x10, 0(x3) # store in memory
li x10, 0xa709ae07c22c0380 # load another value into integer register
amoor.w x3, x10, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x0645b2b5ad435b40 # load random value
la x4, scratch # base address
sd x20, 0(x4) # store in memory
li x20, 0x0269a3dcdac3876d # load another value into integer register
amoor.w x4, x20, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x688ef37a4448e18a # load random value
la x5, scratch # base address
sd x22, 0(x5) # store in memory
li x22, 0x47d07be1ae785000 # load another value into integer register
amoor.w x5, x22, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xe9e98ec71e12d552 # load random value
la x6, scratch # base address
sd x26, 0(x6) # store in memory
li x26, 0x56d3e6ad10e38071 # load another value into integer register
amoor.w x6, x26, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xe98243acfc3f83d0 # load random value
la x7, scratch # base address
sd x29, 0(x7) # store in memory
li x29, 0xeabd70000cb29e2c # load another value into integer register
amoor.w x7, x29, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x5, 0x038196aa0bdcaf53 # load random value
la x8, scratch # base address
sd x5, 0(x8) # store in memory
li x5, 0xa5a72963cb06f634 # load another value into integer register
amoor.w x8, x5, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x29, 0x20d2a0a7ba635f01 # load random value
la x9, scratch # base address
sd x29, 0(x9) # store in memory
li x29, 0xec75344bb2f56459 # load another value into integer register
amoor.w x9, x29, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x12, 0x31383e10cf874c00 # load random value
la x10, scratch # base address
sd x12, 0(x10) # store in memory
li x12, 0x5eae30a56ce0d84a # load another value into integer register
amoor.w x10, x12, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x19, 0xcf1c59484a290cc6 # load random value
la x11, scratch # base address
sd x19, 0(x11) # store in memory
li x19, 0xa01196e4dfd2c332 # load another value into integer register
amoor.w x11, x19, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x22, 0x63d4806129946c29 # load random value
la x12, scratch # base address
sd x22, 0(x12) # store in memory
li x22, 0xb391035a91b339f7 # load another value into integer register
amoor.w x12, x22, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x23, 0x86270348ae706d06 # load random value
la x13, scratch # base address
sd x23, 0(x13) # store in memory
li x23, 0x0995ed932482e668 # load another value into integer register
amoor.w x13, x23, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x25, 0x1087791c26c4817b # load random value
la x14, scratch # base address
sd x25, 0(x14) # store in memory
li x25, 0xc1b68d830aed78ff # load another value into integer register
amoor.w x14, x25, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x17, 0x60d65658edaf506a # load random value
la x15, scratch # base address
sd x17, 0(x15) # store in memory
li x17, 0x47e734d1450bc084 # load another value into integer register
amoor.w x15, x17, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x23, 0x02dc06987b9ee5bb # load random value
la x16, scratch # base address
sd x23, 0(x16) # store in memory
li x23, 0xc99eb2f8b0cd9129 # load another value into integer register
amoor.w x16, x23, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x3, 0xcbf97dcb93296399 # load random value
la x17, scratch # base address
sd x3, 0(x17) # store in memory
li x3, 0x735de3edb9bd4844 # load another value into integer register
amoor.w x17, x3, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x12, 0xa293d1cff54f1a56 # load random value
la x18, scratch # base address
sd x12, 0(x18) # store in memory
li x12, 0x0e8fcc0fb2b0ba5c # load another value into integer register
amoor.w x18, x12, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x21, 0xde3609dfba815cbe # load random value
la x19, scratch # base address
sd x21, 0(x19) # store in memory
li x21, 0x650edcce7e0c5692 # load another value into integer register
amoor.w x19, x21, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x12, 0x0466951c1f9da0c1 # load random value
la x20, scratch # base address
sd x12, 0(x20) # store in memory
li x12, 0x6ee162a759cbde48 # load another value into integer register
amoor.w x20, x12, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x13, 0xc4b872469ed1adf6 # load random value
la x21, scratch # base address
sd x13, 0(x21) # store in memory
li x13, 0xa635e25c4d18061a # load another value into integer register
amoor.w x21, x13, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x26, 0xadd0048a18aab789 # load random value
la x22, scratch # base address
sd x26, 0(x22) # store in memory
li x26, 0xc1b0eece4c07d9f8 # load another value into integer register
amoor.w x22, x26, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x7, 0x9e7b0026feb0587f # load random value
la x23, scratch # base address
sd x7, 0(x23) # store in memory
li x7, 0x0e5923d3ad805001 # load another value into integer register
amoor.w x23, x7, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x10, 0x8439cdb5e864769b # load random value
la x24, scratch # base address
sd x10, 0(x24) # store in memory
li x10, 0xe42170fa64e8f69f # load another value into integer register
amoor.w x24, x10, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x26, 0x8806711d7a8d362f # load random value
la x25, scratch # base address
sd x26, 0(x25) # store in memory
li x26, 0x4f1e780ec69ebaae # load another value into integer register
amoor.w x25, x26, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x12, 0x45b5f3e011210ccf # load random value
la x26, scratch # base address
sd x12, 0(x26) # store in memory
li x12, 0x5fd7294b83a90eb8 # load another value into integer register
amoor.w x26, x12, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x16, 0x91c850b564bcc0e7 # load random value
la x27, scratch # base address
sd x16, 0(x27) # store in memory
li x16, 0x92c760d7e33c98f5 # load another value into integer register
amoor.w x27, x16, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x17, 0x531b9ae5b05388d4 # load random value
la x28, scratch # base address
sd x17, 0(x28) # store in memory
li x17, 0xff4abd5887119003 # load another value into integer register
amoor.w x28, x17, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x24, 0x98eea87ea45329d5 # load random value
la x29, scratch # base address
sd x24, 0(x29) # store in memory
li x24, 0xfe576f37a038cae5 # load another value into integer register
amoor.w x29, x24, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x31, 0x0e353ea0acce5690 # load random value
la x30, scratch # base address
sd x31, 0(x30) # store in memory
li x31, 0xba569b22bb319e2c # load another value into integer register
amoor.w x30, x31, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x5, 0x37303df365c877d9 # load random value
la x31, scratch # base address
sd x5, 0(x31) # store in memory
li x5, 0xbc9fd4ffdb00eee4 # load another value into integer register
amoor.w x31, x5, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0xf5124c3ac0a40160 # load random value
la x26, scratch # base address
sd x0, 0(x26) # store in memory
li x0, 0x53696757ac59715f # load another value into integer register
amoor.w x0, x0, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x88abbde8aec729c7 # load random value
la x22, scratch # base address
sd x1, 0(x22) # store in memory
li x1, 0x1be423a1aa74ac72 # load another value into integer register
amoor.w x1, x1, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xf15b4f0bb572a55e # load random value
la x19, scratch # base address
sd x2, 0(x19) # store in memory
li x2, 0x565951382abedb99 # load another value into integer register
amoor.w x2, x2, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x64609894868b126d # load random value
la x6, scratch # base address
sd x3, 0(x6) # store in memory
li x3, 0xef4f0145ced3597b # load another value into integer register
amoor.w x3, x3, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfad19824f112d6f8 # load random value
la x13, scratch # base address
sd x4, 0(x13) # store in memory
li x4, 0x824578def629dad6 # load another value into integer register
amoor.w x4, x4, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe9b9117b75733f02 # load random value
la x29, scratch # base address
sd x5, 0(x29) # store in memory
li x5, 0x520e62b6534dba49 # load another value into integer register
amoor.w x5, x5, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x06378e911529a0b7 # load random value
la x17, scratch # base address
sd x6, 0(x17) # store in memory
li x6, 0xf37ea3745ba34ce7 # load another value into integer register
amoor.w x6, x6, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0751672e795f607b # load random value
la x27, scratch # base address
sd x7, 0(x27) # store in memory
li x7, 0x23ecf49aa4041f44 # load another value into integer register
amoor.w x7, x7, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x94932ca90090a433 # load random value
la x5, scratch # base address
sd x8, 0(x5) # store in memory
li x8, 0xbd561c75dfed0b5c # load another value into integer register
amoor.w x8, x8, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x68b580882c4e054b # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoor.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x2709e6722b8f2c74 # load random value
la x2, scratch # base address
sd x10, 0(x2) # store in memory
li x10, 0x57f44be4969f68c3 # load another value into integer register
amoor.w x10, x10, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xebd4b903b102d816 # load random value
la x5, scratch # base address
sd x11, 0(x5) # store in memory
li x11, 0x916d28dbbe8c3c08 # load another value into integer register
amoor.w x11, x11, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x6eeccb559002f5b9 # load random value
la x10, scratch # base address
sd x12, 0(x10) # store in memory
li x12, 0x6d95b5192386e1f0 # load another value into integer register
amoor.w x12, x12, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xde452162ca48a99f # load random value
la x20, scratch # base address
sd x13, 0(x20) # store in memory
li x13, 0xd46171b006c42275 # load another value into integer register
amoor.w x13, x13, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xe71f10637869584c # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoor.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x7e8867a77e002b54 # load random value
la x1, scratch # base address
sd x15, 0(x1) # store in memory
li x15, 0x11a404a5c90a9646 # load another value into integer register
amoor.w x15, x15, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x2b29563441ce940c # load random value
la x11, scratch # base address
sd x16, 0(x11) # store in memory
li x16, 0xe9172925b75c5f3d # load another value into integer register
amoor.w x16, x16, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x028a6709ff24877b # load random value
la x23, scratch # base address
sd x17, 0(x23) # store in memory
li x17, 0x45231b276cbebf92 # load another value into integer register
amoor.w x17, x17, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x7577a35ae144d6ff # load random value
la x7, scratch # base address
sd x18, 0(x7) # store in memory
li x18, 0x65c1ddbc0654a4de # load another value into integer register
amoor.w x18, x18, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x14c7bb8ae166d600 # load random value
la x2, scratch # base address
sd x19, 0(x2) # store in memory
li x19, 0x611b1b4e18e3a6df # load another value into integer register
amoor.w x19, x19, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x6505e476aec5a05a # load random value
la x14, scratch # base address
sd x20, 0(x14) # store in memory
li x20, 0xf429912a4d13e848 # load another value into integer register
amoor.w x20, x20, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xf80ee77fe9a454b2 # load random value
la x8, scratch # base address
sd x21, 0(x8) # store in memory
li x21, 0xce4b2777fa01dbc3 # load another value into integer register
amoor.w x21, x21, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x0ea544e80466ea92 # load random value
la x2, scratch # base address
sd x22, 0(x2) # store in memory
li x22, 0x4276d92169de9219 # load another value into integer register
amoor.w x22, x22, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x2aae490315a2005d # load random value
la x17, scratch # base address
sd x23, 0(x17) # store in memory
li x23, 0x0a33282552536ba8 # load another value into integer register
amoor.w x23, x23, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x82c1330e1dbee7f3 # load random value
la x13, scratch # base address
sd x24, 0(x13) # store in memory
li x24, 0xe0a894c8e76111c2 # load another value into integer register
amoor.w x24, x24, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x9eda5a1e7b01d61d # load random value
la x18, scratch # base address
sd x25, 0(x18) # store in memory
li x25, 0xf1f20c001a77f88b # load another value into integer register
amoor.w x25, x25, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xc82b5de35fdb3888 # load random value
la x6, scratch # base address
sd x26, 0(x6) # store in memory
li x26, 0x9e57bb0154919537 # load another value into integer register
amoor.w x26, x26, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xd8eda2bbad2b9515 # load random value
la x7, scratch # base address
sd x27, 0(x7) # store in memory
li x27, 0xf8587c2eba561457 # load another value into integer register
amoor.w x27, x27, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xd309c07a8a163203 # load random value
la x14, scratch # base address
sd x28, 0(x14) # store in memory
li x28, 0x23f544b957f0a816 # load another value into integer register
amoor.w x28, x28, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xa0780fc9426f17ad # load random value
la x14, scratch # base address
sd x29, 0(x14) # store in memory
li x29, 0x5f18ee69f93f3d4d # load another value into integer register
amoor.w x29, x29, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x5bc67f6c13bc9c6d # load random value
la x8, scratch # base address
sd x30, 0(x8) # store in memory
li x30, 0x2a74b4fe2fef1adf # load another value into integer register
amoor.w x30, x30, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x7d1d0b5e29dc83cb # load random value
la x26, scratch # base address
sd x31, 0(x26) # store in memory
li x31, 0x09011a815ea0d008 # load another value into integer register
amoor.w x31, x31, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x7d811fa3670c380e # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amoor.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8a03bb2918e5ced2 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amoor.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x05124bcbfdbbc366 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amoor.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd19982aa6937c33f # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amoor.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x75bf3a2f65404b6b # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amoor.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x505f2a75dece7176 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amoor.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x384ddb67cc073481 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amoor.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe82389ad5187fbb5 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amoor.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6882e360c7b1642d # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amoor.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x274f6c8a60df45c7 # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amoor.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf9fc8777e8e9bb06 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amoor.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5d86b2661d657a51 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amoor.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x536a706cf052d041 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amoor.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd48e58b7e1762a7b # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amoor.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8e79f88bdf6af311 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amoor.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc46a51b65dcf7a19 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amoor.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xed5db871dae37732 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amoor.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2f568bd2215aa971 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amoor.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9e38d29a4e5438a0 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amoor.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x3f14a9737c6a666c # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amoor.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x33a217c50b3ccb88 # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amoor.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xdf8e44472e1afc48 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amoor.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x9f5d776f86b3082e # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amoor.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x85656b8a73f7cce7 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amoor.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd55bcf8047f3101c # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amoor.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc4513d7a7b66d9e9 # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amoor.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x1a1a38e5ee26f2a6 # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amoor.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x062d2b18a4e10e0b # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amoor.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd8a8e4b43976badd # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amoor.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x196d7ce53409fdcf # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amoor.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7c5b282fd3b501cf # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amoor.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
add x20, x19, x1 # perform first operation
amoor.w x29, x9, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x31, scratch
add x1, x13, x19 # perform first operation
amoor.w x30, x9, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
add x11, x2, x23 # perform first operation
amoor.w x29, x8, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
add x21, x21, x0 # perform first operation
amoor.w x24, x21, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x8, scratch
add x8, x8, x0 # perform first operation
amoor.w x1, x30, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
add x20, x20, x0 # perform first operation
amoor.w x29, x15, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x30, scratch
add x27, x21, x8 # perform first operation
amoor.w x27, x11, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x15, scratch
add x24, x31, x12 # perform first operation
amoor.w x24, x8, (x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x10, scratch
add x19, x25, x21 # perform first operation
amoor.w x19, x22, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x1, scratch
add x27, x6, x3 # perform first operation
amoor.w x6, x16, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x8, scratch
add x16, x21, x1 # perform first operation
amoor.w x1, x20, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x28, scratch
add x19, x25, x11 # perform first operation
amoor.w x30, x13, (x28) # perform second (triggering) operation

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
