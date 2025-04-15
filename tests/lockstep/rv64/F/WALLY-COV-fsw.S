///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fsw.S
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

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x1)
la x2, scratch
li x3, 0x3a3c123a1cc015f # load x3 with value 0x3a3c123a1cc015f
sw x3, 0(x2) # store 0x3a3c123a1cc015f in memory
flw f27, 0(x2) # load 0x3a3c123a1cc015f from memory into f27
la x1, scratch # base address
addi x1, x1, -1108 # sub immediate from rs1 to counter offset
fsw f27, 1108(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0xd28294bdd43f63fc # load x3 with value 0xd28294bdd43f63fc
sw x3, 0(x2) # store 0xd28294bdd43f63fc in memory
flw f25, 0(x2) # load 0xd28294bdd43f63fc from memory into f25
la x2, scratch # base address
addi x2, x2, -76 # sub immediate from rs1 to counter offset
fsw f25, 76(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0x59c0e2ec3fef8c78 # load x3 with value 0x59c0e2ec3fef8c78
sw x3, 0(x2) # store 0x59c0e2ec3fef8c78 in memory
flw f20, 0(x2) # load 0x59c0e2ec3fef8c78 from memory into f20
la x3, scratch # base address
addi x3, x3, -1680 # sub immediate from rs1 to counter offset
fsw f20, 1680(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1ed758bc02a0f614 # load x3 with value 0x1ed758bc02a0f614
sw x3, 0(x2) # store 0x1ed758bc02a0f614 in memory
flw f2, 0(x2) # load 0x1ed758bc02a0f614 from memory into f2
la x4, scratch # base address
addi x4, x4, -620 # sub immediate from rs1 to counter offset
fsw f2, 620(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe2fb3058bab18528 # load x3 with value 0xe2fb3058bab18528
sw x3, 0(x2) # store 0xe2fb3058bab18528 in memory
flw f20, 0(x2) # load 0xe2fb3058bab18528 from memory into f20
la x5, scratch # base address
addi x5, x5, -1003 # sub immediate from rs1 to counter offset
fsw f20, 1003(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2e0dfa5882a77c59 # load x3 with value 0x2e0dfa5882a77c59
sw x3, 0(x2) # store 0x2e0dfa5882a77c59 in memory
flw f29, 0(x2) # load 0x2e0dfa5882a77c59 from memory into f29
la x6, scratch # base address
addi x6, x6, 1833 # sub immediate from rs1 to counter offset
fsw f29, -1833(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfa6f431b9fda7a07 # load x3 with value 0xfa6f431b9fda7a07
sw x3, 0(x2) # store 0xfa6f431b9fda7a07 in memory
flw f14, 0(x2) # load 0xfa6f431b9fda7a07 from memory into f14
la x7, scratch # base address
addi x7, x7, -1247 # sub immediate from rs1 to counter offset
fsw f14, 1247(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0x96902eb11800ad8 # load x3 with value 0x96902eb11800ad8
sw x3, 0(x2) # store 0x96902eb11800ad8 in memory
flw f19, 0(x2) # load 0x96902eb11800ad8 from memory into f19
la x8, scratch # base address
addi x8, x8, 282 # sub immediate from rs1 to counter offset
fsw f19, -282(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0xe5704e1485537a4d # load x3 with value 0xe5704e1485537a4d
sw x3, 0(x2) # store 0xe5704e1485537a4d in memory
flw f1, 0(x2) # load 0xe5704e1485537a4d from memory into f1
la x9, scratch # base address
addi x9, x9, -1211 # sub immediate from rs1 to counter offset
fsw f1, 1211(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0x7aaf8656d3b2943d # load x3 with value 0x7aaf8656d3b2943d
sw x3, 0(x2) # store 0x7aaf8656d3b2943d in memory
flw f26, 0(x2) # load 0x7aaf8656d3b2943d from memory into f26
la x10, scratch # base address
addi x10, x10, 880 # sub immediate from rs1 to counter offset
fsw f26, -880(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0x3b6c689f7ff690b6 # load x3 with value 0x3b6c689f7ff690b6
sw x3, 0(x2) # store 0x3b6c689f7ff690b6 in memory
flw f20, 0(x2) # load 0x3b6c689f7ff690b6 from memory into f20
la x11, scratch # base address
addi x11, x11, -11 # sub immediate from rs1 to counter offset
fsw f20, 11(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0xea516ae9f8192c96 # load x3 with value 0xea516ae9f8192c96
sw x3, 0(x2) # store 0xea516ae9f8192c96 in memory
flw f11, 0(x2) # load 0xea516ae9f8192c96 from memory into f11
la x12, scratch # base address
addi x12, x12, -1888 # sub immediate from rs1 to counter offset
fsw f11, 1888(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0x581ae1513b95bed # load x3 with value 0x581ae1513b95bed
sw x3, 0(x2) # store 0x581ae1513b95bed in memory
flw f21, 0(x2) # load 0x581ae1513b95bed from memory into f21
la x13, scratch # base address
addi x13, x13, -1535 # sub immediate from rs1 to counter offset
fsw f21, 1535(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0x855ed2efaf96f030 # load x3 with value 0x855ed2efaf96f030
sw x3, 0(x2) # store 0x855ed2efaf96f030 in memory
flw f29, 0(x2) # load 0x855ed2efaf96f030 from memory into f29
la x14, scratch # base address
addi x14, x14, -567 # sub immediate from rs1 to counter offset
fsw f29, 567(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0x69a872626fbb939c # load x3 with value 0x69a872626fbb939c
sw x3, 0(x2) # store 0x69a872626fbb939c in memory
flw f29, 0(x2) # load 0x69a872626fbb939c from memory into f29
la x15, scratch # base address
addi x15, x15, -452 # sub immediate from rs1 to counter offset
fsw f29, 452(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0x5234a17977d10e05 # load x3 with value 0x5234a17977d10e05
sw x3, 0(x2) # store 0x5234a17977d10e05 in memory
flw f28, 0(x2) # load 0x5234a17977d10e05 from memory into f28
la x16, scratch # base address
addi x16, x16, -1042 # sub immediate from rs1 to counter offset
fsw f28, 1042(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0xfecb1a2f5c8d095b # load x3 with value 0xfecb1a2f5c8d095b
sw x3, 0(x2) # store 0xfecb1a2f5c8d095b in memory
flw f1, 0(x2) # load 0xfecb1a2f5c8d095b from memory into f1
la x17, scratch # base address
addi x17, x17, 1422 # sub immediate from rs1 to counter offset
fsw f1, -1422(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0x83ac8445dc4e4c18 # load x3 with value 0x83ac8445dc4e4c18
sw x3, 0(x2) # store 0x83ac8445dc4e4c18 in memory
flw f30, 0(x2) # load 0x83ac8445dc4e4c18 from memory into f30
la x18, scratch # base address
addi x18, x18, -856 # sub immediate from rs1 to counter offset
fsw f30, 856(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0x2a67eff58a61cd5c # load x3 with value 0x2a67eff58a61cd5c
sw x3, 0(x2) # store 0x2a67eff58a61cd5c in memory
flw f18, 0(x2) # load 0x2a67eff58a61cd5c from memory into f18
la x19, scratch # base address
addi x19, x19, 1024 # sub immediate from rs1 to counter offset
fsw f18, -1024(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0x73a8276b6f24255b # load x3 with value 0x73a8276b6f24255b
sw x3, 0(x2) # store 0x73a8276b6f24255b in memory
flw f18, 0(x2) # load 0x73a8276b6f24255b from memory into f18
la x20, scratch # base address
addi x20, x20, -26 # sub immediate from rs1 to counter offset
fsw f18, 26(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0xc6a371785058f163 # load x3 with value 0xc6a371785058f163
sw x3, 0(x2) # store 0xc6a371785058f163 in memory
flw f15, 0(x2) # load 0xc6a371785058f163 from memory into f15
la x21, scratch # base address
addi x21, x21, 947 # sub immediate from rs1 to counter offset
fsw f15, -947(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0xa46d3f783f8d96e5 # load x3 with value 0xa46d3f783f8d96e5
sw x3, 0(x2) # store 0xa46d3f783f8d96e5 in memory
flw f2, 0(x2) # load 0xa46d3f783f8d96e5 from memory into f2
la x22, scratch # base address
addi x22, x22, -20 # sub immediate from rs1 to counter offset
fsw f2, 20(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0x94b76d2cd7584db5 # load x3 with value 0x94b76d2cd7584db5
sw x3, 0(x2) # store 0x94b76d2cd7584db5 in memory
flw f8, 0(x2) # load 0x94b76d2cd7584db5 from memory into f8
la x23, scratch # base address
addi x23, x23, -702 # sub immediate from rs1 to counter offset
fsw f8, 702(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0x892802fdb8094419 # load x3 with value 0x892802fdb8094419
sw x3, 0(x2) # store 0x892802fdb8094419 in memory
flw f27, 0(x2) # load 0x892802fdb8094419 from memory into f27
la x24, scratch # base address
addi x24, x24, -523 # sub immediate from rs1 to counter offset
fsw f27, 523(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0xe5b35d5a9c46ffe3 # load x3 with value 0xe5b35d5a9c46ffe3
sw x3, 0(x2) # store 0xe5b35d5a9c46ffe3 in memory
flw f22, 0(x2) # load 0xe5b35d5a9c46ffe3 from memory into f22
la x25, scratch # base address
addi x25, x25, -85 # sub immediate from rs1 to counter offset
fsw f22, 85(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0x6694a18e30125b61 # load x3 with value 0x6694a18e30125b61
sw x3, 0(x2) # store 0x6694a18e30125b61 in memory
flw f2, 0(x2) # load 0x6694a18e30125b61 from memory into f2
la x26, scratch # base address
addi x26, x26, -256 # sub immediate from rs1 to counter offset
fsw f2, 256(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0xfe3757bffa12cbfe # load x3 with value 0xfe3757bffa12cbfe
sw x3, 0(x2) # store 0xfe3757bffa12cbfe in memory
flw f20, 0(x2) # load 0xfe3757bffa12cbfe from memory into f20
la x27, scratch # base address
addi x27, x27, 455 # sub immediate from rs1 to counter offset
fsw f20, -455(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0x9424724844160a8 # load x3 with value 0x9424724844160a8
sw x3, 0(x2) # store 0x9424724844160a8 in memory
flw f27, 0(x2) # load 0x9424724844160a8 from memory into f27
la x28, scratch # base address
addi x28, x28, -1584 # sub immediate from rs1 to counter offset
fsw f27, 1584(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0x406395e654725965 # load x3 with value 0x406395e654725965
sw x3, 0(x2) # store 0x406395e654725965 in memory
flw f28, 0(x2) # load 0x406395e654725965 from memory into f28
la x29, scratch # base address
addi x29, x29, -1015 # sub immediate from rs1 to counter offset
fsw f28, 1015(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0x15c648f9a0f376a0 # load x3 with value 0x15c648f9a0f376a0
sw x3, 0(x2) # store 0x15c648f9a0f376a0 in memory
flw f26, 0(x2) # load 0x15c648f9a0f376a0 from memory into f26
la x30, scratch # base address
addi x30, x30, 268 # sub immediate from rs1 to counter offset
fsw f26, -268(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0xcfb7f9c8d2267f41 # load x3 with value 0xcfb7f9c8d2267f41
sw x3, 0(x2) # store 0xcfb7f9c8d2267f41 in memory
flw f10, 0(x2) # load 0xcfb7f9c8d2267f41 from memory into f10
la x31, scratch # base address
addi x31, x31, -21 # sub immediate from rs1 to counter offset
fsw f10, 21(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xdf638ba78bd06299 # load x3 with value 0xdf638ba78bd06299
sw x3, 0(x2) # store 0xdf638ba78bd06299 in memory
flw f7, 0(x2) # load 0xdf638ba78bd06299 from memory into f7
la x2, scratch # base address
addi x2, x2, 0 # sub immediate from rs1 to counter offset
fsw f7, 0(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x405983375f8283f7 # load x3 with value 0x405983375f8283f7
sw x3, 0(x2) # store 0x405983375f8283f7 in memory
flw f30, 0(x2) # load 0x405983375f8283f7 from memory into f30
la x10, scratch # base address
addi x10, x10, -1 # sub immediate from rs1 to counter offset
fsw f30, 1(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7b2c8b96463be75 # load x3 with value 0x7b2c8b96463be75
sw x3, 0(x2) # store 0x7b2c8b96463be75 in memory
flw f5, 0(x2) # load 0x7b2c8b96463be75 from memory into f5
la x13, scratch # base address
addi x13, x13, -2 # sub immediate from rs1 to counter offset
fsw f5, 2(x13) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x30f8a502bac19ef8 # load x3 with value 0x30f8a502bac19ef8
sw x3, 0(x2) # store 0x30f8a502bac19ef8 in memory
flw f24, 0(x2) # load 0x30f8a502bac19ef8 from memory into f24
la x11, scratch # base address
addi x11, x11, -3 # sub immediate from rs1 to counter offset
fsw f24, 3(x11) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x457e31ebbe4af9bc # load x3 with value 0x457e31ebbe4af9bc
sw x3, 0(x2) # store 0x457e31ebbe4af9bc in memory
flw f20, 0(x2) # load 0x457e31ebbe4af9bc from memory into f20
la x27, scratch # base address
addi x27, x27, -4 # sub immediate from rs1 to counter offset
fsw f20, 4(x27) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x9ccea8fef2796c0f # load x3 with value 0x9ccea8fef2796c0f
sw x3, 0(x2) # store 0x9ccea8fef2796c0f in memory
flw f14, 0(x2) # load 0x9ccea8fef2796c0f from memory into f14
la x21, scratch # base address
addi x21, x21, -8 # sub immediate from rs1 to counter offset
fsw f14, 8(x21) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x82488db0c0207474 # load x3 with value 0x82488db0c0207474
sw x3, 0(x2) # store 0x82488db0c0207474 in memory
flw f19, 0(x2) # load 0x82488db0c0207474 from memory into f19
la x31, scratch # base address
addi x31, x31, -16 # sub immediate from rs1 to counter offset
fsw f19, 16(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x77482711025cc98a # load x3 with value 0x77482711025cc98a
sw x3, 0(x2) # store 0x77482711025cc98a in memory
flw f5, 0(x2) # load 0x77482711025cc98a from memory into f5
la x24, scratch # base address
addi x24, x24, -32 # sub immediate from rs1 to counter offset
fsw f5, 32(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x1a97c4506833fbd4 # load x3 with value 0x1a97c4506833fbd4
sw x3, 0(x2) # store 0x1a97c4506833fbd4 in memory
flw f16, 0(x2) # load 0x1a97c4506833fbd4 from memory into f16
la x19, scratch # base address
addi x19, x19, -64 # sub immediate from rs1 to counter offset
fsw f16, 64(x19) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5854b62f16f4ac36 # load x3 with value 0x5854b62f16f4ac36
sw x3, 0(x2) # store 0x5854b62f16f4ac36 in memory
flw f21, 0(x2) # load 0x5854b62f16f4ac36 from memory into f21
la x27, scratch # base address
addi x27, x27, -128 # sub immediate from rs1 to counter offset
fsw f21, 128(x27) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5234ddfabfb41f2f # load x3 with value 0x5234ddfabfb41f2f
sw x3, 0(x2) # store 0x5234ddfabfb41f2f in memory
flw f18, 0(x2) # load 0x5234ddfabfb41f2f from memory into f18
la x23, scratch # base address
addi x23, x23, -256 # sub immediate from rs1 to counter offset
fsw f18, 256(x23) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2414966312788ec6 # load x3 with value 0x2414966312788ec6
sw x3, 0(x2) # store 0x2414966312788ec6 in memory
flw f20, 0(x2) # load 0x2414966312788ec6 from memory into f20
la x30, scratch # base address
addi x30, x30, -512 # sub immediate from rs1 to counter offset
fsw f20, 512(x30) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x567ccd90caa3a714 # load x3 with value 0x567ccd90caa3a714
sw x3, 0(x2) # store 0x567ccd90caa3a714 in memory
flw f13, 0(x2) # load 0x567ccd90caa3a714 from memory into f13
la x25, scratch # base address
addi x25, x25, -1023 # sub immediate from rs1 to counter offset
fsw f13, 1023(x25) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x4aa968266809854d # load x3 with value 0x4aa968266809854d
sw x3, 0(x2) # store 0x4aa968266809854d in memory
flw f9, 0(x2) # load 0x4aa968266809854d from memory into f9
la x29, scratch # base address
addi x29, x29, -1024 # sub immediate from rs1 to counter offset
fsw f9, 1024(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x15bbc12d526f591f # load x3 with value 0x15bbc12d526f591f
sw x3, 0(x2) # store 0x15bbc12d526f591f in memory
flw f27, 0(x2) # load 0x15bbc12d526f591f from memory into f27
la x2, scratch # base address
addi x2, x2, -1795 # sub immediate from rs1 to counter offset
fsw f27, 1795(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xcd3b882c213a7ca3 # load x3 with value 0xcd3b882c213a7ca3
sw x3, 0(x2) # store 0xcd3b882c213a7ca3 in memory
flw f3, 0(x2) # load 0xcd3b882c213a7ca3 from memory into f3
la x7, scratch # base address
addi x7, x7, -2047 # sub immediate from rs1 to counter offset
fsw f3, 2047(x7) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xe0b76c95d5d42d54 # load x3 with value 0xe0b76c95d5d42d54
sw x3, 0(x2) # store 0xe0b76c95d5d42d54 in memory
flw f1, 0(x2) # load 0xe0b76c95d5d42d54 from memory into f1
la x24, scratch # base address
addi x24, x24, 2047 # increment rs1 by 2047 
addi x24, x24, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsw f1, -2048(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x846c75ac21795fe # load x3 with value 0x846c75ac21795fe
sw x3, 0(x2) # store 0x846c75ac21795fe in memory
flw f27, 0(x2) # load 0x846c75ac21795fe from memory into f27
la x10, scratch # base address
addi x10, x10, 2047 # sub immediate from rs1 to counter offset
fsw f27, -2047(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x14f958ae98f299f8 # load x3 with value 0x14f958ae98f299f8
sw x3, 0(x2) # store 0x14f958ae98f299f8 in memory
flw f17, 0(x2) # load 0x14f958ae98f299f8 from memory into f17
la x26, scratch # base address
addi x26, x26, 2 # sub immediate from rs1 to counter offset
fsw f17, -2(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc638e679c5ac0f7b # load x3 with value 0xc638e679c5ac0f7b
sw x3, 0(x2) # store 0xc638e679c5ac0f7b in memory
flw f30, 0(x2) # load 0xc638e679c5ac0f7b from memory into f30
la x11, scratch # base address
addi x11, x11, 1 # sub immediate from rs1 to counter offset
fsw f30, -1(x11) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
addi x17, x17, 211
add x9, x13, x27 # perform first operation
fsw f10, -211(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x8, scratch
addi x8, x8, -189
add x24, x9, x20 # perform first operation
fsw f27, 189(x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
addi x19, x19, -703
add x10, x25, x16 # perform first operation
fsw f28, 703(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
addi x19, x19, -1468
add x19, x19, x0 # perform first operation
fsw f2, 1468(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
addi x22, x22, 1090
fmul.s f21, f21, f0 # perform first operation
fsw f21, -1090(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, -1228
add x20, x20, x0 # perform first operation
fsw f20, 1228(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x22, scratch
addi x22, x22, -1619
add x6, x8, x30 # perform first operation
fsw f25, 1619(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
addi x13, x13, -278
add x19, x18, x31 # perform first operation
fsw f7, 278(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -1489
add x29, x19, x3 # perform first operation
fsw f9, 1489(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
addi x17, x17, -2022
add x14, x14, x0 # perform first operation
fsw f12, 2022(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
addi x16, x16, 187
fmul.s f11, f11, f0 # perform first operation
fsw f11, -187(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
addi x16, x16, 1084
add x13, x13, x0 # perform first operation
fsw f21, -1084(x16) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x51bcd93132fdff86 # load x3 with value 0x51bcd93132fdff86
sw x3, 0(x2) # store 0x51bcd93132fdff86 in memory
flw f0, 0(x2) # load 0x51bcd93132fdff86 from memory into f0
la x13, scratch # base address
addi x13, x13, -1465 # sub immediate from rs1 to counter offset
fsw f0, 1465(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x1e45efed037bcd54 # load x3 with value 0x1e45efed037bcd54
sw x3, 0(x2) # store 0x1e45efed037bcd54 in memory
flw f1, 0(x2) # load 0x1e45efed037bcd54 from memory into f1
la x6, scratch # base address
addi x6, x6, 416 # sub immediate from rs1 to counter offset
fsw f1, -416(x6) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x9a1882a2e83e4d31 # load x3 with value 0x9a1882a2e83e4d31
sw x3, 0(x2) # store 0x9a1882a2e83e4d31 in memory
flw f2, 0(x2) # load 0x9a1882a2e83e4d31 from memory into f2
la x27, scratch # base address
addi x27, x27, 817 # sub immediate from rs1 to counter offset
fsw f2, -817(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x91a4a316ff05116 # load x3 with value 0x91a4a316ff05116
sw x3, 0(x2) # store 0x91a4a316ff05116 in memory
flw f3, 0(x2) # load 0x91a4a316ff05116 from memory into f3
la x28, scratch # base address
addi x28, x28, 1054 # sub immediate from rs1 to counter offset
fsw f3, -1054(x28) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5d9223732b65e412 # load x3 with value 0x5d9223732b65e412
sw x3, 0(x2) # store 0x5d9223732b65e412 in memory
flw f4, 0(x2) # load 0x5d9223732b65e412 from memory into f4
la x13, scratch # base address
addi x13, x13, -58 # sub immediate from rs1 to counter offset
fsw f4, 58(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3377ca4a0f8eb6 # load x3 with value 0x3377ca4a0f8eb6
sw x3, 0(x2) # store 0x3377ca4a0f8eb6 in memory
flw f5, 0(x2) # load 0x3377ca4a0f8eb6 from memory into f5
la x1, scratch # base address
addi x1, x1, 1211 # sub immediate from rs1 to counter offset
fsw f5, -1211(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8db8b36ccea423b # load x3 with value 0x8db8b36ccea423b
sw x3, 0(x2) # store 0x8db8b36ccea423b in memory
flw f6, 0(x2) # load 0x8db8b36ccea423b from memory into f6
la x26, scratch # base address
addi x26, x26, -394 # sub immediate from rs1 to counter offset
fsw f6, 394(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6ef333625b2c5ab7 # load x3 with value 0x6ef333625b2c5ab7
sw x3, 0(x2) # store 0x6ef333625b2c5ab7 in memory
flw f7, 0(x2) # load 0x6ef333625b2c5ab7 from memory into f7
la x27, scratch # base address
addi x27, x27, -1210 # sub immediate from rs1 to counter offset
fsw f7, 1210(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xab2a134defef717d # load x3 with value 0xab2a134defef717d
sw x3, 0(x2) # store 0xab2a134defef717d in memory
flw f8, 0(x2) # load 0xab2a134defef717d from memory into f8
la x22, scratch # base address
addi x22, x22, -224 # sub immediate from rs1 to counter offset
fsw f8, 224(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x2bba88565fcf6cce # load x3 with value 0x2bba88565fcf6cce
sw x3, 0(x2) # store 0x2bba88565fcf6cce in memory
flw f9, 0(x2) # load 0x2bba88565fcf6cce from memory into f9
la x20, scratch # base address
addi x20, x20, 885 # sub immediate from rs1 to counter offset
fsw f9, -885(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xb3d0b37b67803981 # load x3 with value 0xb3d0b37b67803981
sw x3, 0(x2) # store 0xb3d0b37b67803981 in memory
flw f10, 0(x2) # load 0xb3d0b37b67803981 from memory into f10
la x7, scratch # base address
addi x7, x7, -1800 # sub immediate from rs1 to counter offset
fsw f10, 1800(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xda5b8bff905711dc # load x3 with value 0xda5b8bff905711dc
sw x3, 0(x2) # store 0xda5b8bff905711dc in memory
flw f11, 0(x2) # load 0xda5b8bff905711dc from memory into f11
la x18, scratch # base address
addi x18, x18, 1986 # sub immediate from rs1 to counter offset
fsw f11, -1986(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x1f234d981736f867 # load x3 with value 0x1f234d981736f867
sw x3, 0(x2) # store 0x1f234d981736f867 in memory
flw f12, 0(x2) # load 0x1f234d981736f867 from memory into f12
la x17, scratch # base address
addi x17, x17, -395 # sub immediate from rs1 to counter offset
fsw f12, 395(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xb816e0465fc5fb3c # load x3 with value 0xb816e0465fc5fb3c
sw x3, 0(x2) # store 0xb816e0465fc5fb3c in memory
flw f13, 0(x2) # load 0xb816e0465fc5fb3c from memory into f13
la x22, scratch # base address
addi x22, x22, 18 # sub immediate from rs1 to counter offset
fsw f13, -18(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xbc17e6530f579714 # load x3 with value 0xbc17e6530f579714
sw x3, 0(x2) # store 0xbc17e6530f579714 in memory
flw f14, 0(x2) # load 0xbc17e6530f579714 from memory into f14
la x5, scratch # base address
addi x5, x5, -1797 # sub immediate from rs1 to counter offset
fsw f14, 1797(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xea64caba41796606 # load x3 with value 0xea64caba41796606
sw x3, 0(x2) # store 0xea64caba41796606 in memory
flw f15, 0(x2) # load 0xea64caba41796606 from memory into f15
la x25, scratch # base address
addi x25, x25, 546 # sub immediate from rs1 to counter offset
fsw f15, -546(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x29c89e83223f2b6a # load x3 with value 0x29c89e83223f2b6a
sw x3, 0(x2) # store 0x29c89e83223f2b6a in memory
flw f16, 0(x2) # load 0x29c89e83223f2b6a from memory into f16
la x23, scratch # base address
addi x23, x23, -1979 # sub immediate from rs1 to counter offset
fsw f16, 1979(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x75bf4da067ae535 # load x3 with value 0x75bf4da067ae535
sw x3, 0(x2) # store 0x75bf4da067ae535 in memory
flw f17, 0(x2) # load 0x75bf4da067ae535 from memory into f17
la x2, scratch # base address
addi x2, x2, -201 # sub immediate from rs1 to counter offset
fsw f17, 201(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x7b3d9103776d38ec # load x3 with value 0x7b3d9103776d38ec
sw x3, 0(x2) # store 0x7b3d9103776d38ec in memory
flw f18, 0(x2) # load 0x7b3d9103776d38ec from memory into f18
la x25, scratch # base address
addi x25, x25, 655 # sub immediate from rs1 to counter offset
fsw f18, -655(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xeec86be47a3845d0 # load x3 with value 0xeec86be47a3845d0
sw x3, 0(x2) # store 0xeec86be47a3845d0 in memory
flw f19, 0(x2) # load 0xeec86be47a3845d0 from memory into f19
la x31, scratch # base address
addi x31, x31, 1128 # sub immediate from rs1 to counter offset
fsw f19, -1128(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xd7a267ce4ce10652 # load x3 with value 0xd7a267ce4ce10652
sw x3, 0(x2) # store 0xd7a267ce4ce10652 in memory
flw f20, 0(x2) # load 0xd7a267ce4ce10652 from memory into f20
la x17, scratch # base address
addi x17, x17, -1151 # sub immediate from rs1 to counter offset
fsw f20, 1151(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xcbb31258b1432086 # load x3 with value 0xcbb31258b1432086
sw x3, 0(x2) # store 0xcbb31258b1432086 in memory
flw f21, 0(x2) # load 0xcbb31258b1432086 from memory into f21
la x26, scratch # base address
addi x26, x26, 205 # sub immediate from rs1 to counter offset
fsw f21, -205(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x52b4735b7a5399ec # load x3 with value 0x52b4735b7a5399ec
sw x3, 0(x2) # store 0x52b4735b7a5399ec in memory
flw f22, 0(x2) # load 0x52b4735b7a5399ec from memory into f22
la x10, scratch # base address
addi x10, x10, 295 # sub immediate from rs1 to counter offset
fsw f22, -295(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x8035d6971796dd89 # load x3 with value 0x8035d6971796dd89
sw x3, 0(x2) # store 0x8035d6971796dd89 in memory
flw f23, 0(x2) # load 0x8035d6971796dd89 from memory into f23
la x10, scratch # base address
addi x10, x10, 992 # sub immediate from rs1 to counter offset
fsw f23, -992(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xbe4e516f7ed5de3c # load x3 with value 0xbe4e516f7ed5de3c
sw x3, 0(x2) # store 0xbe4e516f7ed5de3c in memory
flw f24, 0(x2) # load 0xbe4e516f7ed5de3c from memory into f24
la x22, scratch # base address
addi x22, x22, -689 # sub immediate from rs1 to counter offset
fsw f24, 689(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x479e76554305ef35 # load x3 with value 0x479e76554305ef35
sw x3, 0(x2) # store 0x479e76554305ef35 in memory
flw f25, 0(x2) # load 0x479e76554305ef35 from memory into f25
la x14, scratch # base address
addi x14, x14, -913 # sub immediate from rs1 to counter offset
fsw f25, 913(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x9f75fee82685ca54 # load x3 with value 0x9f75fee82685ca54
sw x3, 0(x2) # store 0x9f75fee82685ca54 in memory
flw f26, 0(x2) # load 0x9f75fee82685ca54 from memory into f26
la x9, scratch # base address
addi x9, x9, 1971 # sub immediate from rs1 to counter offset
fsw f26, -1971(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x2bfbb1d833386e9c # load x3 with value 0x2bfbb1d833386e9c
sw x3, 0(x2) # store 0x2bfbb1d833386e9c in memory
flw f27, 0(x2) # load 0x2bfbb1d833386e9c from memory into f27
la x18, scratch # base address
addi x18, x18, -280 # sub immediate from rs1 to counter offset
fsw f27, 280(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x18977044a53ba79 # load x3 with value 0x18977044a53ba79
sw x3, 0(x2) # store 0x18977044a53ba79 in memory
flw f28, 0(x2) # load 0x18977044a53ba79 from memory into f28
la x13, scratch # base address
addi x13, x13, -422 # sub immediate from rs1 to counter offset
fsw f28, 422(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xf1403d0653e7a4ea # load x3 with value 0xf1403d0653e7a4ea
sw x3, 0(x2) # store 0xf1403d0653e7a4ea in memory
flw f29, 0(x2) # load 0xf1403d0653e7a4ea from memory into f29
la x24, scratch # base address
addi x24, x24, 1011 # sub immediate from rs1 to counter offset
fsw f29, -1011(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x79b2176030ec79b7 # load x3 with value 0x79b2176030ec79b7
sw x3, 0(x2) # store 0x79b2176030ec79b7 in memory
flw f30, 0(x2) # load 0x79b2176030ec79b7 from memory into f30
la x10, scratch # base address
addi x10, x10, 470 # sub immediate from rs1 to counter offset
fsw f30, -470(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xabe44620a104b31c # load x3 with value 0xabe44620a104b31c
sw x3, 0(x2) # store 0xabe44620a104b31c in memory
flw f31, 0(x2) # load 0xabe44620a104b31c from memory into f31
la x16, scratch # base address
addi x16, x16, -899 # sub immediate from rs1 to counter offset
fsw f31, 899(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x17, scratch # base address
addi x17, x17, -1136 # sub immediate from rs1 to counter offset
fsw f16, 1136(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x19, scratch # base address
addi x19, x19, -2018 # sub immediate from rs1 to counter offset
fsw f22, 2018(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
la x10, scratch # base address
addi x10, x10, 797 # sub immediate from rs1 to counter offset
fsw f29, -797(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
la x20, scratch # base address
addi x20, x20, 1166 # sub immediate from rs1 to counter offset
fsw f6, -1166(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x12, scratch # base address
addi x12, x12, -1785 # sub immediate from rs1 to counter offset
fsw f27, 1785(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x6, scratch # base address
addi x6, x6, 788 # sub immediate from rs1 to counter offset
fsw f28, -788(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x24, scratch # base address
addi x24, x24, -1523 # sub immediate from rs1 to counter offset
fsw f9, 1523(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x14, scratch # base address
addi x14, x14, -1892 # sub immediate from rs1 to counter offset
fsw f15, 1892(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x19, scratch # base address
addi x19, x19, -1884 # sub immediate from rs1 to counter offset
fsw f6, 1884(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch # base address
addi x2, x2, 9 # sub immediate from rs1 to counter offset
fsw f21, -9(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x18, scratch # base address
addi x18, x18, 2028 # sub immediate from rs1 to counter offset
fsw f25, -2028(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x17, scratch # base address
addi x17, x17, -713 # sub immediate from rs1 to counter offset
fsw f12, 713(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x23, scratch # base address
addi x23, x23, 1657 # sub immediate from rs1 to counter offset
fsw f29, -1657(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
la x16, scratch # base address
addi x16, x16, -1799 # sub immediate from rs1 to counter offset
fsw f18, 1799(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
la x29, scratch # base address
addi x29, x29, -1925 # sub immediate from rs1 to counter offset
fsw f26, 1925(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
la x11, scratch # base address
addi x11, x11, 625 # sub immediate from rs1 to counter offset
fsw f31, -625(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
la x11, scratch # base address
addi x11, x11, 880 # sub immediate from rs1 to counter offset
fsw f20, -880(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
la x14, scratch # base address
addi x14, x14, 1060 # sub immediate from rs1 to counter offset
fsw f25, -1060(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
la x20, scratch # base address
addi x20, x20, 1527 # sub immediate from rs1 to counter offset
fsw f9, -1527(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x8, scratch # base address
addi x8, x8, -987 # sub immediate from rs1 to counter offset
fsw f24, 987(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
la x20, scratch # base address
addi x20, x20, 218 # sub immediate from rs1 to counter offset
fsw f29, -218(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x31, scratch # base address
addi x31, x31, -592 # sub immediate from rs1 to counter offset
fsw f21, 592(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
la x14, scratch # base address
addi x14, x14, 1160 # sub immediate from rs1 to counter offset
fsw f15, -1160(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x25, scratch # base address
addi x25, x25, 448 # sub immediate from rs1 to counter offset
fsw f30, -448(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x31, scratch # base address
addi x31, x31, 1465 # sub immediate from rs1 to counter offset
fsw f7, -1465(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x24, scratch # base address
addi x24, x24, 1832 # sub immediate from rs1 to counter offset
fsw f10, -1832(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
la x20, scratch # base address
addi x20, x20, 242 # sub immediate from rs1 to counter offset
fsw f7, -242(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
la x22, scratch # base address
addi x22, x22, 96 # sub immediate from rs1 to counter offset
fsw f3, -96(x22) # perform operation

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
