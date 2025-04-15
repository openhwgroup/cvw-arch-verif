///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fdiv.s.S
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


# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x10, x6 # perform first operation
fdiv.s f31, f2, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x8, x23 # perform first operation
fdiv.s f1, f21, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x22, x9 # perform first operation
fdiv.s f28, f14, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f14, f27 # perform first operation
fdiv.s f29, f29, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f17, f22, f21 # perform first operation
fdiv.s f17, f12, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x7, x1 # perform first operation
fdiv.s f8, f27, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f14, f8 # perform first operation
fdiv.s f19, f11, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f21, f27, f26 # perform first operation
fdiv.s f21, f18, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f28, f26 # perform first operation
fdiv.s f25, f30, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f16, f1 # perform first operation
fdiv.s f16, f12, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f10, f11 # perform first operation
fdiv.s f11, f8, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f30, f5 # perform first operation
fdiv.s f11, f12, f29 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x91e6dc1713b802b8 # load x3 with value 0x91e6dc1713b802b8
sw x3, 0(x2) # store 0x91e6dc1713b802b8 in memory
flw f0, 0(x2) # load 0x91e6dc1713b802b8 from memory into f0
la x2, scratch
li x3, 0x41ea90fadb5bd75d # load x3 with value 0x41ea90fadb5bd75d
sw x3, 0(x2) # store 0x41ea90fadb5bd75d in memory
flw f15, 0(x2) # load 0x41ea90fadb5bd75d from memory into f15
fdiv.s f19, f0, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x950337adab7784fb # load x3 with value 0x950337adab7784fb
sw x3, 0(x2) # store 0x950337adab7784fb in memory
flw f1, 0(x2) # load 0x950337adab7784fb from memory into f1
la x2, scratch
li x3, 0x685d8a5627f60b57 # load x3 with value 0x685d8a5627f60b57
sw x3, 0(x2) # store 0x685d8a5627f60b57 in memory
flw f20, 0(x2) # load 0x685d8a5627f60b57 from memory into f20
fdiv.s f15, f1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xae3f8269cb291e7a # load x3 with value 0xae3f8269cb291e7a
sw x3, 0(x2) # store 0xae3f8269cb291e7a in memory
flw f2, 0(x2) # load 0xae3f8269cb291e7a from memory into f2
la x2, scratch
li x3, 0x788d2614a81339ad # load x3 with value 0x788d2614a81339ad
sw x3, 0(x2) # store 0x788d2614a81339ad in memory
flw f6, 0(x2) # load 0x788d2614a81339ad from memory into f6
fdiv.s f22, f2, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x85cb92694324fd71 # load x3 with value 0x85cb92694324fd71
sw x3, 0(x2) # store 0x85cb92694324fd71 in memory
flw f3, 0(x2) # load 0x85cb92694324fd71 from memory into f3
la x2, scratch
li x3, 0x1175a6a28c38074b # load x3 with value 0x1175a6a28c38074b
sw x3, 0(x2) # store 0x1175a6a28c38074b in memory
flw f27, 0(x2) # load 0x1175a6a28c38074b from memory into f27
fdiv.s f10, f3, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x65441d34f23e6e5b # load x3 with value 0x65441d34f23e6e5b
sw x3, 0(x2) # store 0x65441d34f23e6e5b in memory
flw f4, 0(x2) # load 0x65441d34f23e6e5b from memory into f4
la x2, scratch
li x3, 0xeb16461fed45c5c1 # load x3 with value 0xeb16461fed45c5c1
sw x3, 0(x2) # store 0xeb16461fed45c5c1 in memory
flw f20, 0(x2) # load 0xeb16461fed45c5c1 from memory into f20
fdiv.s f15, f4, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xebe3515ec83426dc # load x3 with value 0xebe3515ec83426dc
sw x3, 0(x2) # store 0xebe3515ec83426dc in memory
flw f5, 0(x2) # load 0xebe3515ec83426dc from memory into f5
la x2, scratch
li x3, 0x3aec251c1ef6d3a5 # load x3 with value 0x3aec251c1ef6d3a5
sw x3, 0(x2) # store 0x3aec251c1ef6d3a5 in memory
flw f14, 0(x2) # load 0x3aec251c1ef6d3a5 from memory into f14
fdiv.s f30, f5, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3ada87e108136e38 # load x3 with value 0x3ada87e108136e38
sw x3, 0(x2) # store 0x3ada87e108136e38 in memory
flw f6, 0(x2) # load 0x3ada87e108136e38 from memory into f6
la x2, scratch
li x3, 0x175df18955115e4d # load x3 with value 0x175df18955115e4d
sw x3, 0(x2) # store 0x175df18955115e4d in memory
flw f7, 0(x2) # load 0x175df18955115e4d from memory into f7
fdiv.s f8, f6, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
la x2, scratch
li x3, 0xf1608a296a296649 # load x3 with value 0xf1608a296a296649
sw x3, 0(x2) # store 0xf1608a296a296649 in memory
flw f7, 0(x2) # load 0xf1608a296a296649 from memory into f7
la x2, scratch
li x3, 0x689e070a4791b7d0 # load x3 with value 0x689e070a4791b7d0
sw x3, 0(x2) # store 0x689e070a4791b7d0 in memory
flw f12, 0(x2) # load 0x689e070a4791b7d0 from memory into f12
fdiv.s f5, f7, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x3e75c6520d7d776f # load x3 with value 0x3e75c6520d7d776f
sw x3, 0(x2) # store 0x3e75c6520d7d776f in memory
flw f8, 0(x2) # load 0x3e75c6520d7d776f from memory into f8
la x2, scratch
li x3, 0x71adcd34aa546987 # load x3 with value 0x71adcd34aa546987
sw x3, 0(x2) # store 0x71adcd34aa546987 in memory
flw f3, 0(x2) # load 0x71adcd34aa546987 from memory into f3
fdiv.s f2, f8, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x58f1f49a1a0dc3c9 # load x3 with value 0x58f1f49a1a0dc3c9
sw x3, 0(x2) # store 0x58f1f49a1a0dc3c9 in memory
flw f9, 0(x2) # load 0x58f1f49a1a0dc3c9 from memory into f9
la x2, scratch
li x3, 0xfd977afcdfb19fb5 # load x3 with value 0xfd977afcdfb19fb5
sw x3, 0(x2) # store 0xfd977afcdfb19fb5 in memory
flw f2, 0(x2) # load 0xfd977afcdfb19fb5 from memory into f2
fdiv.s f11, f9, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xc0659cd961432915 # load x3 with value 0xc0659cd961432915
sw x3, 0(x2) # store 0xc0659cd961432915 in memory
flw f10, 0(x2) # load 0xc0659cd961432915 from memory into f10
la x2, scratch
li x3, 0xaa3cc9c1ba51e2d2 # load x3 with value 0xaa3cc9c1ba51e2d2
sw x3, 0(x2) # store 0xaa3cc9c1ba51e2d2 in memory
flw f25, 0(x2) # load 0xaa3cc9c1ba51e2d2 from memory into f25
fdiv.s f7, f10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x4714c4cfdf0c78fa # load x3 with value 0x4714c4cfdf0c78fa
sw x3, 0(x2) # store 0x4714c4cfdf0c78fa in memory
flw f11, 0(x2) # load 0x4714c4cfdf0c78fa from memory into f11
la x2, scratch
li x3, 0x786d51978f21737f # load x3 with value 0x786d51978f21737f
sw x3, 0(x2) # store 0x786d51978f21737f in memory
flw f20, 0(x2) # load 0x786d51978f21737f from memory into f20
fdiv.s f15, f11, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x5d9832b8537d8fa # load x3 with value 0x5d9832b8537d8fa
sw x3, 0(x2) # store 0x5d9832b8537d8fa in memory
flw f12, 0(x2) # load 0x5d9832b8537d8fa from memory into f12
la x2, scratch
li x3, 0x6bc1c31e67a87915 # load x3 with value 0x6bc1c31e67a87915
sw x3, 0(x2) # store 0x6bc1c31e67a87915 in memory
flw f21, 0(x2) # load 0x6bc1c31e67a87915 from memory into f21
fdiv.s f24, f12, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x7ea7cbc84816e620 # load x3 with value 0x7ea7cbc84816e620
sw x3, 0(x2) # store 0x7ea7cbc84816e620 in memory
flw f13, 0(x2) # load 0x7ea7cbc84816e620 from memory into f13
la x2, scratch
li x3, 0xee4e3089c5e50f20 # load x3 with value 0xee4e3089c5e50f20
sw x3, 0(x2) # store 0xee4e3089c5e50f20 in memory
flw f23, 0(x2) # load 0xee4e3089c5e50f20 from memory into f23
fdiv.s f24, f13, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x82019e76bba5bfdd # load x3 with value 0x82019e76bba5bfdd
sw x3, 0(x2) # store 0x82019e76bba5bfdd in memory
flw f14, 0(x2) # load 0x82019e76bba5bfdd from memory into f14
la x2, scratch
li x3, 0x7114ef684a1a5d79 # load x3 with value 0x7114ef684a1a5d79
sw x3, 0(x2) # store 0x7114ef684a1a5d79 in memory
flw f13, 0(x2) # load 0x7114ef684a1a5d79 from memory into f13
fdiv.s f27, f14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x2787134290566ec7 # load x3 with value 0x2787134290566ec7
sw x3, 0(x2) # store 0x2787134290566ec7 in memory
flw f15, 0(x2) # load 0x2787134290566ec7 from memory into f15
la x2, scratch
li x3, 0xfe55f8917a93c5df # load x3 with value 0xfe55f8917a93c5df
sw x3, 0(x2) # store 0xfe55f8917a93c5df in memory
flw f1, 0(x2) # load 0xfe55f8917a93c5df from memory into f1
fdiv.s f8, f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xa9aa8b2801055964 # load x3 with value 0xa9aa8b2801055964
sw x3, 0(x2) # store 0xa9aa8b2801055964 in memory
flw f16, 0(x2) # load 0xa9aa8b2801055964 from memory into f16
la x2, scratch
li x3, 0x1befe4b89f4dc52e # load x3 with value 0x1befe4b89f4dc52e
sw x3, 0(x2) # store 0x1befe4b89f4dc52e in memory
flw f25, 0(x2) # load 0x1befe4b89f4dc52e from memory into f25
fdiv.s f5, f16, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xbec47d588a4e2aee # load x3 with value 0xbec47d588a4e2aee
sw x3, 0(x2) # store 0xbec47d588a4e2aee in memory
flw f17, 0(x2) # load 0xbec47d588a4e2aee from memory into f17
la x2, scratch
li x3, 0x7d595b04e7a6bb3f # load x3 with value 0x7d595b04e7a6bb3f
sw x3, 0(x2) # store 0x7d595b04e7a6bb3f in memory
flw f21, 0(x2) # load 0x7d595b04e7a6bb3f from memory into f21
fdiv.s f11, f17, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x8777c7259e767f0c # load x3 with value 0x8777c7259e767f0c
sw x3, 0(x2) # store 0x8777c7259e767f0c in memory
flw f18, 0(x2) # load 0x8777c7259e767f0c from memory into f18
la x2, scratch
li x3, 0xfeb24ecd77936ea9 # load x3 with value 0xfeb24ecd77936ea9
sw x3, 0(x2) # store 0xfeb24ecd77936ea9 in memory
flw f29, 0(x2) # load 0xfeb24ecd77936ea9 from memory into f29
fdiv.s f11, f18, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x5320971331a3cf68 # load x3 with value 0x5320971331a3cf68
sw x3, 0(x2) # store 0x5320971331a3cf68 in memory
flw f19, 0(x2) # load 0x5320971331a3cf68 from memory into f19
la x2, scratch
li x3, 0x62ac4e75a1b63df6 # load x3 with value 0x62ac4e75a1b63df6
sw x3, 0(x2) # store 0x62ac4e75a1b63df6 in memory
flw f13, 0(x2) # load 0x62ac4e75a1b63df6 from memory into f13
fdiv.s f6, f19, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x7e8fd9e2751556b1 # load x3 with value 0x7e8fd9e2751556b1
sw x3, 0(x2) # store 0x7e8fd9e2751556b1 in memory
flw f20, 0(x2) # load 0x7e8fd9e2751556b1 from memory into f20
la x2, scratch
li x3, 0x6ca382dd12b8f74d # load x3 with value 0x6ca382dd12b8f74d
sw x3, 0(x2) # store 0x6ca382dd12b8f74d in memory
flw f3, 0(x2) # load 0x6ca382dd12b8f74d from memory into f3
fdiv.s f16, f20, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xd1ff0c42a73d6a24 # load x3 with value 0xd1ff0c42a73d6a24
sw x3, 0(x2) # store 0xd1ff0c42a73d6a24 in memory
flw f21, 0(x2) # load 0xd1ff0c42a73d6a24 from memory into f21
la x2, scratch
li x3, 0x20310e2481d581af # load x3 with value 0x20310e2481d581af
sw x3, 0(x2) # store 0x20310e2481d581af in memory
flw f8, 0(x2) # load 0x20310e2481d581af from memory into f8
fdiv.s f3, f21, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x9fe33cc8458675fb # load x3 with value 0x9fe33cc8458675fb
sw x3, 0(x2) # store 0x9fe33cc8458675fb in memory
flw f22, 0(x2) # load 0x9fe33cc8458675fb from memory into f22
la x2, scratch
li x3, 0xd4583a913c0ae899 # load x3 with value 0xd4583a913c0ae899
sw x3, 0(x2) # store 0xd4583a913c0ae899 in memory
flw f15, 0(x2) # load 0xd4583a913c0ae899 from memory into f15
fdiv.s f18, f22, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x60515aff0da1d470 # load x3 with value 0x60515aff0da1d470
sw x3, 0(x2) # store 0x60515aff0da1d470 in memory
flw f23, 0(x2) # load 0x60515aff0da1d470 from memory into f23
la x2, scratch
li x3, 0xa84b3c0a75b86e1e # load x3 with value 0xa84b3c0a75b86e1e
sw x3, 0(x2) # store 0xa84b3c0a75b86e1e in memory
flw f3, 0(x2) # load 0xa84b3c0a75b86e1e from memory into f3
fdiv.s f8, f23, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xb8c46e40a37a7441 # load x3 with value 0xb8c46e40a37a7441
sw x3, 0(x2) # store 0xb8c46e40a37a7441 in memory
flw f24, 0(x2) # load 0xb8c46e40a37a7441 from memory into f24
la x2, scratch
li x3, 0x4ab0a6247550841d # load x3 with value 0x4ab0a6247550841d
sw x3, 0(x2) # store 0x4ab0a6247550841d in memory
flw f23, 0(x2) # load 0x4ab0a6247550841d from memory into f23
fdiv.s f29, f24, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xcdb0ff9788c5658c # load x3 with value 0xcdb0ff9788c5658c
sw x3, 0(x2) # store 0xcdb0ff9788c5658c in memory
flw f25, 0(x2) # load 0xcdb0ff9788c5658c from memory into f25
la x2, scratch
li x3, 0x454837a5da675194 # load x3 with value 0x454837a5da675194
sw x3, 0(x2) # store 0x454837a5da675194 in memory
flw f7, 0(x2) # load 0x454837a5da675194 from memory into f7
fdiv.s f9, f25, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x2e5f86f899492b00 # load x3 with value 0x2e5f86f899492b00
sw x3, 0(x2) # store 0x2e5f86f899492b00 in memory
flw f26, 0(x2) # load 0x2e5f86f899492b00 from memory into f26
la x2, scratch
li x3, 0xb30ab99530edd741 # load x3 with value 0xb30ab99530edd741
sw x3, 0(x2) # store 0xb30ab99530edd741 in memory
flw f9, 0(x2) # load 0xb30ab99530edd741 from memory into f9
fdiv.s f26, f26, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xb3d30fe18e05df9a # load x3 with value 0xb3d30fe18e05df9a
sw x3, 0(x2) # store 0xb3d30fe18e05df9a in memory
flw f27, 0(x2) # load 0xb3d30fe18e05df9a from memory into f27
la x2, scratch
li x3, 0x46779d5cab64f7de # load x3 with value 0x46779d5cab64f7de
sw x3, 0(x2) # store 0x46779d5cab64f7de in memory
flw f15, 0(x2) # load 0x46779d5cab64f7de from memory into f15
fdiv.s f8, f27, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x10007cdf7caab20f # load x3 with value 0x10007cdf7caab20f
sw x3, 0(x2) # store 0x10007cdf7caab20f in memory
flw f28, 0(x2) # load 0x10007cdf7caab20f from memory into f28
la x2, scratch
li x3, 0xb443304d8d80ec57 # load x3 with value 0xb443304d8d80ec57
sw x3, 0(x2) # store 0xb443304d8d80ec57 in memory
flw f26, 0(x2) # load 0xb443304d8d80ec57 from memory into f26
fdiv.s f20, f28, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xe264b9719cfcfc95 # load x3 with value 0xe264b9719cfcfc95
sw x3, 0(x2) # store 0xe264b9719cfcfc95 in memory
flw f29, 0(x2) # load 0xe264b9719cfcfc95 from memory into f29
la x2, scratch
li x3, 0xeb1055a8bf6ea9e9 # load x3 with value 0xeb1055a8bf6ea9e9
sw x3, 0(x2) # store 0xeb1055a8bf6ea9e9 in memory
flw f31, 0(x2) # load 0xeb1055a8bf6ea9e9 from memory into f31
fdiv.s f7, f29, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x2df86bb25e9ab2e0 # load x3 with value 0x2df86bb25e9ab2e0
sw x3, 0(x2) # store 0x2df86bb25e9ab2e0 in memory
flw f30, 0(x2) # load 0x2df86bb25e9ab2e0 from memory into f30
la x2, scratch
li x3, 0x246f2f93dc72e878 # load x3 with value 0x246f2f93dc72e878
sw x3, 0(x2) # store 0x246f2f93dc72e878 in memory
flw f6, 0(x2) # load 0x246f2f93dc72e878 from memory into f6
fdiv.s f8, f30, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x98b273cc7a391b38 # load x3 with value 0x98b273cc7a391b38
sw x3, 0(x2) # store 0x98b273cc7a391b38 in memory
flw f31, 0(x2) # load 0x98b273cc7a391b38 from memory into f31
la x2, scratch
li x3, 0xeaae8452efeb78e2 # load x3 with value 0xeaae8452efeb78e2
sw x3, 0(x2) # store 0xeaae8452efeb78e2 in memory
flw f19, 0(x2) # load 0xeaae8452efeb78e2 from memory into f19
fdiv.s f26, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xe819cdaa75691084 # load x3 with value 0xe819cdaa75691084
sw x3, 0(x2) # store 0xe819cdaa75691084 in memory
flw f9, 0(x2) # load 0xe819cdaa75691084 from memory into f9
la x2, scratch
li x3, 0x74a8a1290ed77f01 # load x3 with value 0x74a8a1290ed77f01
sw x3, 0(x2) # store 0x74a8a1290ed77f01 in memory
flw f0, 0(x2) # load 0x74a8a1290ed77f01 from memory into f0
fdiv.s f25, f9, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xa2758a2a07ff3f3e # load x3 with value 0xa2758a2a07ff3f3e
sw x3, 0(x2) # store 0xa2758a2a07ff3f3e in memory
flw f24, 0(x2) # load 0xa2758a2a07ff3f3e from memory into f24
la x2, scratch
li x3, 0xba29a128e21b95ce # load x3 with value 0xba29a128e21b95ce
sw x3, 0(x2) # store 0xba29a128e21b95ce in memory
flw f1, 0(x2) # load 0xba29a128e21b95ce from memory into f1
fdiv.s f19, f24, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0xcb47119608123c54 # load x3 with value 0xcb47119608123c54
sw x3, 0(x2) # store 0xcb47119608123c54 in memory
flw f20, 0(x2) # load 0xcb47119608123c54 from memory into f20
la x2, scratch
li x3, 0x4999d71d2503d3a2 # load x3 with value 0x4999d71d2503d3a2
sw x3, 0(x2) # store 0x4999d71d2503d3a2 in memory
flw f2, 0(x2) # load 0x4999d71d2503d3a2 from memory into f2
fdiv.s f24, f20, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x2855b31bfe767b9f # load x3 with value 0x2855b31bfe767b9f
sw x3, 0(x2) # store 0x2855b31bfe767b9f in memory
flw f30, 0(x2) # load 0x2855b31bfe767b9f from memory into f30
la x2, scratch
li x3, 0xb626357f49b9024 # load x3 with value 0xb626357f49b9024
sw x3, 0(x2) # store 0xb626357f49b9024 in memory
flw f3, 0(x2) # load 0xb626357f49b9024 from memory into f3
fdiv.s f26, f30, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb5f3fc441b441212 # load x3 with value 0xb5f3fc441b441212
sw x3, 0(x2) # store 0xb5f3fc441b441212 in memory
flw f12, 0(x2) # load 0xb5f3fc441b441212 from memory into f12
la x2, scratch
li x3, 0x9d7b219cdfd5339b # load x3 with value 0x9d7b219cdfd5339b
sw x3, 0(x2) # store 0x9d7b219cdfd5339b in memory
flw f4, 0(x2) # load 0x9d7b219cdfd5339b from memory into f4
fdiv.s f20, f12, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcd302279e6d918ef # load x3 with value 0xcd302279e6d918ef
sw x3, 0(x2) # store 0xcd302279e6d918ef in memory
flw f24, 0(x2) # load 0xcd302279e6d918ef from memory into f24
la x2, scratch
li x3, 0x93c95d987f208591 # load x3 with value 0x93c95d987f208591
sw x3, 0(x2) # store 0x93c95d987f208591 in memory
flw f5, 0(x2) # load 0x93c95d987f208591 from memory into f5
fdiv.s f27, f24, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x252cc3c136aa1101 # load x3 with value 0x252cc3c136aa1101
sw x3, 0(x2) # store 0x252cc3c136aa1101 in memory
flw f12, 0(x2) # load 0x252cc3c136aa1101 from memory into f12
la x2, scratch
li x3, 0xe842bf94ce799d8b # load x3 with value 0xe842bf94ce799d8b
sw x3, 0(x2) # store 0xe842bf94ce799d8b in memory
flw f6, 0(x2) # load 0xe842bf94ce799d8b from memory into f6
fdiv.s f30, f12, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8ba02db0a9b35610 # load x3 with value 0x8ba02db0a9b35610
sw x3, 0(x2) # store 0x8ba02db0a9b35610 in memory
flw f17, 0(x2) # load 0x8ba02db0a9b35610 from memory into f17
la x2, scratch
li x3, 0xd3c89ffbf79d7939 # load x3 with value 0xd3c89ffbf79d7939
sw x3, 0(x2) # store 0xd3c89ffbf79d7939 in memory
flw f7, 0(x2) # load 0xd3c89ffbf79d7939 from memory into f7
fdiv.s f20, f17, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xdde86200c7f0cc09 # load x3 with value 0xdde86200c7f0cc09
sw x3, 0(x2) # store 0xdde86200c7f0cc09 in memory
flw f13, 0(x2) # load 0xdde86200c7f0cc09 from memory into f13
la x2, scratch
li x3, 0x2962b5b8d78fd850 # load x3 with value 0x2962b5b8d78fd850
sw x3, 0(x2) # store 0x2962b5b8d78fd850 in memory
flw f8, 0(x2) # load 0x2962b5b8d78fd850 from memory into f8
fdiv.s f17, f13, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xb6506999cb4631ab # load x3 with value 0xb6506999cb4631ab
sw x3, 0(x2) # store 0xb6506999cb4631ab in memory
flw f23, 0(x2) # load 0xb6506999cb4631ab from memory into f23
la x2, scratch
li x3, 0x35ddf87184670378 # load x3 with value 0x35ddf87184670378
sw x3, 0(x2) # store 0x35ddf87184670378 in memory
flw f9, 0(x2) # load 0x35ddf87184670378 from memory into f9
fdiv.s f3, f23, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x674704414739ef74 # load x3 with value 0x674704414739ef74
sw x3, 0(x2) # store 0x674704414739ef74 in memory
flw f27, 0(x2) # load 0x674704414739ef74 from memory into f27
la x2, scratch
li x3, 0x66b4808eb9c570e1 # load x3 with value 0x66b4808eb9c570e1
sw x3, 0(x2) # store 0x66b4808eb9c570e1 in memory
flw f10, 0(x2) # load 0x66b4808eb9c570e1 from memory into f10
fdiv.s f8, f27, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x9686ddf31537e98f # load x3 with value 0x9686ddf31537e98f
sw x3, 0(x2) # store 0x9686ddf31537e98f in memory
flw f8, 0(x2) # load 0x9686ddf31537e98f from memory into f8
la x2, scratch
li x3, 0xb1da250b55cf4660 # load x3 with value 0xb1da250b55cf4660
sw x3, 0(x2) # store 0xb1da250b55cf4660 in memory
flw f11, 0(x2) # load 0xb1da250b55cf4660 from memory into f11
fdiv.s f6, f8, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0xd34d2b65d870c18c # load x3 with value 0xd34d2b65d870c18c
sw x3, 0(x2) # store 0xd34d2b65d870c18c in memory
flw f30, 0(x2) # load 0xd34d2b65d870c18c from memory into f30
la x2, scratch
li x3, 0x545450bfe2ec7ab8 # load x3 with value 0x545450bfe2ec7ab8
sw x3, 0(x2) # store 0x545450bfe2ec7ab8 in memory
flw f12, 0(x2) # load 0x545450bfe2ec7ab8 from memory into f12
fdiv.s f29, f30, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x2721cfdc690507a8 # load x3 with value 0x2721cfdc690507a8
sw x3, 0(x2) # store 0x2721cfdc690507a8 in memory
flw f30, 0(x2) # load 0x2721cfdc690507a8 from memory into f30
la x2, scratch
li x3, 0x3ee557c206dbad54 # load x3 with value 0x3ee557c206dbad54
sw x3, 0(x2) # store 0x3ee557c206dbad54 in memory
flw f13, 0(x2) # load 0x3ee557c206dbad54 from memory into f13
fdiv.s f10, f30, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xaad6eb9d7cade05d # load x3 with value 0xaad6eb9d7cade05d
sw x3, 0(x2) # store 0xaad6eb9d7cade05d in memory
flw f19, 0(x2) # load 0xaad6eb9d7cade05d from memory into f19
la x2, scratch
li x3, 0x99ddc1a7fff7aac6 # load x3 with value 0x99ddc1a7fff7aac6
sw x3, 0(x2) # store 0x99ddc1a7fff7aac6 in memory
flw f14, 0(x2) # load 0x99ddc1a7fff7aac6 from memory into f14
fdiv.s f1, f19, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x4667b616f55e2498 # load x3 with value 0x4667b616f55e2498
sw x3, 0(x2) # store 0x4667b616f55e2498 in memory
flw f26, 0(x2) # load 0x4667b616f55e2498 from memory into f26
la x2, scratch
li x3, 0x9c0ca8a83baa074c # load x3 with value 0x9c0ca8a83baa074c
sw x3, 0(x2) # store 0x9c0ca8a83baa074c in memory
flw f15, 0(x2) # load 0x9c0ca8a83baa074c from memory into f15
fdiv.s f18, f26, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0xba3e3d13512b13b7 # load x3 with value 0xba3e3d13512b13b7
sw x3, 0(x2) # store 0xba3e3d13512b13b7 in memory
flw f3, 0(x2) # load 0xba3e3d13512b13b7 from memory into f3
la x2, scratch
li x3, 0xca3a21a145d912ae # load x3 with value 0xca3a21a145d912ae
sw x3, 0(x2) # store 0xca3a21a145d912ae in memory
flw f16, 0(x2) # load 0xca3a21a145d912ae from memory into f16
fdiv.s f29, f3, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xa79a54d5aa546a8f # load x3 with value 0xa79a54d5aa546a8f
sw x3, 0(x2) # store 0xa79a54d5aa546a8f in memory
flw f25, 0(x2) # load 0xa79a54d5aa546a8f from memory into f25
la x2, scratch
li x3, 0x3466fc99d662567a # load x3 with value 0x3466fc99d662567a
sw x3, 0(x2) # store 0x3466fc99d662567a in memory
flw f17, 0(x2) # load 0x3466fc99d662567a from memory into f17
fdiv.s f19, f25, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xb1e4ac2a3cc72b6d # load x3 with value 0xb1e4ac2a3cc72b6d
sw x3, 0(x2) # store 0xb1e4ac2a3cc72b6d in memory
flw f13, 0(x2) # load 0xb1e4ac2a3cc72b6d from memory into f13
la x2, scratch
li x3, 0xcd550f046c3f2e4b # load x3 with value 0xcd550f046c3f2e4b
sw x3, 0(x2) # store 0xcd550f046c3f2e4b in memory
flw f18, 0(x2) # load 0xcd550f046c3f2e4b from memory into f18
fdiv.s f10, f13, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xdf02d0984b5c856f # load x3 with value 0xdf02d0984b5c856f
sw x3, 0(x2) # store 0xdf02d0984b5c856f in memory
flw f20, 0(x2) # load 0xdf02d0984b5c856f from memory into f20
la x2, scratch
li x3, 0x3bf48ffbc2889487 # load x3 with value 0x3bf48ffbc2889487
sw x3, 0(x2) # store 0x3bf48ffbc2889487 in memory
flw f19, 0(x2) # load 0x3bf48ffbc2889487 from memory into f19
fdiv.s f13, f20, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x690cf401edabfa2b # load x3 with value 0x690cf401edabfa2b
sw x3, 0(x2) # store 0x690cf401edabfa2b in memory
flw f5, 0(x2) # load 0x690cf401edabfa2b from memory into f5
la x2, scratch
li x3, 0xf4a0f952a395488c # load x3 with value 0xf4a0f952a395488c
sw x3, 0(x2) # store 0xf4a0f952a395488c in memory
flw f20, 0(x2) # load 0xf4a0f952a395488c from memory into f20
fdiv.s f3, f5, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x3ccb33af83f865c3 # load x3 with value 0x3ccb33af83f865c3
sw x3, 0(x2) # store 0x3ccb33af83f865c3 in memory
flw f20, 0(x2) # load 0x3ccb33af83f865c3 from memory into f20
la x2, scratch
li x3, 0xcad15e76f6306e42 # load x3 with value 0xcad15e76f6306e42
sw x3, 0(x2) # store 0xcad15e76f6306e42 in memory
flw f21, 0(x2) # load 0xcad15e76f6306e42 from memory into f21
fdiv.s f8, f20, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x2341f01cf477d775 # load x3 with value 0x2341f01cf477d775
sw x3, 0(x2) # store 0x2341f01cf477d775 in memory
flw f8, 0(x2) # load 0x2341f01cf477d775 from memory into f8
la x2, scratch
li x3, 0xa0c750b0f31e1882 # load x3 with value 0xa0c750b0f31e1882
sw x3, 0(x2) # store 0xa0c750b0f31e1882 in memory
flw f22, 0(x2) # load 0xa0c750b0f31e1882 from memory into f22
fdiv.s f31, f8, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x8ae567a243fc7bc8 # load x3 with value 0x8ae567a243fc7bc8
sw x3, 0(x2) # store 0x8ae567a243fc7bc8 in memory
flw f27, 0(x2) # load 0x8ae567a243fc7bc8 from memory into f27
la x2, scratch
li x3, 0x7d78ed1a54528ebb # load x3 with value 0x7d78ed1a54528ebb
sw x3, 0(x2) # store 0x7d78ed1a54528ebb in memory
flw f23, 0(x2) # load 0x7d78ed1a54528ebb from memory into f23
fdiv.s f18, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x99abcaee804c56dd # load x3 with value 0x99abcaee804c56dd
sw x3, 0(x2) # store 0x99abcaee804c56dd in memory
flw f9, 0(x2) # load 0x99abcaee804c56dd from memory into f9
la x2, scratch
li x3, 0xf7e3ec453374e0d0 # load x3 with value 0xf7e3ec453374e0d0
sw x3, 0(x2) # store 0xf7e3ec453374e0d0 in memory
flw f24, 0(x2) # load 0xf7e3ec453374e0d0 from memory into f24
fdiv.s f5, f9, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xaf593391bca20172 # load x3 with value 0xaf593391bca20172
sw x3, 0(x2) # store 0xaf593391bca20172 in memory
flw f24, 0(x2) # load 0xaf593391bca20172 from memory into f24
la x2, scratch
li x3, 0x7a47baba5ba11f12 # load x3 with value 0x7a47baba5ba11f12
sw x3, 0(x2) # store 0x7a47baba5ba11f12 in memory
flw f25, 0(x2) # load 0x7a47baba5ba11f12 from memory into f25
fdiv.s f14, f24, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x86f8740ea28833da # load x3 with value 0x86f8740ea28833da
sw x3, 0(x2) # store 0x86f8740ea28833da in memory
flw f12, 0(x2) # load 0x86f8740ea28833da from memory into f12
la x2, scratch
li x3, 0xf03d272c126f32e9 # load x3 with value 0xf03d272c126f32e9
sw x3, 0(x2) # store 0xf03d272c126f32e9 in memory
flw f26, 0(x2) # load 0xf03d272c126f32e9 from memory into f26
fdiv.s f24, f12, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x154a5b10541fbf3e # load x3 with value 0x154a5b10541fbf3e
sw x3, 0(x2) # store 0x154a5b10541fbf3e in memory
flw f31, 0(x2) # load 0x154a5b10541fbf3e from memory into f31
la x2, scratch
li x3, 0x91f176d1a299ffca # load x3 with value 0x91f176d1a299ffca
sw x3, 0(x2) # store 0x91f176d1a299ffca in memory
flw f27, 0(x2) # load 0x91f176d1a299ffca from memory into f27
fdiv.s f23, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xabc23783a7b4682d # load x3 with value 0xabc23783a7b4682d
sw x3, 0(x2) # store 0xabc23783a7b4682d in memory
flw f29, 0(x2) # load 0xabc23783a7b4682d from memory into f29
la x2, scratch
li x3, 0x7e74e648adf4d6dc # load x3 with value 0x7e74e648adf4d6dc
sw x3, 0(x2) # store 0x7e74e648adf4d6dc in memory
flw f28, 0(x2) # load 0x7e74e648adf4d6dc from memory into f28
fdiv.s f25, f29, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x594c7f3afa94c93e # load x3 with value 0x594c7f3afa94c93e
sw x3, 0(x2) # store 0x594c7f3afa94c93e in memory
flw f31, 0(x2) # load 0x594c7f3afa94c93e from memory into f31
la x2, scratch
li x3, 0xc5f5aff0afa450e0 # load x3 with value 0xc5f5aff0afa450e0
sw x3, 0(x2) # store 0xc5f5aff0afa450e0 in memory
flw f29, 0(x2) # load 0xc5f5aff0afa450e0 from memory into f29
fdiv.s f13, f31, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x9ca0fbfd7459dbe5 # load x3 with value 0x9ca0fbfd7459dbe5
sw x3, 0(x2) # store 0x9ca0fbfd7459dbe5 in memory
flw f21, 0(x2) # load 0x9ca0fbfd7459dbe5 from memory into f21
la x2, scratch
li x3, 0x2049477ed50819a0 # load x3 with value 0x2049477ed50819a0
sw x3, 0(x2) # store 0x2049477ed50819a0 in memory
flw f30, 0(x2) # load 0x2049477ed50819a0 from memory into f30
fdiv.s f28, f21, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xcfa3126662bac91b # load x3 with value 0xcfa3126662bac91b
sw x3, 0(x2) # store 0xcfa3126662bac91b in memory
flw f29, 0(x2) # load 0xcfa3126662bac91b from memory into f29
la x2, scratch
li x3, 0x678380c14140b9e2 # load x3 with value 0x678380c14140b9e2
sw x3, 0(x2) # store 0x678380c14140b9e2 in memory
flw f31, 0(x2) # load 0x678380c14140b9e2 from memory into f31
fdiv.s f12, f29, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x177333360eca14a8 # load x3 with value 0x177333360eca14a8
sw x3, 0(x2) # store 0x177333360eca14a8 in memory
flw f20, 0(x2) # load 0x177333360eca14a8 from memory into f20
la x2, scratch
li x3, 0xb9f3fd6d5c60aab8 # load x3 with value 0xb9f3fd6d5c60aab8
sw x3, 0(x2) # store 0xb9f3fd6d5c60aab8 in memory
flw f11, 0(x2) # load 0xb9f3fd6d5c60aab8 from memory into f11
fdiv.s f0, f20, f11 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x992217a185ea2f04 # load x3 with value 0x992217a185ea2f04
sw x3, 0(x2) # store 0x992217a185ea2f04 in memory
flw f2, 0(x2) # load 0x992217a185ea2f04 from memory into f2
la x2, scratch
li x3, 0x54a3b7e32b968469 # load x3 with value 0x54a3b7e32b968469
sw x3, 0(x2) # store 0x54a3b7e32b968469 in memory
flw f5, 0(x2) # load 0x54a3b7e32b968469 from memory into f5
fdiv.s f1, f2, f5 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xb5ad8103fe85f7aa # load x3 with value 0xb5ad8103fe85f7aa
sw x3, 0(x2) # store 0xb5ad8103fe85f7aa in memory
flw f5, 0(x2) # load 0xb5ad8103fe85f7aa from memory into f5
la x2, scratch
li x3, 0x79f9cf40ffcaaefd # load x3 with value 0x79f9cf40ffcaaefd
sw x3, 0(x2) # store 0x79f9cf40ffcaaefd in memory
flw f13, 0(x2) # load 0x79f9cf40ffcaaefd from memory into f13
fdiv.s f2, f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x5f9481af053d2989 # load x3 with value 0x5f9481af053d2989
sw x3, 0(x2) # store 0x5f9481af053d2989 in memory
flw f20, 0(x2) # load 0x5f9481af053d2989 from memory into f20
la x2, scratch
li x3, 0x33bac769f2381420 # load x3 with value 0x33bac769f2381420
sw x3, 0(x2) # store 0x33bac769f2381420 in memory
flw f15, 0(x2) # load 0x33bac769f2381420 from memory into f15
fdiv.s f3, f20, f15 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcb1f9546caf9e3e # load x3 with value 0xcb1f9546caf9e3e
sw x3, 0(x2) # store 0xcb1f9546caf9e3e in memory
flw f20, 0(x2) # load 0xcb1f9546caf9e3e from memory into f20
la x2, scratch
li x3, 0x8df032428cdeab0c # load x3 with value 0x8df032428cdeab0c
sw x3, 0(x2) # store 0x8df032428cdeab0c in memory
flw f9, 0(x2) # load 0x8df032428cdeab0c from memory into f9
fdiv.s f4, f20, f9 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa7cb058ef73e417b # load x3 with value 0xa7cb058ef73e417b
sw x3, 0(x2) # store 0xa7cb058ef73e417b in memory
flw f11, 0(x2) # load 0xa7cb058ef73e417b from memory into f11
la x2, scratch
li x3, 0x6d9ea34d411ded38 # load x3 with value 0x6d9ea34d411ded38
sw x3, 0(x2) # store 0x6d9ea34d411ded38 in memory
flw f24, 0(x2) # load 0x6d9ea34d411ded38 from memory into f24
fdiv.s f5, f11, f24 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc8848ee546c34e89 # load x3 with value 0xc8848ee546c34e89
sw x3, 0(x2) # store 0xc8848ee546c34e89 in memory
flw f1, 0(x2) # load 0xc8848ee546c34e89 from memory into f1
la x2, scratch
li x3, 0xb3a42d94f1496f5a # load x3 with value 0xb3a42d94f1496f5a
sw x3, 0(x2) # store 0xb3a42d94f1496f5a in memory
flw f9, 0(x2) # load 0xb3a42d94f1496f5a from memory into f9
fdiv.s f6, f1, f9 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x20f65a81cfc53a64 # load x3 with value 0x20f65a81cfc53a64
sw x3, 0(x2) # store 0x20f65a81cfc53a64 in memory
flw f12, 0(x2) # load 0x20f65a81cfc53a64 from memory into f12
la x2, scratch
li x3, 0x60c441a529dd64b7 # load x3 with value 0x60c441a529dd64b7
sw x3, 0(x2) # store 0x60c441a529dd64b7 in memory
flw f11, 0(x2) # load 0x60c441a529dd64b7 from memory into f11
fdiv.s f7, f12, f11 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x805602ab93dc13fe # load x3 with value 0x805602ab93dc13fe
sw x3, 0(x2) # store 0x805602ab93dc13fe in memory
flw f24, 0(x2) # load 0x805602ab93dc13fe from memory into f24
la x2, scratch
li x3, 0x94ab9d025dcb70e # load x3 with value 0x94ab9d025dcb70e
sw x3, 0(x2) # store 0x94ab9d025dcb70e in memory
flw f21, 0(x2) # load 0x94ab9d025dcb70e from memory into f21
fdiv.s f8, f24, f21 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0xa66995fdfbd239e8 # load x3 with value 0xa66995fdfbd239e8
sw x3, 0(x2) # store 0xa66995fdfbd239e8 in memory
flw f30, 0(x2) # load 0xa66995fdfbd239e8 from memory into f30
la x2, scratch
li x3, 0x51c419c154d4099c # load x3 with value 0x51c419c154d4099c
sw x3, 0(x2) # store 0x51c419c154d4099c in memory
flw f5, 0(x2) # load 0x51c419c154d4099c from memory into f5
fdiv.s f9, f30, f5 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0xc1aaf5b4da2fcc3c # load x3 with value 0xc1aaf5b4da2fcc3c
sw x3, 0(x2) # store 0xc1aaf5b4da2fcc3c in memory
flw f30, 0(x2) # load 0xc1aaf5b4da2fcc3c from memory into f30
la x2, scratch
li x3, 0xa7ae6ff1d67aa50a # load x3 with value 0xa7ae6ff1d67aa50a
sw x3, 0(x2) # store 0xa7ae6ff1d67aa50a in memory
flw f13, 0(x2) # load 0xa7ae6ff1d67aa50a from memory into f13
fdiv.s f10, f30, f13 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x4445c5bd7cc980fd # load x3 with value 0x4445c5bd7cc980fd
sw x3, 0(x2) # store 0x4445c5bd7cc980fd in memory
flw f7, 0(x2) # load 0x4445c5bd7cc980fd from memory into f7
la x2, scratch
li x3, 0xc9ff18dec19177e1 # load x3 with value 0xc9ff18dec19177e1
sw x3, 0(x2) # store 0xc9ff18dec19177e1 in memory
flw f16, 0(x2) # load 0xc9ff18dec19177e1 from memory into f16
fdiv.s f11, f7, f16 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xc299d7b488c6266d # load x3 with value 0xc299d7b488c6266d
sw x3, 0(x2) # store 0xc299d7b488c6266d in memory
flw f24, 0(x2) # load 0xc299d7b488c6266d from memory into f24
la x2, scratch
li x3, 0xbd25c5e6b29c2b93 # load x3 with value 0xbd25c5e6b29c2b93
sw x3, 0(x2) # store 0xbd25c5e6b29c2b93 in memory
flw f5, 0(x2) # load 0xbd25c5e6b29c2b93 from memory into f5
fdiv.s f12, f24, f5 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x6021518222c9c3d0 # load x3 with value 0x6021518222c9c3d0
sw x3, 0(x2) # store 0x6021518222c9c3d0 in memory
flw f19, 0(x2) # load 0x6021518222c9c3d0 from memory into f19
la x2, scratch
li x3, 0xaf8d2d8fc02cc07d # load x3 with value 0xaf8d2d8fc02cc07d
sw x3, 0(x2) # store 0xaf8d2d8fc02cc07d in memory
flw f15, 0(x2) # load 0xaf8d2d8fc02cc07d from memory into f15
fdiv.s f13, f19, f15 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x51441fb15202468e # load x3 with value 0x51441fb15202468e
sw x3, 0(x2) # store 0x51441fb15202468e in memory
flw f30, 0(x2) # load 0x51441fb15202468e from memory into f30
la x2, scratch
li x3, 0x1a80e736ce9775b5 # load x3 with value 0x1a80e736ce9775b5
sw x3, 0(x2) # store 0x1a80e736ce9775b5 in memory
flw f10, 0(x2) # load 0x1a80e736ce9775b5 from memory into f10
fdiv.s f14, f30, f10 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xd2eb17d4a23646c9 # load x3 with value 0xd2eb17d4a23646c9
sw x3, 0(x2) # store 0xd2eb17d4a23646c9 in memory
flw f15, 0(x2) # load 0xd2eb17d4a23646c9 from memory into f15
la x2, scratch
li x3, 0xc21c4dc95fe9021b # load x3 with value 0xc21c4dc95fe9021b
sw x3, 0(x2) # store 0xc21c4dc95fe9021b in memory
flw f6, 0(x2) # load 0xc21c4dc95fe9021b from memory into f6
fdiv.s f15, f15, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x40a9920bbcae9494 # load x3 with value 0x40a9920bbcae9494
sw x3, 0(x2) # store 0x40a9920bbcae9494 in memory
flw f7, 0(x2) # load 0x40a9920bbcae9494 from memory into f7
la x2, scratch
li x3, 0xb23283511f097fa # load x3 with value 0xb23283511f097fa
sw x3, 0(x2) # store 0xb23283511f097fa in memory
flw f22, 0(x2) # load 0xb23283511f097fa from memory into f22
fdiv.s f16, f7, f22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xc13dcf3551e407ef # load x3 with value 0xc13dcf3551e407ef
sw x3, 0(x2) # store 0xc13dcf3551e407ef in memory
flw f23, 0(x2) # load 0xc13dcf3551e407ef from memory into f23
la x2, scratch
li x3, 0xe0df3346bf34325e # load x3 with value 0xe0df3346bf34325e
sw x3, 0(x2) # store 0xe0df3346bf34325e in memory
flw f21, 0(x2) # load 0xe0df3346bf34325e from memory into f21
fdiv.s f17, f23, f21 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0xb15a663146721135 # load x3 with value 0xb15a663146721135
sw x3, 0(x2) # store 0xb15a663146721135 in memory
flw f19, 0(x2) # load 0xb15a663146721135 from memory into f19
la x2, scratch
li x3, 0x80ca8073469543d9 # load x3 with value 0x80ca8073469543d9
sw x3, 0(x2) # store 0x80ca8073469543d9 in memory
flw f2, 0(x2) # load 0x80ca8073469543d9 from memory into f2
fdiv.s f18, f19, f2 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x499fdd3fe3dbb175 # load x3 with value 0x499fdd3fe3dbb175
sw x3, 0(x2) # store 0x499fdd3fe3dbb175 in memory
flw f17, 0(x2) # load 0x499fdd3fe3dbb175 from memory into f17
la x2, scratch
li x3, 0xf0df12b73d7d3492 # load x3 with value 0xf0df12b73d7d3492
sw x3, 0(x2) # store 0xf0df12b73d7d3492 in memory
flw f20, 0(x2) # load 0xf0df12b73d7d3492 from memory into f20
fdiv.s f19, f17, f20 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x80c8d53ed2da11a6 # load x3 with value 0x80c8d53ed2da11a6
sw x3, 0(x2) # store 0x80c8d53ed2da11a6 in memory
flw f23, 0(x2) # load 0x80c8d53ed2da11a6 from memory into f23
la x2, scratch
li x3, 0xe108324154c55822 # load x3 with value 0xe108324154c55822
sw x3, 0(x2) # store 0xe108324154c55822 in memory
flw f12, 0(x2) # load 0xe108324154c55822 from memory into f12
fdiv.s f20, f23, f12 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x31a4f6662e8c0315 # load x3 with value 0x31a4f6662e8c0315
sw x3, 0(x2) # store 0x31a4f6662e8c0315 in memory
flw f7, 0(x2) # load 0x31a4f6662e8c0315 from memory into f7
la x2, scratch
li x3, 0x20e92d2385224dae # load x3 with value 0x20e92d2385224dae
sw x3, 0(x2) # store 0x20e92d2385224dae in memory
flw f21, 0(x2) # load 0x20e92d2385224dae from memory into f21
fdiv.s f21, f7, f21 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x2e3ac5199d5e51e3 # load x3 with value 0x2e3ac5199d5e51e3
sw x3, 0(x2) # store 0x2e3ac5199d5e51e3 in memory
flw f17, 0(x2) # load 0x2e3ac5199d5e51e3 from memory into f17
la x2, scratch
li x3, 0xbdb53a440b8b1095 # load x3 with value 0xbdb53a440b8b1095
sw x3, 0(x2) # store 0xbdb53a440b8b1095 in memory
flw f6, 0(x2) # load 0xbdb53a440b8b1095 from memory into f6
fdiv.s f22, f17, f6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x5da3d3fd63026585 # load x3 with value 0x5da3d3fd63026585
sw x3, 0(x2) # store 0x5da3d3fd63026585 in memory
flw f25, 0(x2) # load 0x5da3d3fd63026585 from memory into f25
la x2, scratch
li x3, 0xcf51d8c9966904ce # load x3 with value 0xcf51d8c9966904ce
sw x3, 0(x2) # store 0xcf51d8c9966904ce in memory
flw f31, 0(x2) # load 0xcf51d8c9966904ce from memory into f31
fdiv.s f23, f25, f31 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x8621424cae583e76 # load x3 with value 0x8621424cae583e76
sw x3, 0(x2) # store 0x8621424cae583e76 in memory
flw f29, 0(x2) # load 0x8621424cae583e76 from memory into f29
la x2, scratch
li x3, 0x320d2b576e5bf264 # load x3 with value 0x320d2b576e5bf264
sw x3, 0(x2) # store 0x320d2b576e5bf264 in memory
flw f25, 0(x2) # load 0x320d2b576e5bf264 from memory into f25
fdiv.s f24, f29, f25 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x1c97e1f677b2f478 # load x3 with value 0x1c97e1f677b2f478
sw x3, 0(x2) # store 0x1c97e1f677b2f478 in memory
flw f1, 0(x2) # load 0x1c97e1f677b2f478 from memory into f1
la x2, scratch
li x3, 0xe38a387cc6823552 # load x3 with value 0xe38a387cc6823552
sw x3, 0(x2) # store 0xe38a387cc6823552 in memory
flw f22, 0(x2) # load 0xe38a387cc6823552 from memory into f22
fdiv.s f25, f1, f22 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xec2265db05ce807a # load x3 with value 0xec2265db05ce807a
sw x3, 0(x2) # store 0xec2265db05ce807a in memory
flw f12, 0(x2) # load 0xec2265db05ce807a from memory into f12
la x2, scratch
li x3, 0x7496c769f1b5f45c # load x3 with value 0x7496c769f1b5f45c
sw x3, 0(x2) # store 0x7496c769f1b5f45c in memory
flw f11, 0(x2) # load 0x7496c769f1b5f45c from memory into f11
fdiv.s f26, f12, f11 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x5ec4da952dfa3843 # load x3 with value 0x5ec4da952dfa3843
sw x3, 0(x2) # store 0x5ec4da952dfa3843 in memory
flw f11, 0(x2) # load 0x5ec4da952dfa3843 from memory into f11
la x2, scratch
li x3, 0x8d4b59063003e17b # load x3 with value 0x8d4b59063003e17b
sw x3, 0(x2) # store 0x8d4b59063003e17b in memory
flw f19, 0(x2) # load 0x8d4b59063003e17b from memory into f19
fdiv.s f27, f11, f19 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x1742512eb33b801b # load x3 with value 0x1742512eb33b801b
sw x3, 0(x2) # store 0x1742512eb33b801b in memory
flw f22, 0(x2) # load 0x1742512eb33b801b from memory into f22
la x2, scratch
li x3, 0xe54ad0e1d131d59 # load x3 with value 0xe54ad0e1d131d59
sw x3, 0(x2) # store 0xe54ad0e1d131d59 in memory
flw f16, 0(x2) # load 0xe54ad0e1d131d59 from memory into f16
fdiv.s f28, f22, f16 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xc6771294d8603742 # load x3 with value 0xc6771294d8603742
sw x3, 0(x2) # store 0xc6771294d8603742 in memory
flw f15, 0(x2) # load 0xc6771294d8603742 from memory into f15
la x2, scratch
li x3, 0xbae8906746c7e93d # load x3 with value 0xbae8906746c7e93d
sw x3, 0(x2) # store 0xbae8906746c7e93d in memory
flw f20, 0(x2) # load 0xbae8906746c7e93d from memory into f20
fdiv.s f29, f15, f20 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x75ec7798ce1ba963 # load x3 with value 0x75ec7798ce1ba963
sw x3, 0(x2) # store 0x75ec7798ce1ba963 in memory
flw f27, 0(x2) # load 0x75ec7798ce1ba963 from memory into f27
la x2, scratch
li x3, 0x10d1356e2c4739db # load x3 with value 0x10d1356e2c4739db
sw x3, 0(x2) # store 0x10d1356e2c4739db in memory
flw f11, 0(x2) # load 0x10d1356e2c4739db from memory into f11
fdiv.s f30, f27, f11 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x3b6aa0d93bef55e8 # load x3 with value 0x3b6aa0d93bef55e8
sw x3, 0(x2) # store 0x3b6aa0d93bef55e8 in memory
flw f11, 0(x2) # load 0x3b6aa0d93bef55e8 from memory into f11
la x2, scratch
li x3, 0x1119ee0dc1051690 # load x3 with value 0x1119ee0dc1051690
sw x3, 0(x2) # store 0x1119ee0dc1051690 in memory
flw f22, 0(x2) # load 0x1119ee0dc1051690 from memory into f22
fdiv.s f31, f11, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xdd3c9c521310d0d5 # load x3 with value 0xdd3c9c521310d0d5
sw x3, 0(x2) # store 0xdd3c9c521310d0d5 in memory
flw f12, 0(x2) # load 0xdd3c9c521310d0d5 from memory into f12
fdiv.s f27, f31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
la x2, scratch
li x3, 0xb893627d9181f2f8 # load x3 with value 0xb893627d9181f2f8
sw x3, 0(x2) # store 0xb893627d9181f2f8 in memory
flw f12, 0(x2) # load 0xb893627d9181f2f8 from memory into f12
fdiv.s f8, f10, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0x7ffaa64ef47f8964 # load x3 with value 0x7ffaa64ef47f8964
sw x3, 0(x2) # store 0x7ffaa64ef47f8964 in memory
flw f17, 0(x2) # load 0x7ffaa64ef47f8964 from memory into f17
fdiv.s f31, f7, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0x8caaf28481b4e502 # load x3 with value 0x8caaf28481b4e502
sw x3, 0(x2) # store 0x8caaf28481b4e502 in memory
flw f8, 0(x2) # load 0x8caaf28481b4e502 from memory into f8
fdiv.s f11, f13, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
la x2, scratch
li x3, 0xec13218ae01ae984 # load x3 with value 0xec13218ae01ae984
sw x3, 0(x2) # store 0xec13218ae01ae984 in memory
flw f14, 0(x2) # load 0xec13218ae01ae984 from memory into f14
fdiv.s f9, f8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0x7f1be348a4af8b82 # load x3 with value 0x7f1be348a4af8b82
sw x3, 0(x2) # store 0x7f1be348a4af8b82 in memory
flw f30, 0(x2) # load 0x7f1be348a4af8b82 from memory into f30
fdiv.s f24, f27, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x7e6b968fe13dad7c # load x3 with value 0x7e6b968fe13dad7c
sw x3, 0(x2) # store 0x7e6b968fe13dad7c in memory
flw f26, 0(x2) # load 0x7e6b968fe13dad7c from memory into f26
fdiv.s f13, f14, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
la x2, scratch
li x3, 0x5a0276b593263b23 # load x3 with value 0x5a0276b593263b23
sw x3, 0(x2) # store 0x5a0276b593263b23 in memory
flw f3, 0(x2) # load 0x5a0276b593263b23 from memory into f3
fdiv.s f8, f28, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
la x2, scratch
li x3, 0x555e2b173c21fe5b # load x3 with value 0x555e2b173c21fe5b
sw x3, 0(x2) # store 0x555e2b173c21fe5b in memory
flw f28, 0(x2) # load 0x555e2b173c21fe5b from memory into f28
fdiv.s f11, f12, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
la x2, scratch
li x3, 0x9aa341c17520553 # load x3 with value 0x9aa341c17520553
sw x3, 0(x2) # store 0x9aa341c17520553 in memory
flw f29, 0(x2) # load 0x9aa341c17520553 from memory into f29
fdiv.s f30, f5, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
la x2, scratch
li x3, 0x8c341b7b5cd6a72d # load x3 with value 0x8c341b7b5cd6a72d
sw x3, 0(x2) # store 0x8c341b7b5cd6a72d in memory
flw f5, 0(x2) # load 0x8c341b7b5cd6a72d from memory into f5
fdiv.s f30, f7, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0xa64613c7dcf9144e # load x3 with value 0xa64613c7dcf9144e
sw x3, 0(x2) # store 0xa64613c7dcf9144e in memory
flw f2, 0(x2) # load 0xa64613c7dcf9144e from memory into f2
fdiv.s f17, f31, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0x1a10b85c68b8a05b # load x3 with value 0x1a10b85c68b8a05b
sw x3, 0(x2) # store 0x1a10b85c68b8a05b in memory
flw f5, 0(x2) # load 0x1a10b85c68b8a05b from memory into f5
fdiv.s f30, f26, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x2e67bcd314419343 # load x3 with value 0x2e67bcd314419343
sw x3, 0(x2) # store 0x2e67bcd314419343 in memory
flw f7, 0(x2) # load 0x2e67bcd314419343 from memory into f7
fdiv.s f17, f29, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0x9ec8de0b7b90ca26 # load x3 with value 0x9ec8de0b7b90ca26
sw x3, 0(x2) # store 0x9ec8de0b7b90ca26 in memory
flw f22, 0(x2) # load 0x9ec8de0b7b90ca26 from memory into f22
fdiv.s f9, f19, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0xea23e53145dd8813 # load x3 with value 0xea23e53145dd8813
sw x3, 0(x2) # store 0xea23e53145dd8813 in memory
flw f24, 0(x2) # load 0xea23e53145dd8813 from memory into f24
fdiv.s f6, f26, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x1f4eb8e12095801d # load x3 with value 0x1f4eb8e12095801d
sw x3, 0(x2) # store 0x1f4eb8e12095801d in memory
flw f21, 0(x2) # load 0x1f4eb8e12095801d from memory into f21
fdiv.s f13, f6, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
la x2, scratch
li x3, 0x8a123e82fb92becc # load x3 with value 0x8a123e82fb92becc
sw x3, 0(x2) # store 0x8a123e82fb92becc in memory
flw f6, 0(x2) # load 0x8a123e82fb92becc from memory into f6
fdiv.s f28, f11, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
la x2, scratch
li x3, 0xb82f9b2399927dd9 # load x3 with value 0xb82f9b2399927dd9
sw x3, 0(x2) # store 0xb82f9b2399927dd9 in memory
flw f29, 0(x2) # load 0xb82f9b2399927dd9 from memory into f29
fdiv.s f6, f16, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x92d4c516cb3ae514 # load x3 with value 0x92d4c516cb3ae514
sw x3, 0(x2) # store 0x92d4c516cb3ae514 in memory
flw f2, 0(x2) # load 0x92d4c516cb3ae514 from memory into f2
fdiv.s f8, f9, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
la x2, scratch
li x3, 0x263d1d14967950cd # load x3 with value 0x263d1d14967950cd
sw x3, 0(x2) # store 0x263d1d14967950cd in memory
flw f12, 0(x2) # load 0x263d1d14967950cd from memory into f12
fdiv.s f10, f6, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0xc8c9064c62cf5741 # load x3 with value 0xc8c9064c62cf5741
sw x3, 0(x2) # store 0xc8c9064c62cf5741 in memory
flw f27, 0(x2) # load 0xc8c9064c62cf5741 from memory into f27
fdiv.s f28, f17, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x8c83df4c8d055687 # load x3 with value 0x8c83df4c8d055687
sw x3, 0(x2) # store 0x8c83df4c8d055687 in memory
flw f17, 0(x2) # load 0x8c83df4c8d055687 from memory into f17
fdiv.s f28, f2, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
la x2, scratch
li x3, 0x73d439d5cc2aa45a # load x3 with value 0x73d439d5cc2aa45a
sw x3, 0(x2) # store 0x73d439d5cc2aa45a in memory
flw f22, 0(x2) # load 0x73d439d5cc2aa45a from memory into f22
fdiv.s f19, f8, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0x605260089e47ee58 # load x3 with value 0x605260089e47ee58
sw x3, 0(x2) # store 0x605260089e47ee58 in memory
flw f15, 0(x2) # load 0x605260089e47ee58 from memory into f15
fdiv.s f31, f19, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0x6443b2a2e81091cd # load x3 with value 0x6443b2a2e81091cd
sw x3, 0(x2) # store 0x6443b2a2e81091cd in memory
flw f22, 0(x2) # load 0x6443b2a2e81091cd from memory into f22
fdiv.s f1, f27, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
la x2, scratch
li x3, 0x5f730dc868f7f396 # load x3 with value 0x5f730dc868f7f396
sw x3, 0(x2) # store 0x5f730dc868f7f396 in memory
flw f25, 0(x2) # load 0x5f730dc868f7f396 from memory into f25
fdiv.s f15, f20, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x2cf76cffe6ba7951 # load x3 with value 0x2cf76cffe6ba7951
sw x3, 0(x2) # store 0x2cf76cffe6ba7951 in memory
flw f28, 0(x2) # load 0x2cf76cffe6ba7951 from memory into f28
fdiv.s f7, f10, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x724f4ad60004cce0 # load x3 with value 0x724f4ad60004cce0
sw x3, 0(x2) # store 0x724f4ad60004cce0 in memory
flw f12, 0(x2) # load 0x724f4ad60004cce0 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.s f23, f12, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x8e3607efc3316fd8 # load x3 with value 0x8e3607efc3316fd8
sw x3, 0(x2) # store 0x8e3607efc3316fd8 in memory
flw f11, 0(x2) # load 0x8e3607efc3316fd8 from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fdiv.s f15, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x32cf5e5dcfafd83 # load x3 with value 0x32cf5e5dcfafd83
sw x3, 0(x2) # store 0x32cf5e5dcfafd83 in memory
flw f11, 0(x2) # load 0x32cf5e5dcfafd83 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fdiv.s f17, f11, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x8b1cb1ec116b6c8a # load x3 with value 0x8b1cb1ec116b6c8a
sw x3, 0(x2) # store 0x8b1cb1ec116b6c8a in memory
flw f12, 0(x2) # load 0x8b1cb1ec116b6c8a from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fdiv.s f29, f12, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0xc1df1d299a98521f # load x3 with value 0xc1df1d299a98521f
sw x3, 0(x2) # store 0xc1df1d299a98521f in memory
flw f26, 0(x2) # load 0xc1df1d299a98521f from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fdiv.s f21, f26, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0x9269cb31fbb6d7c2 # load x3 with value 0x9269cb31fbb6d7c2
sw x3, 0(x2) # store 0x9269cb31fbb6d7c2 in memory
flw f26, 0(x2) # load 0x9269cb31fbb6d7c2 from memory into f26
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fdiv.s f22, f26, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x13f31a22f90669f8 # load x3 with value 0x13f31a22f90669f8
sw x3, 0(x2) # store 0x13f31a22f90669f8 in memory
flw f30, 0(x2) # load 0x13f31a22f90669f8 from memory into f30
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fdiv.s f6, f30, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x53128f357872bd98 # load x3 with value 0x53128f357872bd98
sw x3, 0(x2) # store 0x53128f357872bd98 in memory
flw f10, 0(x2) # load 0x53128f357872bd98 from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fdiv.s f24, f10, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0xd0ee223d99051ba0 # load x3 with value 0xd0ee223d99051ba0
sw x3, 0(x2) # store 0xd0ee223d99051ba0 in memory
flw f2, 0(x2) # load 0xd0ee223d99051ba0 from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fdiv.s f27, f2, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x724a944da86f9d99 # load x3 with value 0x724a944da86f9d99
sw x3, 0(x2) # store 0x724a944da86f9d99 in memory
flw f20, 0(x2) # load 0x724a944da86f9d99 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fdiv.s f25, f20, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x4305fc659827a1c8 # load x3 with value 0x4305fc659827a1c8
sw x3, 0(x2) # store 0x4305fc659827a1c8 in memory
flw f9, 0(x2) # load 0x4305fc659827a1c8 from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fdiv.s f12, f9, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0xb52fb67085f7c94e # load x3 with value 0xb52fb67085f7c94e
sw x3, 0(x2) # store 0xb52fb67085f7c94e in memory
flw f30, 0(x2) # load 0xb52fb67085f7c94e from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fdiv.s f13, f30, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0x47e3cfc88d9db5cc # load x3 with value 0x47e3cfc88d9db5cc
sw x3, 0(x2) # store 0x47e3cfc88d9db5cc in memory
flw f9, 0(x2) # load 0x47e3cfc88d9db5cc from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fdiv.s f29, f9, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0xe0d900048c0f65f2 # load x3 with value 0xe0d900048c0f65f2
sw x3, 0(x2) # store 0xe0d900048c0f65f2 in memory
flw f25, 0(x2) # load 0xe0d900048c0f65f2 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fdiv.s f30, f25, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x50883625fd5be752 # load x3 with value 0x50883625fd5be752
sw x3, 0(x2) # store 0x50883625fd5be752 in memory
flw f12, 0(x2) # load 0x50883625fd5be752 from memory into f12
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fdiv.s f21, f12, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x62b04c3e923e759b # load x3 with value 0x62b04c3e923e759b
sw x3, 0(x2) # store 0x62b04c3e923e759b in memory
flw f31, 0(x2) # load 0x62b04c3e923e759b from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fdiv.s f17, f31, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0xc2b3550543c3da49 # load x3 with value 0xc2b3550543c3da49
sw x3, 0(x2) # store 0xc2b3550543c3da49 in memory
flw f6, 0(x2) # load 0xc2b3550543c3da49 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.s f23, f6, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x8e115d5ba802e8a3 # load x3 with value 0x8e115d5ba802e8a3
sw x3, 0(x2) # store 0x8e115d5ba802e8a3 in memory
flw f19, 0(x2) # load 0x8e115d5ba802e8a3 from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fdiv.s f29, f19, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x2dcaefea06a4e62f # load x3 with value 0x2dcaefea06a4e62f
sw x3, 0(x2) # store 0x2dcaefea06a4e62f in memory
flw f10, 0(x2) # load 0x2dcaefea06a4e62f from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fdiv.s f5, f10, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0x582e0fe209959479 # load x3 with value 0x582e0fe209959479
sw x3, 0(x2) # store 0x582e0fe209959479 in memory
flw f9, 0(x2) # load 0x582e0fe209959479 from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fdiv.s f31, f9, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0xc17052b466c3e61c # load x3 with value 0xc17052b466c3e61c
sw x3, 0(x2) # store 0xc17052b466c3e61c in memory
flw f15, 0(x2) # load 0xc17052b466c3e61c from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fdiv.s f11, f15, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x1eb0582d953c13ba # load x3 with value 0x1eb0582d953c13ba
sw x3, 0(x2) # store 0x1eb0582d953c13ba in memory
flw f15, 0(x2) # load 0x1eb0582d953c13ba from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fdiv.s f19, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0x5bee1986ba49d9d0 # load x3 with value 0x5bee1986ba49d9d0
sw x3, 0(x2) # store 0x5bee1986ba49d9d0 in memory
flw f12, 0(x2) # load 0x5bee1986ba49d9d0 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
fdiv.s f15, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0xb3c77c08da0f504c # load x3 with value 0xb3c77c08da0f504c
sw x3, 0(x2) # store 0xb3c77c08da0f504c in memory
flw f18, 0(x2) # load 0xb3c77c08da0f504c from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fdiv.s f30, f18, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x4f7dc3524791887a # load x3 with value 0x4f7dc3524791887a
sw x3, 0(x2) # store 0x4f7dc3524791887a in memory
flw f21, 0(x2) # load 0x4f7dc3524791887a from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fdiv.s f13, f21, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0xc822c7847e5b1c06 # load x3 with value 0xc822c7847e5b1c06
sw x3, 0(x2) # store 0xc822c7847e5b1c06 in memory
flw f9, 0(x2) # load 0xc822c7847e5b1c06 from memory into f9
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fdiv.s f23, f9, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0xba0f2a1b7cd57ed4 # load x3 with value 0xba0f2a1b7cd57ed4
sw x3, 0(x2) # store 0xba0f2a1b7cd57ed4 in memory
flw f21, 0(x2) # load 0xba0f2a1b7cd57ed4 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fdiv.s f10, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0xf155c85744305d9c # load x3 with value 0xf155c85744305d9c
sw x3, 0(x2) # store 0xf155c85744305d9c in memory
flw f12, 0(x2) # load 0xf155c85744305d9c from memory into f12
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fdiv.s f11, f12, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0xd69d06e1e5113439 # load x3 with value 0xd69d06e1e5113439
sw x3, 0(x2) # store 0xd69d06e1e5113439 in memory
flw f0, 0(x2) # load 0xd69d06e1e5113439 from memory into f0
la x2, scratch
li x3, 0x5e39bb5b9809e56e # load x3 with value 0x5e39bb5b9809e56e
sw x3, 0(x2) # store 0x5e39bb5b9809e56e in memory
flw f15, 0(x2) # load 0x5e39bb5b9809e56e from memory into f15
fdiv.s f0, f0, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x49db99cac2a440f0 # load x3 with value 0x49db99cac2a440f0
sw x3, 0(x2) # store 0x49db99cac2a440f0 in memory
flw f1, 0(x2) # load 0x49db99cac2a440f0 from memory into f1
la x2, scratch
li x3, 0x1bca1157895c49c6 # load x3 with value 0x1bca1157895c49c6
sw x3, 0(x2) # store 0x1bca1157895c49c6 in memory
flw f24, 0(x2) # load 0x1bca1157895c49c6 from memory into f24
fdiv.s f1, f1, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xf17d3296d52ab767 # load x3 with value 0xf17d3296d52ab767
sw x3, 0(x2) # store 0xf17d3296d52ab767 in memory
flw f2, 0(x2) # load 0xf17d3296d52ab767 from memory into f2
la x2, scratch
li x3, 0x931e6de250a395b2 # load x3 with value 0x931e6de250a395b2
sw x3, 0(x2) # store 0x931e6de250a395b2 in memory
flw f30, 0(x2) # load 0x931e6de250a395b2 from memory into f30
fdiv.s f2, f2, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0xa6c57b618ccc2f9a # load x3 with value 0xa6c57b618ccc2f9a
sw x3, 0(x2) # store 0xa6c57b618ccc2f9a in memory
flw f3, 0(x2) # load 0xa6c57b618ccc2f9a from memory into f3
la x2, scratch
li x3, 0x9998a87655f83fe1 # load x3 with value 0x9998a87655f83fe1
sw x3, 0(x2) # store 0x9998a87655f83fe1 in memory
flw f21, 0(x2) # load 0x9998a87655f83fe1 from memory into f21
fdiv.s f3, f3, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x620d84f9a496e5af # load x3 with value 0x620d84f9a496e5af
sw x3, 0(x2) # store 0x620d84f9a496e5af in memory
flw f4, 0(x2) # load 0x620d84f9a496e5af from memory into f4
la x2, scratch
li x3, 0x59d1fad976ef438 # load x3 with value 0x59d1fad976ef438
sw x3, 0(x2) # store 0x59d1fad976ef438 in memory
flw f20, 0(x2) # load 0x59d1fad976ef438 from memory into f20
fdiv.s f4, f4, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6d41103a41ee03cd # load x3 with value 0x6d41103a41ee03cd
sw x3, 0(x2) # store 0x6d41103a41ee03cd in memory
flw f5, 0(x2) # load 0x6d41103a41ee03cd from memory into f5
la x2, scratch
li x3, 0x25ef5b89306e396e # load x3 with value 0x25ef5b89306e396e
sw x3, 0(x2) # store 0x25ef5b89306e396e in memory
flw f26, 0(x2) # load 0x25ef5b89306e396e from memory into f26
fdiv.s f5, f5, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6d52f41e4218abf0 # load x3 with value 0x6d52f41e4218abf0
sw x3, 0(x2) # store 0x6d52f41e4218abf0 in memory
flw f6, 0(x2) # load 0x6d52f41e4218abf0 from memory into f6
la x2, scratch
li x3, 0x5109f09a685760a7 # load x3 with value 0x5109f09a685760a7
sw x3, 0(x2) # store 0x5109f09a685760a7 in memory
flw f31, 0(x2) # load 0x5109f09a685760a7 from memory into f31
fdiv.s f6, f6, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb684e6bc65394be9 # load x3 with value 0xb684e6bc65394be9
sw x3, 0(x2) # store 0xb684e6bc65394be9 in memory
flw f7, 0(x2) # load 0xb684e6bc65394be9 from memory into f7
la x2, scratch
li x3, 0x2e5826afe3ba20f6 # load x3 with value 0x2e5826afe3ba20f6
sw x3, 0(x2) # store 0x2e5826afe3ba20f6 in memory
flw f29, 0(x2) # load 0x2e5826afe3ba20f6 from memory into f29
fdiv.s f7, f7, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xcd6028aad2ed3249 # load x3 with value 0xcd6028aad2ed3249
sw x3, 0(x2) # store 0xcd6028aad2ed3249 in memory
flw f8, 0(x2) # load 0xcd6028aad2ed3249 from memory into f8
la x2, scratch
li x3, 0xfce5a80e48dc0935 # load x3 with value 0xfce5a80e48dc0935
sw x3, 0(x2) # store 0xfce5a80e48dc0935 in memory
flw f16, 0(x2) # load 0xfce5a80e48dc0935 from memory into f16
fdiv.s f8, f8, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xd4abf005c21e7ab7 # load x3 with value 0xd4abf005c21e7ab7
sw x3, 0(x2) # store 0xd4abf005c21e7ab7 in memory
flw f9, 0(x2) # load 0xd4abf005c21e7ab7 from memory into f9
la x2, scratch
li x3, 0x36cfecb83108c71c # load x3 with value 0x36cfecb83108c71c
sw x3, 0(x2) # store 0x36cfecb83108c71c in memory
flw f8, 0(x2) # load 0x36cfecb83108c71c from memory into f8
fdiv.s f9, f9, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xcb0916543c4c5f42 # load x3 with value 0xcb0916543c4c5f42
sw x3, 0(x2) # store 0xcb0916543c4c5f42 in memory
flw f10, 0(x2) # load 0xcb0916543c4c5f42 from memory into f10
la x2, scratch
li x3, 0x4a1e075b202ac516 # load x3 with value 0x4a1e075b202ac516
sw x3, 0(x2) # store 0x4a1e075b202ac516 in memory
flw f9, 0(x2) # load 0x4a1e075b202ac516 from memory into f9
fdiv.s f10, f10, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x1fa4efc40ce335ef # load x3 with value 0x1fa4efc40ce335ef
sw x3, 0(x2) # store 0x1fa4efc40ce335ef in memory
flw f11, 0(x2) # load 0x1fa4efc40ce335ef from memory into f11
la x2, scratch
li x3, 0xc518265132d3b2a8 # load x3 with value 0xc518265132d3b2a8
sw x3, 0(x2) # store 0xc518265132d3b2a8 in memory
flw f3, 0(x2) # load 0xc518265132d3b2a8 from memory into f3
fdiv.s f11, f11, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xeb41062baa0d9d5e # load x3 with value 0xeb41062baa0d9d5e
sw x3, 0(x2) # store 0xeb41062baa0d9d5e in memory
flw f12, 0(x2) # load 0xeb41062baa0d9d5e from memory into f12
la x2, scratch
li x3, 0xa2cde140185acbc4 # load x3 with value 0xa2cde140185acbc4
sw x3, 0(x2) # store 0xa2cde140185acbc4 in memory
flw f16, 0(x2) # load 0xa2cde140185acbc4 from memory into f16
fdiv.s f12, f12, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xd928a902e7706dff # load x3 with value 0xd928a902e7706dff
sw x3, 0(x2) # store 0xd928a902e7706dff in memory
flw f13, 0(x2) # load 0xd928a902e7706dff from memory into f13
la x2, scratch
li x3, 0xe57c07654fa0e4e0 # load x3 with value 0xe57c07654fa0e4e0
sw x3, 0(x2) # store 0xe57c07654fa0e4e0 in memory
flw f30, 0(x2) # load 0xe57c07654fa0e4e0 from memory into f30
fdiv.s f13, f13, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x4d8b9c7e95f69dc2 # load x3 with value 0x4d8b9c7e95f69dc2
sw x3, 0(x2) # store 0x4d8b9c7e95f69dc2 in memory
flw f14, 0(x2) # load 0x4d8b9c7e95f69dc2 from memory into f14
la x2, scratch
li x3, 0x746ad69af3c97766 # load x3 with value 0x746ad69af3c97766
sw x3, 0(x2) # store 0x746ad69af3c97766 in memory
flw f11, 0(x2) # load 0x746ad69af3c97766 from memory into f11
fdiv.s f14, f14, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x56b48d083e97020f # load x3 with value 0x56b48d083e97020f
sw x3, 0(x2) # store 0x56b48d083e97020f in memory
flw f15, 0(x2) # load 0x56b48d083e97020f from memory into f15
la x2, scratch
li x3, 0xebb3d97794997ee0 # load x3 with value 0xebb3d97794997ee0
sw x3, 0(x2) # store 0xebb3d97794997ee0 in memory
flw f5, 0(x2) # load 0xebb3d97794997ee0 from memory into f5
fdiv.s f15, f15, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x73ae42975b4c2190 # load x3 with value 0x73ae42975b4c2190
sw x3, 0(x2) # store 0x73ae42975b4c2190 in memory
flw f16, 0(x2) # load 0x73ae42975b4c2190 from memory into f16
la x2, scratch
li x3, 0x6c14f0bbc39fe6aa # load x3 with value 0x6c14f0bbc39fe6aa
sw x3, 0(x2) # store 0x6c14f0bbc39fe6aa in memory
flw f21, 0(x2) # load 0x6c14f0bbc39fe6aa from memory into f21
fdiv.s f16, f16, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x3d24ad8322b201ff # load x3 with value 0x3d24ad8322b201ff
sw x3, 0(x2) # store 0x3d24ad8322b201ff in memory
flw f17, 0(x2) # load 0x3d24ad8322b201ff from memory into f17
la x2, scratch
li x3, 0xfd52be3564fc36ff # load x3 with value 0xfd52be3564fc36ff
sw x3, 0(x2) # store 0xfd52be3564fc36ff in memory
flw f24, 0(x2) # load 0xfd52be3564fc36ff from memory into f24
fdiv.s f17, f17, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0xde2bccd9936d4d9e # load x3 with value 0xde2bccd9936d4d9e
sw x3, 0(x2) # store 0xde2bccd9936d4d9e in memory
flw f18, 0(x2) # load 0xde2bccd9936d4d9e from memory into f18
la x2, scratch
li x3, 0x6193721376f6401b # load x3 with value 0x6193721376f6401b
sw x3, 0(x2) # store 0x6193721376f6401b in memory
flw f9, 0(x2) # load 0x6193721376f6401b from memory into f9
fdiv.s f18, f18, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0xecfab52910e7781d # load x3 with value 0xecfab52910e7781d
sw x3, 0(x2) # store 0xecfab52910e7781d in memory
flw f19, 0(x2) # load 0xecfab52910e7781d from memory into f19
la x2, scratch
li x3, 0x30215aa3d63bdc7c # load x3 with value 0x30215aa3d63bdc7c
sw x3, 0(x2) # store 0x30215aa3d63bdc7c in memory
flw f31, 0(x2) # load 0x30215aa3d63bdc7c from memory into f31
fdiv.s f19, f19, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x1b120f961839c6a1 # load x3 with value 0x1b120f961839c6a1
sw x3, 0(x2) # store 0x1b120f961839c6a1 in memory
flw f20, 0(x2) # load 0x1b120f961839c6a1 from memory into f20
la x2, scratch
li x3, 0x50a5e2e05254418b # load x3 with value 0x50a5e2e05254418b
sw x3, 0(x2) # store 0x50a5e2e05254418b in memory
flw f8, 0(x2) # load 0x50a5e2e05254418b from memory into f8
fdiv.s f20, f20, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x96f3458157ee3c18 # load x3 with value 0x96f3458157ee3c18
sw x3, 0(x2) # store 0x96f3458157ee3c18 in memory
flw f21, 0(x2) # load 0x96f3458157ee3c18 from memory into f21
la x2, scratch
li x3, 0x8b86b8cbef32adde # load x3 with value 0x8b86b8cbef32adde
sw x3, 0(x2) # store 0x8b86b8cbef32adde in memory
flw f31, 0(x2) # load 0x8b86b8cbef32adde from memory into f31
fdiv.s f21, f21, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x830b73d813bedb1a # load x3 with value 0x830b73d813bedb1a
sw x3, 0(x2) # store 0x830b73d813bedb1a in memory
flw f22, 0(x2) # load 0x830b73d813bedb1a from memory into f22
la x2, scratch
li x3, 0x3468ec8917758cf3 # load x3 with value 0x3468ec8917758cf3
sw x3, 0(x2) # store 0x3468ec8917758cf3 in memory
flw f2, 0(x2) # load 0x3468ec8917758cf3 from memory into f2
fdiv.s f22, f22, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0xb8220817f19029a4 # load x3 with value 0xb8220817f19029a4
sw x3, 0(x2) # store 0xb8220817f19029a4 in memory
flw f23, 0(x2) # load 0xb8220817f19029a4 from memory into f23
la x2, scratch
li x3, 0xb18c5d7687f8a949 # load x3 with value 0xb18c5d7687f8a949
sw x3, 0(x2) # store 0xb18c5d7687f8a949 in memory
flw f22, 0(x2) # load 0xb18c5d7687f8a949 from memory into f22
fdiv.s f23, f23, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xee375eefaa4fd977 # load x3 with value 0xee375eefaa4fd977
sw x3, 0(x2) # store 0xee375eefaa4fd977 in memory
flw f24, 0(x2) # load 0xee375eefaa4fd977 from memory into f24
la x2, scratch
li x3, 0x83818d67813259a6 # load x3 with value 0x83818d67813259a6
sw x3, 0(x2) # store 0x83818d67813259a6 in memory
flw f6, 0(x2) # load 0x83818d67813259a6 from memory into f6
fdiv.s f24, f24, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0xf5fcacd36ed1e059 # load x3 with value 0xf5fcacd36ed1e059
sw x3, 0(x2) # store 0xf5fcacd36ed1e059 in memory
flw f25, 0(x2) # load 0xf5fcacd36ed1e059 from memory into f25
la x2, scratch
li x3, 0xc4ccc70b42ed88fe # load x3 with value 0xc4ccc70b42ed88fe
sw x3, 0(x2) # store 0xc4ccc70b42ed88fe in memory
flw f9, 0(x2) # load 0xc4ccc70b42ed88fe from memory into f9
fdiv.s f25, f25, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x7277c1c0e735bed2 # load x3 with value 0x7277c1c0e735bed2
sw x3, 0(x2) # store 0x7277c1c0e735bed2 in memory
flw f26, 0(x2) # load 0x7277c1c0e735bed2 from memory into f26
la x2, scratch
li x3, 0x877b8e08953967ae # load x3 with value 0x877b8e08953967ae
sw x3, 0(x2) # store 0x877b8e08953967ae in memory
flw f14, 0(x2) # load 0x877b8e08953967ae from memory into f14
fdiv.s f26, f26, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x204d86ad7ba79356 # load x3 with value 0x204d86ad7ba79356
sw x3, 0(x2) # store 0x204d86ad7ba79356 in memory
flw f27, 0(x2) # load 0x204d86ad7ba79356 from memory into f27
la x2, scratch
li x3, 0x2e36068c0ac40dfd # load x3 with value 0x2e36068c0ac40dfd
sw x3, 0(x2) # store 0x2e36068c0ac40dfd in memory
flw f6, 0(x2) # load 0x2e36068c0ac40dfd from memory into f6
fdiv.s f27, f27, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x8a971aff544f0325 # load x3 with value 0x8a971aff544f0325
sw x3, 0(x2) # store 0x8a971aff544f0325 in memory
flw f28, 0(x2) # load 0x8a971aff544f0325 from memory into f28
la x2, scratch
li x3, 0x6bb70e37ebb6ee77 # load x3 with value 0x6bb70e37ebb6ee77
sw x3, 0(x2) # store 0x6bb70e37ebb6ee77 in memory
flw f21, 0(x2) # load 0x6bb70e37ebb6ee77 from memory into f21
fdiv.s f28, f28, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0x1441726a87cd73a7 # load x3 with value 0x1441726a87cd73a7
sw x3, 0(x2) # store 0x1441726a87cd73a7 in memory
flw f29, 0(x2) # load 0x1441726a87cd73a7 from memory into f29
la x2, scratch
li x3, 0xa6e0a43875216b4e # load x3 with value 0xa6e0a43875216b4e
sw x3, 0(x2) # store 0xa6e0a43875216b4e in memory
flw f28, 0(x2) # load 0xa6e0a43875216b4e from memory into f28
fdiv.s f29, f29, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x471a9b0bbc11323b # load x3 with value 0x471a9b0bbc11323b
sw x3, 0(x2) # store 0x471a9b0bbc11323b in memory
flw f30, 0(x2) # load 0x471a9b0bbc11323b from memory into f30
la x2, scratch
li x3, 0x90f091dd52a07b07 # load x3 with value 0x90f091dd52a07b07
sw x3, 0(x2) # store 0x90f091dd52a07b07 in memory
flw f2, 0(x2) # load 0x90f091dd52a07b07 from memory into f2
fdiv.s f30, f30, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x7c25a60090d02188 # load x3 with value 0x7c25a60090d02188
sw x3, 0(x2) # store 0x7c25a60090d02188 in memory
flw f31, 0(x2) # load 0x7c25a60090d02188 from memory into f31
la x2, scratch
li x3, 0x75b3ab2dfc4f8143 # load x3 with value 0x75b3ab2dfc4f8143
sw x3, 0(x2) # store 0x75b3ab2dfc4f8143 in memory
flw f17, 0(x2) # load 0x75b3ab2dfc4f8143 from memory into f17
fdiv.s f31, f31, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0xb0953f05b47545fc # load x3 with value 0xb0953f05b47545fc
sw x3, 0(x2) # store 0xb0953f05b47545fc in memory
flw f10, 0(x2) # load 0xb0953f05b47545fc from memory into f10
la x2, scratch
li x3, 0xf27bc71ace49f4d8 # load x3 with value 0xf27bc71ace49f4d8
sw x3, 0(x2) # store 0xf27bc71ace49f4d8 in memory
flw f0, 0(x2) # load 0xf27bc71ace49f4d8 from memory into f0
fdiv.s f0, f10, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xcb22d3d2873b4ca9 # load x3 with value 0xcb22d3d2873b4ca9
sw x3, 0(x2) # store 0xcb22d3d2873b4ca9 in memory
flw f11, 0(x2) # load 0xcb22d3d2873b4ca9 from memory into f11
la x2, scratch
li x3, 0x907634be6ad6f729 # load x3 with value 0x907634be6ad6f729
sw x3, 0(x2) # store 0x907634be6ad6f729 in memory
flw f1, 0(x2) # load 0x907634be6ad6f729 from memory into f1
fdiv.s f1, f11, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x7b1e0bd5ceb88af # load x3 with value 0x7b1e0bd5ceb88af
sw x3, 0(x2) # store 0x7b1e0bd5ceb88af in memory
flw f10, 0(x2) # load 0x7b1e0bd5ceb88af from memory into f10
la x2, scratch
li x3, 0xb0c4bd032fa64c57 # load x3 with value 0xb0c4bd032fa64c57
sw x3, 0(x2) # store 0xb0c4bd032fa64c57 in memory
flw f2, 0(x2) # load 0xb0c4bd032fa64c57 from memory into f2
fdiv.s f2, f10, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x6f0316990ffb05ce # load x3 with value 0x6f0316990ffb05ce
sw x3, 0(x2) # store 0x6f0316990ffb05ce in memory
flw f26, 0(x2) # load 0x6f0316990ffb05ce from memory into f26
la x2, scratch
li x3, 0xc00659aa39ddbadd # load x3 with value 0xc00659aa39ddbadd
sw x3, 0(x2) # store 0xc00659aa39ddbadd in memory
flw f3, 0(x2) # load 0xc00659aa39ddbadd from memory into f3
fdiv.s f3, f26, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb8c8a2aca75e9d5c # load x3 with value 0xb8c8a2aca75e9d5c
sw x3, 0(x2) # store 0xb8c8a2aca75e9d5c in memory
flw f9, 0(x2) # load 0xb8c8a2aca75e9d5c from memory into f9
la x2, scratch
li x3, 0x764e27300d2495 # load x3 with value 0x764e27300d2495
sw x3, 0(x2) # store 0x764e27300d2495 in memory
flw f4, 0(x2) # load 0x764e27300d2495 from memory into f4
fdiv.s f4, f9, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcb43a163b5ef5150 # load x3 with value 0xcb43a163b5ef5150
sw x3, 0(x2) # store 0xcb43a163b5ef5150 in memory
flw f24, 0(x2) # load 0xcb43a163b5ef5150 from memory into f24
la x2, scratch
li x3, 0x645f7c2ee2e974e4 # load x3 with value 0x645f7c2ee2e974e4
sw x3, 0(x2) # store 0x645f7c2ee2e974e4 in memory
flw f5, 0(x2) # load 0x645f7c2ee2e974e4 from memory into f5
fdiv.s f5, f24, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x10857075178b72e # load x3 with value 0x10857075178b72e
sw x3, 0(x2) # store 0x10857075178b72e in memory
flw f22, 0(x2) # load 0x10857075178b72e from memory into f22
la x2, scratch
li x3, 0x85e806b20de5a8cb # load x3 with value 0x85e806b20de5a8cb
sw x3, 0(x2) # store 0x85e806b20de5a8cb in memory
flw f6, 0(x2) # load 0x85e806b20de5a8cb from memory into f6
fdiv.s f6, f22, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7a3c95d7acebfe39 # load x3 with value 0x7a3c95d7acebfe39
sw x3, 0(x2) # store 0x7a3c95d7acebfe39 in memory
flw f3, 0(x2) # load 0x7a3c95d7acebfe39 from memory into f3
la x2, scratch
li x3, 0x53a715f3f594ffb4 # load x3 with value 0x53a715f3f594ffb4
sw x3, 0(x2) # store 0x53a715f3f594ffb4 in memory
flw f7, 0(x2) # load 0x53a715f3f594ffb4 from memory into f7
fdiv.s f7, f3, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x69d659e1c77e11d9 # load x3 with value 0x69d659e1c77e11d9
sw x3, 0(x2) # store 0x69d659e1c77e11d9 in memory
flw f15, 0(x2) # load 0x69d659e1c77e11d9 from memory into f15
la x2, scratch
li x3, 0xd0c3aef395a0ce65 # load x3 with value 0xd0c3aef395a0ce65
sw x3, 0(x2) # store 0xd0c3aef395a0ce65 in memory
flw f8, 0(x2) # load 0xd0c3aef395a0ce65 from memory into f8
fdiv.s f8, f15, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x2c72a73e6c00d0e5 # load x3 with value 0x2c72a73e6c00d0e5
sw x3, 0(x2) # store 0x2c72a73e6c00d0e5 in memory
flw f13, 0(x2) # load 0x2c72a73e6c00d0e5 from memory into f13
la x2, scratch
li x3, 0x62b15a1147d7f1c # load x3 with value 0x62b15a1147d7f1c
sw x3, 0(x2) # store 0x62b15a1147d7f1c in memory
flw f9, 0(x2) # load 0x62b15a1147d7f1c from memory into f9
fdiv.s f9, f13, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xbcd6ef6ce488a5fd # load x3 with value 0xbcd6ef6ce488a5fd
sw x3, 0(x2) # store 0xbcd6ef6ce488a5fd in memory
flw f5, 0(x2) # load 0xbcd6ef6ce488a5fd from memory into f5
la x2, scratch
li x3, 0x67cca1a74112598e # load x3 with value 0x67cca1a74112598e
sw x3, 0(x2) # store 0x67cca1a74112598e in memory
flw f10, 0(x2) # load 0x67cca1a74112598e from memory into f10
fdiv.s f10, f5, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x217badf3918faa03 # load x3 with value 0x217badf3918faa03
sw x3, 0(x2) # store 0x217badf3918faa03 in memory
flw f13, 0(x2) # load 0x217badf3918faa03 from memory into f13
la x2, scratch
li x3, 0x9b3f66fae0a1a28f # load x3 with value 0x9b3f66fae0a1a28f
sw x3, 0(x2) # store 0x9b3f66fae0a1a28f in memory
flw f11, 0(x2) # load 0x9b3f66fae0a1a28f from memory into f11
fdiv.s f11, f13, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x83c62e82567b57cc # load x3 with value 0x83c62e82567b57cc
sw x3, 0(x2) # store 0x83c62e82567b57cc in memory
flw f6, 0(x2) # load 0x83c62e82567b57cc from memory into f6
la x2, scratch
li x3, 0xaa258865cdc94ae4 # load x3 with value 0xaa258865cdc94ae4
sw x3, 0(x2) # store 0xaa258865cdc94ae4 in memory
flw f12, 0(x2) # load 0xaa258865cdc94ae4 from memory into f12
fdiv.s f12, f6, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x2dc0f728b00fecf1 # load x3 with value 0x2dc0f728b00fecf1
sw x3, 0(x2) # store 0x2dc0f728b00fecf1 in memory
flw f3, 0(x2) # load 0x2dc0f728b00fecf1 from memory into f3
la x2, scratch
li x3, 0x704bfc0c3f8094f # load x3 with value 0x704bfc0c3f8094f
sw x3, 0(x2) # store 0x704bfc0c3f8094f in memory
flw f13, 0(x2) # load 0x704bfc0c3f8094f from memory into f13
fdiv.s f13, f3, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0x890e7e0d9d1c662d # load x3 with value 0x890e7e0d9d1c662d
sw x3, 0(x2) # store 0x890e7e0d9d1c662d in memory
flw f26, 0(x2) # load 0x890e7e0d9d1c662d from memory into f26
la x2, scratch
li x3, 0x25703bd7b69128a5 # load x3 with value 0x25703bd7b69128a5
sw x3, 0(x2) # store 0x25703bd7b69128a5 in memory
flw f14, 0(x2) # load 0x25703bd7b69128a5 from memory into f14
fdiv.s f14, f26, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0xec95f0869d0f4621 # load x3 with value 0xec95f0869d0f4621
sw x3, 0(x2) # store 0xec95f0869d0f4621 in memory
flw f31, 0(x2) # load 0xec95f0869d0f4621 from memory into f31
la x2, scratch
li x3, 0x1fa50cf7e9a9d73a # load x3 with value 0x1fa50cf7e9a9d73a
sw x3, 0(x2) # store 0x1fa50cf7e9a9d73a in memory
flw f15, 0(x2) # load 0x1fa50cf7e9a9d73a from memory into f15
fdiv.s f15, f31, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x5522d0e59017db8 # load x3 with value 0x5522d0e59017db8
sw x3, 0(x2) # store 0x5522d0e59017db8 in memory
flw f1, 0(x2) # load 0x5522d0e59017db8 from memory into f1
la x2, scratch
li x3, 0x531c9a9f35f85901 # load x3 with value 0x531c9a9f35f85901
sw x3, 0(x2) # store 0x531c9a9f35f85901 in memory
flw f16, 0(x2) # load 0x531c9a9f35f85901 from memory into f16
fdiv.s f16, f1, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x8f19aa5dd3143b72 # load x3 with value 0x8f19aa5dd3143b72
sw x3, 0(x2) # store 0x8f19aa5dd3143b72 in memory
flw f26, 0(x2) # load 0x8f19aa5dd3143b72 from memory into f26
la x2, scratch
li x3, 0xbc379fbcf0ee6e6 # load x3 with value 0xbc379fbcf0ee6e6
sw x3, 0(x2) # store 0xbc379fbcf0ee6e6 in memory
flw f17, 0(x2) # load 0xbc379fbcf0ee6e6 from memory into f17
fdiv.s f17, f26, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x4a52dd6b2aeda5a1 # load x3 with value 0x4a52dd6b2aeda5a1
sw x3, 0(x2) # store 0x4a52dd6b2aeda5a1 in memory
flw f9, 0(x2) # load 0x4a52dd6b2aeda5a1 from memory into f9
la x2, scratch
li x3, 0x27b321d5700dc3ad # load x3 with value 0x27b321d5700dc3ad
sw x3, 0(x2) # store 0x27b321d5700dc3ad in memory
flw f18, 0(x2) # load 0x27b321d5700dc3ad from memory into f18
fdiv.s f18, f9, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x5a5841c4b758e78 # load x3 with value 0x5a5841c4b758e78
sw x3, 0(x2) # store 0x5a5841c4b758e78 in memory
flw f17, 0(x2) # load 0x5a5841c4b758e78 from memory into f17
la x2, scratch
li x3, 0x4e6ec2b102bf5b9f # load x3 with value 0x4e6ec2b102bf5b9f
sw x3, 0(x2) # store 0x4e6ec2b102bf5b9f in memory
flw f19, 0(x2) # load 0x4e6ec2b102bf5b9f from memory into f19
fdiv.s f19, f17, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x5c10c72406d820b5 # load x3 with value 0x5c10c72406d820b5
sw x3, 0(x2) # store 0x5c10c72406d820b5 in memory
flw f9, 0(x2) # load 0x5c10c72406d820b5 from memory into f9
la x2, scratch
li x3, 0xbac86b0fe476cfd # load x3 with value 0xbac86b0fe476cfd
sw x3, 0(x2) # store 0xbac86b0fe476cfd in memory
flw f20, 0(x2) # load 0xbac86b0fe476cfd from memory into f20
fdiv.s f20, f9, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0xde8c6b9b7e8e9185 # load x3 with value 0xde8c6b9b7e8e9185
sw x3, 0(x2) # store 0xde8c6b9b7e8e9185 in memory
flw f6, 0(x2) # load 0xde8c6b9b7e8e9185 from memory into f6
la x2, scratch
li x3, 0x7c0bd3540b8b016e # load x3 with value 0x7c0bd3540b8b016e
sw x3, 0(x2) # store 0x7c0bd3540b8b016e in memory
flw f21, 0(x2) # load 0x7c0bd3540b8b016e from memory into f21
fdiv.s f21, f6, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x8b6e65c7b381a51e # load x3 with value 0x8b6e65c7b381a51e
sw x3, 0(x2) # store 0x8b6e65c7b381a51e in memory
flw f5, 0(x2) # load 0x8b6e65c7b381a51e from memory into f5
la x2, scratch
li x3, 0xa3cfd87364d36142 # load x3 with value 0xa3cfd87364d36142
sw x3, 0(x2) # store 0xa3cfd87364d36142 in memory
flw f22, 0(x2) # load 0xa3cfd87364d36142 from memory into f22
fdiv.s f22, f5, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xe30eb2248d8cc1ff # load x3 with value 0xe30eb2248d8cc1ff
sw x3, 0(x2) # store 0xe30eb2248d8cc1ff in memory
flw f27, 0(x2) # load 0xe30eb2248d8cc1ff from memory into f27
la x2, scratch
li x3, 0xa575777b9693bf41 # load x3 with value 0xa575777b9693bf41
sw x3, 0(x2) # store 0xa575777b9693bf41 in memory
flw f23, 0(x2) # load 0xa575777b9693bf41 from memory into f23
fdiv.s f23, f27, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x466f734fdfe75da9 # load x3 with value 0x466f734fdfe75da9
sw x3, 0(x2) # store 0x466f734fdfe75da9 in memory
flw f20, 0(x2) # load 0x466f734fdfe75da9 from memory into f20
la x2, scratch
li x3, 0xc8a46d2782d55984 # load x3 with value 0xc8a46d2782d55984
sw x3, 0(x2) # store 0xc8a46d2782d55984 in memory
flw f24, 0(x2) # load 0xc8a46d2782d55984 from memory into f24
fdiv.s f24, f20, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xfc9ef5b291a1583b # load x3 with value 0xfc9ef5b291a1583b
sw x3, 0(x2) # store 0xfc9ef5b291a1583b in memory
flw f7, 0(x2) # load 0xfc9ef5b291a1583b from memory into f7
la x2, scratch
li x3, 0xbef0fa8dfb990107 # load x3 with value 0xbef0fa8dfb990107
sw x3, 0(x2) # store 0xbef0fa8dfb990107 in memory
flw f25, 0(x2) # load 0xbef0fa8dfb990107 from memory into f25
fdiv.s f25, f7, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x76e4c52f6e93c517 # load x3 with value 0x76e4c52f6e93c517
sw x3, 0(x2) # store 0x76e4c52f6e93c517 in memory
flw f21, 0(x2) # load 0x76e4c52f6e93c517 from memory into f21
la x2, scratch
li x3, 0x35bc1845a7ea9cac # load x3 with value 0x35bc1845a7ea9cac
sw x3, 0(x2) # store 0x35bc1845a7ea9cac in memory
flw f26, 0(x2) # load 0x35bc1845a7ea9cac from memory into f26
fdiv.s f26, f21, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x5329189e2a958b64 # load x3 with value 0x5329189e2a958b64
sw x3, 0(x2) # store 0x5329189e2a958b64 in memory
flw f2, 0(x2) # load 0x5329189e2a958b64 from memory into f2
la x2, scratch
li x3, 0xf22a46357c8aed21 # load x3 with value 0xf22a46357c8aed21
sw x3, 0(x2) # store 0xf22a46357c8aed21 in memory
flw f27, 0(x2) # load 0xf22a46357c8aed21 from memory into f27
fdiv.s f27, f2, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x3de1248336b7cd34 # load x3 with value 0x3de1248336b7cd34
sw x3, 0(x2) # store 0x3de1248336b7cd34 in memory
flw f7, 0(x2) # load 0x3de1248336b7cd34 from memory into f7
la x2, scratch
li x3, 0x8e1cf32440964e8b # load x3 with value 0x8e1cf32440964e8b
sw x3, 0(x2) # store 0x8e1cf32440964e8b in memory
flw f28, 0(x2) # load 0x8e1cf32440964e8b from memory into f28
fdiv.s f28, f7, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x36c9ca075e15b20e # load x3 with value 0x36c9ca075e15b20e
sw x3, 0(x2) # store 0x36c9ca075e15b20e in memory
flw f27, 0(x2) # load 0x36c9ca075e15b20e from memory into f27
la x2, scratch
li x3, 0x63be9958d4802370 # load x3 with value 0x63be9958d4802370
sw x3, 0(x2) # store 0x63be9958d4802370 in memory
flw f29, 0(x2) # load 0x63be9958d4802370 from memory into f29
fdiv.s f29, f27, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0xe0899e4e55a3fe5a # load x3 with value 0xe0899e4e55a3fe5a
sw x3, 0(x2) # store 0xe0899e4e55a3fe5a in memory
flw f19, 0(x2) # load 0xe0899e4e55a3fe5a from memory into f19
la x2, scratch
li x3, 0xf6c15987e69c770d # load x3 with value 0xf6c15987e69c770d
sw x3, 0(x2) # store 0xf6c15987e69c770d in memory
flw f30, 0(x2) # load 0xf6c15987e69c770d from memory into f30
fdiv.s f30, f19, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x2adf7dd8499c9ae0 # load x3 with value 0x2adf7dd8499c9ae0
sw x3, 0(x2) # store 0x2adf7dd8499c9ae0 in memory
flw f10, 0(x2) # load 0x2adf7dd8499c9ae0 from memory into f10
la x2, scratch
li x3, 0xf0a28edfb1cfe44a # load x3 with value 0xf0a28edfb1cfe44a
sw x3, 0(x2) # store 0xf0a28edfb1cfe44a in memory
flw f31, 0(x2) # load 0xf0a28edfb1cfe44a from memory into f31
fdiv.s f31, f10, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x9661a6600a44b84b # load x3 with value 0x9661a6600a44b84b
sw x3, 0(x2) # store 0x9661a6600a44b84b in memory
flw f14, 0(x2) # load 0x9661a6600a44b84b from memory into f14
la x2, scratch
li x3, 0x6431fa87fe9e021a # load x3 with value 0x6431fa87fe9e021a
sw x3, 0(x2) # store 0x6431fa87fe9e021a in memory
flw f13, 0(x2) # load 0x6431fa87fe9e021a from memory into f13
fdiv.s f23, f14, f13, dyn # perform operation
fdiv.s f23, f14, f13, rdn # perform operation
fdiv.s f23, f14, f13, rmm # perform operation
fdiv.s f23, f14, f13, rne # perform operation
fdiv.s f23, f14, f13, rtz # perform operation
fdiv.s f23, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.s f24, f10, f8, dyn # perform operation
fdiv.s f24, f10, f8, rdn # perform operation
fdiv.s f24, f10, f8, rmm # perform operation
fdiv.s f24, f10, f8, rne # perform operation
fdiv.s f24, f10, f8, rtz # perform operation
fdiv.s f24, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fdiv.s f23, f28, f3, dyn # perform operation
fdiv.s f23, f28, f3, rdn # perform operation
fdiv.s f23, f28, f3, rmm # perform operation
fdiv.s f23, f28, f3, rne # perform operation
fdiv.s f23, f28, f3, rtz # perform operation
fdiv.s f23, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fdiv.s f1, f30, f28, dyn # perform operation
fdiv.s f1, f30, f28, rdn # perform operation
fdiv.s f1, f30, f28, rmm # perform operation
fdiv.s f1, f30, f28, rne # perform operation
fdiv.s f1, f30, f28, rtz # perform operation
fdiv.s f1, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fdiv.s f27, f20, f19, dyn # perform operation
fdiv.s f27, f20, f19, rdn # perform operation
fdiv.s f27, f20, f19, rmm # perform operation
fdiv.s f27, f20, f19, rne # perform operation
fdiv.s f27, f20, f19, rtz # perform operation
fdiv.s f27, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fdiv.s f3, f11, f8, dyn # perform operation
fdiv.s f3, f11, f8, rdn # perform operation
fdiv.s f3, f11, f8, rmm # perform operation
fdiv.s f3, f11, f8, rne # perform operation
fdiv.s f3, f11, f8, rtz # perform operation
fdiv.s f3, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fdiv.s f8, f10, f22, dyn # perform operation
fdiv.s f8, f10, f22, rdn # perform operation
fdiv.s f8, f10, f22, rmm # perform operation
fdiv.s f8, f10, f22, rne # perform operation
fdiv.s f8, f10, f22, rtz # perform operation
fdiv.s f8, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fdiv.s f6, f11, f23, dyn # perform operation
fdiv.s f6, f11, f23, rdn # perform operation
fdiv.s f6, f11, f23, rmm # perform operation
fdiv.s f6, f11, f23, rne # perform operation
fdiv.s f6, f11, f23, rtz # perform operation
fdiv.s f6, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fdiv.s f17, f15, f7, dyn # perform operation
fdiv.s f17, f15, f7, rdn # perform operation
fdiv.s f17, f15, f7, rmm # perform operation
fdiv.s f17, f15, f7, rne # perform operation
fdiv.s f17, f15, f7, rtz # perform operation
fdiv.s f17, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fdiv.s f20, f2, f7, dyn # perform operation
fdiv.s f20, f2, f7, rdn # perform operation
fdiv.s f20, f2, f7, rmm # perform operation
fdiv.s f20, f2, f7, rne # perform operation
fdiv.s f20, f2, f7, rtz # perform operation
fdiv.s f20, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fdiv.s f5, f21, f6, dyn # perform operation
fdiv.s f5, f21, f6, rdn # perform operation
fdiv.s f5, f21, f6, rmm # perform operation
fdiv.s f5, f21, f6, rne # perform operation
fdiv.s f5, f21, f6, rtz # perform operation
fdiv.s f5, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fdiv.s f12, f27, f28, dyn # perform operation
fdiv.s f12, f27, f28, rdn # perform operation
fdiv.s f12, f27, f28, rmm # perform operation
fdiv.s f12, f27, f28, rne # perform operation
fdiv.s f12, f27, f28, rtz # perform operation
fdiv.s f12, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fdiv.s f1, f16, f8, dyn # perform operation
fdiv.s f1, f16, f8, rdn # perform operation
fdiv.s f1, f16, f8, rmm # perform operation
fdiv.s f1, f16, f8, rne # perform operation
fdiv.s f1, f16, f8, rtz # perform operation
fdiv.s f1, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fdiv.s f21, f9, f14, dyn # perform operation
fdiv.s f21, f9, f14, rdn # perform operation
fdiv.s f21, f9, f14, rmm # perform operation
fdiv.s f21, f9, f14, rne # perform operation
fdiv.s f21, f9, f14, rtz # perform operation
fdiv.s f21, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f8, f3, f19, dyn # perform operation
fdiv.s f8, f3, f19, rdn # perform operation
fdiv.s f8, f3, f19, rmm # perform operation
fdiv.s f8, f3, f19, rne # perform operation
fdiv.s f8, f3, f19, rtz # perform operation
fdiv.s f8, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fdiv.s f20, f7, f25, dyn # perform operation
fdiv.s f20, f7, f25, rdn # perform operation
fdiv.s f20, f7, f25, rmm # perform operation
fdiv.s f20, f7, f25, rne # perform operation
fdiv.s f20, f7, f25, rtz # perform operation
fdiv.s f20, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fdiv.s f28, f5, f11, dyn # perform operation
fdiv.s f28, f5, f11, rdn # perform operation
fdiv.s f28, f5, f11, rmm # perform operation
fdiv.s f28, f5, f11, rne # perform operation
fdiv.s f28, f5, f11, rtz # perform operation
fdiv.s f28, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.s f15, f17, f23, dyn # perform operation
fdiv.s f15, f17, f23, rdn # perform operation
fdiv.s f15, f17, f23, rmm # perform operation
fdiv.s f15, f17, f23, rne # perform operation
fdiv.s f15, f17, f23, rtz # perform operation
fdiv.s f15, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fdiv.s f27, f10, f19, dyn # perform operation
fdiv.s f27, f10, f19, rdn # perform operation
fdiv.s f27, f10, f19, rmm # perform operation
fdiv.s f27, f10, f19, rne # perform operation
fdiv.s f27, f10, f19, rtz # perform operation
fdiv.s f27, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fdiv.s f14, f10, f21, dyn # perform operation
fdiv.s f14, f10, f21, rdn # perform operation
fdiv.s f14, f10, f21, rmm # perform operation
fdiv.s f14, f10, f21, rne # perform operation
fdiv.s f14, f10, f21, rtz # perform operation
fdiv.s f14, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fdiv.s f9, f27, f15, dyn # perform operation
fdiv.s f9, f27, f15, rdn # perform operation
fdiv.s f9, f27, f15, rmm # perform operation
fdiv.s f9, f27, f15, rne # perform operation
fdiv.s f9, f27, f15, rtz # perform operation
fdiv.s f9, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fdiv.s f8, f19, f15, dyn # perform operation
fdiv.s f8, f19, f15, rdn # perform operation
fdiv.s f8, f19, f15, rmm # perform operation
fdiv.s f8, f19, f15, rne # perform operation
fdiv.s f8, f19, f15, rtz # perform operation
fdiv.s f8, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f21, f15, f12, dyn # perform operation
fdiv.s f21, f15, f12, rdn # perform operation
fdiv.s f21, f15, f12, rmm # perform operation
fdiv.s f21, f15, f12, rne # perform operation
fdiv.s f21, f15, f12, rtz # perform operation
fdiv.s f21, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fdiv.s f23, f12, f10, dyn # perform operation
fdiv.s f23, f12, f10, rdn # perform operation
fdiv.s f23, f12, f10, rmm # perform operation
fdiv.s f23, f12, f10, rne # perform operation
fdiv.s f23, f12, f10, rtz # perform operation
fdiv.s f23, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fdiv.s f5, f25, f28, dyn # perform operation
fdiv.s f5, f25, f28, rdn # perform operation
fdiv.s f5, f25, f28, rmm # perform operation
fdiv.s f5, f25, f28, rne # perform operation
fdiv.s f5, f25, f28, rtz # perform operation
fdiv.s f5, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fdiv.s f25, f23, f15, dyn # perform operation
fdiv.s f25, f23, f15, rdn # perform operation
fdiv.s f25, f23, f15, rmm # perform operation
fdiv.s f25, f23, f15, rne # perform operation
fdiv.s f25, f23, f15, rtz # perform operation
fdiv.s f25, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fdiv.s f29, f15, f3, dyn # perform operation
fdiv.s f29, f15, f3, rdn # perform operation
fdiv.s f29, f15, f3, rmm # perform operation
fdiv.s f29, f15, f3, rne # perform operation
fdiv.s f29, f15, f3, rtz # perform operation
fdiv.s f29, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fdiv.s f23, f10, f5, dyn # perform operation
fdiv.s f23, f10, f5, rdn # perform operation
fdiv.s f23, f10, f5, rmm # perform operation
fdiv.s f23, f10, f5, rne # perform operation
fdiv.s f23, f10, f5, rtz # perform operation
fdiv.s f23, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fdiv.s f5, f21, f19, dyn # perform operation
fdiv.s f5, f21, f19, rdn # perform operation
fdiv.s f5, f21, f19, rmm # perform operation
fdiv.s f5, f21, f19, rne # perform operation
fdiv.s f5, f21, f19, rtz # perform operation
fdiv.s f5, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.s f16, f28, f9, dyn # perform operation
fdiv.s f16, f28, f9, rdn # perform operation
fdiv.s f16, f28, f9, rmm # perform operation
fdiv.s f16, f28, f9, rne # perform operation
fdiv.s f16, f28, f9, rtz # perform operation
fdiv.s f16, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fdiv.s f9, f5, f8, dyn # perform operation
fdiv.s f9, f5, f8, rdn # perform operation
fdiv.s f9, f5, f8, rmm # perform operation
fdiv.s f9, f5, f8, rne # perform operation
fdiv.s f9, f5, f8, rtz # perform operation
fdiv.s f9, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fdiv.s f17, f29, f25, dyn # perform operation
fdiv.s f17, f29, f25, rdn # perform operation
fdiv.s f17, f29, f25, rmm # perform operation
fdiv.s f17, f29, f25, rne # perform operation
fdiv.s f17, f29, f25, rtz # perform operation
fdiv.s f17, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fdiv.s f8, f14, f5, dyn # perform operation
fdiv.s f8, f14, f5, rdn # perform operation
fdiv.s f8, f14, f5, rmm # perform operation
fdiv.s f8, f14, f5, rne # perform operation
fdiv.s f8, f14, f5, rtz # perform operation
fdiv.s f8, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fdiv.s f5, f1, f2, dyn # perform operation
fdiv.s f5, f1, f2, rdn # perform operation
fdiv.s f5, f1, f2, rmm # perform operation
fdiv.s f5, f1, f2, rne # perform operation
fdiv.s f5, f1, f2, rtz # perform operation
fdiv.s f5, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f23, f9, f25, dyn # perform operation
fdiv.s f23, f9, f25, rdn # perform operation
fdiv.s f23, f9, f25, rmm # perform operation
fdiv.s f23, f9, f25, rne # perform operation
fdiv.s f23, f9, f25, rtz # perform operation
fdiv.s f23, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fdiv.s f3, f18, f8, dyn # perform operation
fdiv.s f3, f18, f8, rdn # perform operation
fdiv.s f3, f18, f8, rmm # perform operation
fdiv.s f3, f18, f8, rne # perform operation
fdiv.s f3, f18, f8, rtz # perform operation
fdiv.s f3, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fdiv.s f8, f19, f17, dyn # perform operation
fdiv.s f8, f19, f17, rdn # perform operation
fdiv.s f8, f19, f17, rmm # perform operation
fdiv.s f8, f19, f17, rne # perform operation
fdiv.s f8, f19, f17, rtz # perform operation
fdiv.s f8, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fdiv.s f23, f6, f13, dyn # perform operation
fdiv.s f23, f6, f13, rdn # perform operation
fdiv.s f23, f6, f13, rmm # perform operation
fdiv.s f23, f6, f13, rne # perform operation
fdiv.s f23, f6, f13, rtz # perform operation
fdiv.s f23, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fdiv.s f24, f12, f23, dyn # perform operation
fdiv.s f24, f12, f23, rdn # perform operation
fdiv.s f24, f12, f23, rmm # perform operation
fdiv.s f24, f12, f23, rne # perform operation
fdiv.s f24, f12, f23, rtz # perform operation
fdiv.s f24, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fdiv.s f17, f28, f14, dyn # perform operation
fdiv.s f17, f28, f14, rdn # perform operation
fdiv.s f17, f28, f14, rmm # perform operation
fdiv.s f17, f28, f14, rne # perform operation
fdiv.s f17, f28, f14, rtz # perform operation
fdiv.s f17, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fdiv.s f31, f14, f21, dyn # perform operation
fdiv.s f31, f14, f21, rdn # perform operation
fdiv.s f31, f14, f21, rmm # perform operation
fdiv.s f31, f14, f21, rne # perform operation
fdiv.s f31, f14, f21, rtz # perform operation
fdiv.s f31, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fdiv.s f9, f3, f17, dyn # perform operation
fdiv.s f9, f3, f17, rdn # perform operation
fdiv.s f9, f3, f17, rmm # perform operation
fdiv.s f9, f3, f17, rne # perform operation
fdiv.s f9, f3, f17, rtz # perform operation
fdiv.s f9, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fdiv.s f16, f25, f6, dyn # perform operation
fdiv.s f16, f25, f6, rdn # perform operation
fdiv.s f16, f25, f6, rmm # perform operation
fdiv.s f16, f25, f6, rne # perform operation
fdiv.s f16, f25, f6, rtz # perform operation
fdiv.s f16, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fdiv.s f21, f16, f31, dyn # perform operation
fdiv.s f21, f16, f31, rdn # perform operation
fdiv.s f21, f16, f31, rmm # perform operation
fdiv.s f21, f16, f31, rne # perform operation
fdiv.s f21, f16, f31, rtz # perform operation
fdiv.s f21, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fdiv.s f21, f17, f12, dyn # perform operation
fdiv.s f21, f17, f12, rdn # perform operation
fdiv.s f21, f17, f12, rmm # perform operation
fdiv.s f21, f17, f12, rne # perform operation
fdiv.s f21, f17, f12, rtz # perform operation
fdiv.s f21, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fdiv.s f5, f11, f20, dyn # perform operation
fdiv.s f5, f11, f20, rdn # perform operation
fdiv.s f5, f11, f20, rmm # perform operation
fdiv.s f5, f11, f20, rne # perform operation
fdiv.s f5, f11, f20, rtz # perform operation
fdiv.s f5, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fdiv.s f27, f10, f8, dyn # perform operation
fdiv.s f27, f10, f8, rdn # perform operation
fdiv.s f27, f10, f8, rmm # perform operation
fdiv.s f27, f10, f8, rne # perform operation
fdiv.s f27, f10, f8, rtz # perform operation
fdiv.s f27, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fdiv.s f13, f6, f27, dyn # perform operation
fdiv.s f13, f6, f27, rdn # perform operation
fdiv.s f13, f6, f27, rmm # perform operation
fdiv.s f13, f6, f27, rne # perform operation
fdiv.s f13, f6, f27, rtz # perform operation
fdiv.s f13, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fdiv.s f23, f29, f2, dyn # perform operation
fdiv.s f23, f29, f2, rdn # perform operation
fdiv.s f23, f29, f2, rmm # perform operation
fdiv.s f23, f29, f2, rne # perform operation
fdiv.s f23, f29, f2, rtz # perform operation
fdiv.s f23, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fdiv.s f15, f30, f9, dyn # perform operation
fdiv.s f15, f30, f9, rdn # perform operation
fdiv.s f15, f30, f9, rmm # perform operation
fdiv.s f15, f30, f9, rne # perform operation
fdiv.s f15, f30, f9, rtz # perform operation
fdiv.s f15, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fdiv.s f27, f3, f29, dyn # perform operation
fdiv.s f27, f3, f29, rdn # perform operation
fdiv.s f27, f3, f29, rmm # perform operation
fdiv.s f27, f3, f29, rne # perform operation
fdiv.s f27, f3, f29, rtz # perform operation
fdiv.s f27, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fdiv.s f31, f12, f7, dyn # perform operation
fdiv.s f31, f12, f7, rdn # perform operation
fdiv.s f31, f12, f7, rmm # perform operation
fdiv.s f31, f12, f7, rne # perform operation
fdiv.s f31, f12, f7, rtz # perform operation
fdiv.s f31, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fdiv.s f24, f9, f15, dyn # perform operation
fdiv.s f24, f9, f15, rdn # perform operation
fdiv.s f24, f9, f15, rmm # perform operation
fdiv.s f24, f9, f15, rne # perform operation
fdiv.s f24, f9, f15, rtz # perform operation
fdiv.s f24, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f17, f26, f11, dyn # perform operation
fdiv.s f17, f26, f11, rdn # perform operation
fdiv.s f17, f26, f11, rmm # perform operation
fdiv.s f17, f26, f11, rne # perform operation
fdiv.s f17, f26, f11, rtz # perform operation
fdiv.s f17, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fdiv.s f9, f6, f2, dyn # perform operation
fdiv.s f9, f6, f2, rdn # perform operation
fdiv.s f9, f6, f2, rmm # perform operation
fdiv.s f9, f6, f2, rne # perform operation
fdiv.s f9, f6, f2, rtz # perform operation
fdiv.s f9, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fdiv.s f30, f2, f22, dyn # perform operation
fdiv.s f30, f2, f22, rdn # perform operation
fdiv.s f30, f2, f22, rmm # perform operation
fdiv.s f30, f2, f22, rne # perform operation
fdiv.s f30, f2, f22, rtz # perform operation
fdiv.s f30, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fdiv.s f11, f22, f1, dyn # perform operation
fdiv.s f11, f22, f1, rdn # perform operation
fdiv.s f11, f22, f1, rmm # perform operation
fdiv.s f11, f22, f1, rne # perform operation
fdiv.s f11, f22, f1, rtz # perform operation
fdiv.s f11, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.s f1, f20, f9, dyn # perform operation
fdiv.s f1, f20, f9, rdn # perform operation
fdiv.s f1, f20, f9, rmm # perform operation
fdiv.s f1, f20, f9, rne # perform operation
fdiv.s f1, f20, f9, rtz # perform operation
fdiv.s f1, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fdiv.s f25, f11, f20, dyn # perform operation
fdiv.s f25, f11, f20, rdn # perform operation
fdiv.s f25, f11, f20, rmm # perform operation
fdiv.s f25, f11, f20, rne # perform operation
fdiv.s f25, f11, f20, rtz # perform operation
fdiv.s f25, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fdiv.s f13, f22, f12, dyn # perform operation
fdiv.s f13, f22, f12, rdn # perform operation
fdiv.s f13, f22, f12, rmm # perform operation
fdiv.s f13, f22, f12, rne # perform operation
fdiv.s f13, f22, f12, rtz # perform operation
fdiv.s f13, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fdiv.s f2, f5, f1, dyn # perform operation
fdiv.s f2, f5, f1, rdn # perform operation
fdiv.s f2, f5, f1, rmm # perform operation
fdiv.s f2, f5, f1, rne # perform operation
fdiv.s f2, f5, f1, rtz # perform operation
fdiv.s f2, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fdiv.s f22, f14, f23, dyn # perform operation
fdiv.s f22, f14, f23, rdn # perform operation
fdiv.s f22, f14, f23, rmm # perform operation
fdiv.s f22, f14, f23, rne # perform operation
fdiv.s f22, f14, f23, rtz # perform operation
fdiv.s f22, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fdiv.s f22, f30, f16, dyn # perform operation
fdiv.s f22, f30, f16, rdn # perform operation
fdiv.s f22, f30, f16, rmm # perform operation
fdiv.s f22, f30, f16, rne # perform operation
fdiv.s f22, f30, f16, rtz # perform operation
fdiv.s f22, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fdiv.s f10, f1, f23, dyn # perform operation
fdiv.s f10, f1, f23, rdn # perform operation
fdiv.s f10, f1, f23, rmm # perform operation
fdiv.s f10, f1, f23, rne # perform operation
fdiv.s f10, f1, f23, rtz # perform operation
fdiv.s f10, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fdiv.s f25, f30, f11, dyn # perform operation
fdiv.s f25, f30, f11, rdn # perform operation
fdiv.s f25, f30, f11, rmm # perform operation
fdiv.s f25, f30, f11, rne # perform operation
fdiv.s f25, f30, f11, rtz # perform operation
fdiv.s f25, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fdiv.s f15, f19, f10, dyn # perform operation
fdiv.s f15, f19, f10, rdn # perform operation
fdiv.s f15, f19, f10, rmm # perform operation
fdiv.s f15, f19, f10, rne # perform operation
fdiv.s f15, f19, f10, rtz # perform operation
fdiv.s f15, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fdiv.s f26, f20, f5, dyn # perform operation
fdiv.s f26, f20, f5, rdn # perform operation
fdiv.s f26, f20, f5, rmm # perform operation
fdiv.s f26, f20, f5, rne # perform operation
fdiv.s f26, f20, f5, rtz # perform operation
fdiv.s f26, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fdiv.s f9, f11, f7, dyn # perform operation
fdiv.s f9, f11, f7, rdn # perform operation
fdiv.s f9, f11, f7, rmm # perform operation
fdiv.s f9, f11, f7, rne # perform operation
fdiv.s f9, f11, f7, rtz # perform operation
fdiv.s f9, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fdiv.s f31, f23, f2, dyn # perform operation
fdiv.s f31, f23, f2, rdn # perform operation
fdiv.s f31, f23, f2, rmm # perform operation
fdiv.s f31, f23, f2, rne # perform operation
fdiv.s f31, f23, f2, rtz # perform operation
fdiv.s f31, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fdiv.s f16, f25, f10, dyn # perform operation
fdiv.s f16, f25, f10, rdn # perform operation
fdiv.s f16, f25, f10, rmm # perform operation
fdiv.s f16, f25, f10, rne # perform operation
fdiv.s f16, f25, f10, rtz # perform operation
fdiv.s f16, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fdiv.s f20, f22, f13, dyn # perform operation
fdiv.s f20, f22, f13, rdn # perform operation
fdiv.s f20, f22, f13, rmm # perform operation
fdiv.s f20, f22, f13, rne # perform operation
fdiv.s f20, f22, f13, rtz # perform operation
fdiv.s f20, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fdiv.s f26, f25, f12, dyn # perform operation
fdiv.s f26, f25, f12, rdn # perform operation
fdiv.s f26, f25, f12, rmm # perform operation
fdiv.s f26, f25, f12, rne # perform operation
fdiv.s f26, f25, f12, rtz # perform operation
fdiv.s f26, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fdiv.s f1, f11, f13, dyn # perform operation
fdiv.s f1, f11, f13, rdn # perform operation
fdiv.s f1, f11, f13, rmm # perform operation
fdiv.s f1, f11, f13, rne # perform operation
fdiv.s f1, f11, f13, rtz # perform operation
fdiv.s f1, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fdiv.s f26, f6, f7, dyn # perform operation
fdiv.s f26, f6, f7, rdn # perform operation
fdiv.s f26, f6, f7, rmm # perform operation
fdiv.s f26, f6, f7, rne # perform operation
fdiv.s f26, f6, f7, rtz # perform operation
fdiv.s f26, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fdiv.s f2, f27, f26, dyn # perform operation
fdiv.s f2, f27, f26, rdn # perform operation
fdiv.s f2, f27, f26, rmm # perform operation
fdiv.s f2, f27, f26, rne # perform operation
fdiv.s f2, f27, f26, rtz # perform operation
fdiv.s f2, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fdiv.s f28, f12, f17, dyn # perform operation
fdiv.s f28, f12, f17, rdn # perform operation
fdiv.s f28, f12, f17, rmm # perform operation
fdiv.s f28, f12, f17, rne # perform operation
fdiv.s f28, f12, f17, rtz # perform operation
fdiv.s f28, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fdiv.s f11, f30, f6, dyn # perform operation
fdiv.s f11, f30, f6, rdn # perform operation
fdiv.s f11, f30, f6, rmm # perform operation
fdiv.s f11, f30, f6, rne # perform operation
fdiv.s f11, f30, f6, rtz # perform operation
fdiv.s f11, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fdiv.s f23, f7, f25, dyn # perform operation
fdiv.s f23, f7, f25, rdn # perform operation
fdiv.s f23, f7, f25, rmm # perform operation
fdiv.s f23, f7, f25, rne # perform operation
fdiv.s f23, f7, f25, rtz # perform operation
fdiv.s f23, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fdiv.s f15, f17, f8, dyn # perform operation
fdiv.s f15, f17, f8, rdn # perform operation
fdiv.s f15, f17, f8, rmm # perform operation
fdiv.s f15, f17, f8, rne # perform operation
fdiv.s f15, f17, f8, rtz # perform operation
fdiv.s f15, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
fdiv.s f26, f27, f6, dyn # perform operation
fdiv.s f26, f27, f6, rdn # perform operation
fdiv.s f26, f27, f6, rmm # perform operation
fdiv.s f26, f27, f6, rne # perform operation
fdiv.s f26, f27, f6, rtz # perform operation
fdiv.s f26, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fdiv.s f8, f5, f29, dyn # perform operation
fdiv.s f8, f5, f29, rdn # perform operation
fdiv.s f8, f5, f29, rmm # perform operation
fdiv.s f8, f5, f29, rne # perform operation
fdiv.s f8, f5, f29, rtz # perform operation
fdiv.s f8, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fdiv.s f23, f7, f14, dyn # perform operation
fdiv.s f23, f7, f14, rdn # perform operation
fdiv.s f23, f7, f14, rmm # perform operation
fdiv.s f23, f7, f14, rne # perform operation
fdiv.s f23, f7, f14, rtz # perform operation
fdiv.s f23, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fdiv.s f12, f24, f1, dyn # perform operation
fdiv.s f12, f24, f1, rdn # perform operation
fdiv.s f12, f24, f1, rmm # perform operation
fdiv.s f12, f24, f1, rne # perform operation
fdiv.s f12, f24, f1, rtz # perform operation
fdiv.s f12, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fdiv.s f1, f31, f20, dyn # perform operation
fdiv.s f1, f31, f20, rdn # perform operation
fdiv.s f1, f31, f20, rmm # perform operation
fdiv.s f1, f31, f20, rne # perform operation
fdiv.s f1, f31, f20, rtz # perform operation
fdiv.s f1, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fdiv.s f30, f6, f21, dyn # perform operation
fdiv.s f30, f6, f21, rdn # perform operation
fdiv.s f30, f6, f21, rmm # perform operation
fdiv.s f30, f6, f21, rne # perform operation
fdiv.s f30, f6, f21, rtz # perform operation
fdiv.s f30, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.s f19, f26, f30, dyn # perform operation
fdiv.s f19, f26, f30, rdn # perform operation
fdiv.s f19, f26, f30, rmm # perform operation
fdiv.s f19, f26, f30, rne # perform operation
fdiv.s f19, f26, f30, rtz # perform operation
fdiv.s f19, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fdiv.s f30, f5, f7, dyn # perform operation
fdiv.s f30, f5, f7, rdn # perform operation
fdiv.s f30, f5, f7, rmm # perform operation
fdiv.s f30, f5, f7, rne # perform operation
fdiv.s f30, f5, f7, rtz # perform operation
fdiv.s f30, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f5, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fdiv.s f16, f19, f8, dyn # perform operation
fdiv.s f16, f19, f8, rdn # perform operation
fdiv.s f16, f19, f8, rmm # perform operation
fdiv.s f16, f19, f8, rne # perform operation
fdiv.s f16, f19, f8, rtz # perform operation
fdiv.s f16, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fdiv.s f7, f28, f3, dyn # perform operation
fdiv.s f7, f28, f3, rdn # perform operation
fdiv.s f7, f28, f3, rmm # perform operation
fdiv.s f7, f28, f3, rne # perform operation
fdiv.s f7, f28, f3, rtz # perform operation
fdiv.s f7, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fdiv.s f16, f10, f1, dyn # perform operation
fdiv.s f16, f10, f1, rdn # perform operation
fdiv.s f16, f10, f1, rmm # perform operation
fdiv.s f16, f10, f1, rne # perform operation
fdiv.s f16, f10, f1, rtz # perform operation
fdiv.s f16, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fdiv.s f19, f21, f26, dyn # perform operation
fdiv.s f19, f21, f26, rdn # perform operation
fdiv.s f19, f21, f26, rmm # perform operation
fdiv.s f19, f21, f26, rne # perform operation
fdiv.s f19, f21, f26, rtz # perform operation
fdiv.s f19, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fdiv.s f25, f27, f5, dyn # perform operation
fdiv.s f25, f27, f5, rdn # perform operation
fdiv.s f25, f27, f5, rmm # perform operation
fdiv.s f25, f27, f5, rne # perform operation
fdiv.s f25, f27, f5, rtz # perform operation
fdiv.s f25, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fdiv.s f7, f21, f27, dyn # perform operation
fdiv.s f7, f21, f27, rdn # perform operation
fdiv.s f7, f21, f27, rmm # perform operation
fdiv.s f7, f21, f27, rne # perform operation
fdiv.s f7, f21, f27, rtz # perform operation
fdiv.s f7, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fdiv.s f20, f3, f8, dyn # perform operation
fdiv.s f20, f3, f8, rdn # perform operation
fdiv.s f20, f3, f8, rmm # perform operation
fdiv.s f20, f3, f8, rne # perform operation
fdiv.s f20, f3, f8, rtz # perform operation
fdiv.s f20, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fdiv.s f6, f10, f13, dyn # perform operation
fdiv.s f6, f10, f13, rdn # perform operation
fdiv.s f6, f10, f13, rmm # perform operation
fdiv.s f6, f10, f13, rne # perform operation
fdiv.s f6, f10, f13, rtz # perform operation
fdiv.s f6, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f10, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fdiv.s f7, f15, f18, dyn # perform operation
fdiv.s f7, f15, f18, rdn # perform operation
fdiv.s f7, f15, f18, rmm # perform operation
fdiv.s f7, f15, f18, rne # perform operation
fdiv.s f7, f15, f18, rtz # perform operation
fdiv.s f7, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fdiv.s f1, f15, f21, dyn # perform operation
fdiv.s f1, f15, f21, rdn # perform operation
fdiv.s f1, f15, f21, rmm # perform operation
fdiv.s f1, f15, f21, rne # perform operation
fdiv.s f1, f15, f21, rtz # perform operation
fdiv.s f1, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fdiv.s f12, f9, f24, dyn # perform operation
fdiv.s f12, f9, f24, rdn # perform operation
fdiv.s f12, f9, f24, rmm # perform operation
fdiv.s f12, f9, f24, rne # perform operation
fdiv.s f12, f9, f24, rtz # perform operation
fdiv.s f12, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fdiv.s f19, f23, f9, dyn # perform operation
fdiv.s f19, f23, f9, rdn # perform operation
fdiv.s f19, f23, f9, rmm # perform operation
fdiv.s f19, f23, f9, rne # perform operation
fdiv.s f19, f23, f9, rtz # perform operation
fdiv.s f19, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fdiv.s f7, f19, f20, dyn # perform operation
fdiv.s f7, f19, f20, rdn # perform operation
fdiv.s f7, f19, f20, rmm # perform operation
fdiv.s f7, f19, f20, rne # perform operation
fdiv.s f7, f19, f20, rtz # perform operation
fdiv.s f7, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fdiv.s f30, f15, f24, dyn # perform operation
fdiv.s f30, f15, f24, rdn # perform operation
fdiv.s f30, f15, f24, rmm # perform operation
fdiv.s f30, f15, f24, rne # perform operation
fdiv.s f30, f15, f24, rtz # perform operation
fdiv.s f30, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.s f29, f18, f14, dyn # perform operation
fdiv.s f29, f18, f14, rdn # perform operation
fdiv.s f29, f18, f14, rmm # perform operation
fdiv.s f29, f18, f14, rne # perform operation
fdiv.s f29, f18, f14, rtz # perform operation
fdiv.s f29, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fdiv.s f28, f21, f18, dyn # perform operation
fdiv.s f28, f21, f18, rdn # perform operation
fdiv.s f28, f21, f18, rmm # perform operation
fdiv.s f28, f21, f18, rne # perform operation
fdiv.s f28, f21, f18, rtz # perform operation
fdiv.s f28, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fdiv.s f14, f15, f23, dyn # perform operation
fdiv.s f14, f15, f23, rdn # perform operation
fdiv.s f14, f15, f23, rmm # perform operation
fdiv.s f14, f15, f23, rne # perform operation
fdiv.s f14, f15, f23, rtz # perform operation
fdiv.s f14, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fdiv.s f22, f17, f15, dyn # perform operation
fdiv.s f22, f17, f15, rdn # perform operation
fdiv.s f22, f17, f15, rmm # perform operation
fdiv.s f22, f17, f15, rne # perform operation
fdiv.s f22, f17, f15, rtz # perform operation
fdiv.s f22, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fdiv.s f1, f28, f15, dyn # perform operation
fdiv.s f1, f28, f15, rdn # perform operation
fdiv.s f1, f28, f15, rmm # perform operation
fdiv.s f1, f28, f15, rne # perform operation
fdiv.s f1, f28, f15, rtz # perform operation
fdiv.s f1, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fdiv.s f5, f10, f19, dyn # perform operation
fdiv.s f5, f10, f19, rdn # perform operation
fdiv.s f5, f10, f19, rmm # perform operation
fdiv.s f5, f10, f19, rne # perform operation
fdiv.s f5, f10, f19, rtz # perform operation
fdiv.s f5, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
fdiv.s f3, f29, f20, dyn # perform operation
fdiv.s f3, f29, f20, rdn # perform operation
fdiv.s f3, f29, f20, rmm # perform operation
fdiv.s f3, f29, f20, rne # perform operation
fdiv.s f3, f29, f20, rtz # perform operation
fdiv.s f3, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f13, f31, f19, dyn # perform operation
fdiv.s f13, f31, f19, rdn # perform operation
fdiv.s f13, f31, f19, rmm # perform operation
fdiv.s f13, f31, f19, rne # perform operation
fdiv.s f13, f31, f19, rtz # perform operation
fdiv.s f13, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fdiv.s f3, f26, f9, dyn # perform operation
fdiv.s f3, f26, f9, rdn # perform operation
fdiv.s f3, f26, f9, rmm # perform operation
fdiv.s f3, f26, f9, rne # perform operation
fdiv.s f3, f26, f9, rtz # perform operation
fdiv.s f3, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
fdiv.s f23, f30, f11, dyn # perform operation
fdiv.s f23, f30, f11, rdn # perform operation
fdiv.s f23, f30, f11, rmm # perform operation
fdiv.s f23, f30, f11, rne # perform operation
fdiv.s f23, f30, f11, rtz # perform operation
fdiv.s f23, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fdiv.s f31, f13, f17, dyn # perform operation
fdiv.s f31, f13, f17, rdn # perform operation
fdiv.s f31, f13, f17, rmm # perform operation
fdiv.s f31, f13, f17, rne # perform operation
fdiv.s f31, f13, f17, rtz # perform operation
fdiv.s f31, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fdiv.s f8, f1, f26, dyn # perform operation
fdiv.s f8, f1, f26, rdn # perform operation
fdiv.s f8, f1, f26, rmm # perform operation
fdiv.s f8, f1, f26, rne # perform operation
fdiv.s f8, f1, f26, rtz # perform operation
fdiv.s f8, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.s f31, f22, f7, dyn # perform operation
fdiv.s f31, f22, f7, rdn # perform operation
fdiv.s f31, f22, f7, rmm # perform operation
fdiv.s f31, f22, f7, rne # perform operation
fdiv.s f31, f22, f7, rtz # perform operation
fdiv.s f31, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fdiv.s f25, f12, f30, dyn # perform operation
fdiv.s f25, f12, f30, rdn # perform operation
fdiv.s f25, f12, f30, rmm # perform operation
fdiv.s f25, f12, f30, rne # perform operation
fdiv.s f25, f12, f30, rtz # perform operation
fdiv.s f25, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fdiv.s f9, f17, f12, dyn # perform operation
fdiv.s f9, f17, f12, rdn # perform operation
fdiv.s f9, f17, f12, rmm # perform operation
fdiv.s f9, f17, f12, rne # perform operation
fdiv.s f9, f17, f12, rtz # perform operation
fdiv.s f9, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fdiv.s f8, f10, f17, dyn # perform operation
fdiv.s f8, f10, f17, rdn # perform operation
fdiv.s f8, f10, f17, rmm # perform operation
fdiv.s f8, f10, f17, rne # perform operation
fdiv.s f8, f10, f17, rtz # perform operation
fdiv.s f8, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fdiv.s f28, f18, f1, dyn # perform operation
fdiv.s f28, f18, f1, rdn # perform operation
fdiv.s f28, f18, f1, rmm # perform operation
fdiv.s f28, f18, f1, rne # perform operation
fdiv.s f28, f18, f1, rtz # perform operation
fdiv.s f28, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fdiv.s f22, f9, f17, dyn # perform operation
fdiv.s f22, f9, f17, rdn # perform operation
fdiv.s f22, f9, f17, rmm # perform operation
fdiv.s f22, f9, f17, rne # perform operation
fdiv.s f22, f9, f17, rtz # perform operation
fdiv.s f22, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fdiv.s f17, f9, f21, dyn # perform operation
fdiv.s f17, f9, f21, rdn # perform operation
fdiv.s f17, f9, f21, rmm # perform operation
fdiv.s f17, f9, f21, rne # perform operation
fdiv.s f17, f9, f21, rtz # perform operation
fdiv.s f17, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fdiv.s f24, f11, f27, dyn # perform operation
fdiv.s f24, f11, f27, rdn # perform operation
fdiv.s f24, f11, f27, rmm # perform operation
fdiv.s f24, f11, f27, rne # perform operation
fdiv.s f24, f11, f27, rtz # perform operation
fdiv.s f24, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fdiv.s f22, f8, f24, dyn # perform operation
fdiv.s f22, f8, f24, rdn # perform operation
fdiv.s f22, f8, f24, rmm # perform operation
fdiv.s f22, f8, f24, rne # perform operation
fdiv.s f22, f8, f24, rtz # perform operation
fdiv.s f22, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fdiv.s f25, f12, f2, dyn # perform operation
fdiv.s f25, f12, f2, rdn # perform operation
fdiv.s f25, f12, f2, rmm # perform operation
fdiv.s f25, f12, f2, rne # perform operation
fdiv.s f25, f12, f2, rtz # perform operation
fdiv.s f25, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fdiv.s f10, f1, f22, dyn # perform operation
fdiv.s f10, f1, f22, rdn # perform operation
fdiv.s f10, f1, f22, rmm # perform operation
fdiv.s f10, f1, f22, rne # perform operation
fdiv.s f10, f1, f22, rtz # perform operation
fdiv.s f10, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fdiv.s f3, f12, f2, dyn # perform operation
fdiv.s f3, f12, f2, rdn # perform operation
fdiv.s f3, f12, f2, rmm # perform operation
fdiv.s f3, f12, f2, rne # perform operation
fdiv.s f3, f12, f2, rtz # perform operation
fdiv.s f3, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fdiv.s f5, f17, f30, dyn # perform operation
fdiv.s f5, f17, f30, rdn # perform operation
fdiv.s f5, f17, f30, rmm # perform operation
fdiv.s f5, f17, f30, rne # perform operation
fdiv.s f5, f17, f30, rtz # perform operation
fdiv.s f5, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f20, f26, f30, dyn # perform operation
fdiv.s f20, f26, f30, rdn # perform operation
fdiv.s f20, f26, f30, rmm # perform operation
fdiv.s f20, f26, f30, rne # perform operation
fdiv.s f20, f26, f30, rtz # perform operation
fdiv.s f20, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fdiv.s f13, f11, f21, dyn # perform operation
fdiv.s f13, f11, f21, rdn # perform operation
fdiv.s f13, f11, f21, rmm # perform operation
fdiv.s f13, f11, f21, rne # perform operation
fdiv.s f13, f11, f21, rtz # perform operation
fdiv.s f13, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fdiv.s f26, f23, f6, dyn # perform operation
fdiv.s f26, f23, f6, rdn # perform operation
fdiv.s f26, f23, f6, rmm # perform operation
fdiv.s f26, f23, f6, rne # perform operation
fdiv.s f26, f23, f6, rtz # perform operation
fdiv.s f26, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.s f25, f16, f14, dyn # perform operation
fdiv.s f25, f16, f14, rdn # perform operation
fdiv.s f25, f16, f14, rmm # perform operation
fdiv.s f25, f16, f14, rne # perform operation
fdiv.s f25, f16, f14, rtz # perform operation
fdiv.s f25, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fdiv.s f11, f9, f3, dyn # perform operation
fdiv.s f11, f9, f3, rdn # perform operation
fdiv.s f11, f9, f3, rmm # perform operation
fdiv.s f11, f9, f3, rne # perform operation
fdiv.s f11, f9, f3, rtz # perform operation
fdiv.s f11, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fdiv.s f19, f18, f8, dyn # perform operation
fdiv.s f19, f18, f8, rdn # perform operation
fdiv.s f19, f18, f8, rmm # perform operation
fdiv.s f19, f18, f8, rne # perform operation
fdiv.s f19, f18, f8, rtz # perform operation
fdiv.s f19, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fdiv.s f1, f15, f6, dyn # perform operation
fdiv.s f1, f15, f6, rdn # perform operation
fdiv.s f1, f15, f6, rmm # perform operation
fdiv.s f1, f15, f6, rne # perform operation
fdiv.s f1, f15, f6, rtz # perform operation
fdiv.s f1, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fdiv.s f16, f25, f31, dyn # perform operation
fdiv.s f16, f25, f31, rdn # perform operation
fdiv.s f16, f25, f31, rmm # perform operation
fdiv.s f16, f25, f31, rne # perform operation
fdiv.s f16, f25, f31, rtz # perform operation
fdiv.s f16, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fdiv.s f10, f12, f30, dyn # perform operation
fdiv.s f10, f12, f30, rdn # perform operation
fdiv.s f10, f12, f30, rmm # perform operation
fdiv.s f10, f12, f30, rne # perform operation
fdiv.s f10, f12, f30, rtz # perform operation
fdiv.s f10, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fdiv.s f20, f1, f16, dyn # perform operation
fdiv.s f20, f1, f16, rdn # perform operation
fdiv.s f20, f1, f16, rmm # perform operation
fdiv.s f20, f1, f16, rne # perform operation
fdiv.s f20, f1, f16, rtz # perform operation
fdiv.s f20, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fdiv.s f15, f29, f1, dyn # perform operation
fdiv.s f15, f29, f1, rdn # perform operation
fdiv.s f15, f29, f1, rmm # perform operation
fdiv.s f15, f29, f1, rne # perform operation
fdiv.s f15, f29, f1, rtz # perform operation
fdiv.s f15, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fdiv.s f25, f3, f16, dyn # perform operation
fdiv.s f25, f3, f16, rdn # perform operation
fdiv.s f25, f3, f16, rmm # perform operation
fdiv.s f25, f3, f16, rne # perform operation
fdiv.s f25, f3, f16, rtz # perform operation
fdiv.s f25, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fdiv.s f1, f12, f10, dyn # perform operation
fdiv.s f1, f12, f10, rdn # perform operation
fdiv.s f1, f12, f10, rmm # perform operation
fdiv.s f1, f12, f10, rne # perform operation
fdiv.s f1, f12, f10, rtz # perform operation
fdiv.s f1, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fdiv.s f29, f16, f25, dyn # perform operation
fdiv.s f29, f16, f25, rdn # perform operation
fdiv.s f29, f16, f25, rmm # perform operation
fdiv.s f29, f16, f25, rne # perform operation
fdiv.s f29, f16, f25, rtz # perform operation
fdiv.s f29, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fdiv.s f2, f1, f25, dyn # perform operation
fdiv.s f2, f1, f25, rdn # perform operation
fdiv.s f2, f1, f25, rmm # perform operation
fdiv.s f2, f1, f25, rne # perform operation
fdiv.s f2, f1, f25, rtz # perform operation
fdiv.s f2, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.s f10, f27, f7, dyn # perform operation
fdiv.s f10, f27, f7, rdn # perform operation
fdiv.s f10, f27, f7, rmm # perform operation
fdiv.s f10, f27, f7, rne # perform operation
fdiv.s f10, f27, f7, rtz # perform operation
fdiv.s f10, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fdiv.s f14, f6, f12, dyn # perform operation
fdiv.s f14, f6, f12, rdn # perform operation
fdiv.s f14, f6, f12, rmm # perform operation
fdiv.s f14, f6, f12, rne # perform operation
fdiv.s f14, f6, f12, rtz # perform operation
fdiv.s f14, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fdiv.s f31, f13, f7, dyn # perform operation
fdiv.s f31, f13, f7, rdn # perform operation
fdiv.s f31, f13, f7, rmm # perform operation
fdiv.s f31, f13, f7, rne # perform operation
fdiv.s f31, f13, f7, rtz # perform operation
fdiv.s f31, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fdiv.s f29, f26, f17, dyn # perform operation
fdiv.s f29, f26, f17, rdn # perform operation
fdiv.s f29, f26, f17, rmm # perform operation
fdiv.s f29, f26, f17, rne # perform operation
fdiv.s f29, f26, f17, rtz # perform operation
fdiv.s f29, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fdiv.s f23, f8, f31, dyn # perform operation
fdiv.s f23, f8, f31, rdn # perform operation
fdiv.s f23, f8, f31, rmm # perform operation
fdiv.s f23, f8, f31, rne # perform operation
fdiv.s f23, f8, f31, rtz # perform operation
fdiv.s f23, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fdiv.s f22, f7, f13, dyn # perform operation
fdiv.s f22, f7, f13, rdn # perform operation
fdiv.s f22, f7, f13, rmm # perform operation
fdiv.s f22, f7, f13, rne # perform operation
fdiv.s f22, f7, f13, rtz # perform operation
fdiv.s f22, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fdiv.s f21, f13, f25, dyn # perform operation
fdiv.s f21, f13, f25, rdn # perform operation
fdiv.s f21, f13, f25, rmm # perform operation
fdiv.s f21, f13, f25, rne # perform operation
fdiv.s f21, f13, f25, rtz # perform operation
fdiv.s f21, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fdiv.s f11, f5, f25, dyn # perform operation
fdiv.s f11, f5, f25, rdn # perform operation
fdiv.s f11, f5, f25, rmm # perform operation
fdiv.s f11, f5, f25, rne # perform operation
fdiv.s f11, f5, f25, rtz # perform operation
fdiv.s f11, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fdiv.s f12, f7, f15, dyn # perform operation
fdiv.s f12, f7, f15, rdn # perform operation
fdiv.s f12, f7, f15, rmm # perform operation
fdiv.s f12, f7, f15, rne # perform operation
fdiv.s f12, f7, f15, rtz # perform operation
fdiv.s f12, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fdiv.s f18, f10, f17, dyn # perform operation
fdiv.s f18, f10, f17, rdn # perform operation
fdiv.s f18, f10, f17, rmm # perform operation
fdiv.s f18, f10, f17, rne # perform operation
fdiv.s f18, f10, f17, rtz # perform operation
fdiv.s f18, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fdiv.s f6, f26, f27, dyn # perform operation
fdiv.s f6, f26, f27, rdn # perform operation
fdiv.s f6, f26, f27, rmm # perform operation
fdiv.s f6, f26, f27, rne # perform operation
fdiv.s f6, f26, f27, rtz # perform operation
fdiv.s f6, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fdiv.s f9, f13, f31, dyn # perform operation
fdiv.s f9, f13, f31, rdn # perform operation
fdiv.s f9, f13, f31, rmm # perform operation
fdiv.s f9, f13, f31, rne # perform operation
fdiv.s f9, f13, f31, rtz # perform operation
fdiv.s f9, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fdiv.s f8, f5, f3, dyn # perform operation
fdiv.s f8, f5, f3, rdn # perform operation
fdiv.s f8, f5, f3, rmm # perform operation
fdiv.s f8, f5, f3, rne # perform operation
fdiv.s f8, f5, f3, rtz # perform operation
fdiv.s f8, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fdiv.s f21, f18, f24, dyn # perform operation
fdiv.s f21, f18, f24, rdn # perform operation
fdiv.s f21, f18, f24, rmm # perform operation
fdiv.s f21, f18, f24, rne # perform operation
fdiv.s f21, f18, f24, rtz # perform operation
fdiv.s f21, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f26, f6, f5, dyn # perform operation
fdiv.s f26, f6, f5, rdn # perform operation
fdiv.s f26, f6, f5, rmm # perform operation
fdiv.s f26, f6, f5, rne # perform operation
fdiv.s f26, f6, f5, rtz # perform operation
fdiv.s f26, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fdiv.s f5, f14, f30, dyn # perform operation
fdiv.s f5, f14, f30, rdn # perform operation
fdiv.s f5, f14, f30, rmm # perform operation
fdiv.s f5, f14, f30, rne # perform operation
fdiv.s f5, f14, f30, rtz # perform operation
fdiv.s f5, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fdiv.s f1, f14, f19, dyn # perform operation
fdiv.s f1, f14, f19, rdn # perform operation
fdiv.s f1, f14, f19, rmm # perform operation
fdiv.s f1, f14, f19, rne # perform operation
fdiv.s f1, f14, f19, rtz # perform operation
fdiv.s f1, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fdiv.s f22, f1, f31, dyn # perform operation
fdiv.s f22, f1, f31, rdn # perform operation
fdiv.s f22, f1, f31, rmm # perform operation
fdiv.s f22, f1, f31, rne # perform operation
fdiv.s f22, f1, f31, rtz # perform operation
fdiv.s f22, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f21, f23, f11, dyn # perform operation
fdiv.s f21, f23, f11, rdn # perform operation
fdiv.s f21, f23, f11, rmm # perform operation
fdiv.s f21, f23, f11, rne # perform operation
fdiv.s f21, f23, f11, rtz # perform operation
fdiv.s f21, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fdiv.s f23, f28, f26, dyn # perform operation
fdiv.s f23, f28, f26, rdn # perform operation
fdiv.s f23, f28, f26, rmm # perform operation
fdiv.s f23, f28, f26, rne # perform operation
fdiv.s f23, f28, f26, rtz # perform operation
fdiv.s f23, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fdiv.s f12, f25, f19, dyn # perform operation
fdiv.s f12, f25, f19, rdn # perform operation
fdiv.s f12, f25, f19, rmm # perform operation
fdiv.s f12, f25, f19, rne # perform operation
fdiv.s f12, f25, f19, rtz # perform operation
fdiv.s f12, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fdiv.s f30, f27, f11, dyn # perform operation
fdiv.s f30, f27, f11, rdn # perform operation
fdiv.s f30, f27, f11, rmm # perform operation
fdiv.s f30, f27, f11, rne # perform operation
fdiv.s f30, f27, f11, rtz # perform operation
fdiv.s f30, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fdiv.s f6, f24, f3, dyn # perform operation
fdiv.s f6, f24, f3, rdn # perform operation
fdiv.s f6, f24, f3, rmm # perform operation
fdiv.s f6, f24, f3, rne # perform operation
fdiv.s f6, f24, f3, rtz # perform operation
fdiv.s f6, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fdiv.s f12, f3, f8, dyn # perform operation
fdiv.s f12, f3, f8, rdn # perform operation
fdiv.s f12, f3, f8, rmm # perform operation
fdiv.s f12, f3, f8, rne # perform operation
fdiv.s f12, f3, f8, rtz # perform operation
fdiv.s f12, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fdiv.s f8, f20, f24, dyn # perform operation
fdiv.s f8, f20, f24, rdn # perform operation
fdiv.s f8, f20, f24, rmm # perform operation
fdiv.s f8, f20, f24, rne # perform operation
fdiv.s f8, f20, f24, rtz # perform operation
fdiv.s f8, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fdiv.s f14, f16, f8, dyn # perform operation
fdiv.s f14, f16, f8, rdn # perform operation
fdiv.s f14, f16, f8, rmm # perform operation
fdiv.s f14, f16, f8, rne # perform operation
fdiv.s f14, f16, f8, rtz # perform operation
fdiv.s f14, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fdiv.s f26, f3, f15, dyn # perform operation
fdiv.s f26, f3, f15, rdn # perform operation
fdiv.s f26, f3, f15, rmm # perform operation
fdiv.s f26, f3, f15, rne # perform operation
fdiv.s f26, f3, f15, rtz # perform operation
fdiv.s f26, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fdiv.s f5, f16, f27, dyn # perform operation
fdiv.s f5, f16, f27, rdn # perform operation
fdiv.s f5, f16, f27, rmm # perform operation
fdiv.s f5, f16, f27, rne # perform operation
fdiv.s f5, f16, f27, rtz # perform operation
fdiv.s f5, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.s f25, f5, f15, dyn # perform operation
fdiv.s f25, f5, f15, rdn # perform operation
fdiv.s f25, f5, f15, rmm # perform operation
fdiv.s f25, f5, f15, rne # perform operation
fdiv.s f25, f5, f15, rtz # perform operation
fdiv.s f25, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fdiv.s f22, f14, f17, dyn # perform operation
fdiv.s f22, f14, f17, rdn # perform operation
fdiv.s f22, f14, f17, rmm # perform operation
fdiv.s f22, f14, f17, rne # perform operation
fdiv.s f22, f14, f17, rtz # perform operation
fdiv.s f22, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fdiv.s f19, f27, f18, dyn # perform operation
fdiv.s f19, f27, f18, rdn # perform operation
fdiv.s f19, f27, f18, rmm # perform operation
fdiv.s f19, f27, f18, rne # perform operation
fdiv.s f19, f27, f18, rtz # perform operation
fdiv.s f19, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fdiv.s f2, f16, f25, dyn # perform operation
fdiv.s f2, f16, f25, rdn # perform operation
fdiv.s f2, f16, f25, rmm # perform operation
fdiv.s f2, f16, f25, rne # perform operation
fdiv.s f2, f16, f25, rtz # perform operation
fdiv.s f2, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fdiv.s f31, f8, f2, dyn # perform operation
fdiv.s f31, f8, f2, rdn # perform operation
fdiv.s f31, f8, f2, rmm # perform operation
fdiv.s f31, f8, f2, rne # perform operation
fdiv.s f31, f8, f2, rtz # perform operation
fdiv.s f31, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fdiv.s f17, f21, f2, dyn # perform operation
fdiv.s f17, f21, f2, rdn # perform operation
fdiv.s f17, f21, f2, rmm # perform operation
fdiv.s f17, f21, f2, rne # perform operation
fdiv.s f17, f21, f2, rtz # perform operation
fdiv.s f17, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fdiv.s f15, f2, f23, dyn # perform operation
fdiv.s f15, f2, f23, rdn # perform operation
fdiv.s f15, f2, f23, rmm # perform operation
fdiv.s f15, f2, f23, rne # perform operation
fdiv.s f15, f2, f23, rtz # perform operation
fdiv.s f15, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fdiv.s f31, f15, f13, dyn # perform operation
fdiv.s f31, f15, f13, rdn # perform operation
fdiv.s f31, f15, f13, rmm # perform operation
fdiv.s f31, f15, f13, rne # perform operation
fdiv.s f31, f15, f13, rtz # perform operation
fdiv.s f31, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fdiv.s f9, f13, f11, dyn # perform operation
fdiv.s f9, f13, f11, rdn # perform operation
fdiv.s f9, f13, f11, rmm # perform operation
fdiv.s f9, f13, f11, rne # perform operation
fdiv.s f9, f13, f11, rtz # perform operation
fdiv.s f9, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fdiv.s f27, f22, f31, dyn # perform operation
fdiv.s f27, f22, f31, rdn # perform operation
fdiv.s f27, f22, f31, rmm # perform operation
fdiv.s f27, f22, f31, rne # perform operation
fdiv.s f27, f22, f31, rtz # perform operation
fdiv.s f27, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fdiv.s f20, f26, f24, dyn # perform operation
fdiv.s f20, f26, f24, rdn # perform operation
fdiv.s f20, f26, f24, rmm # perform operation
fdiv.s f20, f26, f24, rne # perform operation
fdiv.s f20, f26, f24, rtz # perform operation
fdiv.s f20, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fdiv.s f30, f28, f12, dyn # perform operation
fdiv.s f30, f28, f12, rdn # perform operation
fdiv.s f30, f28, f12, rmm # perform operation
fdiv.s f30, f28, f12, rne # perform operation
fdiv.s f30, f28, f12, rtz # perform operation
fdiv.s f30, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fdiv.s f24, f16, f27, dyn # perform operation
fdiv.s f24, f16, f27, rdn # perform operation
fdiv.s f24, f16, f27, rmm # perform operation
fdiv.s f24, f16, f27, rne # perform operation
fdiv.s f24, f16, f27, rtz # perform operation
fdiv.s f24, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fdiv.s f23, f18, f28, dyn # perform operation
fdiv.s f23, f18, f28, rdn # perform operation
fdiv.s f23, f18, f28, rmm # perform operation
fdiv.s f23, f18, f28, rne # perform operation
fdiv.s f23, f18, f28, rtz # perform operation
fdiv.s f23, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fdiv.s f2, f23, f20, dyn # perform operation
fdiv.s f2, f23, f20, rdn # perform operation
fdiv.s f2, f23, f20, rmm # perform operation
fdiv.s f2, f23, f20, rne # perform operation
fdiv.s f2, f23, f20, rtz # perform operation
fdiv.s f2, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fdiv.s f23, f3, f5, dyn # perform operation
fdiv.s f23, f3, f5, rdn # perform operation
fdiv.s f23, f3, f5, rmm # perform operation
fdiv.s f23, f3, f5, rne # perform operation
fdiv.s f23, f3, f5, rtz # perform operation
fdiv.s f23, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fdiv.s f30, f5, f1, dyn # perform operation
fdiv.s f30, f5, f1, rdn # perform operation
fdiv.s f30, f5, f1, rmm # perform operation
fdiv.s f30, f5, f1, rne # perform operation
fdiv.s f30, f5, f1, rtz # perform operation
fdiv.s f30, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fdiv.s f29, f9, f16, dyn # perform operation
fdiv.s f29, f9, f16, rdn # perform operation
fdiv.s f29, f9, f16, rmm # perform operation
fdiv.s f29, f9, f16, rne # perform operation
fdiv.s f29, f9, f16, rtz # perform operation
fdiv.s f29, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fdiv.s f25, f29, f7, dyn # perform operation
fdiv.s f25, f29, f7, rdn # perform operation
fdiv.s f25, f29, f7, rmm # perform operation
fdiv.s f25, f29, f7, rne # perform operation
fdiv.s f25, f29, f7, rtz # perform operation
fdiv.s f25, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fdiv.s f2, f10, f31, dyn # perform operation
fdiv.s f2, f10, f31, rdn # perform operation
fdiv.s f2, f10, f31, rmm # perform operation
fdiv.s f2, f10, f31, rne # perform operation
fdiv.s f2, f10, f31, rtz # perform operation
fdiv.s f2, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fdiv.s f22, f9, f30, dyn # perform operation
fdiv.s f22, f9, f30, rdn # perform operation
fdiv.s f22, f9, f30, rmm # perform operation
fdiv.s f22, f9, f30, rne # perform operation
fdiv.s f22, f9, f30, rtz # perform operation
fdiv.s f22, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fdiv.s f25, f1, f24, dyn # perform operation
fdiv.s f25, f1, f24, rdn # perform operation
fdiv.s f25, f1, f24, rmm # perform operation
fdiv.s f25, f1, f24, rne # perform operation
fdiv.s f25, f1, f24, rtz # perform operation
fdiv.s f25, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fdiv.s f24, f2, f28, dyn # perform operation
fdiv.s f24, f2, f28, rdn # perform operation
fdiv.s f24, f2, f28, rmm # perform operation
fdiv.s f24, f2, f28, rne # perform operation
fdiv.s f24, f2, f28, rtz # perform operation
fdiv.s f24, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fdiv.s f9, f23, f21, dyn # perform operation
fdiv.s f9, f23, f21, rdn # perform operation
fdiv.s f9, f23, f21, rmm # perform operation
fdiv.s f9, f23, f21, rne # perform operation
fdiv.s f9, f23, f21, rtz # perform operation
fdiv.s f9, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fdiv.s f13, f10, f3, dyn # perform operation
fdiv.s f13, f10, f3, rdn # perform operation
fdiv.s f13, f10, f3, rmm # perform operation
fdiv.s f13, f10, f3, rne # perform operation
fdiv.s f13, f10, f3, rtz # perform operation
fdiv.s f13, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fdiv.s f31, f3, f25, dyn # perform operation
fdiv.s f31, f3, f25, rdn # perform operation
fdiv.s f31, f3, f25, rmm # perform operation
fdiv.s f31, f3, f25, rne # perform operation
fdiv.s f31, f3, f25, rtz # perform operation
fdiv.s f31, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f3, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fdiv.s f7, f21, f11, dyn # perform operation
fdiv.s f7, f21, f11, rdn # perform operation
fdiv.s f7, f21, f11, rmm # perform operation
fdiv.s f7, f21, f11, rne # perform operation
fdiv.s f7, f21, f11, rtz # perform operation
fdiv.s f7, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fdiv.s f2, f22, f18, dyn # perform operation
fdiv.s f2, f22, f18, rdn # perform operation
fdiv.s f2, f22, f18, rmm # perform operation
fdiv.s f2, f22, f18, rne # perform operation
fdiv.s f2, f22, f18, rtz # perform operation
fdiv.s f2, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fdiv.s f8, f29, f10, dyn # perform operation
fdiv.s f8, f29, f10, rdn # perform operation
fdiv.s f8, f29, f10, rmm # perform operation
fdiv.s f8, f29, f10, rne # perform operation
fdiv.s f8, f29, f10, rtz # perform operation
fdiv.s f8, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fdiv.s f28, f5, f17, dyn # perform operation
fdiv.s f28, f5, f17, rdn # perform operation
fdiv.s f28, f5, f17, rmm # perform operation
fdiv.s f28, f5, f17, rne # perform operation
fdiv.s f28, f5, f17, rtz # perform operation
fdiv.s f28, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fdiv.s f24, f19, f29, dyn # perform operation
fdiv.s f24, f19, f29, rdn # perform operation
fdiv.s f24, f19, f29, rmm # perform operation
fdiv.s f24, f19, f29, rne # perform operation
fdiv.s f24, f19, f29, rtz # perform operation
fdiv.s f24, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fdiv.s f6, f25, f1, dyn # perform operation
fdiv.s f6, f25, f1, rdn # perform operation
fdiv.s f6, f25, f1, rmm # perform operation
fdiv.s f6, f25, f1, rne # perform operation
fdiv.s f6, f25, f1, rtz # perform operation
fdiv.s f6, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fdiv.s f6, f17, f2, dyn # perform operation
fdiv.s f6, f17, f2, rdn # perform operation
fdiv.s f6, f17, f2, rmm # perform operation
fdiv.s f6, f17, f2, rne # perform operation
fdiv.s f6, f17, f2, rtz # perform operation
fdiv.s f6, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fdiv.s f8, f21, f1, dyn # perform operation
fdiv.s f8, f21, f1, rdn # perform operation
fdiv.s f8, f21, f1, rmm # perform operation
fdiv.s f8, f21, f1, rne # perform operation
fdiv.s f8, f21, f1, rtz # perform operation
fdiv.s f8, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fdiv.s f9, f6, f19, dyn # perform operation
fdiv.s f9, f6, f19, rdn # perform operation
fdiv.s f9, f6, f19, rmm # perform operation
fdiv.s f9, f6, f19, rne # perform operation
fdiv.s f9, f6, f19, rtz # perform operation
fdiv.s f9, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fdiv.s f2, f3, f21, dyn # perform operation
fdiv.s f2, f3, f21, rdn # perform operation
fdiv.s f2, f3, f21, rmm # perform operation
fdiv.s f2, f3, f21, rne # perform operation
fdiv.s f2, f3, f21, rtz # perform operation
fdiv.s f2, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fdiv.s f16, f13, f10, dyn # perform operation
fdiv.s f16, f13, f10, rdn # perform operation
fdiv.s f16, f13, f10, rmm # perform operation
fdiv.s f16, f13, f10, rne # perform operation
fdiv.s f16, f13, f10, rtz # perform operation
fdiv.s f16, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fdiv.s f26, f21, f18, dyn # perform operation
fdiv.s f26, f21, f18, rdn # perform operation
fdiv.s f26, f21, f18, rmm # perform operation
fdiv.s f26, f21, f18, rne # perform operation
fdiv.s f26, f21, f18, rtz # perform operation
fdiv.s f26, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fdiv.s f24, f26, f9, dyn # perform operation
fdiv.s f24, f26, f9, rdn # perform operation
fdiv.s f24, f26, f9, rmm # perform operation
fdiv.s f24, f26, f9, rne # perform operation
fdiv.s f24, f26, f9, rtz # perform operation
fdiv.s f24, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fdiv.s f31, f16, f21, dyn # perform operation
fdiv.s f31, f16, f21, rdn # perform operation
fdiv.s f31, f16, f21, rmm # perform operation
fdiv.s f31, f16, f21, rne # perform operation
fdiv.s f31, f16, f21, rtz # perform operation
fdiv.s f31, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fdiv.s f10, f17, f9, dyn # perform operation
fdiv.s f10, f17, f9, rdn # perform operation
fdiv.s f10, f17, f9, rmm # perform operation
fdiv.s f10, f17, f9, rne # perform operation
fdiv.s f10, f17, f9, rtz # perform operation
fdiv.s f10, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fdiv.s f1, f14, f17, dyn # perform operation
fdiv.s f1, f14, f17, rdn # perform operation
fdiv.s f1, f14, f17, rmm # perform operation
fdiv.s f1, f14, f17, rne # perform operation
fdiv.s f1, f14, f17, rtz # perform operation
fdiv.s f1, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fdiv.s f5, f18, f12, dyn # perform operation
fdiv.s f5, f18, f12, rdn # perform operation
fdiv.s f5, f18, f12, rmm # perform operation
fdiv.s f5, f18, f12, rne # perform operation
fdiv.s f5, f18, f12, rtz # perform operation
fdiv.s f5, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fdiv.s f2, f6, f27, dyn # perform operation
fdiv.s f2, f6, f27, rdn # perform operation
fdiv.s f2, f6, f27, rmm # perform operation
fdiv.s f2, f6, f27, rne # perform operation
fdiv.s f2, f6, f27, rtz # perform operation
fdiv.s f2, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.s f5, f15, f6, dyn # perform operation
fdiv.s f5, f15, f6, rdn # perform operation
fdiv.s f5, f15, f6, rmm # perform operation
fdiv.s f5, f15, f6, rne # perform operation
fdiv.s f5, f15, f6, rtz # perform operation
fdiv.s f5, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fdiv.s f28, f17, f7, dyn # perform operation
fdiv.s f28, f17, f7, rdn # perform operation
fdiv.s f28, f17, f7, rmm # perform operation
fdiv.s f28, f17, f7, rne # perform operation
fdiv.s f28, f17, f7, rtz # perform operation
fdiv.s f28, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fdiv.s f27, f3, f16, dyn # perform operation
fdiv.s f27, f3, f16, rdn # perform operation
fdiv.s f27, f3, f16, rmm # perform operation
fdiv.s f27, f3, f16, rne # perform operation
fdiv.s f27, f3, f16, rtz # perform operation
fdiv.s f27, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f20, f2, f1, dyn # perform operation
fdiv.s f20, f2, f1, rdn # perform operation
fdiv.s f20, f2, f1, rmm # perform operation
fdiv.s f20, f2, f1, rne # perform operation
fdiv.s f20, f2, f1, rtz # perform operation
fdiv.s f20, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fdiv.s f2, f26, f29, dyn # perform operation
fdiv.s f2, f26, f29, rdn # perform operation
fdiv.s f2, f26, f29, rmm # perform operation
fdiv.s f2, f26, f29, rne # perform operation
fdiv.s f2, f26, f29, rtz # perform operation
fdiv.s f2, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fdiv.s f6, f13, f28, dyn # perform operation
fdiv.s f6, f13, f28, rdn # perform operation
fdiv.s f6, f13, f28, rmm # perform operation
fdiv.s f6, f13, f28, rne # perform operation
fdiv.s f6, f13, f28, rtz # perform operation
fdiv.s f6, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
fdiv.s f2, f29, f26, dyn # perform operation
fdiv.s f2, f29, f26, rdn # perform operation
fdiv.s f2, f29, f26, rmm # perform operation
fdiv.s f2, f29, f26, rne # perform operation
fdiv.s f2, f29, f26, rtz # perform operation
fdiv.s f2, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fdiv.s f31, f21, f14, dyn # perform operation
fdiv.s f31, f21, f14, rdn # perform operation
fdiv.s f31, f21, f14, rmm # perform operation
fdiv.s f31, f21, f14, rne # perform operation
fdiv.s f31, f21, f14, rtz # perform operation
fdiv.s f31, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fdiv.s f23, f19, f20, dyn # perform operation
fdiv.s f23, f19, f20, rdn # perform operation
fdiv.s f23, f19, f20, rmm # perform operation
fdiv.s f23, f19, f20, rne # perform operation
fdiv.s f23, f19, f20, rtz # perform operation
fdiv.s f23, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fdiv.s f26, f7, f18, dyn # perform operation
fdiv.s f26, f7, f18, rdn # perform operation
fdiv.s f26, f7, f18, rmm # perform operation
fdiv.s f26, f7, f18, rne # perform operation
fdiv.s f26, f7, f18, rtz # perform operation
fdiv.s f26, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fdiv.s f23, f26, f13, dyn # perform operation
fdiv.s f23, f26, f13, rdn # perform operation
fdiv.s f23, f26, f13, rmm # perform operation
fdiv.s f23, f26, f13, rne # perform operation
fdiv.s f23, f26, f13, rtz # perform operation
fdiv.s f23, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fdiv.s f17, f14, f10, dyn # perform operation
fdiv.s f17, f14, f10, rdn # perform operation
fdiv.s f17, f14, f10, rmm # perform operation
fdiv.s f17, f14, f10, rne # perform operation
fdiv.s f17, f14, f10, rtz # perform operation
fdiv.s f17, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f14, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.s f8, f18, f19, dyn # perform operation
fdiv.s f8, f18, f19, rdn # perform operation
fdiv.s f8, f18, f19, rmm # perform operation
fdiv.s f8, f18, f19, rne # perform operation
fdiv.s f8, f18, f19, rtz # perform operation
fdiv.s f8, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f18, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fdiv.s f11, f21, f26, dyn # perform operation
fdiv.s f11, f21, f26, rdn # perform operation
fdiv.s f11, f21, f26, rmm # perform operation
fdiv.s f11, f21, f26, rne # perform operation
fdiv.s f11, f21, f26, rtz # perform operation
fdiv.s f11, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fdiv.s f3, f10, f14, dyn # perform operation
fdiv.s f3, f10, f14, rdn # perform operation
fdiv.s f3, f10, f14, rmm # perform operation
fdiv.s f3, f10, f14, rne # perform operation
fdiv.s f3, f10, f14, rtz # perform operation
fdiv.s f3, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fdiv.s f17, f25, f22, dyn # perform operation
fdiv.s f17, f25, f22, rdn # perform operation
fdiv.s f17, f25, f22, rmm # perform operation
fdiv.s f17, f25, f22, rne # perform operation
fdiv.s f17, f25, f22, rtz # perform operation
fdiv.s f17, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fdiv.s f19, f14, f8, dyn # perform operation
fdiv.s f19, f14, f8, rdn # perform operation
fdiv.s f19, f14, f8, rmm # perform operation
fdiv.s f19, f14, f8, rne # perform operation
fdiv.s f19, f14, f8, rtz # perform operation
fdiv.s f19, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fdiv.s f6, f26, f10, dyn # perform operation
fdiv.s f6, f26, f10, rdn # perform operation
fdiv.s f6, f26, f10, rmm # perform operation
fdiv.s f6, f26, f10, rne # perform operation
fdiv.s f6, f26, f10, rtz # perform operation
fdiv.s f6, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fdiv.s f30, f2, f17, dyn # perform operation
fdiv.s f30, f2, f17, rdn # perform operation
fdiv.s f30, f2, f17, rmm # perform operation
fdiv.s f30, f2, f17, rne # perform operation
fdiv.s f30, f2, f17, rtz # perform operation
fdiv.s f30, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fdiv.s f17, f9, f5, dyn # perform operation
fdiv.s f17, f9, f5, rdn # perform operation
fdiv.s f17, f9, f5, rmm # perform operation
fdiv.s f17, f9, f5, rne # perform operation
fdiv.s f17, f9, f5, rtz # perform operation
fdiv.s f17, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fdiv.s f14, f5, f18, dyn # perform operation
fdiv.s f14, f5, f18, rdn # perform operation
fdiv.s f14, f5, f18, rmm # perform operation
fdiv.s f14, f5, f18, rne # perform operation
fdiv.s f14, f5, f18, rtz # perform operation
fdiv.s f14, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fdiv.s f5, f2, f8, dyn # perform operation
fdiv.s f5, f2, f8, rdn # perform operation
fdiv.s f5, f2, f8, rmm # perform operation
fdiv.s f5, f2, f8, rne # perform operation
fdiv.s f5, f2, f8, rtz # perform operation
fdiv.s f5, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f2, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fdiv.s f1, f23, f6, dyn # perform operation
fdiv.s f1, f23, f6, rdn # perform operation
fdiv.s f1, f23, f6, rmm # perform operation
fdiv.s f1, f23, f6, rne # perform operation
fdiv.s f1, f23, f6, rtz # perform operation
fdiv.s f1, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fdiv.s f18, f20, f1, dyn # perform operation
fdiv.s f18, f20, f1, rdn # perform operation
fdiv.s f18, f20, f1, rmm # perform operation
fdiv.s f18, f20, f1, rne # perform operation
fdiv.s f18, f20, f1, rtz # perform operation
fdiv.s f18, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fdiv.s f16, f7, f25, dyn # perform operation
fdiv.s f16, f7, f25, rdn # perform operation
fdiv.s f16, f7, f25, rmm # perform operation
fdiv.s f16, f7, f25, rne # perform operation
fdiv.s f16, f7, f25, rtz # perform operation
fdiv.s f16, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fdiv.s f22, f24, f31, dyn # perform operation
fdiv.s f22, f24, f31, rdn # perform operation
fdiv.s f22, f24, f31, rmm # perform operation
fdiv.s f22, f24, f31, rne # perform operation
fdiv.s f22, f24, f31, rtz # perform operation
fdiv.s f22, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fdiv.s f12, f1, f29, dyn # perform operation
fdiv.s f12, f1, f29, rdn # perform operation
fdiv.s f12, f1, f29, rmm # perform operation
fdiv.s f12, f1, f29, rne # perform operation
fdiv.s f12, f1, f29, rtz # perform operation
fdiv.s f12, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fdiv.s f29, f24, f13, dyn # perform operation
fdiv.s f29, f24, f13, rdn # perform operation
fdiv.s f29, f24, f13, rmm # perform operation
fdiv.s f29, f24, f13, rne # perform operation
fdiv.s f29, f24, f13, rtz # perform operation
fdiv.s f29, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fdiv.s f3, f9, f1, dyn # perform operation
fdiv.s f3, f9, f1, rdn # perform operation
fdiv.s f3, f9, f1, rmm # perform operation
fdiv.s f3, f9, f1, rne # perform operation
fdiv.s f3, f9, f1, rtz # perform operation
fdiv.s f3, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fdiv.s f11, f31, f2, dyn # perform operation
fdiv.s f11, f31, f2, rdn # perform operation
fdiv.s f11, f31, f2, rmm # perform operation
fdiv.s f11, f31, f2, rne # perform operation
fdiv.s f11, f31, f2, rtz # perform operation
fdiv.s f11, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fdiv.s f14, f31, f9, dyn # perform operation
fdiv.s f14, f31, f9, rdn # perform operation
fdiv.s f14, f31, f9, rmm # perform operation
fdiv.s f14, f31, f9, rne # perform operation
fdiv.s f14, f31, f9, rtz # perform operation
fdiv.s f14, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fdiv.s f17, f18, f29, dyn # perform operation
fdiv.s f17, f18, f29, rdn # perform operation
fdiv.s f17, f18, f29, rmm # perform operation
fdiv.s f17, f18, f29, rne # perform operation
fdiv.s f17, f18, f29, rtz # perform operation
fdiv.s f17, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fdiv.s f31, f14, f22, dyn # perform operation
fdiv.s f31, f14, f22, rdn # perform operation
fdiv.s f31, f14, f22, rmm # perform operation
fdiv.s f31, f14, f22, rne # perform operation
fdiv.s f31, f14, f22, rtz # perform operation
fdiv.s f31, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f8, f18, f15, dyn # perform operation
fdiv.s f8, f18, f15, rdn # perform operation
fdiv.s f8, f18, f15, rmm # perform operation
fdiv.s f8, f18, f15, rne # perform operation
fdiv.s f8, f18, f15, rtz # perform operation
fdiv.s f8, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fdiv.s f17, f27, f7, dyn # perform operation
fdiv.s f17, f27, f7, rdn # perform operation
fdiv.s f17, f27, f7, rmm # perform operation
fdiv.s f17, f27, f7, rne # perform operation
fdiv.s f17, f27, f7, rtz # perform operation
fdiv.s f17, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fdiv.s f19, f11, f13, dyn # perform operation
fdiv.s f19, f11, f13, rdn # perform operation
fdiv.s f19, f11, f13, rmm # perform operation
fdiv.s f19, f11, f13, rne # perform operation
fdiv.s f19, f11, f13, rtz # perform operation
fdiv.s f19, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fdiv.s f5, f13, f24, dyn # perform operation
fdiv.s f5, f13, f24, rdn # perform operation
fdiv.s f5, f13, f24, rmm # perform operation
fdiv.s f5, f13, f24, rne # perform operation
fdiv.s f5, f13, f24, rtz # perform operation
fdiv.s f5, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fdiv.s f23, f19, f1, dyn # perform operation
fdiv.s f23, f19, f1, rdn # perform operation
fdiv.s f23, f19, f1, rmm # perform operation
fdiv.s f23, f19, f1, rne # perform operation
fdiv.s f23, f19, f1, rtz # perform operation
fdiv.s f23, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fdiv.s f20, f10, f14, dyn # perform operation
fdiv.s f20, f10, f14, rdn # perform operation
fdiv.s f20, f10, f14, rmm # perform operation
fdiv.s f20, f10, f14, rne # perform operation
fdiv.s f20, f10, f14, rtz # perform operation
fdiv.s f20, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fdiv.s f26, f16, f12, dyn # perform operation
fdiv.s f26, f16, f12, rdn # perform operation
fdiv.s f26, f16, f12, rmm # perform operation
fdiv.s f26, f16, f12, rne # perform operation
fdiv.s f26, f16, f12, rtz # perform operation
fdiv.s f26, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f19, f2, f29, dyn # perform operation
fdiv.s f19, f2, f29, rdn # perform operation
fdiv.s f19, f2, f29, rmm # perform operation
fdiv.s f19, f2, f29, rne # perform operation
fdiv.s f19, f2, f29, rtz # perform operation
fdiv.s f19, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fdiv.s f29, f9, f27, dyn # perform operation
fdiv.s f29, f9, f27, rdn # perform operation
fdiv.s f29, f9, f27, rmm # perform operation
fdiv.s f29, f9, f27, rne # perform operation
fdiv.s f29, f9, f27, rtz # perform operation
fdiv.s f29, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fdiv.s f21, f26, f16, dyn # perform operation
fdiv.s f21, f26, f16, rdn # perform operation
fdiv.s f21, f26, f16, rmm # perform operation
fdiv.s f21, f26, f16, rne # perform operation
fdiv.s f21, f26, f16, rtz # perform operation
fdiv.s f21, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fdiv.s f10, f3, f5, dyn # perform operation
fdiv.s f10, f3, f5, rdn # perform operation
fdiv.s f10, f3, f5, rmm # perform operation
fdiv.s f10, f3, f5, rne # perform operation
fdiv.s f10, f3, f5, rtz # perform operation
fdiv.s f10, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fdiv.s f26, f13, f16, dyn # perform operation
fdiv.s f26, f13, f16, rdn # perform operation
fdiv.s f26, f13, f16, rmm # perform operation
fdiv.s f26, f13, f16, rne # perform operation
fdiv.s f26, f13, f16, rtz # perform operation
fdiv.s f26, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fdiv.s f23, f30, f10, dyn # perform operation
fdiv.s f23, f30, f10, rdn # perform operation
fdiv.s f23, f30, f10, rmm # perform operation
fdiv.s f23, f30, f10, rne # perform operation
fdiv.s f23, f30, f10, rtz # perform operation
fdiv.s f23, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fdiv.s f13, f1, f21, dyn # perform operation
fdiv.s f13, f1, f21, rdn # perform operation
fdiv.s f13, f1, f21, rmm # perform operation
fdiv.s f13, f1, f21, rne # perform operation
fdiv.s f13, f1, f21, rtz # perform operation
fdiv.s f13, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fdiv.s f8, f11, f18, dyn # perform operation
fdiv.s f8, f11, f18, rdn # perform operation
fdiv.s f8, f11, f18, rmm # perform operation
fdiv.s f8, f11, f18, rne # perform operation
fdiv.s f8, f11, f18, rtz # perform operation
fdiv.s f8, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fdiv.s f10, f20, f17, dyn # perform operation
fdiv.s f10, f20, f17, rdn # perform operation
fdiv.s f10, f20, f17, rmm # perform operation
fdiv.s f10, f20, f17, rne # perform operation
fdiv.s f10, f20, f17, rtz # perform operation
fdiv.s f10, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fdiv.s f21, f24, f8, dyn # perform operation
fdiv.s f21, f24, f8, rdn # perform operation
fdiv.s f21, f24, f8, rmm # perform operation
fdiv.s f21, f24, f8, rne # perform operation
fdiv.s f21, f24, f8, rtz # perform operation
fdiv.s f21, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fdiv.s f1, f22, f23, dyn # perform operation
fdiv.s f1, f22, f23, rdn # perform operation
fdiv.s f1, f22, f23, rmm # perform operation
fdiv.s f1, f22, f23, rne # perform operation
fdiv.s f1, f22, f23, rtz # perform operation
fdiv.s f1, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fdiv.s f25, f15, f1, dyn # perform operation
fdiv.s f25, f15, f1, rdn # perform operation
fdiv.s f25, f15, f1, rmm # perform operation
fdiv.s f25, f15, f1, rne # perform operation
fdiv.s f25, f15, f1, rtz # perform operation
fdiv.s f25, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fdiv.s f23, f19, f12, dyn # perform operation
fdiv.s f23, f19, f12, rdn # perform operation
fdiv.s f23, f19, f12, rmm # perform operation
fdiv.s f23, f19, f12, rne # perform operation
fdiv.s f23, f19, f12, rtz # perform operation
fdiv.s f23, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f22, f28, f30, dyn # perform operation
fdiv.s f22, f28, f30, rdn # perform operation
fdiv.s f22, f28, f30, rmm # perform operation
fdiv.s f22, f28, f30, rne # perform operation
fdiv.s f22, f28, f30, rtz # perform operation
fdiv.s f22, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f16, f28, f23, dyn # perform operation
fdiv.s f16, f28, f23, rdn # perform operation
fdiv.s f16, f28, f23, rmm # perform operation
fdiv.s f16, f28, f23, rne # perform operation
fdiv.s f16, f28, f23, rtz # perform operation
fdiv.s f16, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fdiv.s f15, f18, f3, dyn # perform operation
fdiv.s f15, f18, f3, rdn # perform operation
fdiv.s f15, f18, f3, rmm # perform operation
fdiv.s f15, f18, f3, rne # perform operation
fdiv.s f15, f18, f3, rtz # perform operation
fdiv.s f15, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f27, f1, f15, dyn # perform operation
fdiv.s f27, f1, f15, rdn # perform operation
fdiv.s f27, f1, f15, rmm # perform operation
fdiv.s f27, f1, f15, rne # perform operation
fdiv.s f27, f1, f15, rtz # perform operation
fdiv.s f27, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fdiv.s f26, f24, f23, dyn # perform operation
fdiv.s f26, f24, f23, rdn # perform operation
fdiv.s f26, f24, f23, rmm # perform operation
fdiv.s f26, f24, f23, rne # perform operation
fdiv.s f26, f24, f23, rtz # perform operation
fdiv.s f26, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fdiv.s f23, f10, f30, dyn # perform operation
fdiv.s f23, f10, f30, rdn # perform operation
fdiv.s f23, f10, f30, rmm # perform operation
fdiv.s f23, f10, f30, rne # perform operation
fdiv.s f23, f10, f30, rtz # perform operation
fdiv.s f23, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fdiv.s f10, f7, f8, dyn # perform operation
fdiv.s f10, f7, f8, rdn # perform operation
fdiv.s f10, f7, f8, rmm # perform operation
fdiv.s f10, f7, f8, rne # perform operation
fdiv.s f10, f7, f8, rtz # perform operation
fdiv.s f10, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fdiv.s f27, f19, f16, dyn # perform operation
fdiv.s f27, f19, f16, rdn # perform operation
fdiv.s f27, f19, f16, rmm # perform operation
fdiv.s f27, f19, f16, rne # perform operation
fdiv.s f27, f19, f16, rtz # perform operation
fdiv.s f27, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fdiv.s f26, f7, f25, dyn # perform operation
fdiv.s f26, f7, f25, rdn # perform operation
fdiv.s f26, f7, f25, rmm # perform operation
fdiv.s f26, f7, f25, rne # perform operation
fdiv.s f26, f7, f25, rtz # perform operation
fdiv.s f26, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fdiv.s f3, f22, f31, dyn # perform operation
fdiv.s f3, f22, f31, rdn # perform operation
fdiv.s f3, f22, f31, rmm # perform operation
fdiv.s f3, f22, f31, rne # perform operation
fdiv.s f3, f22, f31, rtz # perform operation
fdiv.s f3, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f25, f2, f27, dyn # perform operation
fdiv.s f25, f2, f27, rdn # perform operation
fdiv.s f25, f2, f27, rmm # perform operation
fdiv.s f25, f2, f27, rne # perform operation
fdiv.s f25, f2, f27, rtz # perform operation
fdiv.s f25, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f30, f27, f11, dyn # perform operation
fdiv.s f30, f27, f11, rdn # perform operation
fdiv.s f30, f27, f11, rmm # perform operation
fdiv.s f30, f27, f11, rne # perform operation
fdiv.s f30, f27, f11, rtz # perform operation
fdiv.s f30, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fdiv.s f10, f11, f29, dyn # perform operation
fdiv.s f10, f11, f29, rdn # perform operation
fdiv.s f10, f11, f29, rmm # perform operation
fdiv.s f10, f11, f29, rne # perform operation
fdiv.s f10, f11, f29, rtz # perform operation
fdiv.s f10, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fdiv.s f11, f3, f31, dyn # perform operation
fdiv.s f11, f3, f31, rdn # perform operation
fdiv.s f11, f3, f31, rmm # perform operation
fdiv.s f11, f3, f31, rne # perform operation
fdiv.s f11, f3, f31, rtz # perform operation
fdiv.s f11, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fdiv.s f27, f9, f5, dyn # perform operation
fdiv.s f27, f9, f5, rdn # perform operation
fdiv.s f27, f9, f5, rmm # perform operation
fdiv.s f27, f9, f5, rne # perform operation
fdiv.s f27, f9, f5, rtz # perform operation
fdiv.s f27, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.s f31, f11, f28, dyn # perform operation
fdiv.s f31, f11, f28, rdn # perform operation
fdiv.s f31, f11, f28, rmm # perform operation
fdiv.s f31, f11, f28, rne # perform operation
fdiv.s f31, f11, f28, rtz # perform operation
fdiv.s f31, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fdiv.s f26, f11, f28, dyn # perform operation
fdiv.s f26, f11, f28, rdn # perform operation
fdiv.s f26, f11, f28, rmm # perform operation
fdiv.s f26, f11, f28, rne # perform operation
fdiv.s f26, f11, f28, rtz # perform operation
fdiv.s f26, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fdiv.s f20, f17, f14, dyn # perform operation
fdiv.s f20, f17, f14, rdn # perform operation
fdiv.s f20, f17, f14, rmm # perform operation
fdiv.s f20, f17, f14, rne # perform operation
fdiv.s f20, f17, f14, rtz # perform operation
fdiv.s f20, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fdiv.s f22, f13, f29, dyn # perform operation
fdiv.s f22, f13, f29, rdn # perform operation
fdiv.s f22, f13, f29, rmm # perform operation
fdiv.s f22, f13, f29, rne # perform operation
fdiv.s f22, f13, f29, rtz # perform operation
fdiv.s f22, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fdiv.s f7, f2, f13, dyn # perform operation
fdiv.s f7, f2, f13, rdn # perform operation
fdiv.s f7, f2, f13, rmm # perform operation
fdiv.s f7, f2, f13, rne # perform operation
fdiv.s f7, f2, f13, rtz # perform operation
fdiv.s f7, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fdiv.s f5, f13, f11, dyn # perform operation
fdiv.s f5, f13, f11, rdn # perform operation
fdiv.s f5, f13, f11, rmm # perform operation
fdiv.s f5, f13, f11, rne # perform operation
fdiv.s f5, f13, f11, rtz # perform operation
fdiv.s f5, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fdiv.s f11, f28, f27, dyn # perform operation
fdiv.s f11, f28, f27, rdn # perform operation
fdiv.s f11, f28, f27, rmm # perform operation
fdiv.s f11, f28, f27, rne # perform operation
fdiv.s f11, f28, f27, rtz # perform operation
fdiv.s f11, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fdiv.s f21, f6, f28, dyn # perform operation
fdiv.s f21, f6, f28, rdn # perform operation
fdiv.s f21, f6, f28, rmm # perform operation
fdiv.s f21, f6, f28, rne # perform operation
fdiv.s f21, f6, f28, rtz # perform operation
fdiv.s f21, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fdiv.s f23, f12, f22, dyn # perform operation
fdiv.s f23, f12, f22, rdn # perform operation
fdiv.s f23, f12, f22, rmm # perform operation
fdiv.s f23, f12, f22, rne # perform operation
fdiv.s f23, f12, f22, rtz # perform operation
fdiv.s f23, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fdiv.s f18, f12, f27, dyn # perform operation
fdiv.s f18, f12, f27, rdn # perform operation
fdiv.s f18, f12, f27, rmm # perform operation
fdiv.s f18, f12, f27, rne # perform operation
fdiv.s f18, f12, f27, rtz # perform operation
fdiv.s f18, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fdiv.s f10, f30, f1, dyn # perform operation
fdiv.s f10, f30, f1, rdn # perform operation
fdiv.s f10, f30, f1, rmm # perform operation
fdiv.s f10, f30, f1, rne # perform operation
fdiv.s f10, f30, f1, rtz # perform operation
fdiv.s f10, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fdiv.s f30, f12, f16, dyn # perform operation
fdiv.s f30, f12, f16, rdn # perform operation
fdiv.s f30, f12, f16, rmm # perform operation
fdiv.s f30, f12, f16, rne # perform operation
fdiv.s f30, f12, f16, rtz # perform operation
fdiv.s f30, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fdiv.s f3, f24, f10, dyn # perform operation
fdiv.s f3, f24, f10, rdn # perform operation
fdiv.s f3, f24, f10, rmm # perform operation
fdiv.s f3, f24, f10, rne # perform operation
fdiv.s f3, f24, f10, rtz # perform operation
fdiv.s f3, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fdiv.s f17, f3, f14, dyn # perform operation
fdiv.s f17, f3, f14, rdn # perform operation
fdiv.s f17, f3, f14, rmm # perform operation
fdiv.s f17, f3, f14, rne # perform operation
fdiv.s f17, f3, f14, rtz # perform operation
fdiv.s f17, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fdiv.s f1, f17, f18, dyn # perform operation
fdiv.s f1, f17, f18, rdn # perform operation
fdiv.s f1, f17, f18, rmm # perform operation
fdiv.s f1, f17, f18, rne # perform operation
fdiv.s f1, f17, f18, rtz # perform operation
fdiv.s f1, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fdiv.s f7, f8, f18, dyn # perform operation
fdiv.s f7, f8, f18, rdn # perform operation
fdiv.s f7, f8, f18, rmm # perform operation
fdiv.s f7, f8, f18, rne # perform operation
fdiv.s f7, f8, f18, rtz # perform operation
fdiv.s f7, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f1, f22, f15, dyn # perform operation
fdiv.s f1, f22, f15, rdn # perform operation
fdiv.s f1, f22, f15, rmm # perform operation
fdiv.s f1, f22, f15, rne # perform operation
fdiv.s f1, f22, f15, rtz # perform operation
fdiv.s f1, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fdiv.s f14, f27, f17, dyn # perform operation
fdiv.s f14, f27, f17, rdn # perform operation
fdiv.s f14, f27, f17, rmm # perform operation
fdiv.s f14, f27, f17, rne # perform operation
fdiv.s f14, f27, f17, rtz # perform operation
fdiv.s f14, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fdiv.s f6, f11, f27, dyn # perform operation
fdiv.s f6, f11, f27, rdn # perform operation
fdiv.s f6, f11, f27, rmm # perform operation
fdiv.s f6, f11, f27, rne # perform operation
fdiv.s f6, f11, f27, rtz # perform operation
fdiv.s f6, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fdiv.s f5, f21, f28, dyn # perform operation
fdiv.s f5, f21, f28, rdn # perform operation
fdiv.s f5, f21, f28, rmm # perform operation
fdiv.s f5, f21, f28, rne # perform operation
fdiv.s f5, f21, f28, rtz # perform operation
fdiv.s f5, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fdiv.s f13, f11, f26, dyn # perform operation
fdiv.s f13, f11, f26, rdn # perform operation
fdiv.s f13, f11, f26, rmm # perform operation
fdiv.s f13, f11, f26, rne # perform operation
fdiv.s f13, f11, f26, rtz # perform operation
fdiv.s f13, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f17, f29, f12, dyn # perform operation
fdiv.s f17, f29, f12, rdn # perform operation
fdiv.s f17, f29, f12, rmm # perform operation
fdiv.s f17, f29, f12, rne # perform operation
fdiv.s f17, f29, f12, rtz # perform operation
fdiv.s f17, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fdiv.s f9, f15, f16, dyn # perform operation
fdiv.s f9, f15, f16, rdn # perform operation
fdiv.s f9, f15, f16, rmm # perform operation
fdiv.s f9, f15, f16, rne # perform operation
fdiv.s f9, f15, f16, rtz # perform operation
fdiv.s f9, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fdiv.s f22, f18, f10, dyn # perform operation
fdiv.s f22, f18, f10, rdn # perform operation
fdiv.s f22, f18, f10, rmm # perform operation
fdiv.s f22, f18, f10, rne # perform operation
fdiv.s f22, f18, f10, rtz # perform operation
fdiv.s f22, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fdiv.s f12, f19, f20, dyn # perform operation
fdiv.s f12, f19, f20, rdn # perform operation
fdiv.s f12, f19, f20, rmm # perform operation
fdiv.s f12, f19, f20, rne # perform operation
fdiv.s f12, f19, f20, rtz # perform operation
fdiv.s f12, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
fdiv.s f29, f8, f11, dyn # perform operation
fdiv.s f29, f8, f11, rdn # perform operation
fdiv.s f29, f8, f11, rmm # perform operation
fdiv.s f29, f8, f11, rne # perform operation
fdiv.s f29, f8, f11, rtz # perform operation
fdiv.s f29, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fdiv.s f10, f14, f21, dyn # perform operation
fdiv.s f10, f14, f21, rdn # perform operation
fdiv.s f10, f14, f21, rmm # perform operation
fdiv.s f10, f14, f21, rne # perform operation
fdiv.s f10, f14, f21, rtz # perform operation
fdiv.s f10, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fdiv.s f20, f26, f16, dyn # perform operation
fdiv.s f20, f26, f16, rdn # perform operation
fdiv.s f20, f26, f16, rmm # perform operation
fdiv.s f20, f26, f16, rne # perform operation
fdiv.s f20, f26, f16, rtz # perform operation
fdiv.s f20, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fdiv.s f16, f22, f3, dyn # perform operation
fdiv.s f16, f22, f3, rdn # perform operation
fdiv.s f16, f22, f3, rmm # perform operation
fdiv.s f16, f22, f3, rne # perform operation
fdiv.s f16, f22, f3, rtz # perform operation
fdiv.s f16, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fdiv.s f19, f2, f5, dyn # perform operation
fdiv.s f19, f2, f5, rdn # perform operation
fdiv.s f19, f2, f5, rmm # perform operation
fdiv.s f19, f2, f5, rne # perform operation
fdiv.s f19, f2, f5, rtz # perform operation
fdiv.s f19, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fdiv.s f6, f11, f5, dyn # perform operation
fdiv.s f6, f11, f5, rdn # perform operation
fdiv.s f6, f11, f5, rmm # perform operation
fdiv.s f6, f11, f5, rne # perform operation
fdiv.s f6, f11, f5, rtz # perform operation
fdiv.s f6, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fdiv.s f29, f11, f5, dyn # perform operation
fdiv.s f29, f11, f5, rdn # perform operation
fdiv.s f29, f11, f5, rmm # perform operation
fdiv.s f29, f11, f5, rne # perform operation
fdiv.s f29, f11, f5, rtz # perform operation
fdiv.s f29, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fdiv.s f12, f29, f21, dyn # perform operation
fdiv.s f12, f29, f21, rdn # perform operation
fdiv.s f12, f29, f21, rmm # perform operation
fdiv.s f12, f29, f21, rne # perform operation
fdiv.s f12, f29, f21, rtz # perform operation
fdiv.s f12, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fdiv.s f31, f11, f30, dyn # perform operation
fdiv.s f31, f11, f30, rdn # perform operation
fdiv.s f31, f11, f30, rmm # perform operation
fdiv.s f31, f11, f30, rne # perform operation
fdiv.s f31, f11, f30, rtz # perform operation
fdiv.s f31, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fdiv.s f9, f25, f17, dyn # perform operation
fdiv.s f9, f25, f17, rdn # perform operation
fdiv.s f9, f25, f17, rmm # perform operation
fdiv.s f9, f25, f17, rne # perform operation
fdiv.s f9, f25, f17, rtz # perform operation
fdiv.s f9, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fdiv.s f27, f16, f14, dyn # perform operation
fdiv.s f27, f16, f14, rdn # perform operation
fdiv.s f27, f16, f14, rmm # perform operation
fdiv.s f27, f16, f14, rne # perform operation
fdiv.s f27, f16, f14, rtz # perform operation
fdiv.s f27, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fdiv.s f9, f26, f30, dyn # perform operation
fdiv.s f9, f26, f30, rdn # perform operation
fdiv.s f9, f26, f30, rmm # perform operation
fdiv.s f9, f26, f30, rne # perform operation
fdiv.s f9, f26, f30, rtz # perform operation
fdiv.s f9, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fdiv.s f2, f10, f25, dyn # perform operation
fdiv.s f2, f10, f25, rdn # perform operation
fdiv.s f2, f10, f25, rmm # perform operation
fdiv.s f2, f10, f25, rne # perform operation
fdiv.s f2, f10, f25, rtz # perform operation
fdiv.s f2, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fdiv.s f26, f8, f11, dyn # perform operation
fdiv.s f26, f8, f11, rdn # perform operation
fdiv.s f26, f8, f11, rmm # perform operation
fdiv.s f26, f8, f11, rne # perform operation
fdiv.s f26, f8, f11, rtz # perform operation
fdiv.s f26, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fdiv.s f24, f13, f19, dyn # perform operation
fdiv.s f24, f13, f19, rdn # perform operation
fdiv.s f24, f13, f19, rmm # perform operation
fdiv.s f24, f13, f19, rne # perform operation
fdiv.s f24, f13, f19, rtz # perform operation
fdiv.s f24, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fdiv.s f16, f17, f23, dyn # perform operation
fdiv.s f16, f17, f23, rdn # perform operation
fdiv.s f16, f17, f23, rmm # perform operation
fdiv.s f16, f17, f23, rne # perform operation
fdiv.s f16, f17, f23, rtz # perform operation
fdiv.s f16, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f3, f22, f19, dyn # perform operation
fdiv.s f3, f22, f19, rdn # perform operation
fdiv.s f3, f22, f19, rmm # perform operation
fdiv.s f3, f22, f19, rne # perform operation
fdiv.s f3, f22, f19, rtz # perform operation
fdiv.s f3, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f10, f12, f5, dyn # perform operation
fdiv.s f10, f12, f5, rdn # perform operation
fdiv.s f10, f12, f5, rmm # perform operation
fdiv.s f10, f12, f5, rne # perform operation
fdiv.s f10, f12, f5, rtz # perform operation
fdiv.s f10, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fdiv.s f11, f14, f27, dyn # perform operation
fdiv.s f11, f14, f27, rdn # perform operation
fdiv.s f11, f14, f27, rmm # perform operation
fdiv.s f11, f14, f27, rne # perform operation
fdiv.s f11, f14, f27, rtz # perform operation
fdiv.s f11, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f26, f11, f22, dyn # perform operation
fdiv.s f26, f11, f22, rdn # perform operation
fdiv.s f26, f11, f22, rmm # perform operation
fdiv.s f26, f11, f22, rne # perform operation
fdiv.s f26, f11, f22, rtz # perform operation
fdiv.s f26, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fdiv.s f22, f31, f11, dyn # perform operation
fdiv.s f22, f31, f11, rdn # perform operation
fdiv.s f22, f31, f11, rmm # perform operation
fdiv.s f22, f31, f11, rne # perform operation
fdiv.s f22, f31, f11, rtz # perform operation
fdiv.s f22, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fdiv.s f3, f20, f23, dyn # perform operation
fdiv.s f3, f20, f23, rdn # perform operation
fdiv.s f3, f20, f23, rmm # perform operation
fdiv.s f3, f20, f23, rne # perform operation
fdiv.s f3, f20, f23, rtz # perform operation
fdiv.s f3, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fdiv.s f1, f3, f19, dyn # perform operation
fdiv.s f1, f3, f19, rdn # perform operation
fdiv.s f1, f3, f19, rmm # perform operation
fdiv.s f1, f3, f19, rne # perform operation
fdiv.s f1, f3, f19, rtz # perform operation
fdiv.s f1, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fdiv.s f29, f20, f28, dyn # perform operation
fdiv.s f29, f20, f28, rdn # perform operation
fdiv.s f29, f20, f28, rmm # perform operation
fdiv.s f29, f20, f28, rne # perform operation
fdiv.s f29, f20, f28, rtz # perform operation
fdiv.s f29, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fdiv.s f7, f12, f31, dyn # perform operation
fdiv.s f7, f12, f31, rdn # perform operation
fdiv.s f7, f12, f31, rmm # perform operation
fdiv.s f7, f12, f31, rne # perform operation
fdiv.s f7, f12, f31, rtz # perform operation
fdiv.s f7, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fdiv.s f9, f12, f27, dyn # perform operation
fdiv.s f9, f12, f27, rdn # perform operation
fdiv.s f9, f12, f27, rmm # perform operation
fdiv.s f9, f12, f27, rne # perform operation
fdiv.s f9, f12, f27, rtz # perform operation
fdiv.s f9, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f17, f9, f11, dyn # perform operation
fdiv.s f17, f9, f11, rdn # perform operation
fdiv.s f17, f9, f11, rmm # perform operation
fdiv.s f17, f9, f11, rne # perform operation
fdiv.s f17, f9, f11, rtz # perform operation
fdiv.s f17, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fdiv.s f15, f24, f6, dyn # perform operation
fdiv.s f15, f24, f6, rdn # perform operation
fdiv.s f15, f24, f6, rmm # perform operation
fdiv.s f15, f24, f6, rne # perform operation
fdiv.s f15, f24, f6, rtz # perform operation
fdiv.s f15, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
fdiv.s f27, f24, f6, dyn # perform operation
fdiv.s f27, f24, f6, rdn # perform operation
fdiv.s f27, f24, f6, rmm # perform operation
fdiv.s f27, f24, f6, rne # perform operation
fdiv.s f27, f24, f6, rtz # perform operation
fdiv.s f27, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fdiv.s f25, f5, f20, dyn # perform operation
fdiv.s f25, f5, f20, rdn # perform operation
fdiv.s f25, f5, f20, rmm # perform operation
fdiv.s f25, f5, f20, rne # perform operation
fdiv.s f25, f5, f20, rtz # perform operation
fdiv.s f25, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fdiv.s f11, f18, f7, dyn # perform operation
fdiv.s f11, f18, f7, rdn # perform operation
fdiv.s f11, f18, f7, rmm # perform operation
fdiv.s f11, f18, f7, rne # perform operation
fdiv.s f11, f18, f7, rtz # perform operation
fdiv.s f11, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fdiv.s f14, f23, f24, dyn # perform operation
fdiv.s f14, f23, f24, rdn # perform operation
fdiv.s f14, f23, f24, rmm # perform operation
fdiv.s f14, f23, f24, rne # perform operation
fdiv.s f14, f23, f24, rtz # perform operation
fdiv.s f14, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fdiv.s f17, f20, f22, dyn # perform operation
fdiv.s f17, f20, f22, rdn # perform operation
fdiv.s f17, f20, f22, rmm # perform operation
fdiv.s f17, f20, f22, rne # perform operation
fdiv.s f17, f20, f22, rtz # perform operation
fdiv.s f17, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fdiv.s f28, f9, f5, dyn # perform operation
fdiv.s f28, f9, f5, rdn # perform operation
fdiv.s f28, f9, f5, rmm # perform operation
fdiv.s f28, f9, f5, rne # perform operation
fdiv.s f28, f9, f5, rtz # perform operation
fdiv.s f28, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fdiv.s f3, f29, f16, dyn # perform operation
fdiv.s f3, f29, f16, rdn # perform operation
fdiv.s f3, f29, f16, rmm # perform operation
fdiv.s f3, f29, f16, rne # perform operation
fdiv.s f3, f29, f16, rtz # perform operation
fdiv.s f3, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fdiv.s f18, f9, f28, dyn # perform operation
fdiv.s f18, f9, f28, rdn # perform operation
fdiv.s f18, f9, f28, rmm # perform operation
fdiv.s f18, f9, f28, rne # perform operation
fdiv.s f18, f9, f28, rtz # perform operation
fdiv.s f18, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fdiv.s f19, f15, f13, dyn # perform operation
fdiv.s f19, f15, f13, rdn # perform operation
fdiv.s f19, f15, f13, rmm # perform operation
fdiv.s f19, f15, f13, rne # perform operation
fdiv.s f19, f15, f13, rtz # perform operation
fdiv.s f19, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f23, f3, f16, dyn # perform operation
fdiv.s f23, f3, f16, rdn # perform operation
fdiv.s f23, f3, f16, rmm # perform operation
fdiv.s f23, f3, f16, rne # perform operation
fdiv.s f23, f3, f16, rtz # perform operation
fdiv.s f23, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fdiv.s f17, f31, f15, dyn # perform operation
fdiv.s f17, f31, f15, rdn # perform operation
fdiv.s f17, f31, f15, rmm # perform operation
fdiv.s f17, f31, f15, rne # perform operation
fdiv.s f17, f31, f15, rtz # perform operation
fdiv.s f17, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fdiv.s f18, f11, f3, dyn # perform operation
fdiv.s f18, f11, f3, rdn # perform operation
fdiv.s f18, f11, f3, rmm # perform operation
fdiv.s f18, f11, f3, rne # perform operation
fdiv.s f18, f11, f3, rtz # perform operation
fdiv.s f18, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fdiv.s f17, f18, f28, dyn # perform operation
fdiv.s f17, f18, f28, rdn # perform operation
fdiv.s f17, f18, f28, rmm # perform operation
fdiv.s f17, f18, f28, rne # perform operation
fdiv.s f17, f18, f28, rtz # perform operation
fdiv.s f17, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fdiv.s f16, f6, f23, dyn # perform operation
fdiv.s f16, f6, f23, rdn # perform operation
fdiv.s f16, f6, f23, rmm # perform operation
fdiv.s f16, f6, f23, rne # perform operation
fdiv.s f16, f6, f23, rtz # perform operation
fdiv.s f16, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fdiv.s f7, f21, f27, dyn # perform operation
fdiv.s f7, f21, f27, rdn # perform operation
fdiv.s f7, f21, f27, rmm # perform operation
fdiv.s f7, f21, f27, rne # perform operation
fdiv.s f7, f21, f27, rtz # perform operation
fdiv.s f7, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fdiv.s f29, f28, f13, dyn # perform operation
fdiv.s f29, f28, f13, rdn # perform operation
fdiv.s f29, f28, f13, rmm # perform operation
fdiv.s f29, f28, f13, rne # perform operation
fdiv.s f29, f28, f13, rtz # perform operation
fdiv.s f29, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fdiv.s f10, f22, f9, dyn # perform operation
fdiv.s f10, f22, f9, rdn # perform operation
fdiv.s f10, f22, f9, rmm # perform operation
fdiv.s f10, f22, f9, rne # perform operation
fdiv.s f10, f22, f9, rtz # perform operation
fdiv.s f10, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fdiv.s f20, f31, f14, dyn # perform operation
fdiv.s f20, f31, f14, rdn # perform operation
fdiv.s f20, f31, f14, rmm # perform operation
fdiv.s f20, f31, f14, rne # perform operation
fdiv.s f20, f31, f14, rtz # perform operation
fdiv.s f20, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fdiv.s f16, f9, f31, dyn # perform operation
fdiv.s f16, f9, f31, rdn # perform operation
fdiv.s f16, f9, f31, rmm # perform operation
fdiv.s f16, f9, f31, rne # perform operation
fdiv.s f16, f9, f31, rtz # perform operation
fdiv.s f16, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.s f14, f24, f6, dyn # perform operation
fdiv.s f14, f24, f6, rdn # perform operation
fdiv.s f14, f24, f6, rmm # perform operation
fdiv.s f14, f24, f6, rne # perform operation
fdiv.s f14, f24, f6, rtz # perform operation
fdiv.s f14, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fdiv.s f5, f6, f11, dyn # perform operation
fdiv.s f5, f6, f11, rdn # perform operation
fdiv.s f5, f6, f11, rmm # perform operation
fdiv.s f5, f6, f11, rne # perform operation
fdiv.s f5, f6, f11, rtz # perform operation
fdiv.s f5, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f6, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fdiv.s f7, f17, f10, dyn # perform operation
fdiv.s f7, f17, f10, rdn # perform operation
fdiv.s f7, f17, f10, rmm # perform operation
fdiv.s f7, f17, f10, rne # perform operation
fdiv.s f7, f17, f10, rtz # perform operation
fdiv.s f7, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fdiv.s f5, f25, f16, dyn # perform operation
fdiv.s f5, f25, f16, rdn # perform operation
fdiv.s f5, f25, f16, rmm # perform operation
fdiv.s f5, f25, f16, rne # perform operation
fdiv.s f5, f25, f16, rtz # perform operation
fdiv.s f5, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fdiv.s f3, f26, f29, dyn # perform operation
fdiv.s f3, f26, f29, rdn # perform operation
fdiv.s f3, f26, f29, rmm # perform operation
fdiv.s f3, f26, f29, rne # perform operation
fdiv.s f3, f26, f29, rtz # perform operation
fdiv.s f3, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fdiv.s f27, f1, f9, dyn # perform operation
fdiv.s f27, f1, f9, rdn # perform operation
fdiv.s f27, f1, f9, rmm # perform operation
fdiv.s f27, f1, f9, rne # perform operation
fdiv.s f27, f1, f9, rtz # perform operation
fdiv.s f27, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
fdiv.s f24, f23, f20, dyn # perform operation
fdiv.s f24, f23, f20, rdn # perform operation
fdiv.s f24, f23, f20, rmm # perform operation
fdiv.s f24, f23, f20, rne # perform operation
fdiv.s f24, f23, f20, rtz # perform operation
fdiv.s f24, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fdiv.s f15, f23, f8, dyn # perform operation
fdiv.s f15, f23, f8, rdn # perform operation
fdiv.s f15, f23, f8, rmm # perform operation
fdiv.s f15, f23, f8, rne # perform operation
fdiv.s f15, f23, f8, rtz # perform operation
fdiv.s f15, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fdiv.s f1, f17, f15, dyn # perform operation
fdiv.s f1, f17, f15, rdn # perform operation
fdiv.s f1, f17, f15, rmm # perform operation
fdiv.s f1, f17, f15, rne # perform operation
fdiv.s f1, f17, f15, rtz # perform operation
fdiv.s f1, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fdiv.s f24, f1, f8, dyn # perform operation
fdiv.s f24, f1, f8, rdn # perform operation
fdiv.s f24, f1, f8, rmm # perform operation
fdiv.s f24, f1, f8, rne # perform operation
fdiv.s f24, f1, f8, rtz # perform operation
fdiv.s f24, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fdiv.s f27, f6, f2, dyn # perform operation
fdiv.s f27, f6, f2, rdn # perform operation
fdiv.s f27, f6, f2, rmm # perform operation
fdiv.s f27, f6, f2, rne # perform operation
fdiv.s f27, f6, f2, rtz # perform operation
fdiv.s f27, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fdiv.s f15, f8, f28, dyn # perform operation
fdiv.s f15, f8, f28, rdn # perform operation
fdiv.s f15, f8, f28, rmm # perform operation
fdiv.s f15, f8, f28, rne # perform operation
fdiv.s f15, f8, f28, rtz # perform operation
fdiv.s f15, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.s f5, f23, f2, dyn # perform operation
fdiv.s f5, f23, f2, rdn # perform operation
fdiv.s f5, f23, f2, rmm # perform operation
fdiv.s f5, f23, f2, rne # perform operation
fdiv.s f5, f23, f2, rtz # perform operation
fdiv.s f5, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fdiv.s f22, f16, f11, dyn # perform operation
fdiv.s f22, f16, f11, rdn # perform operation
fdiv.s f22, f16, f11, rmm # perform operation
fdiv.s f22, f16, f11, rne # perform operation
fdiv.s f22, f16, f11, rtz # perform operation
fdiv.s f22, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fdiv.s f15, f26, f5, dyn # perform operation
fdiv.s f15, f26, f5, rdn # perform operation
fdiv.s f15, f26, f5, rmm # perform operation
fdiv.s f15, f26, f5, rne # perform operation
fdiv.s f15, f26, f5, rtz # perform operation
fdiv.s f15, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fdiv.s f9, f19, f6, dyn # perform operation
fdiv.s f9, f19, f6, rdn # perform operation
fdiv.s f9, f19, f6, rmm # perform operation
fdiv.s f9, f19, f6, rne # perform operation
fdiv.s f9, f19, f6, rtz # perform operation
fdiv.s f9, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fdiv.s f19, f31, f5, dyn # perform operation
fdiv.s f19, f31, f5, rdn # perform operation
fdiv.s f19, f31, f5, rmm # perform operation
fdiv.s f19, f31, f5, rne # perform operation
fdiv.s f19, f31, f5, rtz # perform operation
fdiv.s f19, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fdiv.s f15, f9, f6, dyn # perform operation
fdiv.s f15, f9, f6, rdn # perform operation
fdiv.s f15, f9, f6, rmm # perform operation
fdiv.s f15, f9, f6, rne # perform operation
fdiv.s f15, f9, f6, rtz # perform operation
fdiv.s f15, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fdiv.s f25, f13, f29, dyn # perform operation
fdiv.s f25, f13, f29, rdn # perform operation
fdiv.s f25, f13, f29, rmm # perform operation
fdiv.s f25, f13, f29, rne # perform operation
fdiv.s f25, f13, f29, rtz # perform operation
fdiv.s f25, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fdiv.s f26, f31, f14, dyn # perform operation
fdiv.s f26, f31, f14, rdn # perform operation
fdiv.s f26, f31, f14, rmm # perform operation
fdiv.s f26, f31, f14, rne # perform operation
fdiv.s f26, f31, f14, rtz # perform operation
fdiv.s f26, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fdiv.s f12, f9, f24, dyn # perform operation
fdiv.s f12, f9, f24, rdn # perform operation
fdiv.s f12, f9, f24, rmm # perform operation
fdiv.s f12, f9, f24, rne # perform operation
fdiv.s f12, f9, f24, rtz # perform operation
fdiv.s f12, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fdiv.s f14, f27, f2, dyn # perform operation
fdiv.s f14, f27, f2, rdn # perform operation
fdiv.s f14, f27, f2, rmm # perform operation
fdiv.s f14, f27, f2, rne # perform operation
fdiv.s f14, f27, f2, rtz # perform operation
fdiv.s f14, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fdiv.s f31, f15, f12, dyn # perform operation
fdiv.s f31, f15, f12, rdn # perform operation
fdiv.s f31, f15, f12, rmm # perform operation
fdiv.s f31, f15, f12, rne # perform operation
fdiv.s f31, f15, f12, rtz # perform operation
fdiv.s f31, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fdiv.s f21, f24, f2, dyn # perform operation
fdiv.s f21, f24, f2, rdn # perform operation
fdiv.s f21, f24, f2, rmm # perform operation
fdiv.s f21, f24, f2, rne # perform operation
fdiv.s f21, f24, f2, rtz # perform operation
fdiv.s f21, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fdiv.s f3, f17, f28, dyn # perform operation
fdiv.s f3, f17, f28, rdn # perform operation
fdiv.s f3, f17, f28, rmm # perform operation
fdiv.s f3, f17, f28, rne # perform operation
fdiv.s f3, f17, f28, rtz # perform operation
fdiv.s f3, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f3, f11, f19, dyn # perform operation
fdiv.s f3, f11, f19, rdn # perform operation
fdiv.s f3, f11, f19, rmm # perform operation
fdiv.s f3, f11, f19, rne # perform operation
fdiv.s f3, f11, f19, rtz # perform operation
fdiv.s f3, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fdiv.s f18, f2, f7, dyn # perform operation
fdiv.s f18, f2, f7, rdn # perform operation
fdiv.s f18, f2, f7, rmm # perform operation
fdiv.s f18, f2, f7, rne # perform operation
fdiv.s f18, f2, f7, rtz # perform operation
fdiv.s f18, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fdiv.s f6, f3, f19, dyn # perform operation
fdiv.s f6, f3, f19, rdn # perform operation
fdiv.s f6, f3, f19, rmm # perform operation
fdiv.s f6, f3, f19, rne # perform operation
fdiv.s f6, f3, f19, rtz # perform operation
fdiv.s f6, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f5, f24, f22, dyn # perform operation
fdiv.s f5, f24, f22, rdn # perform operation
fdiv.s f5, f24, f22, rmm # perform operation
fdiv.s f5, f24, f22, rne # perform operation
fdiv.s f5, f24, f22, rtz # perform operation
fdiv.s f5, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fdiv.s f14, f21, f5, dyn # perform operation
fdiv.s f14, f21, f5, rdn # perform operation
fdiv.s f14, f21, f5, rmm # perform operation
fdiv.s f14, f21, f5, rne # perform operation
fdiv.s f14, f21, f5, rtz # perform operation
fdiv.s f14, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fdiv.s f1, f23, f3, dyn # perform operation
fdiv.s f1, f23, f3, rdn # perform operation
fdiv.s f1, f23, f3, rmm # perform operation
fdiv.s f1, f23, f3, rne # perform operation
fdiv.s f1, f23, f3, rtz # perform operation
fdiv.s f1, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fdiv.s f30, f3, f26, dyn # perform operation
fdiv.s f30, f3, f26, rdn # perform operation
fdiv.s f30, f3, f26, rmm # perform operation
fdiv.s f30, f3, f26, rne # perform operation
fdiv.s f30, f3, f26, rtz # perform operation
fdiv.s f30, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fdiv.s f15, f2, f3, dyn # perform operation
fdiv.s f15, f2, f3, rdn # perform operation
fdiv.s f15, f2, f3, rmm # perform operation
fdiv.s f15, f2, f3, rne # perform operation
fdiv.s f15, f2, f3, rtz # perform operation
fdiv.s f15, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f1, f17, f12, dyn # perform operation
fdiv.s f1, f17, f12, rdn # perform operation
fdiv.s f1, f17, f12, rmm # perform operation
fdiv.s f1, f17, f12, rne # perform operation
fdiv.s f1, f17, f12, rtz # perform operation
fdiv.s f1, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fdiv.s f6, f17, f3, dyn # perform operation
fdiv.s f6, f17, f3, rdn # perform operation
fdiv.s f6, f17, f3, rmm # perform operation
fdiv.s f6, f17, f3, rne # perform operation
fdiv.s f6, f17, f3, rtz # perform operation
fdiv.s f6, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fdiv.s f17, f20, f21, dyn # perform operation
fdiv.s f17, f20, f21, rdn # perform operation
fdiv.s f17, f20, f21, rmm # perform operation
fdiv.s f17, f20, f21, rne # perform operation
fdiv.s f17, f20, f21, rtz # perform operation
fdiv.s f17, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fdiv.s f23, f17, f28, dyn # perform operation
fdiv.s f23, f17, f28, rdn # perform operation
fdiv.s f23, f17, f28, rmm # perform operation
fdiv.s f23, f17, f28, rne # perform operation
fdiv.s f23, f17, f28, rtz # perform operation
fdiv.s f23, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fdiv.s f22, f13, f29, dyn # perform operation
fdiv.s f22, f13, f29, rdn # perform operation
fdiv.s f22, f13, f29, rmm # perform operation
fdiv.s f22, f13, f29, rne # perform operation
fdiv.s f22, f13, f29, rtz # perform operation
fdiv.s f22, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fdiv.s f14, f12, f25, dyn # perform operation
fdiv.s f14, f12, f25, rdn # perform operation
fdiv.s f14, f12, f25, rmm # perform operation
fdiv.s f14, f12, f25, rne # perform operation
fdiv.s f14, f12, f25, rtz # perform operation
fdiv.s f14, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fdiv.s f20, f18, f17, dyn # perform operation
fdiv.s f20, f18, f17, rdn # perform operation
fdiv.s f20, f18, f17, rmm # perform operation
fdiv.s f20, f18, f17, rne # perform operation
fdiv.s f20, f18, f17, rtz # perform operation
fdiv.s f20, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fdiv.s f7, f30, f22, dyn # perform operation
fdiv.s f7, f30, f22, rdn # perform operation
fdiv.s f7, f30, f22, rmm # perform operation
fdiv.s f7, f30, f22, rne # perform operation
fdiv.s f7, f30, f22, rtz # perform operation
fdiv.s f7, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fdiv.s f28, f13, f3, dyn # perform operation
fdiv.s f28, f13, f3, rdn # perform operation
fdiv.s f28, f13, f3, rmm # perform operation
fdiv.s f28, f13, f3, rne # perform operation
fdiv.s f28, f13, f3, rtz # perform operation
fdiv.s f28, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fdiv.s f15, f11, f20, dyn # perform operation
fdiv.s f15, f11, f20, rdn # perform operation
fdiv.s f15, f11, f20, rmm # perform operation
fdiv.s f15, f11, f20, rne # perform operation
fdiv.s f15, f11, f20, rtz # perform operation
fdiv.s f15, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fdiv.s f21, f14, f25, dyn # perform operation
fdiv.s f21, f14, f25, rdn # perform operation
fdiv.s f21, f14, f25, rmm # perform operation
fdiv.s f21, f14, f25, rne # perform operation
fdiv.s f21, f14, f25, rtz # perform operation
fdiv.s f21, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fdiv.s f5, f26, f6, dyn # perform operation
fdiv.s f5, f26, f6, rdn # perform operation
fdiv.s f5, f26, f6, rmm # perform operation
fdiv.s f5, f26, f6, rne # perform operation
fdiv.s f5, f26, f6, rtz # perform operation
fdiv.s f5, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fdiv.s f15, f1, f20, dyn # perform operation
fdiv.s f15, f1, f20, rdn # perform operation
fdiv.s f15, f1, f20, rmm # perform operation
fdiv.s f15, f1, f20, rne # perform operation
fdiv.s f15, f1, f20, rtz # perform operation
fdiv.s f15, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fdiv.s f16, f12, f24, dyn # perform operation
fdiv.s f16, f12, f24, rdn # perform operation
fdiv.s f16, f12, f24, rmm # perform operation
fdiv.s f16, f12, f24, rne # perform operation
fdiv.s f16, f12, f24, rtz # perform operation
fdiv.s f16, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fdiv.s f24, f3, f31, dyn # perform operation
fdiv.s f24, f3, f31, rdn # perform operation
fdiv.s f24, f3, f31, rmm # perform operation
fdiv.s f24, f3, f31, rne # perform operation
fdiv.s f24, f3, f31, rtz # perform operation
fdiv.s f24, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fdiv.s f7, f29, f6, dyn # perform operation
fdiv.s f7, f29, f6, rdn # perform operation
fdiv.s f7, f29, f6, rmm # perform operation
fdiv.s f7, f29, f6, rne # perform operation
fdiv.s f7, f29, f6, rtz # perform operation
fdiv.s f7, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fdiv.s f9, f10, f20, dyn # perform operation
fdiv.s f9, f10, f20, rdn # perform operation
fdiv.s f9, f10, f20, rmm # perform operation
fdiv.s f9, f10, f20, rne # perform operation
fdiv.s f9, f10, f20, rtz # perform operation
fdiv.s f9, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fdiv.s f29, f14, f16, dyn # perform operation
fdiv.s f29, f14, f16, rdn # perform operation
fdiv.s f29, f14, f16, rmm # perform operation
fdiv.s f29, f14, f16, rne # perform operation
fdiv.s f29, f14, f16, rtz # perform operation
fdiv.s f29, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fdiv.s f2, f15, f24, dyn # perform operation
fdiv.s f2, f15, f24, rdn # perform operation
fdiv.s f2, f15, f24, rmm # perform operation
fdiv.s f2, f15, f24, rne # perform operation
fdiv.s f2, f15, f24, rtz # perform operation
fdiv.s f2, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f24, f2, f29, dyn # perform operation
fdiv.s f24, f2, f29, rdn # perform operation
fdiv.s f24, f2, f29, rmm # perform operation
fdiv.s f24, f2, f29, rne # perform operation
fdiv.s f24, f2, f29, rtz # perform operation
fdiv.s f24, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fdiv.s f24, f14, f18, dyn # perform operation
fdiv.s f24, f14, f18, rdn # perform operation
fdiv.s f24, f14, f18, rmm # perform operation
fdiv.s f24, f14, f18, rne # perform operation
fdiv.s f24, f14, f18, rtz # perform operation
fdiv.s f24, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fdiv.s f19, f23, f12, dyn # perform operation
fdiv.s f19, f23, f12, rdn # perform operation
fdiv.s f19, f23, f12, rmm # perform operation
fdiv.s f19, f23, f12, rne # perform operation
fdiv.s f19, f23, f12, rtz # perform operation
fdiv.s f19, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fdiv.s f26, f30, f28, dyn # perform operation
fdiv.s f26, f30, f28, rdn # perform operation
fdiv.s f26, f30, f28, rmm # perform operation
fdiv.s f26, f30, f28, rne # perform operation
fdiv.s f26, f30, f28, rtz # perform operation
fdiv.s f26, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f15, f30, f22, dyn # perform operation
fdiv.s f15, f30, f22, rdn # perform operation
fdiv.s f15, f30, f22, rmm # perform operation
fdiv.s f15, f30, f22, rne # perform operation
fdiv.s f15, f30, f22, rtz # perform operation
fdiv.s f15, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fdiv.s f15, f5, f1, dyn # perform operation
fdiv.s f15, f5, f1, rdn # perform operation
fdiv.s f15, f5, f1, rmm # perform operation
fdiv.s f15, f5, f1, rne # perform operation
fdiv.s f15, f5, f1, rtz # perform operation
fdiv.s f15, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fdiv.s f27, f15, f22, dyn # perform operation
fdiv.s f27, f15, f22, rdn # perform operation
fdiv.s f27, f15, f22, rmm # perform operation
fdiv.s f27, f15, f22, rne # perform operation
fdiv.s f27, f15, f22, rtz # perform operation
fdiv.s f27, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f25, f15, f1, dyn # perform operation
fdiv.s f25, f15, f1, rdn # perform operation
fdiv.s f25, f15, f1, rmm # perform operation
fdiv.s f25, f15, f1, rne # perform operation
fdiv.s f25, f15, f1, rtz # perform operation
fdiv.s f25, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fdiv.s f23, f14, f12, dyn # perform operation
fdiv.s f23, f14, f12, rdn # perform operation
fdiv.s f23, f14, f12, rmm # perform operation
fdiv.s f23, f14, f12, rne # perform operation
fdiv.s f23, f14, f12, rtz # perform operation
fdiv.s f23, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fdiv.s f18, f28, f10, dyn # perform operation
fdiv.s f18, f28, f10, rdn # perform operation
fdiv.s f18, f28, f10, rmm # perform operation
fdiv.s f18, f28, f10, rne # perform operation
fdiv.s f18, f28, f10, rtz # perform operation
fdiv.s f18, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
fdiv.s f1, f14, f27, dyn # perform operation
fdiv.s f1, f14, f27, rdn # perform operation
fdiv.s f1, f14, f27, rmm # perform operation
fdiv.s f1, f14, f27, rne # perform operation
fdiv.s f1, f14, f27, rtz # perform operation
fdiv.s f1, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fdiv.s f28, f13, f26, dyn # perform operation
fdiv.s f28, f13, f26, rdn # perform operation
fdiv.s f28, f13, f26, rmm # perform operation
fdiv.s f28, f13, f26, rne # perform operation
fdiv.s f28, f13, f26, rtz # perform operation
fdiv.s f28, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fdiv.s f1, f10, f17, dyn # perform operation
fdiv.s f1, f10, f17, rdn # perform operation
fdiv.s f1, f10, f17, rmm # perform operation
fdiv.s f1, f10, f17, rne # perform operation
fdiv.s f1, f10, f17, rtz # perform operation
fdiv.s f1, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
fdiv.s f11, f16, f20, dyn # perform operation
fdiv.s f11, f16, f20, rdn # perform operation
fdiv.s f11, f16, f20, rmm # perform operation
fdiv.s f11, f16, f20, rne # perform operation
fdiv.s f11, f16, f20, rtz # perform operation
fdiv.s f11, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fdiv.s f13, f1, f19, dyn # perform operation
fdiv.s f13, f1, f19, rdn # perform operation
fdiv.s f13, f1, f19, rmm # perform operation
fdiv.s f13, f1, f19, rne # perform operation
fdiv.s f13, f1, f19, rtz # perform operation
fdiv.s f13, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fdiv.s f5, f16, f14, dyn # perform operation
fdiv.s f5, f16, f14, rdn # perform operation
fdiv.s f5, f16, f14, rmm # perform operation
fdiv.s f5, f16, f14, rne # perform operation
fdiv.s f5, f16, f14, rtz # perform operation
fdiv.s f5, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.s f19, f11, f7, dyn # perform operation
fdiv.s f19, f11, f7, rdn # perform operation
fdiv.s f19, f11, f7, rmm # perform operation
fdiv.s f19, f11, f7, rne # perform operation
fdiv.s f19, f11, f7, rtz # perform operation
fdiv.s f19, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f30, f13, f31, dyn # perform operation
fdiv.s f30, f13, f31, rdn # perform operation
fdiv.s f30, f13, f31, rmm # perform operation
fdiv.s f30, f13, f31, rne # perform operation
fdiv.s f30, f13, f31, rtz # perform operation
fdiv.s f30, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fdiv.s f24, f11, f27, dyn # perform operation
fdiv.s f24, f11, f27, rdn # perform operation
fdiv.s f24, f11, f27, rmm # perform operation
fdiv.s f24, f11, f27, rne # perform operation
fdiv.s f24, f11, f27, rtz # perform operation
fdiv.s f24, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fdiv.s f25, f6, f13, dyn # perform operation
fdiv.s f25, f6, f13, rdn # perform operation
fdiv.s f25, f6, f13, rmm # perform operation
fdiv.s f25, f6, f13, rne # perform operation
fdiv.s f25, f6, f13, rtz # perform operation
fdiv.s f25, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fdiv.s f17, f24, f12, dyn # perform operation
fdiv.s f17, f24, f12, rdn # perform operation
fdiv.s f17, f24, f12, rmm # perform operation
fdiv.s f17, f24, f12, rne # perform operation
fdiv.s f17, f24, f12, rtz # perform operation
fdiv.s f17, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fdiv.s f31, f2, f24, dyn # perform operation
fdiv.s f31, f2, f24, rdn # perform operation
fdiv.s f31, f2, f24, rmm # perform operation
fdiv.s f31, f2, f24, rne # perform operation
fdiv.s f31, f2, f24, rtz # perform operation
fdiv.s f31, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fdiv.s f28, f24, f26, dyn # perform operation
fdiv.s f28, f24, f26, rdn # perform operation
fdiv.s f28, f24, f26, rmm # perform operation
fdiv.s f28, f24, f26, rne # perform operation
fdiv.s f28, f24, f26, rtz # perform operation
fdiv.s f28, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fdiv.s f26, f23, f31, dyn # perform operation
fdiv.s f26, f23, f31, rdn # perform operation
fdiv.s f26, f23, f31, rmm # perform operation
fdiv.s f26, f23, f31, rne # perform operation
fdiv.s f26, f23, f31, rtz # perform operation
fdiv.s f26, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fdiv.s f18, f12, f25, dyn # perform operation
fdiv.s f18, f12, f25, rdn # perform operation
fdiv.s f18, f12, f25, rmm # perform operation
fdiv.s f18, f12, f25, rne # perform operation
fdiv.s f18, f12, f25, rtz # perform operation
fdiv.s f18, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fdiv.s f29, f10, f19, dyn # perform operation
fdiv.s f29, f10, f19, rdn # perform operation
fdiv.s f29, f10, f19, rmm # perform operation
fdiv.s f29, f10, f19, rne # perform operation
fdiv.s f29, f10, f19, rtz # perform operation
fdiv.s f29, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fdiv.s f22, f28, f16, dyn # perform operation
fdiv.s f22, f28, f16, rdn # perform operation
fdiv.s f22, f28, f16, rmm # perform operation
fdiv.s f22, f28, f16, rne # perform operation
fdiv.s f22, f28, f16, rtz # perform operation
fdiv.s f22, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fdiv.s f12, f5, f22, dyn # perform operation
fdiv.s f12, f5, f22, rdn # perform operation
fdiv.s f12, f5, f22, rmm # perform operation
fdiv.s f12, f5, f22, rne # perform operation
fdiv.s f12, f5, f22, rtz # perform operation
fdiv.s f12, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fdiv.s f14, f8, f31, dyn # perform operation
fdiv.s f14, f8, f31, rdn # perform operation
fdiv.s f14, f8, f31, rmm # perform operation
fdiv.s f14, f8, f31, rne # perform operation
fdiv.s f14, f8, f31, rtz # perform operation
fdiv.s f14, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f29, f27, f19, dyn # perform operation
fdiv.s f29, f27, f19, rdn # perform operation
fdiv.s f29, f27, f19, rmm # perform operation
fdiv.s f29, f27, f19, rne # perform operation
fdiv.s f29, f27, f19, rtz # perform operation
fdiv.s f29, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fdiv.s f25, f2, f18, dyn # perform operation
fdiv.s f25, f2, f18, rdn # perform operation
fdiv.s f25, f2, f18, rmm # perform operation
fdiv.s f25, f2, f18, rne # perform operation
fdiv.s f25, f2, f18, rtz # perform operation
fdiv.s f25, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fdiv.s f12, f7, f9, dyn # perform operation
fdiv.s f12, f7, f9, rdn # perform operation
fdiv.s f12, f7, f9, rmm # perform operation
fdiv.s f12, f7, f9, rne # perform operation
fdiv.s f12, f7, f9, rtz # perform operation
fdiv.s f12, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fdiv.s f28, f22, f19, dyn # perform operation
fdiv.s f28, f22, f19, rdn # perform operation
fdiv.s f28, f22, f19, rmm # perform operation
fdiv.s f28, f22, f19, rne # perform operation
fdiv.s f28, f22, f19, rtz # perform operation
fdiv.s f28, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fdiv.s f19, f20, f27, dyn # perform operation
fdiv.s f19, f20, f27, rdn # perform operation
fdiv.s f19, f20, f27, rmm # perform operation
fdiv.s f19, f20, f27, rne # perform operation
fdiv.s f19, f20, f27, rtz # perform operation
fdiv.s f19, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fdiv.s f7, f6, f2, dyn # perform operation
fdiv.s f7, f6, f2, rdn # perform operation
fdiv.s f7, f6, f2, rmm # perform operation
fdiv.s f7, f6, f2, rne # perform operation
fdiv.s f7, f6, f2, rtz # perform operation
fdiv.s f7, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fdiv.s f8, f21, f17, dyn # perform operation
fdiv.s f8, f21, f17, rdn # perform operation
fdiv.s f8, f21, f17, rmm # perform operation
fdiv.s f8, f21, f17, rne # perform operation
fdiv.s f8, f21, f17, rtz # perform operation
fdiv.s f8, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fdiv.s f7, f15, f10, dyn # perform operation
fdiv.s f7, f15, f10, rdn # perform operation
fdiv.s f7, f15, f10, rmm # perform operation
fdiv.s f7, f15, f10, rne # perform operation
fdiv.s f7, f15, f10, rtz # perform operation
fdiv.s f7, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f3, f26, f15, dyn # perform operation
fdiv.s f3, f26, f15, rdn # perform operation
fdiv.s f3, f26, f15, rmm # perform operation
fdiv.s f3, f26, f15, rne # perform operation
fdiv.s f3, f26, f15, rtz # perform operation
fdiv.s f3, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
fdiv.s f30, f11, f12, dyn # perform operation
fdiv.s f30, f11, f12, rdn # perform operation
fdiv.s f30, f11, f12, rmm # perform operation
fdiv.s f30, f11, f12, rne # perform operation
fdiv.s f30, f11, f12, rtz # perform operation
fdiv.s f30, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fdiv.s f10, f23, f15, dyn # perform operation
fdiv.s f10, f23, f15, rdn # perform operation
fdiv.s f10, f23, f15, rmm # perform operation
fdiv.s f10, f23, f15, rne # perform operation
fdiv.s f10, f23, f15, rtz # perform operation
fdiv.s f10, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fdiv.s f30, f24, f10, dyn # perform operation
fdiv.s f30, f24, f10, rdn # perform operation
fdiv.s f30, f24, f10, rmm # perform operation
fdiv.s f30, f24, f10, rne # perform operation
fdiv.s f30, f24, f10, rtz # perform operation
fdiv.s f30, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fdiv.s f19, f12, f1, dyn # perform operation
fdiv.s f19, f12, f1, rdn # perform operation
fdiv.s f19, f12, f1, rmm # perform operation
fdiv.s f19, f12, f1, rne # perform operation
fdiv.s f19, f12, f1, rtz # perform operation
fdiv.s f19, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fdiv.s f30, f7, f8, dyn # perform operation
fdiv.s f30, f7, f8, rdn # perform operation
fdiv.s f30, f7, f8, rmm # perform operation
fdiv.s f30, f7, f8, rne # perform operation
fdiv.s f30, f7, f8, rtz # perform operation
fdiv.s f30, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fdiv.s f12, f29, f24, dyn # perform operation
fdiv.s f12, f29, f24, rdn # perform operation
fdiv.s f12, f29, f24, rmm # perform operation
fdiv.s f12, f29, f24, rne # perform operation
fdiv.s f12, f29, f24, rtz # perform operation
fdiv.s f12, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fdiv.s f15, f8, f25, dyn # perform operation
fdiv.s f15, f8, f25, rdn # perform operation
fdiv.s f15, f8, f25, rmm # perform operation
fdiv.s f15, f8, f25, rne # perform operation
fdiv.s f15, f8, f25, rtz # perform operation
fdiv.s f15, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fdiv.s f3, f16, f8, dyn # perform operation
fdiv.s f3, f16, f8, rdn # perform operation
fdiv.s f3, f16, f8, rmm # perform operation
fdiv.s f3, f16, f8, rne # perform operation
fdiv.s f3, f16, f8, rtz # perform operation
fdiv.s f3, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fdiv.s f19, f31, f29, dyn # perform operation
fdiv.s f19, f31, f29, rdn # perform operation
fdiv.s f19, f31, f29, rmm # perform operation
fdiv.s f19, f31, f29, rne # perform operation
fdiv.s f19, f31, f29, rtz # perform operation
fdiv.s f19, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fdiv.s f15, f3, f2, dyn # perform operation
fdiv.s f15, f3, f2, rdn # perform operation
fdiv.s f15, f3, f2, rmm # perform operation
fdiv.s f15, f3, f2, rne # perform operation
fdiv.s f15, f3, f2, rtz # perform operation
fdiv.s f15, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fdiv.s f27, f15, f17, dyn # perform operation
fdiv.s f27, f15, f17, rdn # perform operation
fdiv.s f27, f15, f17, rmm # perform operation
fdiv.s f27, f15, f17, rne # perform operation
fdiv.s f27, f15, f17, rtz # perform operation
fdiv.s f27, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fdiv.s f20, f19, f24, dyn # perform operation
fdiv.s f20, f19, f24, rdn # perform operation
fdiv.s f20, f19, f24, rmm # perform operation
fdiv.s f20, f19, f24, rne # perform operation
fdiv.s f20, f19, f24, rtz # perform operation
fdiv.s f20, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fdiv.s f2, f16, f20, dyn # perform operation
fdiv.s f2, f16, f20, rdn # perform operation
fdiv.s f2, f16, f20, rmm # perform operation
fdiv.s f2, f16, f20, rne # perform operation
fdiv.s f2, f16, f20, rtz # perform operation
fdiv.s f2, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fdiv.s f6, f11, f23, dyn # perform operation
fdiv.s f6, f11, f23, rdn # perform operation
fdiv.s f6, f11, f23, rmm # perform operation
fdiv.s f6, f11, f23, rne # perform operation
fdiv.s f6, f11, f23, rtz # perform operation
fdiv.s f6, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fdiv.s f6, f22, f13, dyn # perform operation
fdiv.s f6, f22, f13, rdn # perform operation
fdiv.s f6, f22, f13, rmm # perform operation
fdiv.s f6, f22, f13, rne # perform operation
fdiv.s f6, f22, f13, rtz # perform operation
fdiv.s f6, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fdiv.s f20, f18, f24, dyn # perform operation
fdiv.s f20, f18, f24, rdn # perform operation
fdiv.s f20, f18, f24, rmm # perform operation
fdiv.s f20, f18, f24, rne # perform operation
fdiv.s f20, f18, f24, rtz # perform operation
fdiv.s f20, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fdiv.s f16, f20, f23, dyn # perform operation
fdiv.s f16, f20, f23, rdn # perform operation
fdiv.s f16, f20, f23, rmm # perform operation
fdiv.s f16, f20, f23, rne # perform operation
fdiv.s f16, f20, f23, rtz # perform operation
fdiv.s f16, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fdiv.s f5, f26, f9, dyn # perform operation
fdiv.s f5, f26, f9, rdn # perform operation
fdiv.s f5, f26, f9, rmm # perform operation
fdiv.s f5, f26, f9, rne # perform operation
fdiv.s f5, f26, f9, rtz # perform operation
fdiv.s f5, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fdiv.s f17, f22, f7, dyn # perform operation
fdiv.s f17, f22, f7, rdn # perform operation
fdiv.s f17, f22, f7, rmm # perform operation
fdiv.s f17, f22, f7, rne # perform operation
fdiv.s f17, f22, f7, rtz # perform operation
fdiv.s f17, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fdiv.s f25, f29, f16, dyn # perform operation
fdiv.s f25, f29, f16, rdn # perform operation
fdiv.s f25, f29, f16, rmm # perform operation
fdiv.s f25, f29, f16, rne # perform operation
fdiv.s f25, f29, f16, rtz # perform operation
fdiv.s f25, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fdiv.s f25, f9, f1, dyn # perform operation
fdiv.s f25, f9, f1, rdn # perform operation
fdiv.s f25, f9, f1, rmm # perform operation
fdiv.s f25, f9, f1, rne # perform operation
fdiv.s f25, f9, f1, rtz # perform operation
fdiv.s f25, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fdiv.s f27, f21, f12, dyn # perform operation
fdiv.s f27, f21, f12, rdn # perform operation
fdiv.s f27, f21, f12, rmm # perform operation
fdiv.s f27, f21, f12, rne # perform operation
fdiv.s f27, f21, f12, rtz # perform operation
fdiv.s f27, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fdiv.s f22, f5, f9, dyn # perform operation
fdiv.s f22, f5, f9, rdn # perform operation
fdiv.s f22, f5, f9, rmm # perform operation
fdiv.s f22, f5, f9, rne # perform operation
fdiv.s f22, f5, f9, rtz # perform operation
fdiv.s f22, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fdiv.s f9, f6, f20, dyn # perform operation
fdiv.s f9, f6, f20, rdn # perform operation
fdiv.s f9, f6, f20, rmm # perform operation
fdiv.s f9, f6, f20, rne # perform operation
fdiv.s f9, f6, f20, rtz # perform operation
fdiv.s f9, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fdiv.s f13, f6, f17, dyn # perform operation
fdiv.s f13, f6, f17, rdn # perform operation
fdiv.s f13, f6, f17, rmm # perform operation
fdiv.s f13, f6, f17, rne # perform operation
fdiv.s f13, f6, f17, rtz # perform operation
fdiv.s f13, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fdiv.s f1, f3, f30, dyn # perform operation
fdiv.s f1, f3, f30, rdn # perform operation
fdiv.s f1, f3, f30, rmm # perform operation
fdiv.s f1, f3, f30, rne # perform operation
fdiv.s f1, f3, f30, rtz # perform operation
fdiv.s f1, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fdiv.s f8, f25, f24, dyn # perform operation
fdiv.s f8, f25, f24, rdn # perform operation
fdiv.s f8, f25, f24, rmm # perform operation
fdiv.s f8, f25, f24, rne # perform operation
fdiv.s f8, f25, f24, rtz # perform operation
fdiv.s f8, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fdiv.s f1, f12, f19, dyn # perform operation
fdiv.s f1, f12, f19, rdn # perform operation
fdiv.s f1, f12, f19, rmm # perform operation
fdiv.s f1, f12, f19, rne # perform operation
fdiv.s f1, f12, f19, rtz # perform operation
fdiv.s f1, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f7, 0(x2) # load 0xffffffff from memory into f7
fdiv.s f19, f15, f7, dyn # perform operation
fdiv.s f19, f15, f7, rdn # perform operation
fdiv.s f19, f15, f7, rmm # perform operation
fdiv.s f19, f15, f7, rne # perform operation
fdiv.s f19, f15, f7, rtz # perform operation
fdiv.s f19, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fdiv.s f11, f31, f24, dyn # perform operation
fdiv.s f11, f31, f24, rdn # perform operation
fdiv.s f11, f31, f24, rmm # perform operation
fdiv.s f11, f31, f24, rne # perform operation
fdiv.s f11, f31, f24, rtz # perform operation
fdiv.s f11, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f2, f1, f11, dyn # perform operation
fdiv.s f2, f1, f11, rdn # perform operation
fdiv.s f2, f1, f11, rmm # perform operation
fdiv.s f2, f1, f11, rne # perform operation
fdiv.s f2, f1, f11, rtz # perform operation
fdiv.s f2, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fdiv.s f22, f17, f29, dyn # perform operation
fdiv.s f22, f17, f29, rdn # perform operation
fdiv.s f22, f17, f29, rmm # perform operation
fdiv.s f22, f17, f29, rne # perform operation
fdiv.s f22, f17, f29, rtz # perform operation
fdiv.s f22, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fdiv.s f30, f3, f6, dyn # perform operation
fdiv.s f30, f3, f6, rdn # perform operation
fdiv.s f30, f3, f6, rmm # perform operation
fdiv.s f30, f3, f6, rne # perform operation
fdiv.s f30, f3, f6, rtz # perform operation
fdiv.s f30, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fdiv.s f26, f25, f20, dyn # perform operation
fdiv.s f26, f25, f20, rdn # perform operation
fdiv.s f26, f25, f20, rmm # perform operation
fdiv.s f26, f25, f20, rne # perform operation
fdiv.s f26, f25, f20, rtz # perform operation
fdiv.s f26, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.s f15, f31, f28, dyn # perform operation
fdiv.s f15, f31, f28, rdn # perform operation
fdiv.s f15, f31, f28, rmm # perform operation
fdiv.s f15, f31, f28, rne # perform operation
fdiv.s f15, f31, f28, rtz # perform operation
fdiv.s f15, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fdiv.s f18, f22, f8, dyn # perform operation
fdiv.s f18, f22, f8, rdn # perform operation
fdiv.s f18, f22, f8, rmm # perform operation
fdiv.s f18, f22, f8, rne # perform operation
fdiv.s f18, f22, f8, rtz # perform operation
fdiv.s f18, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fdiv.s f9, f3, f22, dyn # perform operation
fdiv.s f9, f3, f22, rdn # perform operation
fdiv.s f9, f3, f22, rmm # perform operation
fdiv.s f9, f3, f22, rne # perform operation
fdiv.s f9, f3, f22, rtz # perform operation
fdiv.s f9, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fdiv.s f14, f10, f28, dyn # perform operation
fdiv.s f14, f10, f28, rdn # perform operation
fdiv.s f14, f10, f28, rmm # perform operation
fdiv.s f14, f10, f28, rne # perform operation
fdiv.s f14, f10, f28, rtz # perform operation
fdiv.s f14, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fdiv.s f17, f7, f10, dyn # perform operation
fdiv.s f17, f7, f10, rdn # perform operation
fdiv.s f17, f7, f10, rmm # perform operation
fdiv.s f17, f7, f10, rne # perform operation
fdiv.s f17, f7, f10, rtz # perform operation
fdiv.s f17, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fdiv.s f5, f7, f19, dyn # perform operation
fdiv.s f5, f7, f19, rdn # perform operation
fdiv.s f5, f7, f19, rmm # perform operation
fdiv.s f5, f7, f19, rne # perform operation
fdiv.s f5, f7, f19, rtz # perform operation
fdiv.s f5, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fdiv.s f2, f14, f7, dyn # perform operation
fdiv.s f2, f14, f7, rdn # perform operation
fdiv.s f2, f14, f7, rmm # perform operation
fdiv.s f2, f14, f7, rne # perform operation
fdiv.s f2, f14, f7, rtz # perform operation
fdiv.s f2, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fdiv.s f6, f2, f10, dyn # perform operation
fdiv.s f6, f2, f10, rdn # perform operation
fdiv.s f6, f2, f10, rmm # perform operation
fdiv.s f6, f2, f10, rne # perform operation
fdiv.s f6, f2, f10, rtz # perform operation
fdiv.s f6, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fdiv.s f23, f30, f28, dyn # perform operation
fdiv.s f23, f30, f28, rdn # perform operation
fdiv.s f23, f30, f28, rmm # perform operation
fdiv.s f23, f30, f28, rne # perform operation
fdiv.s f23, f30, f28, rtz # perform operation
fdiv.s f23, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fdiv.s f16, f27, f18, dyn # perform operation
fdiv.s f16, f27, f18, rdn # perform operation
fdiv.s f16, f27, f18, rmm # perform operation
fdiv.s f16, f27, f18, rne # perform operation
fdiv.s f16, f27, f18, rtz # perform operation
fdiv.s f16, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f11, f14, f20, dyn # perform operation
fdiv.s f11, f14, f20, rdn # perform operation
fdiv.s f11, f14, f20, rmm # perform operation
fdiv.s f11, f14, f20, rne # perform operation
fdiv.s f11, f14, f20, rtz # perform operation
fdiv.s f11, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fdiv.s f26, f30, f25, dyn # perform operation
fdiv.s f26, f30, f25, rdn # perform operation
fdiv.s f26, f30, f25, rmm # perform operation
fdiv.s f26, f30, f25, rne # perform operation
fdiv.s f26, f30, f25, rtz # perform operation
fdiv.s f26, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fdiv.s f2, f6, f19, dyn # perform operation
fdiv.s f2, f6, f19, rdn # perform operation
fdiv.s f2, f6, f19, rmm # perform operation
fdiv.s f2, f6, f19, rne # perform operation
fdiv.s f2, f6, f19, rtz # perform operation
fdiv.s f2, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fdiv.s f3, f9, f29, dyn # perform operation
fdiv.s f3, f9, f29, rdn # perform operation
fdiv.s f3, f9, f29, rmm # perform operation
fdiv.s f3, f9, f29, rne # perform operation
fdiv.s f3, f9, f29, rtz # perform operation
fdiv.s f3, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fdiv.s f15, f2, f12, dyn # perform operation
fdiv.s f15, f2, f12, rdn # perform operation
fdiv.s f15, f2, f12, rmm # perform operation
fdiv.s f15, f2, f12, rne # perform operation
fdiv.s f15, f2, f12, rtz # perform operation
fdiv.s f15, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fdiv.s f14, f31, f27, dyn # perform operation
fdiv.s f14, f31, f27, rdn # perform operation
fdiv.s f14, f31, f27, rmm # perform operation
fdiv.s f14, f31, f27, rne # perform operation
fdiv.s f14, f31, f27, rtz # perform operation
fdiv.s f14, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.s f22, f31, f13, dyn # perform operation
fdiv.s f22, f31, f13, rdn # perform operation
fdiv.s f22, f31, f13, rmm # perform operation
fdiv.s f22, f31, f13, rne # perform operation
fdiv.s f22, f31, f13, rtz # perform operation
fdiv.s f22, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fdiv.s f7, f14, f31, dyn # perform operation
fdiv.s f7, f14, f31, rdn # perform operation
fdiv.s f7, f14, f31, rmm # perform operation
fdiv.s f7, f14, f31, rne # perform operation
fdiv.s f7, f14, f31, rtz # perform operation
fdiv.s f7, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fdiv.s f2, f23, f15, dyn # perform operation
fdiv.s f2, f23, f15, rdn # perform operation
fdiv.s f2, f23, f15, rmm # perform operation
fdiv.s f2, f23, f15, rne # perform operation
fdiv.s f2, f23, f15, rtz # perform operation
fdiv.s f2, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fdiv.s f11, f12, f14, dyn # perform operation
fdiv.s f11, f12, f14, rdn # perform operation
fdiv.s f11, f12, f14, rmm # perform operation
fdiv.s f11, f12, f14, rne # perform operation
fdiv.s f11, f12, f14, rtz # perform operation
fdiv.s f11, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f19, f7, f18, dyn # perform operation
fdiv.s f19, f7, f18, rdn # perform operation
fdiv.s f19, f7, f18, rmm # perform operation
fdiv.s f19, f7, f18, rne # perform operation
fdiv.s f19, f7, f18, rtz # perform operation
fdiv.s f19, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f27, f1, f15, dyn # perform operation
fdiv.s f27, f1, f15, rdn # perform operation
fdiv.s f27, f1, f15, rmm # perform operation
fdiv.s f27, f1, f15, rne # perform operation
fdiv.s f27, f1, f15, rtz # perform operation
fdiv.s f27, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
fdiv.s f18, f26, f22, dyn # perform operation
fdiv.s f18, f26, f22, rdn # perform operation
fdiv.s f18, f26, f22, rmm # perform operation
fdiv.s f18, f26, f22, rne # perform operation
fdiv.s f18, f26, f22, rtz # perform operation
fdiv.s f18, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f28, f14, f19, dyn # perform operation
fdiv.s f28, f14, f19, rdn # perform operation
fdiv.s f28, f14, f19, rmm # perform operation
fdiv.s f28, f14, f19, rne # perform operation
fdiv.s f28, f14, f19, rtz # perform operation
fdiv.s f28, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fdiv.s f20, f1, f21, dyn # perform operation
fdiv.s f20, f1, f21, rdn # perform operation
fdiv.s f20, f1, f21, rmm # perform operation
fdiv.s f20, f1, f21, rne # perform operation
fdiv.s f20, f1, f21, rtz # perform operation
fdiv.s f20, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fdiv.s f20, f7, f12, dyn # perform operation
fdiv.s f20, f7, f12, rdn # perform operation
fdiv.s f20, f7, f12, rmm # perform operation
fdiv.s f20, f7, f12, rne # perform operation
fdiv.s f20, f7, f12, rtz # perform operation
fdiv.s f20, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fdiv.s f16, f31, f10, dyn # perform operation
fdiv.s f16, f31, f10, rdn # perform operation
fdiv.s f16, f31, f10, rmm # perform operation
fdiv.s f16, f31, f10, rne # perform operation
fdiv.s f16, f31, f10, rtz # perform operation
fdiv.s f16, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fdiv.s f24, f21, f1, dyn # perform operation
fdiv.s f24, f21, f1, rdn # perform operation
fdiv.s f24, f21, f1, rmm # perform operation
fdiv.s f24, f21, f1, rne # perform operation
fdiv.s f24, f21, f1, rtz # perform operation
fdiv.s f24, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f21, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.s f10, f14, f31, dyn # perform operation
fdiv.s f10, f14, f31, rdn # perform operation
fdiv.s f10, f14, f31, rmm # perform operation
fdiv.s f10, f14, f31, rne # perform operation
fdiv.s f10, f14, f31, rtz # perform operation
fdiv.s f10, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fdiv.s f31, f9, f27, dyn # perform operation
fdiv.s f31, f9, f27, rdn # perform operation
fdiv.s f31, f9, f27, rmm # perform operation
fdiv.s f31, f9, f27, rne # perform operation
fdiv.s f31, f9, f27, rtz # perform operation
fdiv.s f31, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fdiv.s f28, f23, f3, dyn # perform operation
fdiv.s f28, f23, f3, rdn # perform operation
fdiv.s f28, f23, f3, rmm # perform operation
fdiv.s f28, f23, f3, rne # perform operation
fdiv.s f28, f23, f3, rtz # perform operation
fdiv.s f28, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fdiv.s f27, f5, f30, dyn # perform operation
fdiv.s f27, f5, f30, rdn # perform operation
fdiv.s f27, f5, f30, rmm # perform operation
fdiv.s f27, f5, f30, rne # perform operation
fdiv.s f27, f5, f30, rtz # perform operation
fdiv.s f27, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fdiv.s f18, f12, f1, dyn # perform operation
fdiv.s f18, f12, f1, rdn # perform operation
fdiv.s f18, f12, f1, rmm # perform operation
fdiv.s f18, f12, f1, rne # perform operation
fdiv.s f18, f12, f1, rtz # perform operation
fdiv.s f18, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fdiv.s f9, f14, f23, dyn # perform operation
fdiv.s f9, f14, f23, rdn # perform operation
fdiv.s f9, f14, f23, rmm # perform operation
fdiv.s f9, f14, f23, rne # perform operation
fdiv.s f9, f14, f23, rtz # perform operation
fdiv.s f9, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fdiv.s f29, f23, f3, dyn # perform operation
fdiv.s f29, f23, f3, rdn # perform operation
fdiv.s f29, f23, f3, rmm # perform operation
fdiv.s f29, f23, f3, rne # perform operation
fdiv.s f29, f23, f3, rtz # perform operation
fdiv.s f29, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fdiv.s f23, f20, f12, dyn # perform operation
fdiv.s f23, f20, f12, rdn # perform operation
fdiv.s f23, f20, f12, rmm # perform operation
fdiv.s f23, f20, f12, rne # perform operation
fdiv.s f23, f20, f12, rtz # perform operation
fdiv.s f23, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fdiv.s f3, f18, f31, dyn # perform operation
fdiv.s f3, f18, f31, rdn # perform operation
fdiv.s f3, f18, f31, rmm # perform operation
fdiv.s f3, f18, f31, rne # perform operation
fdiv.s f3, f18, f31, rtz # perform operation
fdiv.s f3, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fdiv.s f12, f10, f23, dyn # perform operation
fdiv.s f12, f10, f23, rdn # perform operation
fdiv.s f12, f10, f23, rmm # perform operation
fdiv.s f12, f10, f23, rne # perform operation
fdiv.s f12, f10, f23, rtz # perform operation
fdiv.s f12, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fdiv.s f12, f19, f16, dyn # perform operation
fdiv.s f12, f19, f16, rdn # perform operation
fdiv.s f12, f19, f16, rmm # perform operation
fdiv.s f12, f19, f16, rne # perform operation
fdiv.s f12, f19, f16, rtz # perform operation
fdiv.s f12, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fdiv.s f2, f8, f17, dyn # perform operation
fdiv.s f2, f8, f17, rdn # perform operation
fdiv.s f2, f8, f17, rmm # perform operation
fdiv.s f2, f8, f17, rne # perform operation
fdiv.s f2, f8, f17, rtz # perform operation
fdiv.s f2, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fdiv.s f10, f21, f12, dyn # perform operation
fdiv.s f10, f21, f12, rdn # perform operation
fdiv.s f10, f21, f12, rmm # perform operation
fdiv.s f10, f21, f12, rne # perform operation
fdiv.s f10, f21, f12, rtz # perform operation
fdiv.s f10, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fdiv.s f2, f9, f31, dyn # perform operation
fdiv.s f2, f9, f31, rdn # perform operation
fdiv.s f2, f9, f31, rmm # perform operation
fdiv.s f2, f9, f31, rne # perform operation
fdiv.s f2, f9, f31, rtz # perform operation
fdiv.s f2, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fdiv.s f31, f29, f21, dyn # perform operation
fdiv.s f31, f29, f21, rdn # perform operation
fdiv.s f31, f29, f21, rmm # perform operation
fdiv.s f31, f29, f21, rne # perform operation
fdiv.s f31, f29, f21, rtz # perform operation
fdiv.s f31, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fdiv.s f16, f26, f2, dyn # perform operation
fdiv.s f16, f26, f2, rdn # perform operation
fdiv.s f16, f26, f2, rmm # perform operation
fdiv.s f16, f26, f2, rne # perform operation
fdiv.s f16, f26, f2, rtz # perform operation
fdiv.s f16, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fdiv.s f6, f11, f30, dyn # perform operation
fdiv.s f6, f11, f30, rdn # perform operation
fdiv.s f6, f11, f30, rmm # perform operation
fdiv.s f6, f11, f30, rne # perform operation
fdiv.s f6, f11, f30, rtz # perform operation
fdiv.s f6, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fdiv.s f31, f29, f10, dyn # perform operation
fdiv.s f31, f29, f10, rdn # perform operation
fdiv.s f31, f29, f10, rmm # perform operation
fdiv.s f31, f29, f10, rne # perform operation
fdiv.s f31, f29, f10, rtz # perform operation
fdiv.s f31, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fdiv.s f22, f26, f13, dyn # perform operation
fdiv.s f22, f26, f13, rdn # perform operation
fdiv.s f22, f26, f13, rmm # perform operation
fdiv.s f22, f26, f13, rne # perform operation
fdiv.s f22, f26, f13, rtz # perform operation
fdiv.s f22, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fdiv.s f8, f31, f9, dyn # perform operation
fdiv.s f8, f31, f9, rdn # perform operation
fdiv.s f8, f31, f9, rmm # perform operation
fdiv.s f8, f31, f9, rne # perform operation
fdiv.s f8, f31, f9, rtz # perform operation
fdiv.s f8, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
fdiv.s f28, f5, f11, dyn # perform operation
fdiv.s f28, f5, f11, rdn # perform operation
fdiv.s f28, f5, f11, rmm # perform operation
fdiv.s f28, f5, f11, rne # perform operation
fdiv.s f28, f5, f11, rtz # perform operation
fdiv.s f28, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fdiv.s f24, f27, f29, dyn # perform operation
fdiv.s f24, f27, f29, rdn # perform operation
fdiv.s f24, f27, f29, rmm # perform operation
fdiv.s f24, f27, f29, rne # perform operation
fdiv.s f24, f27, f29, rtz # perform operation
fdiv.s f24, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fdiv.s f13, f15, f5, dyn # perform operation
fdiv.s f13, f15, f5, rdn # perform operation
fdiv.s f13, f15, f5, rmm # perform operation
fdiv.s f13, f15, f5, rne # perform operation
fdiv.s f13, f15, f5, rtz # perform operation
fdiv.s f13, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fdiv.s f31, f1, f8, dyn # perform operation
fdiv.s f31, f1, f8, rdn # perform operation
fdiv.s f31, f1, f8, rmm # perform operation
fdiv.s f31, f1, f8, rne # perform operation
fdiv.s f31, f1, f8, rtz # perform operation
fdiv.s f31, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fdiv.s f24, f12, f25, dyn # perform operation
fdiv.s f24, f12, f25, rdn # perform operation
fdiv.s f24, f12, f25, rmm # perform operation
fdiv.s f24, f12, f25, rne # perform operation
fdiv.s f24, f12, f25, rtz # perform operation
fdiv.s f24, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fdiv.s f1, f20, f3, dyn # perform operation
fdiv.s f1, f20, f3, rdn # perform operation
fdiv.s f1, f20, f3, rmm # perform operation
fdiv.s f1, f20, f3, rne # perform operation
fdiv.s f1, f20, f3, rtz # perform operation
fdiv.s f1, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fdiv.s f25, f10, f22, dyn # perform operation
fdiv.s f25, f10, f22, rdn # perform operation
fdiv.s f25, f10, f22, rmm # perform operation
fdiv.s f25, f10, f22, rne # perform operation
fdiv.s f25, f10, f22, rtz # perform operation
fdiv.s f25, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fdiv.s f27, f29, f28, dyn # perform operation
fdiv.s f27, f29, f28, rdn # perform operation
fdiv.s f27, f29, f28, rmm # perform operation
fdiv.s f27, f29, f28, rne # perform operation
fdiv.s f27, f29, f28, rtz # perform operation
fdiv.s f27, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fdiv.s f3, f27, f21, dyn # perform operation
fdiv.s f3, f27, f21, rdn # perform operation
fdiv.s f3, f27, f21, rmm # perform operation
fdiv.s f3, f27, f21, rne # perform operation
fdiv.s f3, f27, f21, rtz # perform operation
fdiv.s f3, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fdiv.s f31, f19, f7, dyn # perform operation
fdiv.s f31, f19, f7, rdn # perform operation
fdiv.s f31, f19, f7, rmm # perform operation
fdiv.s f31, f19, f7, rne # perform operation
fdiv.s f31, f19, f7, rtz # perform operation
fdiv.s f31, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fdiv.s f6, f15, f19, dyn # perform operation
fdiv.s f6, f15, f19, rdn # perform operation
fdiv.s f6, f15, f19, rmm # perform operation
fdiv.s f6, f15, f19, rne # perform operation
fdiv.s f6, f15, f19, rtz # perform operation
fdiv.s f6, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fdiv.s f3, f20, f30, dyn # perform operation
fdiv.s f3, f20, f30, rdn # perform operation
fdiv.s f3, f20, f30, rmm # perform operation
fdiv.s f3, f20, f30, rne # perform operation
fdiv.s f3, f20, f30, rtz # perform operation
fdiv.s f3, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fdiv.s f8, f26, f5, dyn # perform operation
fdiv.s f8, f26, f5, rdn # perform operation
fdiv.s f8, f26, f5, rmm # perform operation
fdiv.s f8, f26, f5, rne # perform operation
fdiv.s f8, f26, f5, rtz # perform operation
fdiv.s f8, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fdiv.s f23, f22, f28, dyn # perform operation
fdiv.s f23, f22, f28, rdn # perform operation
fdiv.s f23, f22, f28, rmm # perform operation
fdiv.s f23, f22, f28, rne # perform operation
fdiv.s f23, f22, f28, rtz # perform operation
fdiv.s f23, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fdiv.s f28, f14, f21, dyn # perform operation
fdiv.s f28, f14, f21, rdn # perform operation
fdiv.s f28, f14, f21, rmm # perform operation
fdiv.s f28, f14, f21, rne # perform operation
fdiv.s f28, f14, f21, rtz # perform operation
fdiv.s f28, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fdiv.s f13, f20, f17, dyn # perform operation
fdiv.s f13, f20, f17, rdn # perform operation
fdiv.s f13, f20, f17, rmm # perform operation
fdiv.s f13, f20, f17, rne # perform operation
fdiv.s f13, f20, f17, rtz # perform operation
fdiv.s f13, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fdiv.s f24, f29, f15, dyn # perform operation
fdiv.s f24, f29, f15, rdn # perform operation
fdiv.s f24, f29, f15, rmm # perform operation
fdiv.s f24, f29, f15, rne # perform operation
fdiv.s f24, f29, f15, rtz # perform operation
fdiv.s f24, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fdiv.s f29, f7, f26, dyn # perform operation
fdiv.s f29, f7, f26, rdn # perform operation
fdiv.s f29, f7, f26, rmm # perform operation
fdiv.s f29, f7, f26, rne # perform operation
fdiv.s f29, f7, f26, rtz # perform operation
fdiv.s f29, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fdiv.s f24, f6, f12, dyn # perform operation
fdiv.s f24, f6, f12, rdn # perform operation
fdiv.s f24, f6, f12, rmm # perform operation
fdiv.s f24, f6, f12, rne # perform operation
fdiv.s f24, f6, f12, rtz # perform operation
fdiv.s f24, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fdiv.s f19, f23, f24, dyn # perform operation
fdiv.s f19, f23, f24, rdn # perform operation
fdiv.s f19, f23, f24, rmm # perform operation
fdiv.s f19, f23, f24, rne # perform operation
fdiv.s f19, f23, f24, rtz # perform operation
fdiv.s f19, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fdiv.s f29, f9, f20, dyn # perform operation
fdiv.s f29, f9, f20, rdn # perform operation
fdiv.s f29, f9, f20, rmm # perform operation
fdiv.s f29, f9, f20, rne # perform operation
fdiv.s f29, f9, f20, rtz # perform operation
fdiv.s f29, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fdiv.s f26, f28, f20, dyn # perform operation
fdiv.s f26, f28, f20, rdn # perform operation
fdiv.s f26, f28, f20, rmm # perform operation
fdiv.s f26, f28, f20, rne # perform operation
fdiv.s f26, f28, f20, rtz # perform operation
fdiv.s f26, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fdiv.s f22, f11, f12, dyn # perform operation
fdiv.s f22, f11, f12, rdn # perform operation
fdiv.s f22, f11, f12, rmm # perform operation
fdiv.s f22, f11, f12, rne # perform operation
fdiv.s f22, f11, f12, rtz # perform operation
fdiv.s f22, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fdiv.s f13, f14, f26, dyn # perform operation
fdiv.s f13, f14, f26, rdn # perform operation
fdiv.s f13, f14, f26, rmm # perform operation
fdiv.s f13, f14, f26, rne # perform operation
fdiv.s f13, f14, f26, rtz # perform operation
fdiv.s f13, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.s f19, f16, f23, dyn # perform operation
fdiv.s f19, f16, f23, rdn # perform operation
fdiv.s f19, f16, f23, rmm # perform operation
fdiv.s f19, f16, f23, rne # perform operation
fdiv.s f19, f16, f23, rtz # perform operation
fdiv.s f19, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fdiv.s f28, f29, f18, dyn # perform operation
fdiv.s f28, f29, f18, rdn # perform operation
fdiv.s f28, f29, f18, rmm # perform operation
fdiv.s f28, f29, f18, rne # perform operation
fdiv.s f28, f29, f18, rtz # perform operation
fdiv.s f28, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fdiv.s f14, f25, f24, dyn # perform operation
fdiv.s f14, f25, f24, rdn # perform operation
fdiv.s f14, f25, f24, rmm # perform operation
fdiv.s f14, f25, f24, rne # perform operation
fdiv.s f14, f25, f24, rtz # perform operation
fdiv.s f14, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fdiv.s f1, f10, f13, dyn # perform operation
fdiv.s f1, f10, f13, rdn # perform operation
fdiv.s f1, f10, f13, rmm # perform operation
fdiv.s f1, f10, f13, rne # perform operation
fdiv.s f1, f10, f13, rtz # perform operation
fdiv.s f1, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f10, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fdiv.s f27, f24, f6, dyn # perform operation
fdiv.s f27, f24, f6, rdn # perform operation
fdiv.s f27, f24, f6, rmm # perform operation
fdiv.s f27, f24, f6, rne # perform operation
fdiv.s f27, f24, f6, rtz # perform operation
fdiv.s f27, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fdiv.s f14, f17, f21, dyn # perform operation
fdiv.s f14, f17, f21, rdn # perform operation
fdiv.s f14, f17, f21, rmm # perform operation
fdiv.s f14, f17, f21, rne # perform operation
fdiv.s f14, f17, f21, rtz # perform operation
fdiv.s f14, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fdiv.s f11, f16, f2, dyn # perform operation
fdiv.s f11, f16, f2, rdn # perform operation
fdiv.s f11, f16, f2, rmm # perform operation
fdiv.s f11, f16, f2, rne # perform operation
fdiv.s f11, f16, f2, rtz # perform operation
fdiv.s f11, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fdiv.s f23, f27, f2, dyn # perform operation
fdiv.s f23, f27, f2, rdn # perform operation
fdiv.s f23, f27, f2, rmm # perform operation
fdiv.s f23, f27, f2, rne # perform operation
fdiv.s f23, f27, f2, rtz # perform operation
fdiv.s f23, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fdiv.s f30, f6, f15, dyn # perform operation
fdiv.s f30, f6, f15, rdn # perform operation
fdiv.s f30, f6, f15, rmm # perform operation
fdiv.s f30, f6, f15, rne # perform operation
fdiv.s f30, f6, f15, rtz # perform operation
fdiv.s f30, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
fdiv.s f5, f18, f7, dyn # perform operation
fdiv.s f5, f18, f7, rdn # perform operation
fdiv.s f5, f18, f7, rmm # perform operation
fdiv.s f5, f18, f7, rne # perform operation
fdiv.s f5, f18, f7, rtz # perform operation
fdiv.s f5, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fdiv.s f13, f28, f26, dyn # perform operation
fdiv.s f13, f28, f26, rdn # perform operation
fdiv.s f13, f28, f26, rmm # perform operation
fdiv.s f13, f28, f26, rne # perform operation
fdiv.s f13, f28, f26, rtz # perform operation
fdiv.s f13, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fdiv.s f17, f26, f18, dyn # perform operation
fdiv.s f17, f26, f18, rdn # perform operation
fdiv.s f17, f26, f18, rmm # perform operation
fdiv.s f17, f26, f18, rne # perform operation
fdiv.s f17, f26, f18, rtz # perform operation
fdiv.s f17, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.s f26, f18, f15, dyn # perform operation
fdiv.s f26, f18, f15, rdn # perform operation
fdiv.s f26, f18, f15, rmm # perform operation
fdiv.s f26, f18, f15, rne # perform operation
fdiv.s f26, f18, f15, rtz # perform operation
fdiv.s f26, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fdiv.s f15, f18, f27, dyn # perform operation
fdiv.s f15, f18, f27, rdn # perform operation
fdiv.s f15, f18, f27, rmm # perform operation
fdiv.s f15, f18, f27, rne # perform operation
fdiv.s f15, f18, f27, rtz # perform operation
fdiv.s f15, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fdiv.s f27, f8, f20, dyn # perform operation
fdiv.s f27, f8, f20, rdn # perform operation
fdiv.s f27, f8, f20, rmm # perform operation
fdiv.s f27, f8, f20, rne # perform operation
fdiv.s f27, f8, f20, rtz # perform operation
fdiv.s f27, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f8, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fdiv.s f21, f9, f16, dyn # perform operation
fdiv.s f21, f9, f16, rdn # perform operation
fdiv.s f21, f9, f16, rmm # perform operation
fdiv.s f21, f9, f16, rne # perform operation
fdiv.s f21, f9, f16, rtz # perform operation
fdiv.s f21, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fdiv.s f10, f7, f25, dyn # perform operation
fdiv.s f10, f7, f25, rdn # perform operation
fdiv.s f10, f7, f25, rmm # perform operation
fdiv.s f10, f7, f25, rne # perform operation
fdiv.s f10, f7, f25, rtz # perform operation
fdiv.s f10, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fdiv.s f9, f29, f27, dyn # perform operation
fdiv.s f9, f29, f27, rdn # perform operation
fdiv.s f9, f29, f27, rmm # perform operation
fdiv.s f9, f29, f27, rne # perform operation
fdiv.s f9, f29, f27, rtz # perform operation
fdiv.s f9, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fdiv.s f5, f13, f2, dyn # perform operation
fdiv.s f5, f13, f2, rdn # perform operation
fdiv.s f5, f13, f2, rmm # perform operation
fdiv.s f5, f13, f2, rne # perform operation
fdiv.s f5, f13, f2, rtz # perform operation
fdiv.s f5, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fdiv.s f19, f1, f9, dyn # perform operation
fdiv.s f19, f1, f9, rdn # perform operation
fdiv.s f19, f1, f9, rmm # perform operation
fdiv.s f19, f1, f9, rne # perform operation
fdiv.s f19, f1, f9, rtz # perform operation
fdiv.s f19, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fdiv.s f29, f16, f3, dyn # perform operation
fdiv.s f29, f16, f3, rdn # perform operation
fdiv.s f29, f16, f3, rmm # perform operation
fdiv.s f29, f16, f3, rne # perform operation
fdiv.s f29, f16, f3, rtz # perform operation
fdiv.s f29, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fdiv.s f22, f26, f19, dyn # perform operation
fdiv.s f22, f26, f19, rdn # perform operation
fdiv.s f22, f26, f19, rmm # perform operation
fdiv.s f22, f26, f19, rne # perform operation
fdiv.s f22, f26, f19, rtz # perform operation
fdiv.s f22, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fdiv.s f10, f17, f29, dyn # perform operation
fdiv.s f10, f17, f29, rdn # perform operation
fdiv.s f10, f17, f29, rmm # perform operation
fdiv.s f10, f17, f29, rne # perform operation
fdiv.s f10, f17, f29, rtz # perform operation
fdiv.s f10, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fdiv.s f13, f25, f23, dyn # perform operation
fdiv.s f13, f25, f23, rdn # perform operation
fdiv.s f13, f25, f23, rmm # perform operation
fdiv.s f13, f25, f23, rne # perform operation
fdiv.s f13, f25, f23, rtz # perform operation
fdiv.s f13, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f30, f17, f29, dyn # perform operation
fdiv.s f30, f17, f29, rdn # perform operation
fdiv.s f30, f17, f29, rmm # perform operation
fdiv.s f30, f17, f29, rne # perform operation
fdiv.s f30, f17, f29, rtz # perform operation
fdiv.s f30, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fdiv.s f5, f16, f31, dyn # perform operation
fdiv.s f5, f16, f31, rdn # perform operation
fdiv.s f5, f16, f31, rmm # perform operation
fdiv.s f5, f16, f31, rne # perform operation
fdiv.s f5, f16, f31, rtz # perform operation
fdiv.s f5, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fdiv.s f29, f14, f18, dyn # perform operation
fdiv.s f29, f14, f18, rdn # perform operation
fdiv.s f29, f14, f18, rmm # perform operation
fdiv.s f29, f14, f18, rne # perform operation
fdiv.s f29, f14, f18, rtz # perform operation
fdiv.s f29, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fdiv.s f16, f2, f26, dyn # perform operation
fdiv.s f16, f2, f26, rdn # perform operation
fdiv.s f16, f2, f26, rmm # perform operation
fdiv.s f16, f2, f26, rne # perform operation
fdiv.s f16, f2, f26, rtz # perform operation
fdiv.s f16, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f2, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fdiv.s f9, f2, f11, dyn # perform operation
fdiv.s f9, f2, f11, rdn # perform operation
fdiv.s f9, f2, f11, rmm # perform operation
fdiv.s f9, f2, f11, rne # perform operation
fdiv.s f9, f2, f11, rtz # perform operation
fdiv.s f9, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fdiv.s f14, f29, f16, dyn # perform operation
fdiv.s f14, f29, f16, rdn # perform operation
fdiv.s f14, f29, f16, rmm # perform operation
fdiv.s f14, f29, f16, rne # perform operation
fdiv.s f14, f29, f16, rtz # perform operation
fdiv.s f14, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fdiv.s f3, f20, f30, dyn # perform operation
fdiv.s f3, f20, f30, rdn # perform operation
fdiv.s f3, f20, f30, rmm # perform operation
fdiv.s f3, f20, f30, rne # perform operation
fdiv.s f3, f20, f30, rtz # perform operation
fdiv.s f3, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fdiv.s f31, f5, f18, dyn # perform operation
fdiv.s f31, f5, f18, rdn # perform operation
fdiv.s f31, f5, f18, rmm # perform operation
fdiv.s f31, f5, f18, rne # perform operation
fdiv.s f31, f5, f18, rtz # perform operation
fdiv.s f31, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fdiv.s f3, f27, f7, dyn # perform operation
fdiv.s f3, f27, f7, rdn # perform operation
fdiv.s f3, f27, f7, rmm # perform operation
fdiv.s f3, f27, f7, rne # perform operation
fdiv.s f3, f27, f7, rtz # perform operation
fdiv.s f3, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fdiv.s f21, f22, f5, dyn # perform operation
fdiv.s f21, f22, f5, rdn # perform operation
fdiv.s f21, f22, f5, rmm # perform operation
fdiv.s f21, f22, f5, rne # perform operation
fdiv.s f21, f22, f5, rtz # perform operation
fdiv.s f21, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
fdiv.s f28, f31, f15, dyn # perform operation
fdiv.s f28, f31, f15, rdn # perform operation
fdiv.s f28, f31, f15, rmm # perform operation
fdiv.s f28, f31, f15, rne # perform operation
fdiv.s f28, f31, f15, rtz # perform operation
fdiv.s f28, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fdiv.s f18, f11, f29, dyn # perform operation
fdiv.s f18, f11, f29, rdn # perform operation
fdiv.s f18, f11, f29, rmm # perform operation
fdiv.s f18, f11, f29, rne # perform operation
fdiv.s f18, f11, f29, rtz # perform operation
fdiv.s f18, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fdiv.s f24, f22, f7, dyn # perform operation
fdiv.s f24, f22, f7, rdn # perform operation
fdiv.s f24, f22, f7, rmm # perform operation
fdiv.s f24, f22, f7, rne # perform operation
fdiv.s f24, f22, f7, rtz # perform operation
fdiv.s f24, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fdiv.s f3, f16, f25, dyn # perform operation
fdiv.s f3, f16, f25, rdn # perform operation
fdiv.s f3, f16, f25, rmm # perform operation
fdiv.s f3, f16, f25, rne # perform operation
fdiv.s f3, f16, f25, rtz # perform operation
fdiv.s f3, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fdiv.s f27, f28, f13, dyn # perform operation
fdiv.s f27, f28, f13, rdn # perform operation
fdiv.s f27, f28, f13, rmm # perform operation
fdiv.s f27, f28, f13, rne # perform operation
fdiv.s f27, f28, f13, rtz # perform operation
fdiv.s f27, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fdiv.s f23, f20, f3, dyn # perform operation
fdiv.s f23, f20, f3, rdn # perform operation
fdiv.s f23, f20, f3, rmm # perform operation
fdiv.s f23, f20, f3, rne # perform operation
fdiv.s f23, f20, f3, rtz # perform operation
fdiv.s f23, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fdiv.s f31, f13, f5, dyn # perform operation
fdiv.s f31, f13, f5, rdn # perform operation
fdiv.s f31, f13, f5, rmm # perform operation
fdiv.s f31, f13, f5, rne # perform operation
fdiv.s f31, f13, f5, rtz # perform operation
fdiv.s f31, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fdiv.s f15, f13, f8, dyn # perform operation
fdiv.s f15, f13, f8, rdn # perform operation
fdiv.s f15, f13, f8, rmm # perform operation
fdiv.s f15, f13, f8, rne # perform operation
fdiv.s f15, f13, f8, rtz # perform operation
fdiv.s f15, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fdiv.s f27, f14, f6, dyn # perform operation
fdiv.s f27, f14, f6, rdn # perform operation
fdiv.s f27, f14, f6, rmm # perform operation
fdiv.s f27, f14, f6, rne # perform operation
fdiv.s f27, f14, f6, rtz # perform operation
fdiv.s f27, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fdiv.s f18, f17, f14, dyn # perform operation
fdiv.s f18, f17, f14, rdn # perform operation
fdiv.s f18, f17, f14, rmm # perform operation
fdiv.s f18, f17, f14, rne # perform operation
fdiv.s f18, f17, f14, rtz # perform operation
fdiv.s f18, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fdiv.s f17, f16, f1, dyn # perform operation
fdiv.s f17, f16, f1, rdn # perform operation
fdiv.s f17, f16, f1, rmm # perform operation
fdiv.s f17, f16, f1, rne # perform operation
fdiv.s f17, f16, f1, rtz # perform operation
fdiv.s f17, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fdiv.s f27, f21, f19, dyn # perform operation
fdiv.s f27, f21, f19, rdn # perform operation
fdiv.s f27, f21, f19, rmm # perform operation
fdiv.s f27, f21, f19, rne # perform operation
fdiv.s f27, f21, f19, rtz # perform operation
fdiv.s f27, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f11, f9, f16, dyn # perform operation
fdiv.s f11, f9, f16, rdn # perform operation
fdiv.s f11, f9, f16, rmm # perform operation
fdiv.s f11, f9, f16, rne # perform operation
fdiv.s f11, f9, f16, rtz # perform operation
fdiv.s f11, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fdiv.s f23, f2, f9, dyn # perform operation
fdiv.s f23, f2, f9, rdn # perform operation
fdiv.s f23, f2, f9, rmm # perform operation
fdiv.s f23, f2, f9, rne # perform operation
fdiv.s f23, f2, f9, rtz # perform operation
fdiv.s f23, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fdiv.s f14, f22, f5, dyn # perform operation
fdiv.s f14, f22, f5, rdn # perform operation
fdiv.s f14, f22, f5, rmm # perform operation
fdiv.s f14, f22, f5, rne # perform operation
fdiv.s f14, f22, f5, rtz # perform operation
fdiv.s f14, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fdiv.s f8, f7, f13, dyn # perform operation
fdiv.s f8, f7, f13, rdn # perform operation
fdiv.s f8, f7, f13, rmm # perform operation
fdiv.s f8, f7, f13, rne # perform operation
fdiv.s f8, f7, f13, rtz # perform operation
fdiv.s f8, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fdiv.s f10, f28, f29, dyn # perform operation
fdiv.s f10, f28, f29, rdn # perform operation
fdiv.s f10, f28, f29, rmm # perform operation
fdiv.s f10, f28, f29, rne # perform operation
fdiv.s f10, f28, f29, rtz # perform operation
fdiv.s f10, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fdiv.s f3, f6, f2, dyn # perform operation
fdiv.s f3, f6, f2, rdn # perform operation
fdiv.s f3, f6, f2, rmm # perform operation
fdiv.s f3, f6, f2, rne # perform operation
fdiv.s f3, f6, f2, rtz # perform operation
fdiv.s f3, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fdiv.s f19, f20, f13, dyn # perform operation
fdiv.s f19, f20, f13, rdn # perform operation
fdiv.s f19, f20, f13, rmm # perform operation
fdiv.s f19, f20, f13, rne # perform operation
fdiv.s f19, f20, f13, rtz # perform operation
fdiv.s f19, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fdiv.s f7, f27, f11, dyn # perform operation
fdiv.s f7, f27, f11, rdn # perform operation
fdiv.s f7, f27, f11, rmm # perform operation
fdiv.s f7, f27, f11, rne # perform operation
fdiv.s f7, f27, f11, rtz # perform operation
fdiv.s f7, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fdiv.s f18, f28, f24, dyn # perform operation
fdiv.s f18, f28, f24, rdn # perform operation
fdiv.s f18, f28, f24, rmm # perform operation
fdiv.s f18, f28, f24, rne # perform operation
fdiv.s f18, f28, f24, rtz # perform operation
fdiv.s f18, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fdiv.s f24, f13, f29, dyn # perform operation
fdiv.s f24, f13, f29, rdn # perform operation
fdiv.s f24, f13, f29, rmm # perform operation
fdiv.s f24, f13, f29, rne # perform operation
fdiv.s f24, f13, f29, rtz # perform operation
fdiv.s f24, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.s f27, f26, f12, dyn # perform operation
fdiv.s f27, f26, f12, rdn # perform operation
fdiv.s f27, f26, f12, rmm # perform operation
fdiv.s f27, f26, f12, rne # perform operation
fdiv.s f27, f26, f12, rtz # perform operation
fdiv.s f27, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fdiv.s f18, f24, f11, dyn # perform operation
fdiv.s f18, f24, f11, rdn # perform operation
fdiv.s f18, f24, f11, rmm # perform operation
fdiv.s f18, f24, f11, rne # perform operation
fdiv.s f18, f24, f11, rtz # perform operation
fdiv.s f18, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fdiv.s f21, f31, f5, dyn # perform operation
fdiv.s f21, f31, f5, rdn # perform operation
fdiv.s f21, f31, f5, rmm # perform operation
fdiv.s f21, f31, f5, rne # perform operation
fdiv.s f21, f31, f5, rtz # perform operation
fdiv.s f21, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fdiv.s f6, f5, f31, dyn # perform operation
fdiv.s f6, f5, f31, rdn # perform operation
fdiv.s f6, f5, f31, rmm # perform operation
fdiv.s f6, f5, f31, rne # perform operation
fdiv.s f6, f5, f31, rtz # perform operation
fdiv.s f6, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fdiv.s f31, f7, f13, dyn # perform operation
fdiv.s f31, f7, f13, rdn # perform operation
fdiv.s f31, f7, f13, rmm # perform operation
fdiv.s f31, f7, f13, rne # perform operation
fdiv.s f31, f7, f13, rtz # perform operation
fdiv.s f31, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fdiv.s f17, f23, f6, dyn # perform operation
fdiv.s f17, f23, f6, rdn # perform operation
fdiv.s f17, f23, f6, rmm # perform operation
fdiv.s f17, f23, f6, rne # perform operation
fdiv.s f17, f23, f6, rtz # perform operation
fdiv.s f17, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fdiv.s f2, f29, f10, dyn # perform operation
fdiv.s f2, f29, f10, rdn # perform operation
fdiv.s f2, f29, f10, rmm # perform operation
fdiv.s f2, f29, f10, rne # perform operation
fdiv.s f2, f29, f10, rtz # perform operation
fdiv.s f2, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fdiv.s f11, f3, f31, dyn # perform operation
fdiv.s f11, f3, f31, rdn # perform operation
fdiv.s f11, f3, f31, rmm # perform operation
fdiv.s f11, f3, f31, rne # perform operation
fdiv.s f11, f3, f31, rtz # perform operation
fdiv.s f11, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fdiv.s f17, f30, f23, dyn # perform operation
fdiv.s f17, f30, f23, rdn # perform operation
fdiv.s f17, f30, f23, rmm # perform operation
fdiv.s f17, f30, f23, rne # perform operation
fdiv.s f17, f30, f23, rtz # perform operation
fdiv.s f17, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
fdiv.s f7, f18, f31, dyn # perform operation
fdiv.s f7, f18, f31, rdn # perform operation
fdiv.s f7, f18, f31, rmm # perform operation
fdiv.s f7, f18, f31, rne # perform operation
fdiv.s f7, f18, f31, rtz # perform operation
fdiv.s f7, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fdiv.s f1, f30, f20, dyn # perform operation
fdiv.s f1, f30, f20, rdn # perform operation
fdiv.s f1, f30, f20, rmm # perform operation
fdiv.s f1, f30, f20, rne # perform operation
fdiv.s f1, f30, f20, rtz # perform operation
fdiv.s f1, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fdiv.s f29, f24, f18, dyn # perform operation
fdiv.s f29, f24, f18, rdn # perform operation
fdiv.s f29, f24, f18, rmm # perform operation
fdiv.s f29, f24, f18, rne # perform operation
fdiv.s f29, f24, f18, rtz # perform operation
fdiv.s f29, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fdiv.s f15, f12, f23, dyn # perform operation
fdiv.s f15, f12, f23, rdn # perform operation
fdiv.s f15, f12, f23, rmm # perform operation
fdiv.s f15, f12, f23, rne # perform operation
fdiv.s f15, f12, f23, rtz # perform operation
fdiv.s f15, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f28, f23, f31, dyn # perform operation
fdiv.s f28, f23, f31, rdn # perform operation
fdiv.s f28, f23, f31, rmm # perform operation
fdiv.s f28, f23, f31, rne # perform operation
fdiv.s f28, f23, f31, rtz # perform operation
fdiv.s f28, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fdiv.s f28, f2, f20, dyn # perform operation
fdiv.s f28, f2, f20, rdn # perform operation
fdiv.s f28, f2, f20, rmm # perform operation
fdiv.s f28, f2, f20, rne # perform operation
fdiv.s f28, f2, f20, rtz # perform operation
fdiv.s f28, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fdiv.s f21, f25, f27, dyn # perform operation
fdiv.s f21, f25, f27, rdn # perform operation
fdiv.s f21, f25, f27, rmm # perform operation
fdiv.s f21, f25, f27, rne # perform operation
fdiv.s f21, f25, f27, rtz # perform operation
fdiv.s f21, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f20, 0(x2) # load 0xffffffff from memory into f20
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fdiv.s f5, f20, f31, dyn # perform operation
fdiv.s f5, f20, f31, rdn # perform operation
fdiv.s f5, f20, f31, rmm # perform operation
fdiv.s f5, f20, f31, rne # perform operation
fdiv.s f5, f20, f31, rtz # perform operation
fdiv.s f5, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fdiv.s f16, f22, f23, dyn # perform operation
fdiv.s f16, f22, f23, rdn # perform operation
fdiv.s f16, f22, f23, rmm # perform operation
fdiv.s f16, f22, f23, rne # perform operation
fdiv.s f16, f22, f23, rtz # perform operation
fdiv.s f16, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fdiv.s f27, f2, f15, dyn # perform operation
fdiv.s f27, f2, f15, rdn # perform operation
fdiv.s f27, f2, f15, rmm # perform operation
fdiv.s f27, f2, f15, rne # perform operation
fdiv.s f27, f2, f15, rtz # perform operation
fdiv.s f27, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fdiv.s f24, f13, f14, dyn # perform operation
fdiv.s f24, f13, f14, rdn # perform operation
fdiv.s f24, f13, f14, rmm # perform operation
fdiv.s f24, f13, f14, rne # perform operation
fdiv.s f24, f13, f14, rtz # perform operation
fdiv.s f24, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fdiv.s f7, f14, f18, dyn # perform operation
fdiv.s f7, f14, f18, rdn # perform operation
fdiv.s f7, f14, f18, rmm # perform operation
fdiv.s f7, f14, f18, rne # perform operation
fdiv.s f7, f14, f18, rtz # perform operation
fdiv.s f7, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fdiv.s f3, f14, f7, dyn # perform operation
fdiv.s f3, f14, f7, rdn # perform operation
fdiv.s f3, f14, f7, rmm # perform operation
fdiv.s f3, f14, f7, rne # perform operation
fdiv.s f3, f14, f7, rtz # perform operation
fdiv.s f3, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fdiv.s f26, f3, f9, dyn # perform operation
fdiv.s f26, f3, f9, rdn # perform operation
fdiv.s f26, f3, f9, rmm # perform operation
fdiv.s f26, f3, f9, rne # perform operation
fdiv.s f26, f3, f9, rtz # perform operation
fdiv.s f26, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fdiv.s f16, f13, f7, dyn # perform operation
fdiv.s f16, f13, f7, rdn # perform operation
fdiv.s f16, f13, f7, rmm # perform operation
fdiv.s f16, f13, f7, rne # perform operation
fdiv.s f16, f13, f7, rtz # perform operation
fdiv.s f16, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fdiv.s f18, f13, f8, dyn # perform operation
fdiv.s f18, f13, f8, rdn # perform operation
fdiv.s f18, f13, f8, rmm # perform operation
fdiv.s f18, f13, f8, rne # perform operation
fdiv.s f18, f13, f8, rtz # perform operation
fdiv.s f18, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f15, f27, f19, dyn # perform operation
fdiv.s f15, f27, f19, rdn # perform operation
fdiv.s f15, f27, f19, rmm # perform operation
fdiv.s f15, f27, f19, rne # perform operation
fdiv.s f15, f27, f19, rtz # perform operation
fdiv.s f15, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f16, f27, f5, dyn # perform operation
fdiv.s f16, f27, f5, rdn # perform operation
fdiv.s f16, f27, f5, rmm # perform operation
fdiv.s f16, f27, f5, rne # perform operation
fdiv.s f16, f27, f5, rtz # perform operation
fdiv.s f16, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fdiv.s f13, f26, f22, dyn # perform operation
fdiv.s f13, f26, f22, rdn # perform operation
fdiv.s f13, f26, f22, rmm # perform operation
fdiv.s f13, f26, f22, rne # perform operation
fdiv.s f13, f26, f22, rtz # perform operation
fdiv.s f13, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f26, f16, f15, dyn # perform operation
fdiv.s f26, f16, f15, rdn # perform operation
fdiv.s f26, f16, f15, rmm # perform operation
fdiv.s f26, f16, f15, rne # perform operation
fdiv.s f26, f16, f15, rtz # perform operation
fdiv.s f26, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f16, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fdiv.s f22, f6, f18, dyn # perform operation
fdiv.s f22, f6, f18, rdn # perform operation
fdiv.s f22, f6, f18, rmm # perform operation
fdiv.s f22, f6, f18, rne # perform operation
fdiv.s f22, f6, f18, rtz # perform operation
fdiv.s f22, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f13, f23, f11, dyn # perform operation
fdiv.s f13, f23, f11, rdn # perform operation
fdiv.s f13, f23, f11, rmm # perform operation
fdiv.s f13, f23, f11, rne # perform operation
fdiv.s f13, f23, f11, rtz # perform operation
fdiv.s f13, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fdiv.s f3, f28, f24, dyn # perform operation
fdiv.s f3, f28, f24, rdn # perform operation
fdiv.s f3, f28, f24, rmm # perform operation
fdiv.s f3, f28, f24, rne # perform operation
fdiv.s f3, f28, f24, rtz # perform operation
fdiv.s f3, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fdiv.s f5, f16, f20, dyn # perform operation
fdiv.s f5, f16, f20, rdn # perform operation
fdiv.s f5, f16, f20, rmm # perform operation
fdiv.s f5, f16, f20, rne # perform operation
fdiv.s f5, f16, f20, rtz # perform operation
fdiv.s f5, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fdiv.s f3, f25, f28, dyn # perform operation
fdiv.s f3, f25, f28, rdn # perform operation
fdiv.s f3, f25, f28, rmm # perform operation
fdiv.s f3, f25, f28, rne # perform operation
fdiv.s f3, f25, f28, rtz # perform operation
fdiv.s f3, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fdiv.s f30, f27, f5, dyn # perform operation
fdiv.s f30, f27, f5, rdn # perform operation
fdiv.s f30, f27, f5, rmm # perform operation
fdiv.s f30, f27, f5, rne # perform operation
fdiv.s f30, f27, f5, rtz # perform operation
fdiv.s f30, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fdiv.s f1, f24, f20, dyn # perform operation
fdiv.s f1, f24, f20, rdn # perform operation
fdiv.s f1, f24, f20, rmm # perform operation
fdiv.s f1, f24, f20, rne # perform operation
fdiv.s f1, f24, f20, rtz # perform operation
fdiv.s f1, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fdiv.s f15, f1, f10, dyn # perform operation
fdiv.s f15, f1, f10, rdn # perform operation
fdiv.s f15, f1, f10, rmm # perform operation
fdiv.s f15, f1, f10, rne # perform operation
fdiv.s f15, f1, f10, rtz # perform operation
fdiv.s f15, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f12, 0(x2) # load 0xffffffff from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fdiv.s f6, f12, f10, dyn # perform operation
fdiv.s f6, f12, f10, rdn # perform operation
fdiv.s f6, f12, f10, rmm # perform operation
fdiv.s f6, f12, f10, rne # perform operation
fdiv.s f6, f12, f10, rtz # perform operation
fdiv.s f6, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fdiv.s f30, f14, f28, dyn # perform operation
fdiv.s f30, f14, f28, rdn # perform operation
fdiv.s f30, f14, f28, rmm # perform operation
fdiv.s f30, f14, f28, rne # perform operation
fdiv.s f30, f14, f28, rtz # perform operation
fdiv.s f30, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fdiv.s f1, f6, f19, dyn # perform operation
fdiv.s f1, f6, f19, rdn # perform operation
fdiv.s f1, f6, f19, rmm # perform operation
fdiv.s f1, f6, f19, rne # perform operation
fdiv.s f1, f6, f19, rtz # perform operation
fdiv.s f1, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.s f23, f28, f14, dyn # perform operation
fdiv.s f23, f28, f14, rdn # perform operation
fdiv.s f23, f28, f14, rmm # perform operation
fdiv.s f23, f28, f14, rne # perform operation
fdiv.s f23, f28, f14, rtz # perform operation
fdiv.s f23, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fdiv.s f18, f15, f19, dyn # perform operation
fdiv.s f18, f15, f19, rdn # perform operation
fdiv.s f18, f15, f19, rmm # perform operation
fdiv.s f18, f15, f19, rne # perform operation
fdiv.s f18, f15, f19, rtz # perform operation
fdiv.s f18, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fdiv.s f19, f1, f15, dyn # perform operation
fdiv.s f19, f1, f15, rdn # perform operation
fdiv.s f19, f1, f15, rmm # perform operation
fdiv.s f19, f1, f15, rne # perform operation
fdiv.s f19, f1, f15, rtz # perform operation
fdiv.s f19, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fdiv.s f14, f28, f3, dyn # perform operation
fdiv.s f14, f28, f3, rdn # perform operation
fdiv.s f14, f28, f3, rmm # perform operation
fdiv.s f14, f28, f3, rne # perform operation
fdiv.s f14, f28, f3, rtz # perform operation
fdiv.s f14, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fdiv.s f22, f31, f2, dyn # perform operation
fdiv.s f22, f31, f2, rdn # perform operation
fdiv.s f22, f31, f2, rmm # perform operation
fdiv.s f22, f31, f2, rne # perform operation
fdiv.s f22, f31, f2, rtz # perform operation
fdiv.s f22, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fdiv.s f20, f23, f3, dyn # perform operation
fdiv.s f20, f23, f3, rdn # perform operation
fdiv.s f20, f23, f3, rmm # perform operation
fdiv.s f20, f23, f3, rne # perform operation
fdiv.s f20, f23, f3, rtz # perform operation
fdiv.s f20, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fdiv.s f1, f18, f14, dyn # perform operation
fdiv.s f1, f18, f14, rdn # perform operation
fdiv.s f1, f18, f14, rmm # perform operation
fdiv.s f1, f18, f14, rne # perform operation
fdiv.s f1, f18, f14, rtz # perform operation
fdiv.s f1, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fdiv.s f2, f22, f18, dyn # perform operation
fdiv.s f2, f22, f18, rdn # perform operation
fdiv.s f2, f22, f18, rmm # perform operation
fdiv.s f2, f22, f18, rne # perform operation
fdiv.s f2, f22, f18, rtz # perform operation
fdiv.s f2, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fdiv.s f28, f16, f27, dyn # perform operation
fdiv.s f28, f16, f27, rdn # perform operation
fdiv.s f28, f16, f27, rmm # perform operation
fdiv.s f28, f16, f27, rne # perform operation
fdiv.s f28, f16, f27, rtz # perform operation
fdiv.s f28, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fdiv.s f17, f21, f18, dyn # perform operation
fdiv.s f17, f21, f18, rdn # perform operation
fdiv.s f17, f21, f18, rmm # perform operation
fdiv.s f17, f21, f18, rne # perform operation
fdiv.s f17, f21, f18, rtz # perform operation
fdiv.s f17, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fdiv.s f1, f9, f3, dyn # perform operation
fdiv.s f1, f9, f3, rdn # perform operation
fdiv.s f1, f9, f3, rmm # perform operation
fdiv.s f1, f9, f3, rne # perform operation
fdiv.s f1, f9, f3, rtz # perform operation
fdiv.s f1, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fdiv.s f29, f5, f30, dyn # perform operation
fdiv.s f29, f5, f30, rdn # perform operation
fdiv.s f29, f5, f30, rmm # perform operation
fdiv.s f29, f5, f30, rne # perform operation
fdiv.s f29, f5, f30, rtz # perform operation
fdiv.s f29, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f20, f31, f29, dyn # perform operation
fdiv.s f20, f31, f29, rdn # perform operation
fdiv.s f20, f31, f29, rmm # perform operation
fdiv.s f20, f31, f29, rne # perform operation
fdiv.s f20, f31, f29, rtz # perform operation
fdiv.s f20, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fdiv.s f30, f6, f2, dyn # perform operation
fdiv.s f30, f6, f2, rdn # perform operation
fdiv.s f30, f6, f2, rmm # perform operation
fdiv.s f30, f6, f2, rne # perform operation
fdiv.s f30, f6, f2, rtz # perform operation
fdiv.s f30, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fdiv.s f2, f19, f11, dyn # perform operation
fdiv.s f2, f19, f11, rdn # perform operation
fdiv.s f2, f19, f11, rmm # perform operation
fdiv.s f2, f19, f11, rne # perform operation
fdiv.s f2, f19, f11, rtz # perform operation
fdiv.s f2, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f19, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fdiv.s f9, f23, f26, dyn # perform operation
fdiv.s f9, f23, f26, rdn # perform operation
fdiv.s f9, f23, f26, rmm # perform operation
fdiv.s f9, f23, f26, rne # perform operation
fdiv.s f9, f23, f26, rtz # perform operation
fdiv.s f9, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fdiv.s f22, f30, f11, dyn # perform operation
fdiv.s f22, f30, f11, rdn # perform operation
fdiv.s f22, f30, f11, rmm # perform operation
fdiv.s f22, f30, f11, rne # perform operation
fdiv.s f22, f30, f11, rtz # perform operation
fdiv.s f22, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fdiv.s f8, f20, f15, dyn # perform operation
fdiv.s f8, f20, f15, rdn # perform operation
fdiv.s f8, f20, f15, rmm # perform operation
fdiv.s f8, f20, f15, rne # perform operation
fdiv.s f8, f20, f15, rtz # perform operation
fdiv.s f8, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fdiv.s f8, f12, f31, dyn # perform operation
fdiv.s f8, f12, f31, rdn # perform operation
fdiv.s f8, f12, f31, rmm # perform operation
fdiv.s f8, f12, f31, rne # perform operation
fdiv.s f8, f12, f31, rtz # perform operation
fdiv.s f8, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fdiv.s f10, f14, f9, dyn # perform operation
fdiv.s f10, f14, f9, rdn # perform operation
fdiv.s f10, f14, f9, rmm # perform operation
fdiv.s f10, f14, f9, rne # perform operation
fdiv.s f10, f14, f9, rtz # perform operation
fdiv.s f10, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fdiv.s f16, f5, f24, dyn # perform operation
fdiv.s f16, f5, f24, rdn # perform operation
fdiv.s f16, f5, f24, rmm # perform operation
fdiv.s f16, f5, f24, rne # perform operation
fdiv.s f16, f5, f24, rtz # perform operation
fdiv.s f16, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fdiv.s f27, f9, f8, dyn # perform operation
fdiv.s f27, f9, f8, rdn # perform operation
fdiv.s f27, f9, f8, rmm # perform operation
fdiv.s f27, f9, f8, rne # perform operation
fdiv.s f27, f9, f8, rtz # perform operation
fdiv.s f27, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f28, 0(x2) # load 0xffffffff from memory into f28
fdiv.s f2, f19, f28, dyn # perform operation
fdiv.s f2, f19, f28, rdn # perform operation
fdiv.s f2, f19, f28, rmm # perform operation
fdiv.s f2, f19, f28, rne # perform operation
fdiv.s f2, f19, f28, rtz # perform operation
fdiv.s f2, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fdiv.s f17, f1, f24, dyn # perform operation
fdiv.s f17, f1, f24, rdn # perform operation
fdiv.s f17, f1, f24, rmm # perform operation
fdiv.s f17, f1, f24, rne # perform operation
fdiv.s f17, f1, f24, rtz # perform operation
fdiv.s f17, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fdiv.s f30, f17, f1, dyn # perform operation
fdiv.s f30, f17, f1, rdn # perform operation
fdiv.s f30, f17, f1, rmm # perform operation
fdiv.s f30, f17, f1, rne # perform operation
fdiv.s f30, f17, f1, rtz # perform operation
fdiv.s f30, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fdiv.s f1, f24, f15, dyn # perform operation
fdiv.s f1, f24, f15, rdn # perform operation
fdiv.s f1, f24, f15, rmm # perform operation
fdiv.s f1, f24, f15, rne # perform operation
fdiv.s f1, f24, f15, rtz # perform operation
fdiv.s f1, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fdiv.s f26, f29, f27, dyn # perform operation
fdiv.s f26, f29, f27, rdn # perform operation
fdiv.s f26, f29, f27, rmm # perform operation
fdiv.s f26, f29, f27, rne # perform operation
fdiv.s f26, f29, f27, rtz # perform operation
fdiv.s f26, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f29, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fdiv.s f8, f13, f30, dyn # perform operation
fdiv.s f8, f13, f30, rdn # perform operation
fdiv.s f8, f13, f30, rmm # perform operation
fdiv.s f8, f13, f30, rne # perform operation
fdiv.s f8, f13, f30, rtz # perform operation
fdiv.s f8, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.s f14, f30, f9, dyn # perform operation
fdiv.s f14, f30, f9, rdn # perform operation
fdiv.s f14, f30, f9, rmm # perform operation
fdiv.s f14, f30, f9, rne # perform operation
fdiv.s f14, f30, f9, rtz # perform operation
fdiv.s f14, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fdiv.s f17, f26, f25, dyn # perform operation
fdiv.s f17, f26, f25, rdn # perform operation
fdiv.s f17, f26, f25, rmm # perform operation
fdiv.s f17, f26, f25, rne # perform operation
fdiv.s f17, f26, f25, rtz # perform operation
fdiv.s f17, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fdiv.s f29, f7, f10, dyn # perform operation
fdiv.s f29, f7, f10, rdn # perform operation
fdiv.s f29, f7, f10, rmm # perform operation
fdiv.s f29, f7, f10, rne # perform operation
fdiv.s f29, f7, f10, rtz # perform operation
fdiv.s f29, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fdiv.s f10, f14, f1, dyn # perform operation
fdiv.s f10, f14, f1, rdn # perform operation
fdiv.s f10, f14, f1, rmm # perform operation
fdiv.s f10, f14, f1, rne # perform operation
fdiv.s f10, f14, f1, rtz # perform operation
fdiv.s f10, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fdiv.s f3, f6, f20, dyn # perform operation
fdiv.s f3, f6, f20, rdn # perform operation
fdiv.s f3, f6, f20, rmm # perform operation
fdiv.s f3, f6, f20, rne # perform operation
fdiv.s f3, f6, f20, rtz # perform operation
fdiv.s f3, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f15, f10, f25, dyn # perform operation
fdiv.s f15, f10, f25, rdn # perform operation
fdiv.s f15, f10, f25, rmm # perform operation
fdiv.s f15, f10, f25, rne # perform operation
fdiv.s f15, f10, f25, rtz # perform operation
fdiv.s f15, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fdiv.s f17, f26, f29, dyn # perform operation
fdiv.s f17, f26, f29, rdn # perform operation
fdiv.s f17, f26, f29, rmm # perform operation
fdiv.s f17, f26, f29, rne # perform operation
fdiv.s f17, f26, f29, rtz # perform operation
fdiv.s f17, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fdiv.s f21, f6, f30, dyn # perform operation
fdiv.s f21, f6, f30, rdn # perform operation
fdiv.s f21, f6, f30, rmm # perform operation
fdiv.s f21, f6, f30, rne # perform operation
fdiv.s f21, f6, f30, rtz # perform operation
fdiv.s f21, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fdiv.s f6, f21, f22, dyn # perform operation
fdiv.s f6, f21, f22, rdn # perform operation
fdiv.s f6, f21, f22, rmm # perform operation
fdiv.s f6, f21, f22, rne # perform operation
fdiv.s f6, f21, f22, rtz # perform operation
fdiv.s f6, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fdiv.s f17, f7, f19, dyn # perform operation
fdiv.s f17, f7, f19, rdn # perform operation
fdiv.s f17, f7, f19, rmm # perform operation
fdiv.s f17, f7, f19, rne # perform operation
fdiv.s f17, f7, f19, rtz # perform operation
fdiv.s f17, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fdiv.s f20, f13, f6, dyn # perform operation
fdiv.s f20, f13, f6, rdn # perform operation
fdiv.s f20, f13, f6, rmm # perform operation
fdiv.s f20, f13, f6, rne # perform operation
fdiv.s f20, f13, f6, rtz # perform operation
fdiv.s f20, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fdiv.s f20, f12, f18, dyn # perform operation
fdiv.s f20, f12, f18, rdn # perform operation
fdiv.s f20, f12, f18, rmm # perform operation
fdiv.s f20, f12, f18, rne # perform operation
fdiv.s f20, f12, f18, rtz # perform operation
fdiv.s f20, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fdiv.s f13, f7, f14, dyn # perform operation
fdiv.s f13, f7, f14, rdn # perform operation
fdiv.s f13, f7, f14, rmm # perform operation
fdiv.s f13, f7, f14, rne # perform operation
fdiv.s f13, f7, f14, rtz # perform operation
fdiv.s f13, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fdiv.s f11, f30, f7, dyn # perform operation
fdiv.s f11, f30, f7, rdn # perform operation
fdiv.s f11, f30, f7, rmm # perform operation
fdiv.s f11, f30, f7, rne # perform operation
fdiv.s f11, f30, f7, rtz # perform operation
fdiv.s f11, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fdiv.s f24, f1, f13, dyn # perform operation
fdiv.s f24, f1, f13, rdn # perform operation
fdiv.s f24, f1, f13, rmm # perform operation
fdiv.s f24, f1, f13, rne # perform operation
fdiv.s f24, f1, f13, rtz # perform operation
fdiv.s f24, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fdiv.s f1, f20, f14, dyn # perform operation
fdiv.s f1, f20, f14, rdn # perform operation
fdiv.s f1, f20, f14, rmm # perform operation
fdiv.s f1, f20, f14, rne # perform operation
fdiv.s f1, f20, f14, rtz # perform operation
fdiv.s f1, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.s f29, f11, f13, dyn # perform operation
fdiv.s f29, f11, f13, rdn # perform operation
fdiv.s f29, f11, f13, rmm # perform operation
fdiv.s f29, f11, f13, rne # perform operation
fdiv.s f29, f11, f13, rtz # perform operation
fdiv.s f29, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fdiv.s f5, f9, f27, dyn # perform operation
fdiv.s f5, f9, f27, rdn # perform operation
fdiv.s f5, f9, f27, rmm # perform operation
fdiv.s f5, f9, f27, rne # perform operation
fdiv.s f5, f9, f27, rtz # perform operation
fdiv.s f5, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fdiv.s f28, f7, f20, dyn # perform operation
fdiv.s f28, f7, f20, rdn # perform operation
fdiv.s f28, f7, f20, rmm # perform operation
fdiv.s f28, f7, f20, rne # perform operation
fdiv.s f28, f7, f20, rtz # perform operation
fdiv.s f28, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fdiv.s f8, f18, f22, dyn # perform operation
fdiv.s f8, f18, f22, rdn # perform operation
fdiv.s f8, f18, f22, rmm # perform operation
fdiv.s f8, f18, f22, rne # perform operation
fdiv.s f8, f18, f22, rtz # perform operation
fdiv.s f8, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fdiv.s f11, f26, f17, dyn # perform operation
fdiv.s f11, f26, f17, rdn # perform operation
fdiv.s f11, f26, f17, rmm # perform operation
fdiv.s f11, f26, f17, rne # perform operation
fdiv.s f11, f26, f17, rtz # perform operation
fdiv.s f11, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fdiv.s f7, f14, f17, dyn # perform operation
fdiv.s f7, f14, f17, rdn # perform operation
fdiv.s f7, f14, f17, rmm # perform operation
fdiv.s f7, f14, f17, rne # perform operation
fdiv.s f7, f14, f17, rtz # perform operation
fdiv.s f7, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fdiv.s f24, f29, f14, dyn # perform operation
fdiv.s f24, f29, f14, rdn # perform operation
fdiv.s f24, f29, f14, rmm # perform operation
fdiv.s f24, f29, f14, rne # perform operation
fdiv.s f24, f29, f14, rtz # perform operation
fdiv.s f24, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fdiv.s f12, f11, f21, dyn # perform operation
fdiv.s f12, f11, f21, rdn # perform operation
fdiv.s f12, f11, f21, rmm # perform operation
fdiv.s f12, f11, f21, rne # perform operation
fdiv.s f12, f11, f21, rtz # perform operation
fdiv.s f12, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fdiv.s f8, f22, f26, dyn # perform operation
fdiv.s f8, f22, f26, rdn # perform operation
fdiv.s f8, f22, f26, rmm # perform operation
fdiv.s f8, f22, f26, rne # perform operation
fdiv.s f8, f22, f26, rtz # perform operation
fdiv.s f8, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
fdiv.s f27, f16, f6, dyn # perform operation
fdiv.s f27, f16, f6, rdn # perform operation
fdiv.s f27, f16, f6, rmm # perform operation
fdiv.s f27, f16, f6, rne # perform operation
fdiv.s f27, f16, f6, rtz # perform operation
fdiv.s f27, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fdiv.s f2, f30, f9, dyn # perform operation
fdiv.s f2, f30, f9, rdn # perform operation
fdiv.s f2, f30, f9, rmm # perform operation
fdiv.s f2, f30, f9, rne # perform operation
fdiv.s f2, f30, f9, rtz # perform operation
fdiv.s f2, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fdiv.s f30, f23, f1, dyn # perform operation
fdiv.s f30, f23, f1, rdn # perform operation
fdiv.s f30, f23, f1, rmm # perform operation
fdiv.s f30, f23, f1, rne # perform operation
fdiv.s f30, f23, f1, rtz # perform operation
fdiv.s f30, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fdiv.s f29, f24, f5, dyn # perform operation
fdiv.s f29, f24, f5, rdn # perform operation
fdiv.s f29, f24, f5, rmm # perform operation
fdiv.s f29, f24, f5, rne # perform operation
fdiv.s f29, f24, f5, rtz # perform operation
fdiv.s f29, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f2, f19, f31, dyn # perform operation
fdiv.s f2, f19, f31, rdn # perform operation
fdiv.s f2, f19, f31, rmm # perform operation
fdiv.s f2, f19, f31, rne # perform operation
fdiv.s f2, f19, f31, rtz # perform operation
fdiv.s f2, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fdiv.s f8, f3, f7, dyn # perform operation
fdiv.s f8, f3, f7, rdn # perform operation
fdiv.s f8, f3, f7, rmm # perform operation
fdiv.s f8, f3, f7, rne # perform operation
fdiv.s f8, f3, f7, rtz # perform operation
fdiv.s f8, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fdiv.s f2, f30, f8, dyn # perform operation
fdiv.s f2, f30, f8, rdn # perform operation
fdiv.s f2, f30, f8, rmm # perform operation
fdiv.s f2, f30, f8, rne # perform operation
fdiv.s f2, f30, f8, rtz # perform operation
fdiv.s f2, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fdiv.s f22, f3, f27, dyn # perform operation
fdiv.s f22, f3, f27, rdn # perform operation
fdiv.s f22, f3, f27, rmm # perform operation
fdiv.s f22, f3, f27, rne # perform operation
fdiv.s f22, f3, f27, rtz # perform operation
fdiv.s f22, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fdiv.s f6, f10, f15, dyn # perform operation
fdiv.s f6, f10, f15, rdn # perform operation
fdiv.s f6, f10, f15, rmm # perform operation
fdiv.s f6, f10, f15, rne # perform operation
fdiv.s f6, f10, f15, rtz # perform operation
fdiv.s f6, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fdiv.s f29, f27, f26, dyn # perform operation
fdiv.s f29, f27, f26, rdn # perform operation
fdiv.s f29, f27, f26, rmm # perform operation
fdiv.s f29, f27, f26, rne # perform operation
fdiv.s f29, f27, f26, rtz # perform operation
fdiv.s f29, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fdiv.s f8, f26, f9, dyn # perform operation
fdiv.s f8, f26, f9, rdn # perform operation
fdiv.s f8, f26, f9, rmm # perform operation
fdiv.s f8, f26, f9, rne # perform operation
fdiv.s f8, f26, f9, rtz # perform operation
fdiv.s f8, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fdiv.s f20, f1, f8, dyn # perform operation
fdiv.s f20, f1, f8, rdn # perform operation
fdiv.s f20, f1, f8, rmm # perform operation
fdiv.s f20, f1, f8, rne # perform operation
fdiv.s f20, f1, f8, rtz # perform operation
fdiv.s f20, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fdiv.s f25, f3, f17, dyn # perform operation
fdiv.s f25, f3, f17, rdn # perform operation
fdiv.s f25, f3, f17, rmm # perform operation
fdiv.s f25, f3, f17, rne # perform operation
fdiv.s f25, f3, f17, rtz # perform operation
fdiv.s f25, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fdiv.s f3, f6, f1, dyn # perform operation
fdiv.s f3, f6, f1, rdn # perform operation
fdiv.s f3, f6, f1, rmm # perform operation
fdiv.s f3, f6, f1, rne # perform operation
fdiv.s f3, f6, f1, rtz # perform operation
fdiv.s f3, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fdiv.s f24, f8, f2, dyn # perform operation
fdiv.s f24, f8, f2, rdn # perform operation
fdiv.s f24, f8, f2, rmm # perform operation
fdiv.s f24, f8, f2, rne # perform operation
fdiv.s f24, f8, f2, rtz # perform operation
fdiv.s f24, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fdiv.s f29, f7, f5, dyn # perform operation
fdiv.s f29, f7, f5, rdn # perform operation
fdiv.s f29, f7, f5, rmm # perform operation
fdiv.s f29, f7, f5, rne # perform operation
fdiv.s f29, f7, f5, rtz # perform operation
fdiv.s f29, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fdiv.s f18, f29, f22, dyn # perform operation
fdiv.s f18, f29, f22, rdn # perform operation
fdiv.s f18, f29, f22, rmm # perform operation
fdiv.s f18, f29, f22, rne # perform operation
fdiv.s f18, f29, f22, rtz # perform operation
fdiv.s f18, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fdiv.s f31, f17, f16, dyn # perform operation
fdiv.s f31, f17, f16, rdn # perform operation
fdiv.s f31, f17, f16, rmm # perform operation
fdiv.s f31, f17, f16, rne # perform operation
fdiv.s f31, f17, f16, rtz # perform operation
fdiv.s f31, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fdiv.s f17, f5, f2, dyn # perform operation
fdiv.s f17, f5, f2, rdn # perform operation
fdiv.s f17, f5, f2, rmm # perform operation
fdiv.s f17, f5, f2, rne # perform operation
fdiv.s f17, f5, f2, rtz # perform operation
fdiv.s f17, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.s f18, f19, f2, dyn # perform operation
fdiv.s f18, f19, f2, rdn # perform operation
fdiv.s f18, f19, f2, rmm # perform operation
fdiv.s f18, f19, f2, rne # perform operation
fdiv.s f18, f19, f2, rtz # perform operation
fdiv.s f18, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fdiv.s f16, f14, f25, dyn # perform operation
fdiv.s f16, f14, f25, rdn # perform operation
fdiv.s f16, f14, f25, rmm # perform operation
fdiv.s f16, f14, f25, rne # perform operation
fdiv.s f16, f14, f25, rtz # perform operation
fdiv.s f16, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fdiv.s f1, f8, f21, dyn # perform operation
fdiv.s f1, f8, f21, rdn # perform operation
fdiv.s f1, f8, f21, rmm # perform operation
fdiv.s f1, f8, f21, rne # perform operation
fdiv.s f1, f8, f21, rtz # perform operation
fdiv.s f1, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f28, 0(x2) # load 0xffbfffff from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fdiv.s f9, f28, f11, dyn # perform operation
fdiv.s f9, f28, f11, rdn # perform operation
fdiv.s f9, f28, f11, rmm # perform operation
fdiv.s f9, f28, f11, rne # perform operation
fdiv.s f9, f28, f11, rtz # perform operation
fdiv.s f9, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fdiv.s f16, f20, f5, dyn # perform operation
fdiv.s f16, f20, f5, rdn # perform operation
fdiv.s f16, f20, f5, rmm # perform operation
fdiv.s f16, f20, f5, rne # perform operation
fdiv.s f16, f20, f5, rtz # perform operation
fdiv.s f16, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fdiv.s f29, f5, f24, dyn # perform operation
fdiv.s f29, f5, f24, rdn # perform operation
fdiv.s f29, f5, f24, rmm # perform operation
fdiv.s f29, f5, f24, rne # perform operation
fdiv.s f29, f5, f24, rtz # perform operation
fdiv.s f29, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fdiv.s f14, f26, f5, dyn # perform operation
fdiv.s f14, f26, f5, rdn # perform operation
fdiv.s f14, f26, f5, rmm # perform operation
fdiv.s f14, f26, f5, rne # perform operation
fdiv.s f14, f26, f5, rtz # perform operation
fdiv.s f14, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fdiv.s f9, f26, f25, dyn # perform operation
fdiv.s f9, f26, f25, rdn # perform operation
fdiv.s f9, f26, f25, rmm # perform operation
fdiv.s f9, f26, f25, rne # perform operation
fdiv.s f9, f26, f25, rtz # perform operation
fdiv.s f9, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fdiv.s f20, f21, f29, dyn # perform operation
fdiv.s f20, f21, f29, rdn # perform operation
fdiv.s f20, f21, f29, rmm # perform operation
fdiv.s f20, f21, f29, rne # perform operation
fdiv.s f20, f21, f29, rtz # perform operation
fdiv.s f20, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
fdiv.s f13, f27, f10, dyn # perform operation
fdiv.s f13, f27, f10, rdn # perform operation
fdiv.s f13, f27, f10, rmm # perform operation
fdiv.s f13, f27, f10, rne # perform operation
fdiv.s f13, f27, f10, rtz # perform operation
fdiv.s f13, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fdiv.s f10, f8, f23, dyn # perform operation
fdiv.s f10, f8, f23, rdn # perform operation
fdiv.s f10, f8, f23, rmm # perform operation
fdiv.s f10, f8, f23, rne # perform operation
fdiv.s f10, f8, f23, rtz # perform operation
fdiv.s f10, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fdiv.s f1, f29, f17, dyn # perform operation
fdiv.s f1, f29, f17, rdn # perform operation
fdiv.s f1, f29, f17, rmm # perform operation
fdiv.s f1, f29, f17, rne # perform operation
fdiv.s f1, f29, f17, rtz # perform operation
fdiv.s f1, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fdiv.s f20, f8, f1, dyn # perform operation
fdiv.s f20, f8, f1, rdn # perform operation
fdiv.s f20, f8, f1, rmm # perform operation
fdiv.s f20, f8, f1, rne # perform operation
fdiv.s f20, f8, f1, rtz # perform operation
fdiv.s f20, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f21, f1, f31, dyn # perform operation
fdiv.s f21, f1, f31, rdn # perform operation
fdiv.s f21, f1, f31, rmm # perform operation
fdiv.s f21, f1, f31, rne # perform operation
fdiv.s f21, f1, f31, rtz # perform operation
fdiv.s f21, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fdiv.s f6, f2, f14, dyn # perform operation
fdiv.s f6, f2, f14, rdn # perform operation
fdiv.s f6, f2, f14, rmm # perform operation
fdiv.s f6, f2, f14, rne # perform operation
fdiv.s f6, f2, f14, rtz # perform operation
fdiv.s f6, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fdiv.s f14, f16, f8, dyn # perform operation
fdiv.s f14, f16, f8, rdn # perform operation
fdiv.s f14, f16, f8, rmm # perform operation
fdiv.s f14, f16, f8, rne # perform operation
fdiv.s f14, f16, f8, rtz # perform operation
fdiv.s f14, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f16, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fdiv.s f18, f19, f23, dyn # perform operation
fdiv.s f18, f19, f23, rdn # perform operation
fdiv.s f18, f19, f23, rmm # perform operation
fdiv.s f18, f19, f23, rne # perform operation
fdiv.s f18, f19, f23, rtz # perform operation
fdiv.s f18, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fdiv.s f19, f6, f10, dyn # perform operation
fdiv.s f19, f6, f10, rdn # perform operation
fdiv.s f19, f6, f10, rmm # perform operation
fdiv.s f19, f6, f10, rne # perform operation
fdiv.s f19, f6, f10, rtz # perform operation
fdiv.s f19, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fdiv.s f10, f13, f18, dyn # perform operation
fdiv.s f10, f13, f18, rdn # perform operation
fdiv.s f10, f13, f18, rmm # perform operation
fdiv.s f10, f13, f18, rne # perform operation
fdiv.s f10, f13, f18, rtz # perform operation
fdiv.s f10, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fdiv.s f30, f10, f23, dyn # perform operation
fdiv.s f30, f10, f23, rdn # perform operation
fdiv.s f30, f10, f23, rmm # perform operation
fdiv.s f30, f10, f23, rne # perform operation
fdiv.s f30, f10, f23, rtz # perform operation
fdiv.s f30, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fdiv.s f8, f14, f29, dyn # perform operation
fdiv.s f8, f14, f29, rdn # perform operation
fdiv.s f8, f14, f29, rmm # perform operation
fdiv.s f8, f14, f29, rne # perform operation
fdiv.s f8, f14, f29, rtz # perform operation
fdiv.s f8, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fdiv.s f28, f8, f24, dyn # perform operation
fdiv.s f28, f8, f24, rdn # perform operation
fdiv.s f28, f8, f24, rmm # perform operation
fdiv.s f28, f8, f24, rne # perform operation
fdiv.s f28, f8, f24, rtz # perform operation
fdiv.s f28, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fdiv.s f11, f20, f21, dyn # perform operation
fdiv.s f11, f20, f21, rdn # perform operation
fdiv.s f11, f20, f21, rmm # perform operation
fdiv.s f11, f20, f21, rne # perform operation
fdiv.s f11, f20, f21, rtz # perform operation
fdiv.s f11, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fdiv.s f19, f5, f12, dyn # perform operation
fdiv.s f19, f5, f12, rdn # perform operation
fdiv.s f19, f5, f12, rmm # perform operation
fdiv.s f19, f5, f12, rne # perform operation
fdiv.s f19, f5, f12, rtz # perform operation
fdiv.s f19, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fdiv.s f25, f18, f24, dyn # perform operation
fdiv.s f25, f18, f24, rdn # perform operation
fdiv.s f25, f18, f24, rmm # perform operation
fdiv.s f25, f18, f24, rne # perform operation
fdiv.s f25, f18, f24, rtz # perform operation
fdiv.s f25, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f12, f23, f19, dyn # perform operation
fdiv.s f12, f23, f19, rdn # perform operation
fdiv.s f12, f23, f19, rmm # perform operation
fdiv.s f12, f23, f19, rne # perform operation
fdiv.s f12, f23, f19, rtz # perform operation
fdiv.s f12, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fdiv.s f13, f29, f16, dyn # perform operation
fdiv.s f13, f29, f16, rdn # perform operation
fdiv.s f13, f29, f16, rmm # perform operation
fdiv.s f13, f29, f16, rne # perform operation
fdiv.s f13, f29, f16, rtz # perform operation
fdiv.s f13, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fdiv.s f30, f26, f1, dyn # perform operation
fdiv.s f30, f26, f1, rdn # perform operation
fdiv.s f30, f26, f1, rmm # perform operation
fdiv.s f30, f26, f1, rne # perform operation
fdiv.s f30, f26, f1, rtz # perform operation
fdiv.s f30, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f26, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.s f21, f24, f3, dyn # perform operation
fdiv.s f21, f24, f3, rdn # perform operation
fdiv.s f21, f24, f3, rmm # perform operation
fdiv.s f21, f24, f3, rne # perform operation
fdiv.s f21, f24, f3, rtz # perform operation
fdiv.s f21, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fdiv.s f16, f3, f7, dyn # perform operation
fdiv.s f16, f3, f7, rdn # perform operation
fdiv.s f16, f3, f7, rmm # perform operation
fdiv.s f16, f3, f7, rne # perform operation
fdiv.s f16, f3, f7, rtz # perform operation
fdiv.s f16, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fdiv.s f11, f5, f23, dyn # perform operation
fdiv.s f11, f5, f23, rdn # perform operation
fdiv.s f11, f5, f23, rmm # perform operation
fdiv.s f11, f5, f23, rne # perform operation
fdiv.s f11, f5, f23, rtz # perform operation
fdiv.s f11, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fdiv.s f5, f10, f15, dyn # perform operation
fdiv.s f5, f10, f15, rdn # perform operation
fdiv.s f5, f10, f15, rmm # perform operation
fdiv.s f5, f10, f15, rne # perform operation
fdiv.s f5, f10, f15, rtz # perform operation
fdiv.s f5, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fdiv.s f15, f23, f28, dyn # perform operation
fdiv.s f15, f23, f28, rdn # perform operation
fdiv.s f15, f23, f28, rmm # perform operation
fdiv.s f15, f23, f28, rne # perform operation
fdiv.s f15, f23, f28, rtz # perform operation
fdiv.s f15, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fdiv.s f5, f3, f6, dyn # perform operation
fdiv.s f5, f3, f6, rdn # perform operation
fdiv.s f5, f3, f6, rmm # perform operation
fdiv.s f5, f3, f6, rne # perform operation
fdiv.s f5, f3, f6, rtz # perform operation
fdiv.s f5, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fdiv.s f29, f22, f19, dyn # perform operation
fdiv.s f29, f22, f19, rdn # perform operation
fdiv.s f29, f22, f19, rmm # perform operation
fdiv.s f29, f22, f19, rne # perform operation
fdiv.s f29, f22, f19, rtz # perform operation
fdiv.s f29, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fdiv.s f6, f16, f24, dyn # perform operation
fdiv.s f6, f16, f24, rdn # perform operation
fdiv.s f6, f16, f24, rmm # perform operation
fdiv.s f6, f16, f24, rne # perform operation
fdiv.s f6, f16, f24, rtz # perform operation
fdiv.s f6, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f16, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fdiv.s f17, f29, f28, dyn # perform operation
fdiv.s f17, f29, f28, rdn # perform operation
fdiv.s f17, f29, f28, rmm # perform operation
fdiv.s f17, f29, f28, rne # perform operation
fdiv.s f17, f29, f28, rtz # perform operation
fdiv.s f17, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fdiv.s f15, f1, f14, dyn # perform operation
fdiv.s f15, f1, f14, rdn # perform operation
fdiv.s f15, f1, f14, rmm # perform operation
fdiv.s f15, f1, f14, rne # perform operation
fdiv.s f15, f1, f14, rtz # perform operation
fdiv.s f15, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f1, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fdiv.s f23, f31, f18, dyn # perform operation
fdiv.s f23, f31, f18, rdn # perform operation
fdiv.s f23, f31, f18, rmm # perform operation
fdiv.s f23, f31, f18, rne # perform operation
fdiv.s f23, f31, f18, rtz # perform operation
fdiv.s f23, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fdiv.s f29, f24, f12, dyn # perform operation
fdiv.s f29, f24, f12, rdn # perform operation
fdiv.s f29, f24, f12, rmm # perform operation
fdiv.s f29, f24, f12, rne # perform operation
fdiv.s f29, f24, f12, rtz # perform operation
fdiv.s f29, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.s f18, f15, f28, dyn # perform operation
fdiv.s f18, f15, f28, rdn # perform operation
fdiv.s f18, f15, f28, rmm # perform operation
fdiv.s f18, f15, f28, rne # perform operation
fdiv.s f18, f15, f28, rtz # perform operation
fdiv.s f18, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fdiv.s f3, f9, f29, dyn # perform operation
fdiv.s f3, f9, f29, rdn # perform operation
fdiv.s f3, f9, f29, rmm # perform operation
fdiv.s f3, f9, f29, rne # perform operation
fdiv.s f3, f9, f29, rtz # perform operation
fdiv.s f3, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fdiv.s f24, f18, f27, dyn # perform operation
fdiv.s f24, f18, f27, rdn # perform operation
fdiv.s f24, f18, f27, rmm # perform operation
fdiv.s f24, f18, f27, rne # perform operation
fdiv.s f24, f18, f27, rtz # perform operation
fdiv.s f24, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fdiv.s f24, f1, f10, dyn # perform operation
fdiv.s f24, f1, f10, rdn # perform operation
fdiv.s f24, f1, f10, rmm # perform operation
fdiv.s f24, f1, f10, rne # perform operation
fdiv.s f24, f1, f10, rtz # perform operation
fdiv.s f24, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fdiv.s f10, f17, f24, dyn # perform operation
fdiv.s f10, f17, f24, rdn # perform operation
fdiv.s f10, f17, f24, rmm # perform operation
fdiv.s f10, f17, f24, rne # perform operation
fdiv.s f10, f17, f24, rtz # perform operation
fdiv.s f10, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fdiv.s f3, f11, f18, dyn # perform operation
fdiv.s f3, f11, f18, rdn # perform operation
fdiv.s f3, f11, f18, rmm # perform operation
fdiv.s f3, f11, f18, rne # perform operation
fdiv.s f3, f11, f18, rtz # perform operation
fdiv.s f3, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fdiv.s f27, f10, f21, dyn # perform operation
fdiv.s f27, f10, f21, rdn # perform operation
fdiv.s f27, f10, f21, rmm # perform operation
fdiv.s f27, f10, f21, rne # perform operation
fdiv.s f27, f10, f21, rtz # perform operation
fdiv.s f27, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fdiv.s f20, f13, f18, dyn # perform operation
fdiv.s f20, f13, f18, rdn # perform operation
fdiv.s f20, f13, f18, rmm # perform operation
fdiv.s f20, f13, f18, rne # perform operation
fdiv.s f20, f13, f18, rtz # perform operation
fdiv.s f20, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fdiv.s f30, f3, f21, dyn # perform operation
fdiv.s f30, f3, f21, rdn # perform operation
fdiv.s f30, f3, f21, rmm # perform operation
fdiv.s f30, f3, f21, rne # perform operation
fdiv.s f30, f3, f21, rtz # perform operation
fdiv.s f30, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fdiv.s f25, f28, f9, dyn # perform operation
fdiv.s f25, f28, f9, rdn # perform operation
fdiv.s f25, f28, f9, rmm # perform operation
fdiv.s f25, f28, f9, rne # perform operation
fdiv.s f25, f28, f9, rtz # perform operation
fdiv.s f25, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fdiv.s f8, f14, f16, dyn # perform operation
fdiv.s f8, f14, f16, rdn # perform operation
fdiv.s f8, f14, f16, rmm # perform operation
fdiv.s f8, f14, f16, rne # perform operation
fdiv.s f8, f14, f16, rtz # perform operation
fdiv.s f8, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fdiv.s f12, f8, f15, dyn # perform operation
fdiv.s f12, f8, f15, rdn # perform operation
fdiv.s f12, f8, f15, rmm # perform operation
fdiv.s f12, f8, f15, rne # perform operation
fdiv.s f12, f8, f15, rtz # perform operation
fdiv.s f12, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fdiv.s f11, f26, f2, dyn # perform operation
fdiv.s f11, f26, f2, rdn # perform operation
fdiv.s f11, f26, f2, rmm # perform operation
fdiv.s f11, f26, f2, rne # perform operation
fdiv.s f11, f26, f2, rtz # perform operation
fdiv.s f11, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fdiv.s f16, f21, f27, dyn # perform operation
fdiv.s f16, f21, f27, rdn # perform operation
fdiv.s f16, f21, f27, rmm # perform operation
fdiv.s f16, f21, f27, rne # perform operation
fdiv.s f16, f21, f27, rtz # perform operation
fdiv.s f16, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fdiv.s f16, f18, f19, dyn # perform operation
fdiv.s f16, f18, f19, rdn # perform operation
fdiv.s f16, f18, f19, rmm # perform operation
fdiv.s f16, f18, f19, rne # perform operation
fdiv.s f16, f18, f19, rtz # perform operation
fdiv.s f16, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f18, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fdiv.s f9, f1, f22, dyn # perform operation
fdiv.s f9, f1, f22, rdn # perform operation
fdiv.s f9, f1, f22, rmm # perform operation
fdiv.s f9, f1, f22, rne # perform operation
fdiv.s f9, f1, f22, rtz # perform operation
fdiv.s f9, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.s f6, f20, f14, dyn # perform operation
fdiv.s f6, f20, f14, rdn # perform operation
fdiv.s f6, f20, f14, rmm # perform operation
fdiv.s f6, f20, f14, rne # perform operation
fdiv.s f6, f20, f14, rtz # perform operation
fdiv.s f6, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fdiv.s f22, f14, f5, dyn # perform operation
fdiv.s f22, f14, f5, rdn # perform operation
fdiv.s f22, f14, f5, rmm # perform operation
fdiv.s f22, f14, f5, rne # perform operation
fdiv.s f22, f14, f5, rtz # perform operation
fdiv.s f22, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f9, f2, f11, dyn # perform operation
fdiv.s f9, f2, f11, rdn # perform operation
fdiv.s f9, f2, f11, rmm # perform operation
fdiv.s f9, f2, f11, rne # perform operation
fdiv.s f9, f2, f11, rtz # perform operation
fdiv.s f9, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f2, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fdiv.s f17, f5, f14, dyn # perform operation
fdiv.s f17, f5, f14, rdn # perform operation
fdiv.s f17, f5, f14, rmm # perform operation
fdiv.s f17, f5, f14, rne # perform operation
fdiv.s f17, f5, f14, rtz # perform operation
fdiv.s f17, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
fdiv.s f20, f12, f11, dyn # perform operation
fdiv.s f20, f12, f11, rdn # perform operation
fdiv.s f20, f12, f11, rmm # perform operation
fdiv.s f20, f12, f11, rne # perform operation
fdiv.s f20, f12, f11, rtz # perform operation
fdiv.s f20, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fdiv.s f18, f19, f28, dyn # perform operation
fdiv.s f18, f19, f28, rdn # perform operation
fdiv.s f18, f19, f28, rmm # perform operation
fdiv.s f18, f19, f28, rne # perform operation
fdiv.s f18, f19, f28, rtz # perform operation
fdiv.s f18, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fdiv.s f2, f29, f31, dyn # perform operation
fdiv.s f2, f29, f31, rdn # perform operation
fdiv.s f2, f29, f31, rmm # perform operation
fdiv.s f2, f29, f31, rne # perform operation
fdiv.s f2, f29, f31, rtz # perform operation
fdiv.s f2, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fdiv.s f7, f5, f3, dyn # perform operation
fdiv.s f7, f5, f3, rdn # perform operation
fdiv.s f7, f5, f3, rmm # perform operation
fdiv.s f7, f5, f3, rne # perform operation
fdiv.s f7, f5, f3, rtz # perform operation
fdiv.s f7, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f25, f13, f11, dyn # perform operation
fdiv.s f25, f13, f11, rdn # perform operation
fdiv.s f25, f13, f11, rmm # perform operation
fdiv.s f25, f13, f11, rne # perform operation
fdiv.s f25, f13, f11, rtz # perform operation
fdiv.s f25, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
fdiv.s f10, f29, f6, dyn # perform operation
fdiv.s f10, f29, f6, rdn # perform operation
fdiv.s f10, f29, f6, rmm # perform operation
fdiv.s f10, f29, f6, rne # perform operation
fdiv.s f10, f29, f6, rtz # perform operation
fdiv.s f10, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fdiv.s f21, f14, f13, dyn # perform operation
fdiv.s f21, f14, f13, rdn # perform operation
fdiv.s f21, f14, f13, rmm # perform operation
fdiv.s f21, f14, f13, rne # perform operation
fdiv.s f21, f14, f13, rtz # perform operation
fdiv.s f21, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fdiv.s f18, f1, f12, dyn # perform operation
fdiv.s f18, f1, f12, rdn # perform operation
fdiv.s f18, f1, f12, rmm # perform operation
fdiv.s f18, f1, f12, rne # perform operation
fdiv.s f18, f1, f12, rtz # perform operation
fdiv.s f18, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f1, f12 # perform operation


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
