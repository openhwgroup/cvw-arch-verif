///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fadd.h.S
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
add x24, x20, x31 # perform first operation
fadd.h f22, f19, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x27, x14 # perform first operation
fadd.h f3, f9, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x24, x29 # perform first operation
fadd.h f15, f3, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f13, f12, f23 # perform first operation
fadd.h f12, f13, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f31, f1 # perform first operation
fadd.h f1, f10, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x27, x14 # perform first operation
fadd.h f22, f21, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f10, f16 # perform first operation
fadd.h f8, f19, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f27, f1, f16 # perform first operation
fadd.h f27, f23, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f15, f10 # perform first operation
fadd.h f20, f16, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f15, f28, f30 # perform first operation
fadd.h f28, f13, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f7, f6, f20 # perform first operation
fadd.h f20, f31, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f14, f24 # perform first operation
fadd.h f6, f13, f9 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x8170c55034984960 # load x3 with value 0x8170c55034984960
sw x3, 0(x2) # store 0x8170c55034984960 in memory
flh f0, 0(x2) # load 0x8170c55034984960 from memory into f0
la x2, scratch
li x3, 0x2626c429c1d9edb # load x3 with value 0x2626c429c1d9edb
sw x3, 0(x2) # store 0x2626c429c1d9edb in memory
flh f25, 0(x2) # load 0x2626c429c1d9edb from memory into f25
fadd.h f28, f0, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x5962809e53f1fde5 # load x3 with value 0x5962809e53f1fde5
sw x3, 0(x2) # store 0x5962809e53f1fde5 in memory
flh f1, 0(x2) # load 0x5962809e53f1fde5 from memory into f1
la x2, scratch
li x3, 0x6b61f71a4a61ef0a # load x3 with value 0x6b61f71a4a61ef0a
sw x3, 0(x2) # store 0x6b61f71a4a61ef0a in memory
flh f27, 0(x2) # load 0x6b61f71a4a61ef0a from memory into f27
fadd.h f13, f1, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xb9007f2c6debf1fc # load x3 with value 0xb9007f2c6debf1fc
sw x3, 0(x2) # store 0xb9007f2c6debf1fc in memory
flh f2, 0(x2) # load 0xb9007f2c6debf1fc from memory into f2
la x2, scratch
li x3, 0xf958fa9fc98236fe # load x3 with value 0xf958fa9fc98236fe
sw x3, 0(x2) # store 0xf958fa9fc98236fe in memory
flh f10, 0(x2) # load 0xf958fa9fc98236fe from memory into f10
fadd.h f30, f2, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x285faffbbcfec62d # load x3 with value 0x285faffbbcfec62d
sw x3, 0(x2) # store 0x285faffbbcfec62d in memory
flh f3, 0(x2) # load 0x285faffbbcfec62d from memory into f3
la x2, scratch
li x3, 0x77cce1c5623f35bb # load x3 with value 0x77cce1c5623f35bb
sw x3, 0(x2) # store 0x77cce1c5623f35bb in memory
flh f26, 0(x2) # load 0x77cce1c5623f35bb from memory into f26
fadd.h f7, f3, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd52c1074c7d6e128 # load x3 with value 0xd52c1074c7d6e128
sw x3, 0(x2) # store 0xd52c1074c7d6e128 in memory
flh f4, 0(x2) # load 0xd52c1074c7d6e128 from memory into f4
la x2, scratch
li x3, 0x956d16c5eb1e0a6a # load x3 with value 0x956d16c5eb1e0a6a
sw x3, 0(x2) # store 0x956d16c5eb1e0a6a in memory
flh f29, 0(x2) # load 0x956d16c5eb1e0a6a from memory into f29
fadd.h f16, f4, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xff6c822e817ef91f # load x3 with value 0xff6c822e817ef91f
sw x3, 0(x2) # store 0xff6c822e817ef91f in memory
flh f5, 0(x2) # load 0xff6c822e817ef91f from memory into f5
la x2, scratch
li x3, 0x660d3558712ddc09 # load x3 with value 0x660d3558712ddc09
sw x3, 0(x2) # store 0x660d3558712ddc09 in memory
flh f25, 0(x2) # load 0x660d3558712ddc09 from memory into f25
fadd.h f4, f5, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x60f6e3e314cc55da # load x3 with value 0x60f6e3e314cc55da
sw x3, 0(x2) # store 0x60f6e3e314cc55da in memory
flh f6, 0(x2) # load 0x60f6e3e314cc55da from memory into f6
la x2, scratch
li x3, 0xcedd19d5db4779ed # load x3 with value 0xcedd19d5db4779ed
sw x3, 0(x2) # store 0xcedd19d5db4779ed in memory
flh f21, 0(x2) # load 0xcedd19d5db4779ed from memory into f21
fadd.h f10, f6, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfad5fbadd22d8229 # load x3 with value 0xfad5fbadd22d8229
sw x3, 0(x2) # store 0xfad5fbadd22d8229 in memory
flh f7, 0(x2) # load 0xfad5fbadd22d8229 from memory into f7
la x2, scratch
li x3, 0x13cb006fb5a25678 # load x3 with value 0x13cb006fb5a25678
sw x3, 0(x2) # store 0x13cb006fb5a25678 in memory
flh f28, 0(x2) # load 0x13cb006fb5a25678 from memory into f28
fadd.h f16, f7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xa45616bf2755cc3 # load x3 with value 0xa45616bf2755cc3
sw x3, 0(x2) # store 0xa45616bf2755cc3 in memory
flh f8, 0(x2) # load 0xa45616bf2755cc3 from memory into f8
la x2, scratch
li x3, 0x4773d4e94cabb9d4 # load x3 with value 0x4773d4e94cabb9d4
sw x3, 0(x2) # store 0x4773d4e94cabb9d4 in memory
flh f2, 0(x2) # load 0x4773d4e94cabb9d4 from memory into f2
fadd.h f26, f8, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xecc45592344216de # load x3 with value 0xecc45592344216de
sw x3, 0(x2) # store 0xecc45592344216de in memory
flh f9, 0(x2) # load 0xecc45592344216de from memory into f9
la x2, scratch
li x3, 0xf5fad0935ecc223a # load x3 with value 0xf5fad0935ecc223a
sw x3, 0(x2) # store 0xf5fad0935ecc223a in memory
flh f23, 0(x2) # load 0xf5fad0935ecc223a from memory into f23
fadd.h f22, f9, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x4075488864cc8870 # load x3 with value 0x4075488864cc8870
sw x3, 0(x2) # store 0x4075488864cc8870 in memory
flh f10, 0(x2) # load 0x4075488864cc8870 from memory into f10
la x2, scratch
li x3, 0x6293efffa25a8a35 # load x3 with value 0x6293efffa25a8a35
sw x3, 0(x2) # store 0x6293efffa25a8a35 in memory
flh f23, 0(x2) # load 0x6293efffa25a8a35 from memory into f23
fadd.h f24, f10, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xd305b5b3b664e11 # load x3 with value 0xd305b5b3b664e11
sw x3, 0(x2) # store 0xd305b5b3b664e11 in memory
flh f11, 0(x2) # load 0xd305b5b3b664e11 from memory into f11
la x2, scratch
li x3, 0x1dc15f5631366644 # load x3 with value 0x1dc15f5631366644
sw x3, 0(x2) # store 0x1dc15f5631366644 in memory
flh f18, 0(x2) # load 0x1dc15f5631366644 from memory into f18
fadd.h f21, f11, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x6efec1bbe88d24c4 # load x3 with value 0x6efec1bbe88d24c4
sw x3, 0(x2) # store 0x6efec1bbe88d24c4 in memory
flh f12, 0(x2) # load 0x6efec1bbe88d24c4 from memory into f12
la x2, scratch
li x3, 0x19cabdae8a63323d # load x3 with value 0x19cabdae8a63323d
sw x3, 0(x2) # store 0x19cabdae8a63323d in memory
flh f25, 0(x2) # load 0x19cabdae8a63323d from memory into f25
fadd.h f26, f12, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x6b30ef47ea312fc9 # load x3 with value 0x6b30ef47ea312fc9
sw x3, 0(x2) # store 0x6b30ef47ea312fc9 in memory
flh f13, 0(x2) # load 0x6b30ef47ea312fc9 from memory into f13
la x2, scratch
li x3, 0x41e75be4698a9173 # load x3 with value 0x41e75be4698a9173
sw x3, 0(x2) # store 0x41e75be4698a9173 in memory
flh f14, 0(x2) # load 0x41e75be4698a9173 from memory into f14
fadd.h f25, f13, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x363ef851f8458b72 # load x3 with value 0x363ef851f8458b72
sw x3, 0(x2) # store 0x363ef851f8458b72 in memory
flh f14, 0(x2) # load 0x363ef851f8458b72 from memory into f14
la x2, scratch
li x3, 0xaac3e1f60698fd65 # load x3 with value 0xaac3e1f60698fd65
sw x3, 0(x2) # store 0xaac3e1f60698fd65 in memory
flh f13, 0(x2) # load 0xaac3e1f60698fd65 from memory into f13
fadd.h f27, f14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xf003152ff8d50473 # load x3 with value 0xf003152ff8d50473
sw x3, 0(x2) # store 0xf003152ff8d50473 in memory
flh f15, 0(x2) # load 0xf003152ff8d50473 from memory into f15
la x2, scratch
li x3, 0x348032e997d50fd2 # load x3 with value 0x348032e997d50fd2
sw x3, 0(x2) # store 0x348032e997d50fd2 in memory
flh f17, 0(x2) # load 0x348032e997d50fd2 from memory into f17
fadd.h f30, f15, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x643f5e7be2b54082 # load x3 with value 0x643f5e7be2b54082
sw x3, 0(x2) # store 0x643f5e7be2b54082 in memory
flh f16, 0(x2) # load 0x643f5e7be2b54082 from memory into f16
la x2, scratch
li x3, 0x91430e6c46fbde90 # load x3 with value 0x91430e6c46fbde90
sw x3, 0(x2) # store 0x91430e6c46fbde90 in memory
flh f12, 0(x2) # load 0x91430e6c46fbde90 from memory into f12
fadd.h f14, f16, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x4ce8858b2d869b97 # load x3 with value 0x4ce8858b2d869b97
sw x3, 0(x2) # store 0x4ce8858b2d869b97 in memory
flh f17, 0(x2) # load 0x4ce8858b2d869b97 from memory into f17
la x2, scratch
li x3, 0x7de20444c1cbce8b # load x3 with value 0x7de20444c1cbce8b
sw x3, 0(x2) # store 0x7de20444c1cbce8b in memory
flh f10, 0(x2) # load 0x7de20444c1cbce8b from memory into f10
fadd.h f30, f17, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xd6c44c7eb3a268e3 # load x3 with value 0xd6c44c7eb3a268e3
sw x3, 0(x2) # store 0xd6c44c7eb3a268e3 in memory
flh f18, 0(x2) # load 0xd6c44c7eb3a268e3 from memory into f18
la x2, scratch
li x3, 0xf7dd53367cd47979 # load x3 with value 0xf7dd53367cd47979
sw x3, 0(x2) # store 0xf7dd53367cd47979 in memory
flh f1, 0(x2) # load 0xf7dd53367cd47979 from memory into f1
fadd.h f9, f18, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x3faf58904382947 # load x3 with value 0x3faf58904382947
sw x3, 0(x2) # store 0x3faf58904382947 in memory
flh f19, 0(x2) # load 0x3faf58904382947 from memory into f19
la x2, scratch
li x3, 0x24f4e9c059ad5c38 # load x3 with value 0x24f4e9c059ad5c38
sw x3, 0(x2) # store 0x24f4e9c059ad5c38 in memory
flh f1, 0(x2) # load 0x24f4e9c059ad5c38 from memory into f1
fadd.h f17, f19, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xdec8b4aa49acfad4 # load x3 with value 0xdec8b4aa49acfad4
sw x3, 0(x2) # store 0xdec8b4aa49acfad4 in memory
flh f20, 0(x2) # load 0xdec8b4aa49acfad4 from memory into f20
la x2, scratch
li x3, 0x112f3a1c8e4ab0e8 # load x3 with value 0x112f3a1c8e4ab0e8
sw x3, 0(x2) # store 0x112f3a1c8e4ab0e8 in memory
flh f30, 0(x2) # load 0x112f3a1c8e4ab0e8 from memory into f30
fadd.h f27, f20, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x8262eba5c7e88348 # load x3 with value 0x8262eba5c7e88348
sw x3, 0(x2) # store 0x8262eba5c7e88348 in memory
flh f21, 0(x2) # load 0x8262eba5c7e88348 from memory into f21
la x2, scratch
li x3, 0xb74b043af6b9cf86 # load x3 with value 0xb74b043af6b9cf86
sw x3, 0(x2) # store 0xb74b043af6b9cf86 in memory
flh f30, 0(x2) # load 0xb74b043af6b9cf86 from memory into f30
fadd.h f13, f21, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x67d030dce25874ed # load x3 with value 0x67d030dce25874ed
sw x3, 0(x2) # store 0x67d030dce25874ed in memory
flh f22, 0(x2) # load 0x67d030dce25874ed from memory into f22
la x2, scratch
li x3, 0xa8024c57a387ec7c # load x3 with value 0xa8024c57a387ec7c
sw x3, 0(x2) # store 0xa8024c57a387ec7c in memory
flh f10, 0(x2) # load 0xa8024c57a387ec7c from memory into f10
fadd.h f17, f22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xe55bdd158aff5e98 # load x3 with value 0xe55bdd158aff5e98
sw x3, 0(x2) # store 0xe55bdd158aff5e98 in memory
flh f23, 0(x2) # load 0xe55bdd158aff5e98 from memory into f23
la x2, scratch
li x3, 0x552a3a578a84dc46 # load x3 with value 0x552a3a578a84dc46
sw x3, 0(x2) # store 0x552a3a578a84dc46 in memory
flh f15, 0(x2) # load 0x552a3a578a84dc46 from memory into f15
fadd.h f31, f23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xf48c5670bb13eb60 # load x3 with value 0xf48c5670bb13eb60
sw x3, 0(x2) # store 0xf48c5670bb13eb60 in memory
flh f24, 0(x2) # load 0xf48c5670bb13eb60 from memory into f24
la x2, scratch
li x3, 0xb5c272f22dd5dea8 # load x3 with value 0xb5c272f22dd5dea8
sw x3, 0(x2) # store 0xb5c272f22dd5dea8 in memory
flh f13, 0(x2) # load 0xb5c272f22dd5dea8 from memory into f13
fadd.h f3, f24, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x317234cd7f37977d # load x3 with value 0x317234cd7f37977d
sw x3, 0(x2) # store 0x317234cd7f37977d in memory
flh f25, 0(x2) # load 0x317234cd7f37977d from memory into f25
la x2, scratch
li x3, 0x4f42660e0769e8e1 # load x3 with value 0x4f42660e0769e8e1
sw x3, 0(x2) # store 0x4f42660e0769e8e1 in memory
flh f1, 0(x2) # load 0x4f42660e0769e8e1 from memory into f1
fadd.h f28, f25, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xe8e7c8d226793835 # load x3 with value 0xe8e7c8d226793835
sw x3, 0(x2) # store 0xe8e7c8d226793835 in memory
flh f26, 0(x2) # load 0xe8e7c8d226793835 from memory into f26
la x2, scratch
li x3, 0x4ee74254e71936dc # load x3 with value 0x4ee74254e71936dc
sw x3, 0(x2) # store 0x4ee74254e71936dc in memory
flh f19, 0(x2) # load 0x4ee74254e71936dc from memory into f19
fadd.h f26, f26, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x82b64ac9256785b4 # load x3 with value 0x82b64ac9256785b4
sw x3, 0(x2) # store 0x82b64ac9256785b4 in memory
flh f27, 0(x2) # load 0x82b64ac9256785b4 from memory into f27
la x2, scratch
li x3, 0x6c63996d2ea5f455 # load x3 with value 0x6c63996d2ea5f455
sw x3, 0(x2) # store 0x6c63996d2ea5f455 in memory
flh f13, 0(x2) # load 0x6c63996d2ea5f455 from memory into f13
fadd.h f17, f27, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x6c64cf569ee57486 # load x3 with value 0x6c64cf569ee57486
sw x3, 0(x2) # store 0x6c64cf569ee57486 in memory
flh f28, 0(x2) # load 0x6c64cf569ee57486 from memory into f28
la x2, scratch
li x3, 0x3f78764124959dca # load x3 with value 0x3f78764124959dca
sw x3, 0(x2) # store 0x3f78764124959dca in memory
flh f20, 0(x2) # load 0x3f78764124959dca from memory into f20
fadd.h f2, f28, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x523b696b41a2d5ca # load x3 with value 0x523b696b41a2d5ca
sw x3, 0(x2) # store 0x523b696b41a2d5ca in memory
flh f29, 0(x2) # load 0x523b696b41a2d5ca from memory into f29
la x2, scratch
li x3, 0xa0b7b05c1449af0b # load x3 with value 0xa0b7b05c1449af0b
sw x3, 0(x2) # store 0xa0b7b05c1449af0b in memory
flh f20, 0(x2) # load 0xa0b7b05c1449af0b from memory into f20
fadd.h f5, f29, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x9fd9c73b60c14c33 # load x3 with value 0x9fd9c73b60c14c33
sw x3, 0(x2) # store 0x9fd9c73b60c14c33 in memory
flh f30, 0(x2) # load 0x9fd9c73b60c14c33 from memory into f30
la x2, scratch
li x3, 0x83ba465113f36f14 # load x3 with value 0x83ba465113f36f14
sw x3, 0(x2) # store 0x83ba465113f36f14 in memory
flh f15, 0(x2) # load 0x83ba465113f36f14 from memory into f15
fadd.h f3, f30, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x852bf0d7a540efe1 # load x3 with value 0x852bf0d7a540efe1
sw x3, 0(x2) # store 0x852bf0d7a540efe1 in memory
flh f31, 0(x2) # load 0x852bf0d7a540efe1 from memory into f31
la x2, scratch
li x3, 0x43b9b31d5ee83abe # load x3 with value 0x43b9b31d5ee83abe
sw x3, 0(x2) # store 0x43b9b31d5ee83abe in memory
flh f22, 0(x2) # load 0x43b9b31d5ee83abe from memory into f22
fadd.h f15, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xdf2336d1a9d794 # load x3 with value 0xdf2336d1a9d794
sw x3, 0(x2) # store 0xdf2336d1a9d794 in memory
flh f7, 0(x2) # load 0xdf2336d1a9d794 from memory into f7
la x2, scratch
li x3, 0x7f453a6e6e4b092e # load x3 with value 0x7f453a6e6e4b092e
sw x3, 0(x2) # store 0x7f453a6e6e4b092e in memory
flh f0, 0(x2) # load 0x7f453a6e6e4b092e from memory into f0
fadd.h f29, f7, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xb4c28a0cb64ad715 # load x3 with value 0xb4c28a0cb64ad715
sw x3, 0(x2) # store 0xb4c28a0cb64ad715 in memory
flh f27, 0(x2) # load 0xb4c28a0cb64ad715 from memory into f27
la x2, scratch
li x3, 0x6433d5c45b2c35c5 # load x3 with value 0x6433d5c45b2c35c5
sw x3, 0(x2) # store 0x6433d5c45b2c35c5 in memory
flh f1, 0(x2) # load 0x6433d5c45b2c35c5 from memory into f1
fadd.h f3, f27, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x9cf6ae7c82121129 # load x3 with value 0x9cf6ae7c82121129
sw x3, 0(x2) # store 0x9cf6ae7c82121129 in memory
flh f21, 0(x2) # load 0x9cf6ae7c82121129 from memory into f21
la x2, scratch
li x3, 0xf482a2c10d41feb6 # load x3 with value 0xf482a2c10d41feb6
sw x3, 0(x2) # store 0xf482a2c10d41feb6 in memory
flh f2, 0(x2) # load 0xf482a2c10d41feb6 from memory into f2
fadd.h f3, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x4a04f71ecdc804c2 # load x3 with value 0x4a04f71ecdc804c2
sw x3, 0(x2) # store 0x4a04f71ecdc804c2 in memory
flh f27, 0(x2) # load 0x4a04f71ecdc804c2 from memory into f27
la x2, scratch
li x3, 0x6f0ee44e89b5514c # load x3 with value 0x6f0ee44e89b5514c
sw x3, 0(x2) # store 0x6f0ee44e89b5514c in memory
flh f3, 0(x2) # load 0x6f0ee44e89b5514c from memory into f3
fadd.h f21, f27, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa9bb31b0da817fdb # load x3 with value 0xa9bb31b0da817fdb
sw x3, 0(x2) # store 0xa9bb31b0da817fdb in memory
flh f19, 0(x2) # load 0xa9bb31b0da817fdb from memory into f19
la x2, scratch
li x3, 0x968706103549012f # load x3 with value 0x968706103549012f
sw x3, 0(x2) # store 0x968706103549012f in memory
flh f4, 0(x2) # load 0x968706103549012f from memory into f4
fadd.h f18, f19, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x71260bcd1130048 # load x3 with value 0x71260bcd1130048
sw x3, 0(x2) # store 0x71260bcd1130048 in memory
flh f8, 0(x2) # load 0x71260bcd1130048 from memory into f8
la x2, scratch
li x3, 0x70e004c66bed3062 # load x3 with value 0x70e004c66bed3062
sw x3, 0(x2) # store 0x70e004c66bed3062 in memory
flh f5, 0(x2) # load 0x70e004c66bed3062 from memory into f5
fadd.h f12, f8, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9eae3464e0b65302 # load x3 with value 0x9eae3464e0b65302
sw x3, 0(x2) # store 0x9eae3464e0b65302 in memory
flh f28, 0(x2) # load 0x9eae3464e0b65302 from memory into f28
la x2, scratch
li x3, 0x592068cf682f45a0 # load x3 with value 0x592068cf682f45a0
sw x3, 0(x2) # store 0x592068cf682f45a0 in memory
flh f6, 0(x2) # load 0x592068cf682f45a0 from memory into f6
fadd.h f31, f28, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x48ef47b8637653a6 # load x3 with value 0x48ef47b8637653a6
sw x3, 0(x2) # store 0x48ef47b8637653a6 in memory
flh f10, 0(x2) # load 0x48ef47b8637653a6 from memory into f10
la x2, scratch
li x3, 0xb5aab939386fd66 # load x3 with value 0xb5aab939386fd66
sw x3, 0(x2) # store 0xb5aab939386fd66 in memory
flh f7, 0(x2) # load 0xb5aab939386fd66 from memory into f7
fadd.h f22, f10, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x8382c82aefb5d5a4 # load x3 with value 0x8382c82aefb5d5a4
sw x3, 0(x2) # store 0x8382c82aefb5d5a4 in memory
flh f2, 0(x2) # load 0x8382c82aefb5d5a4 from memory into f2
la x2, scratch
li x3, 0xeacbd74dabcbacdb # load x3 with value 0xeacbd74dabcbacdb
sw x3, 0(x2) # store 0xeacbd74dabcbacdb in memory
flh f8, 0(x2) # load 0xeacbd74dabcbacdb from memory into f8
fadd.h f24, f2, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xa0e83f8dc0d03179 # load x3 with value 0xa0e83f8dc0d03179
sw x3, 0(x2) # store 0xa0e83f8dc0d03179 in memory
flh f2, 0(x2) # load 0xa0e83f8dc0d03179 from memory into f2
la x2, scratch
li x3, 0xdc5e39fe6cb20ea7 # load x3 with value 0xdc5e39fe6cb20ea7
sw x3, 0(x2) # store 0xdc5e39fe6cb20ea7 in memory
flh f9, 0(x2) # load 0xdc5e39fe6cb20ea7 from memory into f9
fadd.h f28, f2, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x54d5d43310e1dca5 # load x3 with value 0x54d5d43310e1dca5
sw x3, 0(x2) # store 0x54d5d43310e1dca5 in memory
flh f31, 0(x2) # load 0x54d5d43310e1dca5 from memory into f31
la x2, scratch
li x3, 0xa9a122ca585d7cfe # load x3 with value 0xa9a122ca585d7cfe
sw x3, 0(x2) # store 0xa9a122ca585d7cfe in memory
flh f10, 0(x2) # load 0xa9a122ca585d7cfe from memory into f10
fadd.h f25, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x6ddfc21711bc18d3 # load x3 with value 0x6ddfc21711bc18d3
sw x3, 0(x2) # store 0x6ddfc21711bc18d3 in memory
flh f1, 0(x2) # load 0x6ddfc21711bc18d3 from memory into f1
la x2, scratch
li x3, 0x42dd193e661bc62b # load x3 with value 0x42dd193e661bc62b
sw x3, 0(x2) # store 0x42dd193e661bc62b in memory
flh f11, 0(x2) # load 0x42dd193e661bc62b from memory into f11
fadd.h f2, f1, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0xb86bb4aff0edd1fa # load x3 with value 0xb86bb4aff0edd1fa
sw x3, 0(x2) # store 0xb86bb4aff0edd1fa in memory
flh f27, 0(x2) # load 0xb86bb4aff0edd1fa from memory into f27
la x2, scratch
li x3, 0x911ca5aa9df5f729 # load x3 with value 0x911ca5aa9df5f729
sw x3, 0(x2) # store 0x911ca5aa9df5f729 in memory
flh f12, 0(x2) # load 0x911ca5aa9df5f729 from memory into f12
fadd.h f9, f27, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x1a64f69327b84ebf # load x3 with value 0x1a64f69327b84ebf
sw x3, 0(x2) # store 0x1a64f69327b84ebf in memory
flh f29, 0(x2) # load 0x1a64f69327b84ebf from memory into f29
la x2, scratch
li x3, 0x94350edc69a130d7 # load x3 with value 0x94350edc69a130d7
sw x3, 0(x2) # store 0x94350edc69a130d7 in memory
flh f13, 0(x2) # load 0x94350edc69a130d7 from memory into f13
fadd.h f17, f29, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xeebaba6ec398b911 # load x3 with value 0xeebaba6ec398b911
sw x3, 0(x2) # store 0xeebaba6ec398b911 in memory
flh f21, 0(x2) # load 0xeebaba6ec398b911 from memory into f21
la x2, scratch
li x3, 0x9f38eb6f5ea5ed1 # load x3 with value 0x9f38eb6f5ea5ed1
sw x3, 0(x2) # store 0x9f38eb6f5ea5ed1 in memory
flh f14, 0(x2) # load 0x9f38eb6f5ea5ed1 from memory into f14
fadd.h f11, f21, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xaaec7407e379d491 # load x3 with value 0xaaec7407e379d491
sw x3, 0(x2) # store 0xaaec7407e379d491 in memory
flh f14, 0(x2) # load 0xaaec7407e379d491 from memory into f14
la x2, scratch
li x3, 0x10b0d907a1fff48a # load x3 with value 0x10b0d907a1fff48a
sw x3, 0(x2) # store 0x10b0d907a1fff48a in memory
flh f15, 0(x2) # load 0x10b0d907a1fff48a from memory into f15
fadd.h f13, f14, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0xc14030068e71001 # load x3 with value 0xc14030068e71001
sw x3, 0(x2) # store 0xc14030068e71001 in memory
flh f2, 0(x2) # load 0xc14030068e71001 from memory into f2
la x2, scratch
li x3, 0x364ec83ccbb7410e # load x3 with value 0x364ec83ccbb7410e
sw x3, 0(x2) # store 0x364ec83ccbb7410e in memory
flh f16, 0(x2) # load 0x364ec83ccbb7410e from memory into f16
fadd.h f8, f2, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xd736209430e723b4 # load x3 with value 0xd736209430e723b4
sw x3, 0(x2) # store 0xd736209430e723b4 in memory
flh f20, 0(x2) # load 0xd736209430e723b4 from memory into f20
la x2, scratch
li x3, 0x10c5111865a9418a # load x3 with value 0x10c5111865a9418a
sw x3, 0(x2) # store 0x10c5111865a9418a in memory
flh f17, 0(x2) # load 0x10c5111865a9418a from memory into f17
fadd.h f11, f20, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x1948c8c1f6481bae # load x3 with value 0x1948c8c1f6481bae
sw x3, 0(x2) # store 0x1948c8c1f6481bae in memory
flh f26, 0(x2) # load 0x1948c8c1f6481bae from memory into f26
la x2, scratch
li x3, 0xc4697c160a93fdb # load x3 with value 0xc4697c160a93fdb
sw x3, 0(x2) # store 0xc4697c160a93fdb in memory
flh f18, 0(x2) # load 0xc4697c160a93fdb from memory into f18
fadd.h f24, f26, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x2944f2652d6066c1 # load x3 with value 0x2944f2652d6066c1
sw x3, 0(x2) # store 0x2944f2652d6066c1 in memory
flh f10, 0(x2) # load 0x2944f2652d6066c1 from memory into f10
la x2, scratch
li x3, 0x614b338147baf1ba # load x3 with value 0x614b338147baf1ba
sw x3, 0(x2) # store 0x614b338147baf1ba in memory
flh f19, 0(x2) # load 0x614b338147baf1ba from memory into f19
fadd.h f19, f10, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xddb6b057f3283a7c # load x3 with value 0xddb6b057f3283a7c
sw x3, 0(x2) # store 0xddb6b057f3283a7c in memory
flh f8, 0(x2) # load 0xddb6b057f3283a7c from memory into f8
la x2, scratch
li x3, 0xfbb84110b7931f7a # load x3 with value 0xfbb84110b7931f7a
sw x3, 0(x2) # store 0xfbb84110b7931f7a in memory
flh f20, 0(x2) # load 0xfbb84110b7931f7a from memory into f20
fadd.h f15, f8, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xa21f30ca00aed775 # load x3 with value 0xa21f30ca00aed775
sw x3, 0(x2) # store 0xa21f30ca00aed775 in memory
flh f29, 0(x2) # load 0xa21f30ca00aed775 from memory into f29
la x2, scratch
li x3, 0x694a94f961f40d61 # load x3 with value 0x694a94f961f40d61
sw x3, 0(x2) # store 0x694a94f961f40d61 in memory
flh f21, 0(x2) # load 0x694a94f961f40d61 from memory into f21
fadd.h f3, f29, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x11e887fb9157a980 # load x3 with value 0x11e887fb9157a980
sw x3, 0(x2) # store 0x11e887fb9157a980 in memory
flh f8, 0(x2) # load 0x11e887fb9157a980 from memory into f8
la x2, scratch
li x3, 0x76400c627c0e919e # load x3 with value 0x76400c627c0e919e
sw x3, 0(x2) # store 0x76400c627c0e919e in memory
flh f22, 0(x2) # load 0x76400c627c0e919e from memory into f22
fadd.h f29, f8, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xf275b6fdf1158530 # load x3 with value 0xf275b6fdf1158530
sw x3, 0(x2) # store 0xf275b6fdf1158530 in memory
flh f28, 0(x2) # load 0xf275b6fdf1158530 from memory into f28
la x2, scratch
li x3, 0x8c6050961771f253 # load x3 with value 0x8c6050961771f253
sw x3, 0(x2) # store 0x8c6050961771f253 in memory
flh f23, 0(x2) # load 0x8c6050961771f253 from memory into f23
fadd.h f20, f28, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x85ca3fe1bf875d2b # load x3 with value 0x85ca3fe1bf875d2b
sw x3, 0(x2) # store 0x85ca3fe1bf875d2b in memory
flh f1, 0(x2) # load 0x85ca3fe1bf875d2b from memory into f1
la x2, scratch
li x3, 0xa9a703d88394e9a5 # load x3 with value 0xa9a703d88394e9a5
sw x3, 0(x2) # store 0xa9a703d88394e9a5 in memory
flh f24, 0(x2) # load 0xa9a703d88394e9a5 from memory into f24
fadd.h f25, f1, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x8dc6789013d714c4 # load x3 with value 0x8dc6789013d714c4
sw x3, 0(x2) # store 0x8dc6789013d714c4 in memory
flh f29, 0(x2) # load 0x8dc6789013d714c4 from memory into f29
la x2, scratch
li x3, 0x660d46bfd249e056 # load x3 with value 0x660d46bfd249e056
sw x3, 0(x2) # store 0x660d46bfd249e056 in memory
flh f25, 0(x2) # load 0x660d46bfd249e056 from memory into f25
fadd.h f12, f29, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x141a216b80ea868f # load x3 with value 0x141a216b80ea868f
sw x3, 0(x2) # store 0x141a216b80ea868f in memory
flh f14, 0(x2) # load 0x141a216b80ea868f from memory into f14
la x2, scratch
li x3, 0x2f025c00e7744211 # load x3 with value 0x2f025c00e7744211
sw x3, 0(x2) # store 0x2f025c00e7744211 in memory
flh f26, 0(x2) # load 0x2f025c00e7744211 from memory into f26
fadd.h f18, f14, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x64795ed182de107c # load x3 with value 0x64795ed182de107c
sw x3, 0(x2) # store 0x64795ed182de107c in memory
flh f8, 0(x2) # load 0x64795ed182de107c from memory into f8
la x2, scratch
li x3, 0x46bba17d9b2fbd00 # load x3 with value 0x46bba17d9b2fbd00
sw x3, 0(x2) # store 0x46bba17d9b2fbd00 in memory
flh f27, 0(x2) # load 0x46bba17d9b2fbd00 from memory into f27
fadd.h f29, f8, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xdb3c2483fe6960a7 # load x3 with value 0xdb3c2483fe6960a7
sw x3, 0(x2) # store 0xdb3c2483fe6960a7 in memory
flh f31, 0(x2) # load 0xdb3c2483fe6960a7 from memory into f31
la x2, scratch
li x3, 0xa7910f9534b00165 # load x3 with value 0xa7910f9534b00165
sw x3, 0(x2) # store 0xa7910f9534b00165 in memory
flh f28, 0(x2) # load 0xa7910f9534b00165 from memory into f28
fadd.h f30, f31, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xedcf9f8d0bf69ec5 # load x3 with value 0xedcf9f8d0bf69ec5
sw x3, 0(x2) # store 0xedcf9f8d0bf69ec5 in memory
flh f7, 0(x2) # load 0xedcf9f8d0bf69ec5 from memory into f7
la x2, scratch
li x3, 0xb1ea7bdf43981948 # load x3 with value 0xb1ea7bdf43981948
sw x3, 0(x2) # store 0xb1ea7bdf43981948 in memory
flh f29, 0(x2) # load 0xb1ea7bdf43981948 from memory into f29
fadd.h f17, f7, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xe186158521090410 # load x3 with value 0xe186158521090410
sw x3, 0(x2) # store 0xe186158521090410 in memory
flh f15, 0(x2) # load 0xe186158521090410 from memory into f15
la x2, scratch
li x3, 0xc34e6153364b5e2a # load x3 with value 0xc34e6153364b5e2a
sw x3, 0(x2) # store 0xc34e6153364b5e2a in memory
flh f30, 0(x2) # load 0xc34e6153364b5e2a from memory into f30
fadd.h f20, f15, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x9d404ef9ab73baab # load x3 with value 0x9d404ef9ab73baab
sw x3, 0(x2) # store 0x9d404ef9ab73baab in memory
flh f8, 0(x2) # load 0x9d404ef9ab73baab from memory into f8
la x2, scratch
li x3, 0xe83f4f8db0321c2b # load x3 with value 0xe83f4f8db0321c2b
sw x3, 0(x2) # store 0xe83f4f8db0321c2b in memory
flh f31, 0(x2) # load 0xe83f4f8db0321c2b from memory into f31
fadd.h f25, f8, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0xef3f94fbb70e59b8 # load x3 with value 0xef3f94fbb70e59b8
sw x3, 0(x2) # store 0xef3f94fbb70e59b8 in memory
flh f24, 0(x2) # load 0xef3f94fbb70e59b8 from memory into f24
la x2, scratch
li x3, 0xf3fa8c4b11c136f6 # load x3 with value 0xf3fa8c4b11c136f6
sw x3, 0(x2) # store 0xf3fa8c4b11c136f6 in memory
flh f31, 0(x2) # load 0xf3fa8c4b11c136f6 from memory into f31
fadd.h f0, f24, f31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x5c1bebcc33782146 # load x3 with value 0x5c1bebcc33782146
sw x3, 0(x2) # store 0x5c1bebcc33782146 in memory
flh f31, 0(x2) # load 0x5c1bebcc33782146 from memory into f31
la x2, scratch
li x3, 0xf3ef34ea5edfe2f6 # load x3 with value 0xf3ef34ea5edfe2f6
sw x3, 0(x2) # store 0xf3ef34ea5edfe2f6 in memory
flh f12, 0(x2) # load 0xf3ef34ea5edfe2f6 from memory into f12
fadd.h f1, f31, f12 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xbbfcafcf8c7c0bd4 # load x3 with value 0xbbfcafcf8c7c0bd4
sw x3, 0(x2) # store 0xbbfcafcf8c7c0bd4 in memory
flh f18, 0(x2) # load 0xbbfcafcf8c7c0bd4 from memory into f18
la x2, scratch
li x3, 0x1ea7d0ff946c2d88 # load x3 with value 0x1ea7d0ff946c2d88
sw x3, 0(x2) # store 0x1ea7d0ff946c2d88 in memory
flh f8, 0(x2) # load 0x1ea7d0ff946c2d88 from memory into f8
fadd.h f2, f18, f8 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x156bd722dc91c0e8 # load x3 with value 0x156bd722dc91c0e8
sw x3, 0(x2) # store 0x156bd722dc91c0e8 in memory
flh f29, 0(x2) # load 0x156bd722dc91c0e8 from memory into f29
la x2, scratch
li x3, 0x1004a34752fc450 # load x3 with value 0x1004a34752fc450
sw x3, 0(x2) # store 0x1004a34752fc450 in memory
flh f24, 0(x2) # load 0x1004a34752fc450 from memory into f24
fadd.h f3, f29, f24 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3d1f0440042dc3e # load x3 with value 0x3d1f0440042dc3e
sw x3, 0(x2) # store 0x3d1f0440042dc3e in memory
flh f20, 0(x2) # load 0x3d1f0440042dc3e from memory into f20
la x2, scratch
li x3, 0x94c77b9db99a5f94 # load x3 with value 0x94c77b9db99a5f94
sw x3, 0(x2) # store 0x94c77b9db99a5f94 in memory
flh f2, 0(x2) # load 0x94c77b9db99a5f94 from memory into f2
fadd.h f4, f20, f2 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x974b839ef1e03a6b # load x3 with value 0x974b839ef1e03a6b
sw x3, 0(x2) # store 0x974b839ef1e03a6b in memory
flh f22, 0(x2) # load 0x974b839ef1e03a6b from memory into f22
la x2, scratch
li x3, 0x826dbd1407a8dab4 # load x3 with value 0x826dbd1407a8dab4
sw x3, 0(x2) # store 0x826dbd1407a8dab4 in memory
flh f19, 0(x2) # load 0x826dbd1407a8dab4 from memory into f19
fadd.h f5, f22, f19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5e63292d4fade770 # load x3 with value 0x5e63292d4fade770
sw x3, 0(x2) # store 0x5e63292d4fade770 in memory
flh f14, 0(x2) # load 0x5e63292d4fade770 from memory into f14
la x2, scratch
li x3, 0xc7a6e1e5ac4cc780 # load x3 with value 0xc7a6e1e5ac4cc780
sw x3, 0(x2) # store 0xc7a6e1e5ac4cc780 in memory
flh f24, 0(x2) # load 0xc7a6e1e5ac4cc780 from memory into f24
fadd.h f6, f14, f24 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x79c1f75eef0eecd8 # load x3 with value 0x79c1f75eef0eecd8
sw x3, 0(x2) # store 0x79c1f75eef0eecd8 in memory
flh f12, 0(x2) # load 0x79c1f75eef0eecd8 from memory into f12
la x2, scratch
li x3, 0x35c94e1da331f786 # load x3 with value 0x35c94e1da331f786
sw x3, 0(x2) # store 0x35c94e1da331f786 in memory
flh f31, 0(x2) # load 0x35c94e1da331f786 from memory into f31
fadd.h f7, f12, f31 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x5216c7d7ced78117 # load x3 with value 0x5216c7d7ced78117
sw x3, 0(x2) # store 0x5216c7d7ced78117 in memory
flh f23, 0(x2) # load 0x5216c7d7ced78117 from memory into f23
la x2, scratch
li x3, 0x143bc4b942fb865a # load x3 with value 0x143bc4b942fb865a
sw x3, 0(x2) # store 0x143bc4b942fb865a in memory
flh f31, 0(x2) # load 0x143bc4b942fb865a from memory into f31
fadd.h f8, f23, f31 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0xa7ea993702873e72 # load x3 with value 0xa7ea993702873e72
sw x3, 0(x2) # store 0xa7ea993702873e72 in memory
flh f2, 0(x2) # load 0xa7ea993702873e72 from memory into f2
la x2, scratch
li x3, 0xa78d234ec07f0689 # load x3 with value 0xa78d234ec07f0689
sw x3, 0(x2) # store 0xa78d234ec07f0689 in memory
flh f29, 0(x2) # load 0xa78d234ec07f0689 from memory into f29
fadd.h f9, f2, f29 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x4eda49f1da32c85c # load x3 with value 0x4eda49f1da32c85c
sw x3, 0(x2) # store 0x4eda49f1da32c85c in memory
flh f26, 0(x2) # load 0x4eda49f1da32c85c from memory into f26
la x2, scratch
li x3, 0x8f75eefef3b9b051 # load x3 with value 0x8f75eefef3b9b051
sw x3, 0(x2) # store 0x8f75eefef3b9b051 in memory
flh f13, 0(x2) # load 0x8f75eefef3b9b051 from memory into f13
fadd.h f10, f26, f13 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xde414e2a45bb26f1 # load x3 with value 0xde414e2a45bb26f1
sw x3, 0(x2) # store 0xde414e2a45bb26f1 in memory
flh f14, 0(x2) # load 0xde414e2a45bb26f1 from memory into f14
la x2, scratch
li x3, 0xa23694ca5c6208fa # load x3 with value 0xa23694ca5c6208fa
sw x3, 0(x2) # store 0xa23694ca5c6208fa in memory
flh f17, 0(x2) # load 0xa23694ca5c6208fa from memory into f17
fadd.h f11, f14, f17 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0x311ce7394cd212ab # load x3 with value 0x311ce7394cd212ab
sw x3, 0(x2) # store 0x311ce7394cd212ab in memory
flh f31, 0(x2) # load 0x311ce7394cd212ab from memory into f31
la x2, scratch
li x3, 0x94cdc82205ec5863 # load x3 with value 0x94cdc82205ec5863
sw x3, 0(x2) # store 0x94cdc82205ec5863 in memory
flh f10, 0(x2) # load 0x94cdc82205ec5863 from memory into f10
fadd.h f12, f31, f10 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0xc9cf581206532408 # load x3 with value 0xc9cf581206532408
sw x3, 0(x2) # store 0xc9cf581206532408 in memory
flh f22, 0(x2) # load 0xc9cf581206532408 from memory into f22
la x2, scratch
li x3, 0x3c0ec3758f6c7735 # load x3 with value 0x3c0ec3758f6c7735
sw x3, 0(x2) # store 0x3c0ec3758f6c7735 in memory
flh f15, 0(x2) # load 0x3c0ec3758f6c7735 from memory into f15
fadd.h f13, f22, f15 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0xf67ca34e00fa91f9 # load x3 with value 0xf67ca34e00fa91f9
sw x3, 0(x2) # store 0xf67ca34e00fa91f9 in memory
flh f17, 0(x2) # load 0xf67ca34e00fa91f9 from memory into f17
la x2, scratch
li x3, 0x118ddbc32ca1412 # load x3 with value 0x118ddbc32ca1412
sw x3, 0(x2) # store 0x118ddbc32ca1412 in memory
flh f3, 0(x2) # load 0x118ddbc32ca1412 from memory into f3
fadd.h f14, f17, f3 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0x135050d0d1b4736a # load x3 with value 0x135050d0d1b4736a
sw x3, 0(x2) # store 0x135050d0d1b4736a in memory
flh f23, 0(x2) # load 0x135050d0d1b4736a from memory into f23
la x2, scratch
li x3, 0xa2e4156d62c00b78 # load x3 with value 0xa2e4156d62c00b78
sw x3, 0(x2) # store 0xa2e4156d62c00b78 in memory
flh f8, 0(x2) # load 0xa2e4156d62c00b78 from memory into f8
fadd.h f15, f23, f8 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x698328c24bf3f219 # load x3 with value 0x698328c24bf3f219
sw x3, 0(x2) # store 0x698328c24bf3f219 in memory
flh f13, 0(x2) # load 0x698328c24bf3f219 from memory into f13
la x2, scratch
li x3, 0x471a76d3bf405b8d # load x3 with value 0x471a76d3bf405b8d
sw x3, 0(x2) # store 0x471a76d3bf405b8d in memory
flh f28, 0(x2) # load 0x471a76d3bf405b8d from memory into f28
fadd.h f16, f13, f28 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x3f846dcfdc81388f # load x3 with value 0x3f846dcfdc81388f
sw x3, 0(x2) # store 0x3f846dcfdc81388f in memory
flh f13, 0(x2) # load 0x3f846dcfdc81388f from memory into f13
la x2, scratch
li x3, 0x688e42034f08cdc # load x3 with value 0x688e42034f08cdc
sw x3, 0(x2) # store 0x688e42034f08cdc in memory
flh f5, 0(x2) # load 0x688e42034f08cdc from memory into f5
fadd.h f17, f13, f5 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0xe70e02f779df057e # load x3 with value 0xe70e02f779df057e
sw x3, 0(x2) # store 0xe70e02f779df057e in memory
flh f26, 0(x2) # load 0xe70e02f779df057e from memory into f26
la x2, scratch
li x3, 0xaa11bd05cb4304e9 # load x3 with value 0xaa11bd05cb4304e9
sw x3, 0(x2) # store 0xaa11bd05cb4304e9 in memory
flh f8, 0(x2) # load 0xaa11bd05cb4304e9 from memory into f8
fadd.h f18, f26, f8 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x2d8e84dcc0e9f42f # load x3 with value 0x2d8e84dcc0e9f42f
sw x3, 0(x2) # store 0x2d8e84dcc0e9f42f in memory
flh f21, 0(x2) # load 0x2d8e84dcc0e9f42f from memory into f21
la x2, scratch
li x3, 0xb19540883b9fd3e1 # load x3 with value 0xb19540883b9fd3e1
sw x3, 0(x2) # store 0xb19540883b9fd3e1 in memory
flh f20, 0(x2) # load 0xb19540883b9fd3e1 from memory into f20
fadd.h f19, f21, f20 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x7c6ca240805d789f # load x3 with value 0x7c6ca240805d789f
sw x3, 0(x2) # store 0x7c6ca240805d789f in memory
flh f7, 0(x2) # load 0x7c6ca240805d789f from memory into f7
la x2, scratch
li x3, 0x361f3437d6672635 # load x3 with value 0x361f3437d6672635
sw x3, 0(x2) # store 0x361f3437d6672635 in memory
flh f20, 0(x2) # load 0x361f3437d6672635 from memory into f20
fadd.h f20, f7, f20 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x5f55e1d4b575cea3 # load x3 with value 0x5f55e1d4b575cea3
sw x3, 0(x2) # store 0x5f55e1d4b575cea3 in memory
flh f20, 0(x2) # load 0x5f55e1d4b575cea3 from memory into f20
la x2, scratch
li x3, 0x8ef57b437840bc93 # load x3 with value 0x8ef57b437840bc93
sw x3, 0(x2) # store 0x8ef57b437840bc93 in memory
flh f5, 0(x2) # load 0x8ef57b437840bc93 from memory into f5
fadd.h f21, f20, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xe23a3523da7d41a6 # load x3 with value 0xe23a3523da7d41a6
sw x3, 0(x2) # store 0xe23a3523da7d41a6 in memory
flh f31, 0(x2) # load 0xe23a3523da7d41a6 from memory into f31
la x2, scratch
li x3, 0xd79378634ee0d9e # load x3 with value 0xd79378634ee0d9e
sw x3, 0(x2) # store 0xd79378634ee0d9e in memory
flh f30, 0(x2) # load 0xd79378634ee0d9e from memory into f30
fadd.h f22, f31, f30 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x92e5eb268c3b2786 # load x3 with value 0x92e5eb268c3b2786
sw x3, 0(x2) # store 0x92e5eb268c3b2786 in memory
flh f14, 0(x2) # load 0x92e5eb268c3b2786 from memory into f14
la x2, scratch
li x3, 0xbd84c67b6de64549 # load x3 with value 0xbd84c67b6de64549
sw x3, 0(x2) # store 0xbd84c67b6de64549 in memory
flh f28, 0(x2) # load 0xbd84c67b6de64549 from memory into f28
fadd.h f23, f14, f28 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x10a280730e45526 # load x3 with value 0x10a280730e45526
sw x3, 0(x2) # store 0x10a280730e45526 in memory
flh f19, 0(x2) # load 0x10a280730e45526 from memory into f19
la x2, scratch
li x3, 0xd057a93a692705a3 # load x3 with value 0xd057a93a692705a3
sw x3, 0(x2) # store 0xd057a93a692705a3 in memory
flh f18, 0(x2) # load 0xd057a93a692705a3 from memory into f18
fadd.h f24, f19, f18 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0xb94ae500e717c2bb # load x3 with value 0xb94ae500e717c2bb
sw x3, 0(x2) # store 0xb94ae500e717c2bb in memory
flh f9, 0(x2) # load 0xb94ae500e717c2bb from memory into f9
la x2, scratch
li x3, 0x49691153ac321644 # load x3 with value 0x49691153ac321644
sw x3, 0(x2) # store 0x49691153ac321644 in memory
flh f13, 0(x2) # load 0x49691153ac321644 from memory into f13
fadd.h f25, f9, f13 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xf66209447ae94716 # load x3 with value 0xf66209447ae94716
sw x3, 0(x2) # store 0xf66209447ae94716 in memory
flh f31, 0(x2) # load 0xf66209447ae94716 from memory into f31
la x2, scratch
li x3, 0xea69a663c1213502 # load x3 with value 0xea69a663c1213502
sw x3, 0(x2) # store 0xea69a663c1213502 in memory
flh f11, 0(x2) # load 0xea69a663c1213502 from memory into f11
fadd.h f26, f31, f11 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x92b8c17768d94fa8 # load x3 with value 0x92b8c17768d94fa8
sw x3, 0(x2) # store 0x92b8c17768d94fa8 in memory
flh f23, 0(x2) # load 0x92b8c17768d94fa8 from memory into f23
la x2, scratch
li x3, 0x7d28025a6d34466e # load x3 with value 0x7d28025a6d34466e
sw x3, 0(x2) # store 0x7d28025a6d34466e in memory
flh f17, 0(x2) # load 0x7d28025a6d34466e from memory into f17
fadd.h f27, f23, f17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0xb51f26ea95223b1c # load x3 with value 0xb51f26ea95223b1c
sw x3, 0(x2) # store 0xb51f26ea95223b1c in memory
flh f21, 0(x2) # load 0xb51f26ea95223b1c from memory into f21
la x2, scratch
li x3, 0x77c69c05330ba80d # load x3 with value 0x77c69c05330ba80d
sw x3, 0(x2) # store 0x77c69c05330ba80d in memory
flh f14, 0(x2) # load 0x77c69c05330ba80d from memory into f14
fadd.h f28, f21, f14 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xc2cc272bccb4b26d # load x3 with value 0xc2cc272bccb4b26d
sw x3, 0(x2) # store 0xc2cc272bccb4b26d in memory
flh f15, 0(x2) # load 0xc2cc272bccb4b26d from memory into f15
la x2, scratch
li x3, 0xc777a83be82ade72 # load x3 with value 0xc777a83be82ade72
sw x3, 0(x2) # store 0xc777a83be82ade72 in memory
flh f7, 0(x2) # load 0xc777a83be82ade72 from memory into f7
fadd.h f29, f15, f7 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x36500b2d8fa44913 # load x3 with value 0x36500b2d8fa44913
sw x3, 0(x2) # store 0x36500b2d8fa44913 in memory
flh f25, 0(x2) # load 0x36500b2d8fa44913 from memory into f25
la x2, scratch
li x3, 0xaed7bfd2445bd7ff # load x3 with value 0xaed7bfd2445bd7ff
sw x3, 0(x2) # store 0xaed7bfd2445bd7ff in memory
flh f1, 0(x2) # load 0xaed7bfd2445bd7ff from memory into f1
fadd.h f30, f25, f1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x2524f6d345d76001 # load x3 with value 0x2524f6d345d76001
sw x3, 0(x2) # store 0x2524f6d345d76001 in memory
flh f18, 0(x2) # load 0x2524f6d345d76001 from memory into f18
la x2, scratch
li x3, 0x2bd4902f8b5b9f08 # load x3 with value 0x2bd4902f8b5b9f08
sw x3, 0(x2) # store 0x2bd4902f8b5b9f08 in memory
flh f19, 0(x2) # load 0x2bd4902f8b5b9f08 from memory into f19
fadd.h f31, f18, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x90af583ff601d257 # load x3 with value 0x90af583ff601d257
sw x3, 0(x2) # store 0x90af583ff601d257 in memory
flh f10, 0(x2) # load 0x90af583ff601d257 from memory into f10
fadd.h f12, f2, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0xa3027497b1f48217 # load x3 with value 0xa3027497b1f48217
sw x3, 0(x2) # store 0xa3027497b1f48217 in memory
flh f3, 0(x2) # load 0xa3027497b1f48217 from memory into f3
fadd.h f5, f1, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x83a4ee6c0fcad334 # load x3 with value 0x83a4ee6c0fcad334
sw x3, 0(x2) # store 0x83a4ee6c0fcad334 in memory
flh f24, 0(x2) # load 0x83a4ee6c0fcad334 from memory into f24
fadd.h f3, f29, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x488fbdfcaa94904c # load x3 with value 0x488fbdfcaa94904c
sw x3, 0(x2) # store 0x488fbdfcaa94904c in memory
flh f8, 0(x2) # load 0x488fbdfcaa94904c from memory into f8
fadd.h f11, f19, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x3292347a11faee26 # load x3 with value 0x3292347a11faee26
sw x3, 0(x2) # store 0x3292347a11faee26 in memory
flh f30, 0(x2) # load 0x3292347a11faee26 from memory into f30
fadd.h f14, f1, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x12d69f354e234cca # load x3 with value 0x12d69f354e234cca
sw x3, 0(x2) # store 0x12d69f354e234cca in memory
flh f20, 0(x2) # load 0x12d69f354e234cca from memory into f20
fadd.h f6, f5, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x52548386c2601741 # load x3 with value 0x52548386c2601741
sw x3, 0(x2) # store 0x52548386c2601741 in memory
flh f13, 0(x2) # load 0x52548386c2601741 from memory into f13
fadd.h f20, f28, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x2, scratch
li x3, 0x52760b86dd38d9f4 # load x3 with value 0x52760b86dd38d9f4
sw x3, 0(x2) # store 0x52760b86dd38d9f4 in memory
flh f3, 0(x2) # load 0x52760b86dd38d9f4 from memory into f3
fadd.h f28, f12, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x1903d2a580c77e7b # load x3 with value 0x1903d2a580c77e7b
sw x3, 0(x2) # store 0x1903d2a580c77e7b in memory
flh f30, 0(x2) # load 0x1903d2a580c77e7b from memory into f30
fadd.h f5, f25, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x40760244f1a38546 # load x3 with value 0x40760244f1a38546
sw x3, 0(x2) # store 0x40760244f1a38546 in memory
flh f14, 0(x2) # load 0x40760244f1a38546 from memory into f14
fadd.h f17, f26, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
la x2, scratch
li x3, 0x608b3872f3837d09 # load x3 with value 0x608b3872f3837d09
sw x3, 0(x2) # store 0x608b3872f3837d09 in memory
flh f19, 0(x2) # load 0x608b3872f3837d09 from memory into f19
fadd.h f25, f24, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x74877df6c29a9fc6 # load x3 with value 0x74877df6c29a9fc6
sw x3, 0(x2) # store 0x74877df6c29a9fc6 in memory
flh f28, 0(x2) # load 0x74877df6c29a9fc6 from memory into f28
fadd.h f24, f17, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
la x2, scratch
li x3, 0x9bb508562089ae49 # load x3 with value 0x9bb508562089ae49
sw x3, 0(x2) # store 0x9bb508562089ae49 in memory
flh f19, 0(x2) # load 0x9bb508562089ae49 from memory into f19
fadd.h f12, f8, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x842aa6b2ed61534d # load x3 with value 0x842aa6b2ed61534d
sw x3, 0(x2) # store 0x842aa6b2ed61534d in memory
flh f31, 0(x2) # load 0x842aa6b2ed61534d from memory into f31
fadd.h f22, f25, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0xaf32daf274871a84 # load x3 with value 0xaf32daf274871a84
sw x3, 0(x2) # store 0xaf32daf274871a84 in memory
flh f22, 0(x2) # load 0xaf32daf274871a84 from memory into f22
fadd.h f12, f19, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
la x2, scratch
li x3, 0xf461cd35e203d61d # load x3 with value 0xf461cd35e203d61d
sw x3, 0(x2) # store 0xf461cd35e203d61d in memory
flh f20, 0(x2) # load 0xf461cd35e203d61d from memory into f20
fadd.h f29, f10, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0xa3ee2a18b4137726 # load x3 with value 0xa3ee2a18b4137726
sw x3, 0(x2) # store 0xa3ee2a18b4137726 in memory
flh f25, 0(x2) # load 0xa3ee2a18b4137726 from memory into f25
fadd.h f14, f12, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
la x2, scratch
li x3, 0x1dfc5eacf6bd9d72 # load x3 with value 0x1dfc5eacf6bd9d72
sw x3, 0(x2) # store 0x1dfc5eacf6bd9d72 in memory
flh f8, 0(x2) # load 0x1dfc5eacf6bd9d72 from memory into f8
fadd.h f28, f2, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
la x2, scratch
li x3, 0x359b5f1f27a66c8c # load x3 with value 0x359b5f1f27a66c8c
sw x3, 0(x2) # store 0x359b5f1f27a66c8c in memory
flh f10, 0(x2) # load 0x359b5f1f27a66c8c from memory into f10
fadd.h f24, f30, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
la x2, scratch
li x3, 0xc422a5508fd9c2ff # load x3 with value 0xc422a5508fd9c2ff
sw x3, 0(x2) # store 0xc422a5508fd9c2ff in memory
flh f23, 0(x2) # load 0xc422a5508fd9c2ff from memory into f23
fadd.h f15, f19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0xad68dafee063b1c4 # load x3 with value 0xad68dafee063b1c4
sw x3, 0(x2) # store 0xad68dafee063b1c4 in memory
flh f2, 0(x2) # load 0xad68dafee063b1c4 from memory into f2
fadd.h f17, f21, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x8d7b5ad5c4d945b8 # load x3 with value 0x8d7b5ad5c4d945b8
sw x3, 0(x2) # store 0x8d7b5ad5c4d945b8 in memory
flh f31, 0(x2) # load 0x8d7b5ad5c4d945b8 from memory into f31
fadd.h f25, f10, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0xa27fbee30e283c40 # load x3 with value 0xa27fbee30e283c40
sw x3, 0(x2) # store 0xa27fbee30e283c40 in memory
flh f21, 0(x2) # load 0xa27fbee30e283c40 from memory into f21
fadd.h f20, f15, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x39fa12c00dea2e5e # load x3 with value 0x39fa12c00dea2e5e
sw x3, 0(x2) # store 0x39fa12c00dea2e5e in memory
flh f30, 0(x2) # load 0x39fa12c00dea2e5e from memory into f30
fadd.h f25, f7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
la x2, scratch
li x3, 0xf393387252db8efa # load x3 with value 0xf393387252db8efa
sw x3, 0(x2) # store 0xf393387252db8efa in memory
flh f15, 0(x2) # load 0xf393387252db8efa from memory into f15
fadd.h f17, f31, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x612497877622160d # load x3 with value 0x612497877622160d
sw x3, 0(x2) # store 0x612497877622160d in memory
flh f18, 0(x2) # load 0x612497877622160d from memory into f18
fadd.h f3, f8, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0xabd1cc00443d466b # load x3 with value 0xabd1cc00443d466b
sw x3, 0(x2) # store 0xabd1cc00443d466b in memory
flh f5, 0(x2) # load 0xabd1cc00443d466b from memory into f5
fadd.h f30, f21, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x42f580c3893aa3b8 # load x3 with value 0x42f580c3893aa3b8
sw x3, 0(x2) # store 0x42f580c3893aa3b8 in memory
flh f15, 0(x2) # load 0x42f580c3893aa3b8 from memory into f15
fadd.h f6, f23, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xcf76be298d30421 # load x3 with value 0xcf76be298d30421
sw x3, 0(x2) # store 0xcf76be298d30421 in memory
flh f19, 0(x2) # load 0xcf76be298d30421 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fadd.h f26, f19, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0xede12250bf9eeb90 # load x3 with value 0xede12250bf9eeb90
sw x3, 0(x2) # store 0xede12250bf9eeb90 in memory
flh f3, 0(x2) # load 0xede12250bf9eeb90 from memory into f3
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f28, f3, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0xbe1125cb3b7c9e68 # load x3 with value 0xbe1125cb3b7c9e68
sw x3, 0(x2) # store 0xbe1125cb3b7c9e68 in memory
flh f15, 0(x2) # load 0xbe1125cb3b7c9e68 from memory into f15
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fadd.h f5, f15, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0xfca6b810c6b91b9 # load x3 with value 0xfca6b810c6b91b9
sw x3, 0(x2) # store 0xfca6b810c6b91b9 in memory
flh f18, 0(x2) # load 0xfca6b810c6b91b9 from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fadd.h f30, f18, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x3178ad1801211c90 # load x3 with value 0x3178ad1801211c90
sw x3, 0(x2) # store 0x3178ad1801211c90 in memory
flh f31, 0(x2) # load 0x3178ad1801211c90 from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fadd.h f14, f31, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x9e7808a5ccd5e1c9 # load x3 with value 0x9e7808a5ccd5e1c9
sw x3, 0(x2) # store 0x9e7808a5ccd5e1c9 in memory
flh f26, 0(x2) # load 0x9e7808a5ccd5e1c9 from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fadd.h f3, f26, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0xcb851ac921f9ef78 # load x3 with value 0xcb851ac921f9ef78
sw x3, 0(x2) # store 0xcb851ac921f9ef78 in memory
flh f13, 0(x2) # load 0xcb851ac921f9ef78 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fadd.h f25, f13, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x9b4ab6832e5b4631 # load x3 with value 0x9b4ab6832e5b4631
sw x3, 0(x2) # store 0x9b4ab6832e5b4631 in memory
flh f31, 0(x2) # load 0x9b4ab6832e5b4631 from memory into f31
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f15, f31, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0xcb8f554452f8929a # load x3 with value 0xcb8f554452f8929a
sw x3, 0(x2) # store 0xcb8f554452f8929a in memory
flh f28, 0(x2) # load 0xcb8f554452f8929a from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fadd.h f16, f28, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x4794a0cad6739f40 # load x3 with value 0x4794a0cad6739f40
sw x3, 0(x2) # store 0x4794a0cad6739f40 in memory
flh f30, 0(x2) # load 0x4794a0cad6739f40 from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fadd.h f9, f30, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x59c532fe0900508d # load x3 with value 0x59c532fe0900508d
sw x3, 0(x2) # store 0x59c532fe0900508d in memory
flh f10, 0(x2) # load 0x59c532fe0900508d from memory into f10
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fadd.h f8, f10, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x7b5aab844bc58632 # load x3 with value 0x7b5aab844bc58632
sw x3, 0(x2) # store 0x7b5aab844bc58632 in memory
flh f3, 0(x2) # load 0x7b5aab844bc58632 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fadd.h f31, f3, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0xac7eb01366eb1354 # load x3 with value 0xac7eb01366eb1354
sw x3, 0(x2) # store 0xac7eb01366eb1354 in memory
flh f16, 0(x2) # load 0xac7eb01366eb1354 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fadd.h f15, f16, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0xaee91b8b08cfa38d # load x3 with value 0xaee91b8b08cfa38d
sw x3, 0(x2) # store 0xaee91b8b08cfa38d in memory
flh f18, 0(x2) # load 0xaee91b8b08cfa38d from memory into f18
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fadd.h f24, f18, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x25b8924ec179dce6 # load x3 with value 0x25b8924ec179dce6
sw x3, 0(x2) # store 0x25b8924ec179dce6 in memory
flh f9, 0(x2) # load 0x25b8924ec179dce6 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fadd.h f13, f9, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x328f3e9fe93ecc7c # load x3 with value 0x328f3e9fe93ecc7c
sw x3, 0(x2) # store 0x328f3e9fe93ecc7c in memory
flh f7, 0(x2) # load 0x328f3e9fe93ecc7c from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fadd.h f22, f7, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0xfc0ade95a9d1c921 # load x3 with value 0xfc0ade95a9d1c921
sw x3, 0(x2) # store 0xfc0ade95a9d1c921 in memory
flh f20, 0(x2) # load 0xfc0ade95a9d1c921 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fadd.h f13, f20, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x955dd268aa218738 # load x3 with value 0x955dd268aa218738
sw x3, 0(x2) # store 0x955dd268aa218738 in memory
flh f8, 0(x2) # load 0x955dd268aa218738 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fadd.h f20, f8, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x98b33f6fa77dd338 # load x3 with value 0x98b33f6fa77dd338
sw x3, 0(x2) # store 0x98b33f6fa77dd338 in memory
flh f11, 0(x2) # load 0x98b33f6fa77dd338 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fadd.h f27, f11, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0xf25f62455a5fcfee # load x3 with value 0xf25f62455a5fcfee
sw x3, 0(x2) # store 0xf25f62455a5fcfee in memory
flh f10, 0(x2) # load 0xf25f62455a5fcfee from memory into f10
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fadd.h f13, f10, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0xfdd65433c539a609 # load x3 with value 0xfdd65433c539a609
sw x3, 0(x2) # store 0xfdd65433c539a609 in memory
flh f25, 0(x2) # load 0xfdd65433c539a609 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fadd.h f8, f25, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x840aa5edd6aec181 # load x3 with value 0x840aa5edd6aec181
sw x3, 0(x2) # store 0x840aa5edd6aec181 in memory
flh f29, 0(x2) # load 0x840aa5edd6aec181 from memory into f29
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fadd.h f2, f29, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0xfd8fe34f54f43cdb # load x3 with value 0xfd8fe34f54f43cdb
sw x3, 0(x2) # store 0xfd8fe34f54f43cdb in memory
flh f8, 0(x2) # load 0xfd8fe34f54f43cdb from memory into f8
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
fadd.h f17, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x997bdc618cd60458 # load x3 with value 0x997bdc618cd60458
sw x3, 0(x2) # store 0x997bdc618cd60458 in memory
flh f1, 0(x2) # load 0x997bdc618cd60458 from memory into f1
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fadd.h f5, f1, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x3a003c79f7ec6f4f # load x3 with value 0x3a003c79f7ec6f4f
sw x3, 0(x2) # store 0x3a003c79f7ec6f4f in memory
flh f16, 0(x2) # load 0x3a003c79f7ec6f4f from memory into f16
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fadd.h f5, f16, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0xc96aff5668cc5741 # load x3 with value 0xc96aff5668cc5741
sw x3, 0(x2) # store 0xc96aff5668cc5741 in memory
flh f17, 0(x2) # load 0xc96aff5668cc5741 from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fadd.h f6, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x1d6671c3f9f0d625 # load x3 with value 0x1d6671c3f9f0d625
sw x3, 0(x2) # store 0x1d6671c3f9f0d625 in memory
flh f24, 0(x2) # load 0x1d6671c3f9f0d625 from memory into f24
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fadd.h f18, f24, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0x75e8ce4c8ef36e44 # load x3 with value 0x75e8ce4c8ef36e44
sw x3, 0(x2) # store 0x75e8ce4c8ef36e44 in memory
flh f10, 0(x2) # load 0x75e8ce4c8ef36e44 from memory into f10
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fadd.h f20, f10, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x1ad38dd111146270 # load x3 with value 0x1ad38dd111146270
sw x3, 0(x2) # store 0x1ad38dd111146270 in memory
flh f0, 0(x2) # load 0x1ad38dd111146270 from memory into f0
la x2, scratch
li x3, 0x7bb3eb7ab605fbb0 # load x3 with value 0x7bb3eb7ab605fbb0
sw x3, 0(x2) # store 0x7bb3eb7ab605fbb0 in memory
flh f16, 0(x2) # load 0x7bb3eb7ab605fbb0 from memory into f16
fadd.h f0, f0, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0xc642206657558806 # load x3 with value 0xc642206657558806
sw x3, 0(x2) # store 0xc642206657558806 in memory
flh f1, 0(x2) # load 0xc642206657558806 from memory into f1
la x2, scratch
li x3, 0xb4900e91944ce9a7 # load x3 with value 0xb4900e91944ce9a7
sw x3, 0(x2) # store 0xb4900e91944ce9a7 in memory
flh f27, 0(x2) # load 0xb4900e91944ce9a7 from memory into f27
fadd.h f1, f1, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xebb00eca20dbb305 # load x3 with value 0xebb00eca20dbb305
sw x3, 0(x2) # store 0xebb00eca20dbb305 in memory
flh f2, 0(x2) # load 0xebb00eca20dbb305 from memory into f2
la x2, scratch
li x3, 0x4efd267820715cd0 # load x3 with value 0x4efd267820715cd0
sw x3, 0(x2) # store 0x4efd267820715cd0 in memory
flh f18, 0(x2) # load 0x4efd267820715cd0 from memory into f18
fadd.h f2, f2, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x8e054d77551bbbe1 # load x3 with value 0x8e054d77551bbbe1
sw x3, 0(x2) # store 0x8e054d77551bbbe1 in memory
flh f3, 0(x2) # load 0x8e054d77551bbbe1 from memory into f3
la x2, scratch
li x3, 0x6d6f28598ae64c18 # load x3 with value 0x6d6f28598ae64c18
sw x3, 0(x2) # store 0x6d6f28598ae64c18 in memory
flh f25, 0(x2) # load 0x6d6f28598ae64c18 from memory into f25
fadd.h f3, f3, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x10778fff4841920a # load x3 with value 0x10778fff4841920a
sw x3, 0(x2) # store 0x10778fff4841920a in memory
flh f4, 0(x2) # load 0x10778fff4841920a from memory into f4
la x2, scratch
li x3, 0xd74a99f504325cd4 # load x3 with value 0xd74a99f504325cd4
sw x3, 0(x2) # store 0xd74a99f504325cd4 in memory
flh f14, 0(x2) # load 0xd74a99f504325cd4 from memory into f14
fadd.h f4, f4, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3ef4a9ebe5fda9fe # load x3 with value 0x3ef4a9ebe5fda9fe
sw x3, 0(x2) # store 0x3ef4a9ebe5fda9fe in memory
flh f5, 0(x2) # load 0x3ef4a9ebe5fda9fe from memory into f5
la x2, scratch
li x3, 0xba298748025e73bc # load x3 with value 0xba298748025e73bc
sw x3, 0(x2) # store 0xba298748025e73bc in memory
flh f31, 0(x2) # load 0xba298748025e73bc from memory into f31
fadd.h f5, f5, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7c8853a66ed463e4 # load x3 with value 0x7c8853a66ed463e4
sw x3, 0(x2) # store 0x7c8853a66ed463e4 in memory
flh f6, 0(x2) # load 0x7c8853a66ed463e4 from memory into f6
la x2, scratch
li x3, 0xc3371c8c6672a5a6 # load x3 with value 0xc3371c8c6672a5a6
sw x3, 0(x2) # store 0xc3371c8c6672a5a6 in memory
flh f12, 0(x2) # load 0xc3371c8c6672a5a6 from memory into f12
fadd.h f6, f6, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8a8e6b327940ed94 # load x3 with value 0x8a8e6b327940ed94
sw x3, 0(x2) # store 0x8a8e6b327940ed94 in memory
flh f7, 0(x2) # load 0x8a8e6b327940ed94 from memory into f7
la x2, scratch
li x3, 0x27bad9a3975686d4 # load x3 with value 0x27bad9a3975686d4
sw x3, 0(x2) # store 0x27bad9a3975686d4 in memory
flh f1, 0(x2) # load 0x27bad9a3975686d4 from memory into f1
fadd.h f7, f7, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x55af2ea1036588ac # load x3 with value 0x55af2ea1036588ac
sw x3, 0(x2) # store 0x55af2ea1036588ac in memory
flh f8, 0(x2) # load 0x55af2ea1036588ac from memory into f8
la x2, scratch
li x3, 0x50ea1d812f69e24 # load x3 with value 0x50ea1d812f69e24
sw x3, 0(x2) # store 0x50ea1d812f69e24 in memory
flh f5, 0(x2) # load 0x50ea1d812f69e24 from memory into f5
fadd.h f8, f8, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xe41823c86bc107d6 # load x3 with value 0xe41823c86bc107d6
sw x3, 0(x2) # store 0xe41823c86bc107d6 in memory
flh f9, 0(x2) # load 0xe41823c86bc107d6 from memory into f9
la x2, scratch
li x3, 0x1ba01650ff4ef1a6 # load x3 with value 0x1ba01650ff4ef1a6
sw x3, 0(x2) # store 0x1ba01650ff4ef1a6 in memory
flh f18, 0(x2) # load 0x1ba01650ff4ef1a6 from memory into f18
fadd.h f9, f9, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x1f5ea791b5b42771 # load x3 with value 0x1f5ea791b5b42771
sw x3, 0(x2) # store 0x1f5ea791b5b42771 in memory
flh f10, 0(x2) # load 0x1f5ea791b5b42771 from memory into f10
la x2, scratch
li x3, 0x699fd63b4db2f3e # load x3 with value 0x699fd63b4db2f3e
sw x3, 0(x2) # store 0x699fd63b4db2f3e in memory
flh f15, 0(x2) # load 0x699fd63b4db2f3e from memory into f15
fadd.h f10, f10, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0xf68241d7b1331d1d # load x3 with value 0xf68241d7b1331d1d
sw x3, 0(x2) # store 0xf68241d7b1331d1d in memory
flh f11, 0(x2) # load 0xf68241d7b1331d1d from memory into f11
la x2, scratch
li x3, 0xf4ebb4ae6c48bf2b # load x3 with value 0xf4ebb4ae6c48bf2b
sw x3, 0(x2) # store 0xf4ebb4ae6c48bf2b in memory
flh f26, 0(x2) # load 0xf4ebb4ae6c48bf2b from memory into f26
fadd.h f11, f11, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0x868f0fb491015ba4 # load x3 with value 0x868f0fb491015ba4
sw x3, 0(x2) # store 0x868f0fb491015ba4 in memory
flh f12, 0(x2) # load 0x868f0fb491015ba4 from memory into f12
la x2, scratch
li x3, 0xc91fac921f47282 # load x3 with value 0xc91fac921f47282
sw x3, 0(x2) # store 0xc91fac921f47282 in memory
flh f8, 0(x2) # load 0xc91fac921f47282 from memory into f8
fadd.h f12, f12, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xe85327a00055eb37 # load x3 with value 0xe85327a00055eb37
sw x3, 0(x2) # store 0xe85327a00055eb37 in memory
flh f13, 0(x2) # load 0xe85327a00055eb37 from memory into f13
la x2, scratch
li x3, 0x96b986be26995b04 # load x3 with value 0x96b986be26995b04
sw x3, 0(x2) # store 0x96b986be26995b04 in memory
flh f13, 0(x2) # load 0x96b986be26995b04 from memory into f13
fadd.h f13, f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0xa783d7d85497b9b2 # load x3 with value 0xa783d7d85497b9b2
sw x3, 0(x2) # store 0xa783d7d85497b9b2 in memory
flh f14, 0(x2) # load 0xa783d7d85497b9b2 from memory into f14
la x2, scratch
li x3, 0x14288c6cc99d5d7d # load x3 with value 0x14288c6cc99d5d7d
sw x3, 0(x2) # store 0x14288c6cc99d5d7d in memory
flh f7, 0(x2) # load 0x14288c6cc99d5d7d from memory into f7
fadd.h f14, f14, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x59622e31502e4090 # load x3 with value 0x59622e31502e4090
sw x3, 0(x2) # store 0x59622e31502e4090 in memory
flh f15, 0(x2) # load 0x59622e31502e4090 from memory into f15
la x2, scratch
li x3, 0x4373796a4a7b97d5 # load x3 with value 0x4373796a4a7b97d5
sw x3, 0(x2) # store 0x4373796a4a7b97d5 in memory
flh f21, 0(x2) # load 0x4373796a4a7b97d5 from memory into f21
fadd.h f15, f15, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xcda09bdd6007a67b # load x3 with value 0xcda09bdd6007a67b
sw x3, 0(x2) # store 0xcda09bdd6007a67b in memory
flh f16, 0(x2) # load 0xcda09bdd6007a67b from memory into f16
la x2, scratch
li x3, 0x6dd797421e9a83db # load x3 with value 0x6dd797421e9a83db
sw x3, 0(x2) # store 0x6dd797421e9a83db in memory
flh f28, 0(x2) # load 0x6dd797421e9a83db from memory into f28
fadd.h f16, f16, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0xba3656c6d7cfa789 # load x3 with value 0xba3656c6d7cfa789
sw x3, 0(x2) # store 0xba3656c6d7cfa789 in memory
flh f17, 0(x2) # load 0xba3656c6d7cfa789 from memory into f17
la x2, scratch
li x3, 0xf8ca54acb723195f # load x3 with value 0xf8ca54acb723195f
sw x3, 0(x2) # store 0xf8ca54acb723195f in memory
flh f20, 0(x2) # load 0xf8ca54acb723195f from memory into f20
fadd.h f17, f17, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x6219b4dec51b5d46 # load x3 with value 0x6219b4dec51b5d46
sw x3, 0(x2) # store 0x6219b4dec51b5d46 in memory
flh f18, 0(x2) # load 0x6219b4dec51b5d46 from memory into f18
la x2, scratch
li x3, 0xc6c29d36ffce7a50 # load x3 with value 0xc6c29d36ffce7a50
sw x3, 0(x2) # store 0xc6c29d36ffce7a50 in memory
flh f21, 0(x2) # load 0xc6c29d36ffce7a50 from memory into f21
fadd.h f18, f18, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x4444be82a2d5b8e # load x3 with value 0x4444be82a2d5b8e
sw x3, 0(x2) # store 0x4444be82a2d5b8e in memory
flh f19, 0(x2) # load 0x4444be82a2d5b8e from memory into f19
la x2, scratch
li x3, 0x51541122c2297e81 # load x3 with value 0x51541122c2297e81
sw x3, 0(x2) # store 0x51541122c2297e81 in memory
flh f14, 0(x2) # load 0x51541122c2297e81 from memory into f14
fadd.h f19, f19, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0xa1a4534042d1186d # load x3 with value 0xa1a4534042d1186d
sw x3, 0(x2) # store 0xa1a4534042d1186d in memory
flh f20, 0(x2) # load 0xa1a4534042d1186d from memory into f20
la x2, scratch
li x3, 0x7831bd6cb75cec36 # load x3 with value 0x7831bd6cb75cec36
sw x3, 0(x2) # store 0x7831bd6cb75cec36 in memory
flh f22, 0(x2) # load 0x7831bd6cb75cec36 from memory into f22
fadd.h f20, f20, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xdaf7c28c3d9d10cb # load x3 with value 0xdaf7c28c3d9d10cb
sw x3, 0(x2) # store 0xdaf7c28c3d9d10cb in memory
flh f21, 0(x2) # load 0xdaf7c28c3d9d10cb from memory into f21
la x2, scratch
li x3, 0xa9b921e0895dca4e # load x3 with value 0xa9b921e0895dca4e
sw x3, 0(x2) # store 0xa9b921e0895dca4e in memory
flh f22, 0(x2) # load 0xa9b921e0895dca4e from memory into f22
fadd.h f21, f21, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x4e8b77aa89e6f0e5 # load x3 with value 0x4e8b77aa89e6f0e5
sw x3, 0(x2) # store 0x4e8b77aa89e6f0e5 in memory
flh f22, 0(x2) # load 0x4e8b77aa89e6f0e5 from memory into f22
la x2, scratch
li x3, 0xdadaa7f6beff9965 # load x3 with value 0xdadaa7f6beff9965
sw x3, 0(x2) # store 0xdadaa7f6beff9965 in memory
flh f8, 0(x2) # load 0xdadaa7f6beff9965 from memory into f8
fadd.h f22, f22, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x75d2b964ba6c42f0 # load x3 with value 0x75d2b964ba6c42f0
sw x3, 0(x2) # store 0x75d2b964ba6c42f0 in memory
flh f23, 0(x2) # load 0x75d2b964ba6c42f0 from memory into f23
la x2, scratch
li x3, 0xccbdf04d35edaac4 # load x3 with value 0xccbdf04d35edaac4
sw x3, 0(x2) # store 0xccbdf04d35edaac4 in memory
flh f22, 0(x2) # load 0xccbdf04d35edaac4 from memory into f22
fadd.h f23, f23, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x332058b273a4d989 # load x3 with value 0x332058b273a4d989
sw x3, 0(x2) # store 0x332058b273a4d989 in memory
flh f24, 0(x2) # load 0x332058b273a4d989 from memory into f24
la x2, scratch
li x3, 0x54de669694ad29ec # load x3 with value 0x54de669694ad29ec
sw x3, 0(x2) # store 0x54de669694ad29ec in memory
flh f16, 0(x2) # load 0x54de669694ad29ec from memory into f16
fadd.h f24, f24, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x95271b800d77f67d # load x3 with value 0x95271b800d77f67d
sw x3, 0(x2) # store 0x95271b800d77f67d in memory
flh f25, 0(x2) # load 0x95271b800d77f67d from memory into f25
la x2, scratch
li x3, 0xa0c8718edb0160ee # load x3 with value 0xa0c8718edb0160ee
sw x3, 0(x2) # store 0xa0c8718edb0160ee in memory
flh f23, 0(x2) # load 0xa0c8718edb0160ee from memory into f23
fadd.h f25, f25, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0xe1c6084f108451ea # load x3 with value 0xe1c6084f108451ea
sw x3, 0(x2) # store 0xe1c6084f108451ea in memory
flh f26, 0(x2) # load 0xe1c6084f108451ea from memory into f26
la x2, scratch
li x3, 0x1964a4371077b706 # load x3 with value 0x1964a4371077b706
sw x3, 0(x2) # store 0x1964a4371077b706 in memory
flh f9, 0(x2) # load 0x1964a4371077b706 from memory into f9
fadd.h f26, f26, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0xaef2fd9e7a1419aa # load x3 with value 0xaef2fd9e7a1419aa
sw x3, 0(x2) # store 0xaef2fd9e7a1419aa in memory
flh f27, 0(x2) # load 0xaef2fd9e7a1419aa from memory into f27
la x2, scratch
li x3, 0x8fec4144b69eb170 # load x3 with value 0x8fec4144b69eb170
sw x3, 0(x2) # store 0x8fec4144b69eb170 in memory
flh f11, 0(x2) # load 0x8fec4144b69eb170 from memory into f11
fadd.h f27, f27, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x6a44437155318ce5 # load x3 with value 0x6a44437155318ce5
sw x3, 0(x2) # store 0x6a44437155318ce5 in memory
flh f28, 0(x2) # load 0x6a44437155318ce5 from memory into f28
la x2, scratch
li x3, 0xfc8ec06c0e3ab882 # load x3 with value 0xfc8ec06c0e3ab882
sw x3, 0(x2) # store 0xfc8ec06c0e3ab882 in memory
flh f27, 0(x2) # load 0xfc8ec06c0e3ab882 from memory into f27
fadd.h f28, f28, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xa4013bfa283162cd # load x3 with value 0xa4013bfa283162cd
sw x3, 0(x2) # store 0xa4013bfa283162cd in memory
flh f29, 0(x2) # load 0xa4013bfa283162cd from memory into f29
la x2, scratch
li x3, 0xf53b63a5e15b7f8c # load x3 with value 0xf53b63a5e15b7f8c
sw x3, 0(x2) # store 0xf53b63a5e15b7f8c in memory
flh f15, 0(x2) # load 0xf53b63a5e15b7f8c from memory into f15
fadd.h f29, f29, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xffe46f72c6c3d153 # load x3 with value 0xffe46f72c6c3d153
sw x3, 0(x2) # store 0xffe46f72c6c3d153 in memory
flh f30, 0(x2) # load 0xffe46f72c6c3d153 from memory into f30
la x2, scratch
li x3, 0x6e87454669a4d339 # load x3 with value 0x6e87454669a4d339
sw x3, 0(x2) # store 0x6e87454669a4d339 in memory
flh f13, 0(x2) # load 0x6e87454669a4d339 from memory into f13
fadd.h f30, f30, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x8fda8b6e155b3d41 # load x3 with value 0x8fda8b6e155b3d41
sw x3, 0(x2) # store 0x8fda8b6e155b3d41 in memory
flh f31, 0(x2) # load 0x8fda8b6e155b3d41 from memory into f31
la x2, scratch
li x3, 0x31e9e236c87c4123 # load x3 with value 0x31e9e236c87c4123
sw x3, 0(x2) # store 0x31e9e236c87c4123 in memory
flh f6, 0(x2) # load 0x31e9e236c87c4123 from memory into f6
fadd.h f31, f31, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x504e22f12aef2410 # load x3 with value 0x504e22f12aef2410
sw x3, 0(x2) # store 0x504e22f12aef2410 in memory
flh f5, 0(x2) # load 0x504e22f12aef2410 from memory into f5
la x2, scratch
li x3, 0x39e99dd07036bdb7 # load x3 with value 0x39e99dd07036bdb7
sw x3, 0(x2) # store 0x39e99dd07036bdb7 in memory
flh f0, 0(x2) # load 0x39e99dd07036bdb7 from memory into f0
fadd.h f0, f5, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x798a3fa08a88a9d3 # load x3 with value 0x798a3fa08a88a9d3
sw x3, 0(x2) # store 0x798a3fa08a88a9d3 in memory
flh f12, 0(x2) # load 0x798a3fa08a88a9d3 from memory into f12
la x2, scratch
li x3, 0xda6354d74108a514 # load x3 with value 0xda6354d74108a514
sw x3, 0(x2) # store 0xda6354d74108a514 in memory
flh f1, 0(x2) # load 0xda6354d74108a514 from memory into f1
fadd.h f1, f12, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0xa4a00cad6372a231 # load x3 with value 0xa4a00cad6372a231
sw x3, 0(x2) # store 0xa4a00cad6372a231 in memory
flh f19, 0(x2) # load 0xa4a00cad6372a231 from memory into f19
la x2, scratch
li x3, 0x792a94fa7ce46a24 # load x3 with value 0x792a94fa7ce46a24
sw x3, 0(x2) # store 0x792a94fa7ce46a24 in memory
flh f2, 0(x2) # load 0x792a94fa7ce46a24 from memory into f2
fadd.h f2, f19, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0xf975a3a22d8788ca # load x3 with value 0xf975a3a22d8788ca
sw x3, 0(x2) # store 0xf975a3a22d8788ca in memory
flh f22, 0(x2) # load 0xf975a3a22d8788ca from memory into f22
la x2, scratch
li x3, 0x4552f1ee9ddbf2e2 # load x3 with value 0x4552f1ee9ddbf2e2
sw x3, 0(x2) # store 0x4552f1ee9ddbf2e2 in memory
flh f3, 0(x2) # load 0x4552f1ee9ddbf2e2 from memory into f3
fadd.h f3, f22, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x61037bd8fef1e37c # load x3 with value 0x61037bd8fef1e37c
sw x3, 0(x2) # store 0x61037bd8fef1e37c in memory
flh f25, 0(x2) # load 0x61037bd8fef1e37c from memory into f25
la x2, scratch
li x3, 0xcb79031fb8290381 # load x3 with value 0xcb79031fb8290381
sw x3, 0(x2) # store 0xcb79031fb8290381 in memory
flh f4, 0(x2) # load 0xcb79031fb8290381 from memory into f4
fadd.h f4, f25, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdfb692a92240f209 # load x3 with value 0xdfb692a92240f209
sw x3, 0(x2) # store 0xdfb692a92240f209 in memory
flh f19, 0(x2) # load 0xdfb692a92240f209 from memory into f19
la x2, scratch
li x3, 0xc690e077bcf93fc0 # load x3 with value 0xc690e077bcf93fc0
sw x3, 0(x2) # store 0xc690e077bcf93fc0 in memory
flh f5, 0(x2) # load 0xc690e077bcf93fc0 from memory into f5
fadd.h f5, f19, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x629a7466c8425e70 # load x3 with value 0x629a7466c8425e70
sw x3, 0(x2) # store 0x629a7466c8425e70 in memory
flh f20, 0(x2) # load 0x629a7466c8425e70 from memory into f20
la x2, scratch
li x3, 0xfabfff2662557e42 # load x3 with value 0xfabfff2662557e42
sw x3, 0(x2) # store 0xfabfff2662557e42 in memory
flh f6, 0(x2) # load 0xfabfff2662557e42 from memory into f6
fadd.h f6, f20, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x67264e0167797a19 # load x3 with value 0x67264e0167797a19
sw x3, 0(x2) # store 0x67264e0167797a19 in memory
flh f9, 0(x2) # load 0x67264e0167797a19 from memory into f9
la x2, scratch
li x3, 0x541549efb3efb127 # load x3 with value 0x541549efb3efb127
sw x3, 0(x2) # store 0x541549efb3efb127 in memory
flh f7, 0(x2) # load 0x541549efb3efb127 from memory into f7
fadd.h f7, f9, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0xe18761b5fc5a7ec3 # load x3 with value 0xe18761b5fc5a7ec3
sw x3, 0(x2) # store 0xe18761b5fc5a7ec3 in memory
flh f2, 0(x2) # load 0xe18761b5fc5a7ec3 from memory into f2
la x2, scratch
li x3, 0x31a50f8e2affd4da # load x3 with value 0x31a50f8e2affd4da
sw x3, 0(x2) # store 0x31a50f8e2affd4da in memory
flh f8, 0(x2) # load 0x31a50f8e2affd4da from memory into f8
fadd.h f8, f2, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x7102687a19d1ae05 # load x3 with value 0x7102687a19d1ae05
sw x3, 0(x2) # store 0x7102687a19d1ae05 in memory
flh f7, 0(x2) # load 0x7102687a19d1ae05 from memory into f7
la x2, scratch
li x3, 0xfd1e7003c2d94079 # load x3 with value 0xfd1e7003c2d94079
sw x3, 0(x2) # store 0xfd1e7003c2d94079 in memory
flh f9, 0(x2) # load 0xfd1e7003c2d94079 from memory into f9
fadd.h f9, f7, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x7295e6afe5ac35c9 # load x3 with value 0x7295e6afe5ac35c9
sw x3, 0(x2) # store 0x7295e6afe5ac35c9 in memory
flh f9, 0(x2) # load 0x7295e6afe5ac35c9 from memory into f9
la x2, scratch
li x3, 0x777774f530878c93 # load x3 with value 0x777774f530878c93
sw x3, 0(x2) # store 0x777774f530878c93 in memory
flh f10, 0(x2) # load 0x777774f530878c93 from memory into f10
fadd.h f10, f9, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x618102e8e8dcdf0e # load x3 with value 0x618102e8e8dcdf0e
sw x3, 0(x2) # store 0x618102e8e8dcdf0e in memory
flh f11, 0(x2) # load 0x618102e8e8dcdf0e from memory into f11
la x2, scratch
li x3, 0x2fbf7abdc5d90596 # load x3 with value 0x2fbf7abdc5d90596
sw x3, 0(x2) # store 0x2fbf7abdc5d90596 in memory
flh f11, 0(x2) # load 0x2fbf7abdc5d90596 from memory into f11
fadd.h f11, f11, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x3bf353c110cfc192 # load x3 with value 0x3bf353c110cfc192
sw x3, 0(x2) # store 0x3bf353c110cfc192 in memory
flh f9, 0(x2) # load 0x3bf353c110cfc192 from memory into f9
la x2, scratch
li x3, 0xf373beafa52a48 # load x3 with value 0xf373beafa52a48
sw x3, 0(x2) # store 0xf373beafa52a48 in memory
flh f12, 0(x2) # load 0xf373beafa52a48 from memory into f12
fadd.h f12, f9, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x5e24de93e9f2d51d # load x3 with value 0x5e24de93e9f2d51d
sw x3, 0(x2) # store 0x5e24de93e9f2d51d in memory
flh f29, 0(x2) # load 0x5e24de93e9f2d51d from memory into f29
la x2, scratch
li x3, 0x38e1ea4201bc2e4e # load x3 with value 0x38e1ea4201bc2e4e
sw x3, 0(x2) # store 0x38e1ea4201bc2e4e in memory
flh f13, 0(x2) # load 0x38e1ea4201bc2e4e from memory into f13
fadd.h f13, f29, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xe4dca2606e9a03bb # load x3 with value 0xe4dca2606e9a03bb
sw x3, 0(x2) # store 0xe4dca2606e9a03bb in memory
flh f5, 0(x2) # load 0xe4dca2606e9a03bb from memory into f5
la x2, scratch
li x3, 0x2e4ca2f1b4ba9a2f # load x3 with value 0x2e4ca2f1b4ba9a2f
sw x3, 0(x2) # store 0x2e4ca2f1b4ba9a2f in memory
flh f14, 0(x2) # load 0x2e4ca2f1b4ba9a2f from memory into f14
fadd.h f14, f5, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x7f844ba98593923b # load x3 with value 0x7f844ba98593923b
sw x3, 0(x2) # store 0x7f844ba98593923b in memory
flh f21, 0(x2) # load 0x7f844ba98593923b from memory into f21
la x2, scratch
li x3, 0x3d14bc08a2dcc733 # load x3 with value 0x3d14bc08a2dcc733
sw x3, 0(x2) # store 0x3d14bc08a2dcc733 in memory
flh f15, 0(x2) # load 0x3d14bc08a2dcc733 from memory into f15
fadd.h f15, f21, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0xb2845264dda17e94 # load x3 with value 0xb2845264dda17e94
sw x3, 0(x2) # store 0xb2845264dda17e94 in memory
flh f25, 0(x2) # load 0xb2845264dda17e94 from memory into f25
la x2, scratch
li x3, 0xd0e66e06a31aa3fe # load x3 with value 0xd0e66e06a31aa3fe
sw x3, 0(x2) # store 0xd0e66e06a31aa3fe in memory
flh f16, 0(x2) # load 0xd0e66e06a31aa3fe from memory into f16
fadd.h f16, f25, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0xe02d74bf3e31079a # load x3 with value 0xe02d74bf3e31079a
sw x3, 0(x2) # store 0xe02d74bf3e31079a in memory
flh f1, 0(x2) # load 0xe02d74bf3e31079a from memory into f1
la x2, scratch
li x3, 0x2b2b9b130e01f6d7 # load x3 with value 0x2b2b9b130e01f6d7
sw x3, 0(x2) # store 0x2b2b9b130e01f6d7 in memory
flh f17, 0(x2) # load 0x2b2b9b130e01f6d7 from memory into f17
fadd.h f17, f1, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0xdd7e825a6a5bcd99 # load x3 with value 0xdd7e825a6a5bcd99
sw x3, 0(x2) # store 0xdd7e825a6a5bcd99 in memory
flh f27, 0(x2) # load 0xdd7e825a6a5bcd99 from memory into f27
la x2, scratch
li x3, 0x7c2f48225f15d3bf # load x3 with value 0x7c2f48225f15d3bf
sw x3, 0(x2) # store 0x7c2f48225f15d3bf in memory
flh f18, 0(x2) # load 0x7c2f48225f15d3bf from memory into f18
fadd.h f18, f27, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x175945b6e1376960 # load x3 with value 0x175945b6e1376960
sw x3, 0(x2) # store 0x175945b6e1376960 in memory
flh f26, 0(x2) # load 0x175945b6e1376960 from memory into f26
la x2, scratch
li x3, 0x85e3e325b0459e22 # load x3 with value 0x85e3e325b0459e22
sw x3, 0(x2) # store 0x85e3e325b0459e22 in memory
flh f19, 0(x2) # load 0x85e3e325b0459e22 from memory into f19
fadd.h f19, f26, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x2ad8b7395b3a2ba0 # load x3 with value 0x2ad8b7395b3a2ba0
sw x3, 0(x2) # store 0x2ad8b7395b3a2ba0 in memory
flh f14, 0(x2) # load 0x2ad8b7395b3a2ba0 from memory into f14
la x2, scratch
li x3, 0x647c77f91a7d8b97 # load x3 with value 0x647c77f91a7d8b97
sw x3, 0(x2) # store 0x647c77f91a7d8b97 in memory
flh f20, 0(x2) # load 0x647c77f91a7d8b97 from memory into f20
fadd.h f20, f14, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0x21c82095c266d16 # load x3 with value 0x21c82095c266d16
sw x3, 0(x2) # store 0x21c82095c266d16 in memory
flh f18, 0(x2) # load 0x21c82095c266d16 from memory into f18
la x2, scratch
li x3, 0x72d8efaeb0bb83d0 # load x3 with value 0x72d8efaeb0bb83d0
sw x3, 0(x2) # store 0x72d8efaeb0bb83d0 in memory
flh f21, 0(x2) # load 0x72d8efaeb0bb83d0 from memory into f21
fadd.h f21, f18, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x3616ff8b85e3f5b0 # load x3 with value 0x3616ff8b85e3f5b0
sw x3, 0(x2) # store 0x3616ff8b85e3f5b0 in memory
flh f13, 0(x2) # load 0x3616ff8b85e3f5b0 from memory into f13
la x2, scratch
li x3, 0xdeb224c914687d01 # load x3 with value 0xdeb224c914687d01
sw x3, 0(x2) # store 0xdeb224c914687d01 in memory
flh f22, 0(x2) # load 0xdeb224c914687d01 from memory into f22
fadd.h f22, f13, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x79a2038816e17a21 # load x3 with value 0x79a2038816e17a21
sw x3, 0(x2) # store 0x79a2038816e17a21 in memory
flh f17, 0(x2) # load 0x79a2038816e17a21 from memory into f17
la x2, scratch
li x3, 0x7ca66b59073c1f6 # load x3 with value 0x7ca66b59073c1f6
sw x3, 0(x2) # store 0x7ca66b59073c1f6 in memory
flh f23, 0(x2) # load 0x7ca66b59073c1f6 from memory into f23
fadd.h f23, f17, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x4c30e15219b84d1 # load x3 with value 0x4c30e15219b84d1
sw x3, 0(x2) # store 0x4c30e15219b84d1 in memory
flh f24, 0(x2) # load 0x4c30e15219b84d1 from memory into f24
la x2, scratch
li x3, 0x1413fae47947f576 # load x3 with value 0x1413fae47947f576
sw x3, 0(x2) # store 0x1413fae47947f576 in memory
flh f24, 0(x2) # load 0x1413fae47947f576 from memory into f24
fadd.h f24, f24, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x3088a47445603d2 # load x3 with value 0x3088a47445603d2
sw x3, 0(x2) # store 0x3088a47445603d2 in memory
flh f28, 0(x2) # load 0x3088a47445603d2 from memory into f28
la x2, scratch
li x3, 0x2e79e10375d716e9 # load x3 with value 0x2e79e10375d716e9
sw x3, 0(x2) # store 0x2e79e10375d716e9 in memory
flh f25, 0(x2) # load 0x2e79e10375d716e9 from memory into f25
fadd.h f25, f28, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x47d336f59308710d # load x3 with value 0x47d336f59308710d
sw x3, 0(x2) # store 0x47d336f59308710d in memory
flh f3, 0(x2) # load 0x47d336f59308710d from memory into f3
la x2, scratch
li x3, 0x9d2d5e79f4b437ee # load x3 with value 0x9d2d5e79f4b437ee
sw x3, 0(x2) # store 0x9d2d5e79f4b437ee in memory
flh f26, 0(x2) # load 0x9d2d5e79f4b437ee from memory into f26
fadd.h f26, f3, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x4645cadcf111b234 # load x3 with value 0x4645cadcf111b234
sw x3, 0(x2) # store 0x4645cadcf111b234 in memory
flh f27, 0(x2) # load 0x4645cadcf111b234 from memory into f27
la x2, scratch
li x3, 0x230f2cf7113811b8 # load x3 with value 0x230f2cf7113811b8
sw x3, 0(x2) # store 0x230f2cf7113811b8 in memory
flh f27, 0(x2) # load 0x230f2cf7113811b8 from memory into f27
fadd.h f27, f27, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0xc894438edf5dc289 # load x3 with value 0xc894438edf5dc289
sw x3, 0(x2) # store 0xc894438edf5dc289 in memory
flh f18, 0(x2) # load 0xc894438edf5dc289 from memory into f18
la x2, scratch
li x3, 0xf1fd7a4f69baacf5 # load x3 with value 0xf1fd7a4f69baacf5
sw x3, 0(x2) # store 0xf1fd7a4f69baacf5 in memory
flh f28, 0(x2) # load 0xf1fd7a4f69baacf5 from memory into f28
fadd.h f28, f18, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x2538c34d0e39f8b8 # load x3 with value 0x2538c34d0e39f8b8
sw x3, 0(x2) # store 0x2538c34d0e39f8b8 in memory
flh f10, 0(x2) # load 0x2538c34d0e39f8b8 from memory into f10
la x2, scratch
li x3, 0xb33823729bc45676 # load x3 with value 0xb33823729bc45676
sw x3, 0(x2) # store 0xb33823729bc45676 in memory
flh f29, 0(x2) # load 0xb33823729bc45676 from memory into f29
fadd.h f29, f10, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x1fc427736369ee5a # load x3 with value 0x1fc427736369ee5a
sw x3, 0(x2) # store 0x1fc427736369ee5a in memory
flh f2, 0(x2) # load 0x1fc427736369ee5a from memory into f2
la x2, scratch
li x3, 0x1eafa2a2e4fa77ef # load x3 with value 0x1eafa2a2e4fa77ef
sw x3, 0(x2) # store 0x1eafa2a2e4fa77ef in memory
flh f30, 0(x2) # load 0x1eafa2a2e4fa77ef from memory into f30
fadd.h f30, f2, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x5569e0f3835d4ce1 # load x3 with value 0x5569e0f3835d4ce1
sw x3, 0(x2) # store 0x5569e0f3835d4ce1 in memory
flh f28, 0(x2) # load 0x5569e0f3835d4ce1 from memory into f28
la x2, scratch
li x3, 0xb638f06af42d7a73 # load x3 with value 0xb638f06af42d7a73
sw x3, 0(x2) # store 0xb638f06af42d7a73 in memory
flh f31, 0(x2) # load 0xb638f06af42d7a73 from memory into f31
fadd.h f31, f28, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xf4205add7cf435ed # load x3 with value 0xf4205add7cf435ed
sw x3, 0(x2) # store 0xf4205add7cf435ed in memory
flh f26, 0(x2) # load 0xf4205add7cf435ed from memory into f26
la x2, scratch
li x3, 0x3bf1fab7789d1ee4 # load x3 with value 0x3bf1fab7789d1ee4
sw x3, 0(x2) # store 0x3bf1fab7789d1ee4 in memory
flh f20, 0(x2) # load 0x3bf1fab7789d1ee4 from memory into f20
fadd.h f25, f26, f20, dyn # perform operation
fadd.h f25, f26, f20, rdn # perform operation
fadd.h f25, f26, f20, rmm # perform operation
fadd.h f25, f26, f20, rne # perform operation
fadd.h f25, f26, f20, rtz # perform operation
fadd.h f25, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fadd.h f21, f6, f3, dyn # perform operation
fadd.h f21, f6, f3, rdn # perform operation
fadd.h f21, f6, f3, rmm # perform operation
fadd.h f21, f6, f3, rne # perform operation
fadd.h f21, f6, f3, rtz # perform operation
fadd.h f21, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f2, f11, f29, dyn # perform operation
fadd.h f2, f11, f29, rdn # perform operation
fadd.h f2, f11, f29, rmm # perform operation
fadd.h f2, f11, f29, rne # perform operation
fadd.h f2, f11, f29, rtz # perform operation
fadd.h f2, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fadd.h f3, f8, f24, dyn # perform operation
fadd.h f3, f8, f24, rdn # perform operation
fadd.h f3, f8, f24, rmm # perform operation
fadd.h f3, f8, f24, rne # perform operation
fadd.h f3, f8, f24, rtz # perform operation
fadd.h f3, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fadd.h f30, f28, f31, dyn # perform operation
fadd.h f30, f28, f31, rdn # perform operation
fadd.h f30, f28, f31, rmm # perform operation
fadd.h f30, f28, f31, rne # perform operation
fadd.h f30, f28, f31, rtz # perform operation
fadd.h f30, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fadd.h f10, f21, f29, dyn # perform operation
fadd.h f10, f21, f29, rdn # perform operation
fadd.h f10, f21, f29, rmm # perform operation
fadd.h f10, f21, f29, rne # perform operation
fadd.h f10, f21, f29, rtz # perform operation
fadd.h f10, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fadd.h f6, f17, f20, dyn # perform operation
fadd.h f6, f17, f20, rdn # perform operation
fadd.h f6, f17, f20, rmm # perform operation
fadd.h f6, f17, f20, rne # perform operation
fadd.h f6, f17, f20, rtz # perform operation
fadd.h f6, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f27, f14, f6, dyn # perform operation
fadd.h f27, f14, f6, rdn # perform operation
fadd.h f27, f14, f6, rmm # perform operation
fadd.h f27, f14, f6, rne # perform operation
fadd.h f27, f14, f6, rtz # perform operation
fadd.h f27, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fadd.h f7, f29, f14, dyn # perform operation
fadd.h f7, f29, f14, rdn # perform operation
fadd.h f7, f29, f14, rmm # perform operation
fadd.h f7, f29, f14, rne # perform operation
fadd.h f7, f29, f14, rtz # perform operation
fadd.h f7, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fadd.h f8, f28, f24, dyn # perform operation
fadd.h f8, f28, f24, rdn # perform operation
fadd.h f8, f28, f24, rmm # perform operation
fadd.h f8, f28, f24, rne # perform operation
fadd.h f8, f28, f24, rtz # perform operation
fadd.h f8, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fadd.h f27, f21, f9, dyn # perform operation
fadd.h f27, f21, f9, rdn # perform operation
fadd.h f27, f21, f9, rmm # perform operation
fadd.h f27, f21, f9, rne # perform operation
fadd.h f27, f21, f9, rtz # perform operation
fadd.h f27, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fadd.h f31, f7, f8, dyn # perform operation
fadd.h f31, f7, f8, rdn # perform operation
fadd.h f31, f7, f8, rmm # perform operation
fadd.h f31, f7, f8, rne # perform operation
fadd.h f31, f7, f8, rtz # perform operation
fadd.h f31, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fadd.h f9, f30, f23, dyn # perform operation
fadd.h f9, f30, f23, rdn # perform operation
fadd.h f9, f30, f23, rmm # perform operation
fadd.h f9, f30, f23, rne # perform operation
fadd.h f9, f30, f23, rtz # perform operation
fadd.h f9, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fadd.h f19, f20, f5, dyn # perform operation
fadd.h f19, f20, f5, rdn # perform operation
fadd.h f19, f20, f5, rmm # perform operation
fadd.h f19, f20, f5, rne # perform operation
fadd.h f19, f20, f5, rtz # perform operation
fadd.h f19, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fadd.h f20, f7, f12, dyn # perform operation
fadd.h f20, f7, f12, rdn # perform operation
fadd.h f20, f7, f12, rmm # perform operation
fadd.h f20, f7, f12, rne # perform operation
fadd.h f20, f7, f12, rtz # perform operation
fadd.h f20, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fadd.h f26, f20, f23, dyn # perform operation
fadd.h f26, f20, f23, rdn # perform operation
fadd.h f26, f20, f23, rmm # perform operation
fadd.h f26, f20, f23, rne # perform operation
fadd.h f26, f20, f23, rtz # perform operation
fadd.h f26, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fadd.h f28, f14, f30, dyn # perform operation
fadd.h f28, f14, f30, rdn # perform operation
fadd.h f28, f14, f30, rmm # perform operation
fadd.h f28, f14, f30, rne # perform operation
fadd.h f28, f14, f30, rtz # perform operation
fadd.h f28, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fadd.h f2, f21, f7, dyn # perform operation
fadd.h f2, f21, f7, rdn # perform operation
fadd.h f2, f21, f7, rmm # perform operation
fadd.h f2, f21, f7, rne # perform operation
fadd.h f2, f21, f7, rtz # perform operation
fadd.h f2, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fadd.h f1, f15, f20, dyn # perform operation
fadd.h f1, f15, f20, rdn # perform operation
fadd.h f1, f15, f20, rmm # perform operation
fadd.h f1, f15, f20, rne # perform operation
fadd.h f1, f15, f20, rtz # perform operation
fadd.h f1, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fadd.h f31, f9, f23, dyn # perform operation
fadd.h f31, f9, f23, rdn # perform operation
fadd.h f31, f9, f23, rmm # perform operation
fadd.h f31, f9, f23, rne # perform operation
fadd.h f31, f9, f23, rtz # perform operation
fadd.h f31, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fadd.h f25, f27, f17, dyn # perform operation
fadd.h f25, f27, f17, rdn # perform operation
fadd.h f25, f27, f17, rmm # perform operation
fadd.h f25, f27, f17, rne # perform operation
fadd.h f25, f27, f17, rtz # perform operation
fadd.h f25, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fadd.h f10, f19, f7, dyn # perform operation
fadd.h f10, f19, f7, rdn # perform operation
fadd.h f10, f19, f7, rmm # perform operation
fadd.h f10, f19, f7, rne # perform operation
fadd.h f10, f19, f7, rtz # perform operation
fadd.h f10, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fadd.h f7, f30, f31, dyn # perform operation
fadd.h f7, f30, f31, rdn # perform operation
fadd.h f7, f30, f31, rmm # perform operation
fadd.h f7, f30, f31, rne # perform operation
fadd.h f7, f30, f31, rtz # perform operation
fadd.h f7, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fadd.h f27, f23, f6, dyn # perform operation
fadd.h f27, f23, f6, rdn # perform operation
fadd.h f27, f23, f6, rmm # perform operation
fadd.h f27, f23, f6, rne # perform operation
fadd.h f27, f23, f6, rtz # perform operation
fadd.h f27, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fadd.h f5, f15, f17, dyn # perform operation
fadd.h f5, f15, f17, rdn # perform operation
fadd.h f5, f15, f17, rmm # perform operation
fadd.h f5, f15, f17, rne # perform operation
fadd.h f5, f15, f17, rtz # perform operation
fadd.h f5, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fadd.h f25, f26, f24, dyn # perform operation
fadd.h f25, f26, f24, rdn # perform operation
fadd.h f25, f26, f24, rmm # perform operation
fadd.h f25, f26, f24, rne # perform operation
fadd.h f25, f26, f24, rtz # perform operation
fadd.h f25, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fadd.h f28, f8, f16, dyn # perform operation
fadd.h f28, f8, f16, rdn # perform operation
fadd.h f28, f8, f16, rmm # perform operation
fadd.h f28, f8, f16, rne # perform operation
fadd.h f28, f8, f16, rtz # perform operation
fadd.h f28, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fadd.h f8, f9, f27, dyn # perform operation
fadd.h f8, f9, f27, rdn # perform operation
fadd.h f8, f9, f27, rmm # perform operation
fadd.h f8, f9, f27, rne # perform operation
fadd.h f8, f9, f27, rtz # perform operation
fadd.h f8, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fadd.h f5, f25, f6, dyn # perform operation
fadd.h f5, f25, f6, rdn # perform operation
fadd.h f5, f25, f6, rmm # perform operation
fadd.h f5, f25, f6, rne # perform operation
fadd.h f5, f25, f6, rtz # perform operation
fadd.h f5, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fadd.h f14, f12, f5, dyn # perform operation
fadd.h f14, f12, f5, rdn # perform operation
fadd.h f14, f12, f5, rmm # perform operation
fadd.h f14, f12, f5, rne # perform operation
fadd.h f14, f12, f5, rtz # perform operation
fadd.h f14, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fadd.h f25, f2, f3, dyn # perform operation
fadd.h f25, f2, f3, rdn # perform operation
fadd.h f25, f2, f3, rmm # perform operation
fadd.h f25, f2, f3, rne # perform operation
fadd.h f25, f2, f3, rtz # perform operation
fadd.h f25, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fadd.h f18, f3, f22, dyn # perform operation
fadd.h f18, f3, f22, rdn # perform operation
fadd.h f18, f3, f22, rmm # perform operation
fadd.h f18, f3, f22, rne # perform operation
fadd.h f18, f3, f22, rtz # perform operation
fadd.h f18, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fadd.h f20, f18, f2, dyn # perform operation
fadd.h f20, f18, f2, rdn # perform operation
fadd.h f20, f18, f2, rmm # perform operation
fadd.h f20, f18, f2, rne # perform operation
fadd.h f20, f18, f2, rtz # perform operation
fadd.h f20, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f22, f1, f15, dyn # perform operation
fadd.h f22, f1, f15, rdn # perform operation
fadd.h f22, f1, f15, rmm # perform operation
fadd.h f22, f1, f15, rne # perform operation
fadd.h f22, f1, f15, rtz # perform operation
fadd.h f22, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fadd.h f3, f9, f20, dyn # perform operation
fadd.h f3, f9, f20, rdn # perform operation
fadd.h f3, f9, f20, rmm # perform operation
fadd.h f3, f9, f20, rne # perform operation
fadd.h f3, f9, f20, rtz # perform operation
fadd.h f3, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fadd.h f18, f7, f10, dyn # perform operation
fadd.h f18, f7, f10, rdn # perform operation
fadd.h f18, f7, f10, rmm # perform operation
fadd.h f18, f7, f10, rne # perform operation
fadd.h f18, f7, f10, rtz # perform operation
fadd.h f18, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fadd.h f6, f2, f14, dyn # perform operation
fadd.h f6, f2, f14, rdn # perform operation
fadd.h f6, f2, f14, rmm # perform operation
fadd.h f6, f2, f14, rne # perform operation
fadd.h f6, f2, f14, rtz # perform operation
fadd.h f6, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fadd.h f23, f22, f20, dyn # perform operation
fadd.h f23, f22, f20, rdn # perform operation
fadd.h f23, f22, f20, rmm # perform operation
fadd.h f23, f22, f20, rne # perform operation
fadd.h f23, f22, f20, rtz # perform operation
fadd.h f23, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fadd.h f2, f22, f28, dyn # perform operation
fadd.h f2, f22, f28, rdn # perform operation
fadd.h f2, f22, f28, rmm # perform operation
fadd.h f2, f22, f28, rne # perform operation
fadd.h f2, f22, f28, rtz # perform operation
fadd.h f2, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fadd.h f24, f16, f30, dyn # perform operation
fadd.h f24, f16, f30, rdn # perform operation
fadd.h f24, f16, f30, rmm # perform operation
fadd.h f24, f16, f30, rne # perform operation
fadd.h f24, f16, f30, rtz # perform operation
fadd.h f24, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fadd.h f28, f26, f19, dyn # perform operation
fadd.h f28, f26, f19, rdn # perform operation
fadd.h f28, f26, f19, rmm # perform operation
fadd.h f28, f26, f19, rne # perform operation
fadd.h f28, f26, f19, rtz # perform operation
fadd.h f28, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fadd.h f11, f15, f7, dyn # perform operation
fadd.h f11, f15, f7, rdn # perform operation
fadd.h f11, f15, f7, rmm # perform operation
fadd.h f11, f15, f7, rne # perform operation
fadd.h f11, f15, f7, rtz # perform operation
fadd.h f11, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fadd.h f31, f27, f30, dyn # perform operation
fadd.h f31, f27, f30, rdn # perform operation
fadd.h f31, f27, f30, rmm # perform operation
fadd.h f31, f27, f30, rne # perform operation
fadd.h f31, f27, f30, rtz # perform operation
fadd.h f31, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fadd.h f13, f27, f22, dyn # perform operation
fadd.h f13, f27, f22, rdn # perform operation
fadd.h f13, f27, f22, rmm # perform operation
fadd.h f13, f27, f22, rne # perform operation
fadd.h f13, f27, f22, rtz # perform operation
fadd.h f13, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fadd.h f7, f24, f21, dyn # perform operation
fadd.h f7, f24, f21, rdn # perform operation
fadd.h f7, f24, f21, rmm # perform operation
fadd.h f7, f24, f21, rne # perform operation
fadd.h f7, f24, f21, rtz # perform operation
fadd.h f7, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fadd.h f9, f13, f10, dyn # perform operation
fadd.h f9, f13, f10, rdn # perform operation
fadd.h f9, f13, f10, rmm # perform operation
fadd.h f9, f13, f10, rne # perform operation
fadd.h f9, f13, f10, rtz # perform operation
fadd.h f9, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fadd.h f11, f30, f23, dyn # perform operation
fadd.h f11, f30, f23, rdn # perform operation
fadd.h f11, f30, f23, rmm # perform operation
fadd.h f11, f30, f23, rne # perform operation
fadd.h f11, f30, f23, rtz # perform operation
fadd.h f11, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fadd.h f1, f10, f31, dyn # perform operation
fadd.h f1, f10, f31, rdn # perform operation
fadd.h f1, f10, f31, rmm # perform operation
fadd.h f1, f10, f31, rne # perform operation
fadd.h f1, f10, f31, rtz # perform operation
fadd.h f1, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f2, f1, f29, dyn # perform operation
fadd.h f2, f1, f29, rdn # perform operation
fadd.h f2, f1, f29, rmm # perform operation
fadd.h f2, f1, f29, rne # perform operation
fadd.h f2, f1, f29, rtz # perform operation
fadd.h f2, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fadd.h f17, f7, f20, dyn # perform operation
fadd.h f17, f7, f20, rdn # perform operation
fadd.h f17, f7, f20, rmm # perform operation
fadd.h f17, f7, f20, rne # perform operation
fadd.h f17, f7, f20, rtz # perform operation
fadd.h f17, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fadd.h f15, f10, f25, dyn # perform operation
fadd.h f15, f10, f25, rdn # perform operation
fadd.h f15, f10, f25, rmm # perform operation
fadd.h f15, f10, f25, rne # perform operation
fadd.h f15, f10, f25, rtz # perform operation
fadd.h f15, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fadd.h f29, f5, f21, dyn # perform operation
fadd.h f29, f5, f21, rdn # perform operation
fadd.h f29, f5, f21, rmm # perform operation
fadd.h f29, f5, f21, rne # perform operation
fadd.h f29, f5, f21, rtz # perform operation
fadd.h f29, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f5, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fadd.h f17, f23, f12, dyn # perform operation
fadd.h f17, f23, f12, rdn # perform operation
fadd.h f17, f23, f12, rmm # perform operation
fadd.h f17, f23, f12, rne # perform operation
fadd.h f17, f23, f12, rtz # perform operation
fadd.h f17, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fadd.h f25, f18, f10, dyn # perform operation
fadd.h f25, f18, f10, rdn # perform operation
fadd.h f25, f18, f10, rmm # perform operation
fadd.h f25, f18, f10, rne # perform operation
fadd.h f25, f18, f10, rtz # perform operation
fadd.h f25, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f12, 0(x2) # load 0x0000fc01 from memory into f12
fadd.h f30, f17, f12, dyn # perform operation
fadd.h f30, f17, f12, rdn # perform operation
fadd.h f30, f17, f12, rmm # perform operation
fadd.h f30, f17, f12, rne # perform operation
fadd.h f30, f17, f12, rtz # perform operation
fadd.h f30, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fadd.h f21, f9, f18, dyn # perform operation
fadd.h f21, f9, f18, rdn # perform operation
fadd.h f21, f9, f18, rmm # perform operation
fadd.h f21, f9, f18, rne # perform operation
fadd.h f21, f9, f18, rtz # perform operation
fadd.h f21, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fadd.h f19, f31, f1, dyn # perform operation
fadd.h f19, f31, f1, rdn # perform operation
fadd.h f19, f31, f1, rmm # perform operation
fadd.h f19, f31, f1, rne # perform operation
fadd.h f19, f31, f1, rtz # perform operation
fadd.h f19, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fadd.h f29, f1, f6, dyn # perform operation
fadd.h f29, f1, f6, rdn # perform operation
fadd.h f29, f1, f6, rmm # perform operation
fadd.h f29, f1, f6, rne # perform operation
fadd.h f29, f1, f6, rtz # perform operation
fadd.h f29, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fadd.h f3, f9, f20, dyn # perform operation
fadd.h f3, f9, f20, rdn # perform operation
fadd.h f3, f9, f20, rmm # perform operation
fadd.h f3, f9, f20, rne # perform operation
fadd.h f3, f9, f20, rtz # perform operation
fadd.h f3, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fadd.h f13, f3, f28, dyn # perform operation
fadd.h f13, f3, f28, rdn # perform operation
fadd.h f13, f3, f28, rmm # perform operation
fadd.h f13, f3, f28, rne # perform operation
fadd.h f13, f3, f28, rtz # perform operation
fadd.h f13, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fadd.h f27, f30, f23, dyn # perform operation
fadd.h f27, f30, f23, rdn # perform operation
fadd.h f27, f30, f23, rmm # perform operation
fadd.h f27, f30, f23, rne # perform operation
fadd.h f27, f30, f23, rtz # perform operation
fadd.h f27, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fadd.h f10, f12, f27, dyn # perform operation
fadd.h f10, f12, f27, rdn # perform operation
fadd.h f10, f12, f27, rmm # perform operation
fadd.h f10, f12, f27, rne # perform operation
fadd.h f10, f12, f27, rtz # perform operation
fadd.h f10, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fadd.h f10, f8, f19, dyn # perform operation
fadd.h f10, f8, f19, rdn # perform operation
fadd.h f10, f8, f19, rmm # perform operation
fadd.h f10, f8, f19, rne # perform operation
fadd.h f10, f8, f19, rtz # perform operation
fadd.h f10, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fadd.h f15, f9, f5, dyn # perform operation
fadd.h f15, f9, f5, rdn # perform operation
fadd.h f15, f9, f5, rmm # perform operation
fadd.h f15, f9, f5, rne # perform operation
fadd.h f15, f9, f5, rtz # perform operation
fadd.h f15, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fadd.h f20, f28, f1, dyn # perform operation
fadd.h f20, f28, f1, rdn # perform operation
fadd.h f20, f28, f1, rmm # perform operation
fadd.h f20, f28, f1, rne # perform operation
fadd.h f20, f28, f1, rtz # perform operation
fadd.h f20, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fadd.h f2, f10, f12, dyn # perform operation
fadd.h f2, f10, f12, rdn # perform operation
fadd.h f2, f10, f12, rmm # perform operation
fadd.h f2, f10, f12, rne # perform operation
fadd.h f2, f10, f12, rtz # perform operation
fadd.h f2, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f5, f13, f25, dyn # perform operation
fadd.h f5, f13, f25, rdn # perform operation
fadd.h f5, f13, f25, rmm # perform operation
fadd.h f5, f13, f25, rne # perform operation
fadd.h f5, f13, f25, rtz # perform operation
fadd.h f5, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fadd.h f12, f19, f3, dyn # perform operation
fadd.h f12, f19, f3, rdn # perform operation
fadd.h f12, f19, f3, rmm # perform operation
fadd.h f12, f19, f3, rne # perform operation
fadd.h f12, f19, f3, rtz # perform operation
fadd.h f12, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fadd.h f25, f21, f5, dyn # perform operation
fadd.h f25, f21, f5, rdn # perform operation
fadd.h f25, f21, f5, rmm # perform operation
fadd.h f25, f21, f5, rne # perform operation
fadd.h f25, f21, f5, rtz # perform operation
fadd.h f25, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fadd.h f15, f27, f22, dyn # perform operation
fadd.h f15, f27, f22, rdn # perform operation
fadd.h f15, f27, f22, rmm # perform operation
fadd.h f15, f27, f22, rne # perform operation
fadd.h f15, f27, f22, rtz # perform operation
fadd.h f15, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fadd.h f28, f22, f13, dyn # perform operation
fadd.h f28, f22, f13, rdn # perform operation
fadd.h f28, f22, f13, rmm # perform operation
fadd.h f28, f22, f13, rne # perform operation
fadd.h f28, f22, f13, rtz # perform operation
fadd.h f28, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fadd.h f16, f15, f13, dyn # perform operation
fadd.h f16, f15, f13, rdn # perform operation
fadd.h f16, f15, f13, rmm # perform operation
fadd.h f16, f15, f13, rne # perform operation
fadd.h f16, f15, f13, rtz # perform operation
fadd.h f16, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fadd.h f25, f18, f30, dyn # perform operation
fadd.h f25, f18, f30, rdn # perform operation
fadd.h f25, f18, f30, rmm # perform operation
fadd.h f25, f18, f30, rne # perform operation
fadd.h f25, f18, f30, rtz # perform operation
fadd.h f25, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f8, f12, f19, dyn # perform operation
fadd.h f8, f12, f19, rdn # perform operation
fadd.h f8, f12, f19, rmm # perform operation
fadd.h f8, f12, f19, rne # perform operation
fadd.h f8, f12, f19, rtz # perform operation
fadd.h f8, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fadd.h f14, f6, f25, dyn # perform operation
fadd.h f14, f6, f25, rdn # perform operation
fadd.h f14, f6, f25, rmm # perform operation
fadd.h f14, f6, f25, rne # perform operation
fadd.h f14, f6, f25, rtz # perform operation
fadd.h f14, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fadd.h f23, f19, f15, dyn # perform operation
fadd.h f23, f19, f15, rdn # perform operation
fadd.h f23, f19, f15, rmm # perform operation
fadd.h f23, f19, f15, rne # perform operation
fadd.h f23, f19, f15, rtz # perform operation
fadd.h f23, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fadd.h f10, f28, f6, dyn # perform operation
fadd.h f10, f28, f6, rdn # perform operation
fadd.h f10, f28, f6, rmm # perform operation
fadd.h f10, f28, f6, rne # perform operation
fadd.h f10, f28, f6, rtz # perform operation
fadd.h f10, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fadd.h f24, f22, f23, dyn # perform operation
fadd.h f24, f22, f23, rdn # perform operation
fadd.h f24, f22, f23, rmm # perform operation
fadd.h f24, f22, f23, rne # perform operation
fadd.h f24, f22, f23, rtz # perform operation
fadd.h f24, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fadd.h f6, f10, f14, dyn # perform operation
fadd.h f6, f10, f14, rdn # perform operation
fadd.h f6, f10, f14, rmm # perform operation
fadd.h f6, f10, f14, rne # perform operation
fadd.h f6, f10, f14, rtz # perform operation
fadd.h f6, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fadd.h f2, f15, f21, dyn # perform operation
fadd.h f2, f15, f21, rdn # perform operation
fadd.h f2, f15, f21, rmm # perform operation
fadd.h f2, f15, f21, rne # perform operation
fadd.h f2, f15, f21, rtz # perform operation
fadd.h f2, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fadd.h f20, f28, f12, dyn # perform operation
fadd.h f20, f28, f12, rdn # perform operation
fadd.h f20, f28, f12, rmm # perform operation
fadd.h f20, f28, f12, rne # perform operation
fadd.h f20, f28, f12, rtz # perform operation
fadd.h f20, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fadd.h f1, f14, f31, dyn # perform operation
fadd.h f1, f14, f31, rdn # perform operation
fadd.h f1, f14, f31, rmm # perform operation
fadd.h f1, f14, f31, rne # perform operation
fadd.h f1, f14, f31, rtz # perform operation
fadd.h f1, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
fadd.h f20, f11, f10, dyn # perform operation
fadd.h f20, f11, f10, rdn # perform operation
fadd.h f20, f11, f10, rmm # perform operation
fadd.h f20, f11, f10, rne # perform operation
fadd.h f20, f11, f10, rtz # perform operation
fadd.h f20, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fadd.h f3, f20, f6, dyn # perform operation
fadd.h f3, f20, f6, rdn # perform operation
fadd.h f3, f20, f6, rmm # perform operation
fadd.h f3, f20, f6, rne # perform operation
fadd.h f3, f20, f6, rtz # perform operation
fadd.h f3, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fadd.h f26, f22, f29, dyn # perform operation
fadd.h f26, f22, f29, rdn # perform operation
fadd.h f26, f22, f29, rmm # perform operation
fadd.h f26, f22, f29, rne # perform operation
fadd.h f26, f22, f29, rtz # perform operation
fadd.h f26, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fadd.h f2, f8, f18, dyn # perform operation
fadd.h f2, f8, f18, rdn # perform operation
fadd.h f2, f8, f18, rmm # perform operation
fadd.h f2, f8, f18, rne # perform operation
fadd.h f2, f8, f18, rtz # perform operation
fadd.h f2, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fadd.h f13, f20, f17, dyn # perform operation
fadd.h f13, f20, f17, rdn # perform operation
fadd.h f13, f20, f17, rmm # perform operation
fadd.h f13, f20, f17, rne # perform operation
fadd.h f13, f20, f17, rtz # perform operation
fadd.h f13, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f28, f5, f8, dyn # perform operation
fadd.h f28, f5, f8, rdn # perform operation
fadd.h f28, f5, f8, rmm # perform operation
fadd.h f28, f5, f8, rne # perform operation
fadd.h f28, f5, f8, rtz # perform operation
fadd.h f28, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fadd.h f2, f6, f30, dyn # perform operation
fadd.h f2, f6, f30, rdn # perform operation
fadd.h f2, f6, f30, rmm # perform operation
fadd.h f2, f6, f30, rne # perform operation
fadd.h f2, f6, f30, rtz # perform operation
fadd.h f2, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fadd.h f29, f24, f22, dyn # perform operation
fadd.h f29, f24, f22, rdn # perform operation
fadd.h f29, f24, f22, rmm # perform operation
fadd.h f29, f24, f22, rne # perform operation
fadd.h f29, f24, f22, rtz # perform operation
fadd.h f29, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fadd.h f7, f29, f14, dyn # perform operation
fadd.h f7, f29, f14, rdn # perform operation
fadd.h f7, f29, f14, rmm # perform operation
fadd.h f7, f29, f14, rne # perform operation
fadd.h f7, f29, f14, rtz # perform operation
fadd.h f7, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f19, f8, f6, dyn # perform operation
fadd.h f19, f8, f6, rdn # perform operation
fadd.h f19, f8, f6, rmm # perform operation
fadd.h f19, f8, f6, rne # perform operation
fadd.h f19, f8, f6, rtz # perform operation
fadd.h f19, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f17, f23, f25, dyn # perform operation
fadd.h f17, f23, f25, rdn # perform operation
fadd.h f17, f23, f25, rmm # perform operation
fadd.h f17, f23, f25, rne # perform operation
fadd.h f17, f23, f25, rtz # perform operation
fadd.h f17, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fadd.h f5, f7, f14, dyn # perform operation
fadd.h f5, f7, f14, rdn # perform operation
fadd.h f5, f7, f14, rmm # perform operation
fadd.h f5, f7, f14, rne # perform operation
fadd.h f5, f7, f14, rtz # perform operation
fadd.h f5, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f16, f3, f25, dyn # perform operation
fadd.h f16, f3, f25, rdn # perform operation
fadd.h f16, f3, f25, rmm # perform operation
fadd.h f16, f3, f25, rne # perform operation
fadd.h f16, f3, f25, rtz # perform operation
fadd.h f16, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f3, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fadd.h f24, f31, f7, dyn # perform operation
fadd.h f24, f31, f7, rdn # perform operation
fadd.h f24, f31, f7, rmm # perform operation
fadd.h f24, f31, f7, rne # perform operation
fadd.h f24, f31, f7, rtz # perform operation
fadd.h f24, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fadd.h f9, f24, f15, dyn # perform operation
fadd.h f9, f24, f15, rdn # perform operation
fadd.h f9, f24, f15, rmm # perform operation
fadd.h f9, f24, f15, rne # perform operation
fadd.h f9, f24, f15, rtz # perform operation
fadd.h f9, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fadd.h f19, f26, f22, dyn # perform operation
fadd.h f19, f26, f22, rdn # perform operation
fadd.h f19, f26, f22, rmm # perform operation
fadd.h f19, f26, f22, rne # perform operation
fadd.h f19, f26, f22, rtz # perform operation
fadd.h f19, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fadd.h f16, f30, f31, dyn # perform operation
fadd.h f16, f30, f31, rdn # perform operation
fadd.h f16, f30, f31, rmm # perform operation
fadd.h f16, f30, f31, rne # perform operation
fadd.h f16, f30, f31, rtz # perform operation
fadd.h f16, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fadd.h f14, f27, f19, dyn # perform operation
fadd.h f14, f27, f19, rdn # perform operation
fadd.h f14, f27, f19, rmm # perform operation
fadd.h f14, f27, f19, rne # perform operation
fadd.h f14, f27, f19, rtz # perform operation
fadd.h f14, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fadd.h f19, f24, f9, dyn # perform operation
fadd.h f19, f24, f9, rdn # perform operation
fadd.h f19, f24, f9, rmm # perform operation
fadd.h f19, f24, f9, rne # perform operation
fadd.h f19, f24, f9, rtz # perform operation
fadd.h f19, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fadd.h f8, f15, f11, dyn # perform operation
fadd.h f8, f15, f11, rdn # perform operation
fadd.h f8, f15, f11, rmm # perform operation
fadd.h f8, f15, f11, rne # perform operation
fadd.h f8, f15, f11, rtz # perform operation
fadd.h f8, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fadd.h f19, f11, f22, dyn # perform operation
fadd.h f19, f11, f22, rdn # perform operation
fadd.h f19, f11, f22, rmm # perform operation
fadd.h f19, f11, f22, rne # perform operation
fadd.h f19, f11, f22, rtz # perform operation
fadd.h f19, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fadd.h f8, f1, f7, dyn # perform operation
fadd.h f8, f1, f7, rdn # perform operation
fadd.h f8, f1, f7, rmm # perform operation
fadd.h f8, f1, f7, rne # perform operation
fadd.h f8, f1, f7, rtz # perform operation
fadd.h f8, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fadd.h f8, f13, f26, dyn # perform operation
fadd.h f8, f13, f26, rdn # perform operation
fadd.h f8, f13, f26, rmm # perform operation
fadd.h f8, f13, f26, rne # perform operation
fadd.h f8, f13, f26, rtz # perform operation
fadd.h f8, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fadd.h f24, f3, f11, dyn # perform operation
fadd.h f24, f3, f11, rdn # perform operation
fadd.h f24, f3, f11, rmm # perform operation
fadd.h f24, f3, f11, rne # perform operation
fadd.h f24, f3, f11, rtz # perform operation
fadd.h f24, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fadd.h f8, f12, f30, dyn # perform operation
fadd.h f8, f12, f30, rdn # perform operation
fadd.h f8, f12, f30, rmm # perform operation
fadd.h f8, f12, f30, rne # perform operation
fadd.h f8, f12, f30, rtz # perform operation
fadd.h f8, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fadd.h f20, f30, f26, dyn # perform operation
fadd.h f20, f30, f26, rdn # perform operation
fadd.h f20, f30, f26, rmm # perform operation
fadd.h f20, f30, f26, rne # perform operation
fadd.h f20, f30, f26, rtz # perform operation
fadd.h f20, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fadd.h f24, f8, f30, dyn # perform operation
fadd.h f24, f8, f30, rdn # perform operation
fadd.h f24, f8, f30, rmm # perform operation
fadd.h f24, f8, f30, rne # perform operation
fadd.h f24, f8, f30, rtz # perform operation
fadd.h f24, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fadd.h f7, f19, f27, dyn # perform operation
fadd.h f7, f19, f27, rdn # perform operation
fadd.h f7, f19, f27, rmm # perform operation
fadd.h f7, f19, f27, rne # perform operation
fadd.h f7, f19, f27, rtz # perform operation
fadd.h f7, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f19, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fadd.h f15, f31, f5, dyn # perform operation
fadd.h f15, f31, f5, rdn # perform operation
fadd.h f15, f31, f5, rmm # perform operation
fadd.h f15, f31, f5, rne # perform operation
fadd.h f15, f31, f5, rtz # perform operation
fadd.h f15, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fadd.h f9, f7, f2, dyn # perform operation
fadd.h f9, f7, f2, rdn # perform operation
fadd.h f9, f7, f2, rmm # perform operation
fadd.h f9, f7, f2, rne # perform operation
fadd.h f9, f7, f2, rtz # perform operation
fadd.h f9, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fadd.h f11, f7, f21, dyn # perform operation
fadd.h f11, f7, f21, rdn # perform operation
fadd.h f11, f7, f21, rmm # perform operation
fadd.h f11, f7, f21, rne # perform operation
fadd.h f11, f7, f21, rtz # perform operation
fadd.h f11, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fadd.h f20, f17, f24, dyn # perform operation
fadd.h f20, f17, f24, rdn # perform operation
fadd.h f20, f17, f24, rmm # perform operation
fadd.h f20, f17, f24, rne # perform operation
fadd.h f20, f17, f24, rtz # perform operation
fadd.h f20, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fadd.h f7, f14, f23, dyn # perform operation
fadd.h f7, f14, f23, rdn # perform operation
fadd.h f7, f14, f23, rmm # perform operation
fadd.h f7, f14, f23, rne # perform operation
fadd.h f7, f14, f23, rtz # perform operation
fadd.h f7, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f19, f29, f8, dyn # perform operation
fadd.h f19, f29, f8, rdn # perform operation
fadd.h f19, f29, f8, rmm # perform operation
fadd.h f19, f29, f8, rne # perform operation
fadd.h f19, f29, f8, rtz # perform operation
fadd.h f19, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f7, f5, f18, dyn # perform operation
fadd.h f7, f5, f18, rdn # perform operation
fadd.h f7, f5, f18, rmm # perform operation
fadd.h f7, f5, f18, rne # perform operation
fadd.h f7, f5, f18, rtz # perform operation
fadd.h f7, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fadd.h f7, f20, f26, dyn # perform operation
fadd.h f7, f20, f26, rdn # perform operation
fadd.h f7, f20, f26, rmm # perform operation
fadd.h f7, f20, f26, rne # perform operation
fadd.h f7, f20, f26, rtz # perform operation
fadd.h f7, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fadd.h f24, f19, f5, dyn # perform operation
fadd.h f24, f19, f5, rdn # perform operation
fadd.h f24, f19, f5, rmm # perform operation
fadd.h f24, f19, f5, rne # perform operation
fadd.h f24, f19, f5, rtz # perform operation
fadd.h f24, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f7, f24, f6, dyn # perform operation
fadd.h f7, f24, f6, rdn # perform operation
fadd.h f7, f24, f6, rmm # perform operation
fadd.h f7, f24, f6, rne # perform operation
fadd.h f7, f24, f6, rtz # perform operation
fadd.h f7, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fadd.h f17, f1, f30, dyn # perform operation
fadd.h f17, f1, f30, rdn # perform operation
fadd.h f17, f1, f30, rmm # perform operation
fadd.h f17, f1, f30, rne # perform operation
fadd.h f17, f1, f30, rtz # perform operation
fadd.h f17, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fadd.h f23, f6, f2, dyn # perform operation
fadd.h f23, f6, f2, rdn # perform operation
fadd.h f23, f6, f2, rmm # perform operation
fadd.h f23, f6, f2, rne # perform operation
fadd.h f23, f6, f2, rtz # perform operation
fadd.h f23, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fadd.h f3, f23, f17, dyn # perform operation
fadd.h f3, f23, f17, rdn # perform operation
fadd.h f3, f23, f17, rmm # perform operation
fadd.h f3, f23, f17, rne # perform operation
fadd.h f3, f23, f17, rtz # perform operation
fadd.h f3, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fadd.h f8, f13, f18, dyn # perform operation
fadd.h f8, f13, f18, rdn # perform operation
fadd.h f8, f13, f18, rmm # perform operation
fadd.h f8, f13, f18, rne # perform operation
fadd.h f8, f13, f18, rtz # perform operation
fadd.h f8, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fadd.h f22, f9, f31, dyn # perform operation
fadd.h f22, f9, f31, rdn # perform operation
fadd.h f22, f9, f31, rmm # perform operation
fadd.h f22, f9, f31, rne # perform operation
fadd.h f22, f9, f31, rtz # perform operation
fadd.h f22, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fadd.h f19, f3, f5, dyn # perform operation
fadd.h f19, f3, f5, rdn # perform operation
fadd.h f19, f3, f5, rmm # perform operation
fadd.h f19, f3, f5, rne # perform operation
fadd.h f19, f3, f5, rtz # perform operation
fadd.h f19, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fadd.h f18, f29, f23, dyn # perform operation
fadd.h f18, f29, f23, rdn # perform operation
fadd.h f18, f29, f23, rmm # perform operation
fadd.h f18, f29, f23, rne # perform operation
fadd.h f18, f29, f23, rtz # perform operation
fadd.h f18, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fadd.h f3, f17, f2, dyn # perform operation
fadd.h f3, f17, f2, rdn # perform operation
fadd.h f3, f17, f2, rmm # perform operation
fadd.h f3, f17, f2, rne # perform operation
fadd.h f3, f17, f2, rtz # perform operation
fadd.h f3, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fadd.h f18, f13, f27, dyn # perform operation
fadd.h f18, f13, f27, rdn # perform operation
fadd.h f18, f13, f27, rmm # perform operation
fadd.h f18, f13, f27, rne # perform operation
fadd.h f18, f13, f27, rtz # perform operation
fadd.h f18, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fadd.h f25, f24, f18, dyn # perform operation
fadd.h f25, f24, f18, rdn # perform operation
fadd.h f25, f24, f18, rmm # perform operation
fadd.h f25, f24, f18, rne # perform operation
fadd.h f25, f24, f18, rtz # perform operation
fadd.h f25, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fadd.h f3, f14, f18, dyn # perform operation
fadd.h f3, f14, f18, rdn # perform operation
fadd.h f3, f14, f18, rmm # perform operation
fadd.h f3, f14, f18, rne # perform operation
fadd.h f3, f14, f18, rtz # perform operation
fadd.h f3, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fadd.h f29, f24, f17, dyn # perform operation
fadd.h f29, f24, f17, rdn # perform operation
fadd.h f29, f24, f17, rmm # perform operation
fadd.h f29, f24, f17, rne # perform operation
fadd.h f29, f24, f17, rtz # perform operation
fadd.h f29, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fadd.h f18, f11, f16, dyn # perform operation
fadd.h f18, f11, f16, rdn # perform operation
fadd.h f18, f11, f16, rmm # perform operation
fadd.h f18, f11, f16, rne # perform operation
fadd.h f18, f11, f16, rtz # perform operation
fadd.h f18, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fadd.h f19, f20, f1, dyn # perform operation
fadd.h f19, f20, f1, rdn # perform operation
fadd.h f19, f20, f1, rmm # perform operation
fadd.h f19, f20, f1, rne # perform operation
fadd.h f19, f20, f1, rtz # perform operation
fadd.h f19, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fadd.h f18, f27, f21, dyn # perform operation
fadd.h f18, f27, f21, rdn # perform operation
fadd.h f18, f27, f21, rmm # perform operation
fadd.h f18, f27, f21, rne # perform operation
fadd.h f18, f27, f21, rtz # perform operation
fadd.h f18, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
fadd.h f27, f16, f11, dyn # perform operation
fadd.h f27, f16, f11, rdn # perform operation
fadd.h f27, f16, f11, rmm # perform operation
fadd.h f27, f16, f11, rne # perform operation
fadd.h f27, f16, f11, rtz # perform operation
fadd.h f27, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fadd.h f31, f7, f26, dyn # perform operation
fadd.h f31, f7, f26, rdn # perform operation
fadd.h f31, f7, f26, rmm # perform operation
fadd.h f31, f7, f26, rne # perform operation
fadd.h f31, f7, f26, rtz # perform operation
fadd.h f31, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fadd.h f9, f5, f17, dyn # perform operation
fadd.h f9, f5, f17, rdn # perform operation
fadd.h f9, f5, f17, rmm # perform operation
fadd.h f9, f5, f17, rne # perform operation
fadd.h f9, f5, f17, rtz # perform operation
fadd.h f9, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
fadd.h f2, f9, f19, dyn # perform operation
fadd.h f2, f9, f19, rdn # perform operation
fadd.h f2, f9, f19, rmm # perform operation
fadd.h f2, f9, f19, rne # perform operation
fadd.h f2, f9, f19, rtz # perform operation
fadd.h f2, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fadd.h f28, f19, f10, dyn # perform operation
fadd.h f28, f19, f10, rdn # perform operation
fadd.h f28, f19, f10, rmm # perform operation
fadd.h f28, f19, f10, rne # perform operation
fadd.h f28, f19, f10, rtz # perform operation
fadd.h f28, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fadd.h f21, f2, f13, dyn # perform operation
fadd.h f21, f2, f13, rdn # perform operation
fadd.h f21, f2, f13, rmm # perform operation
fadd.h f21, f2, f13, rne # perform operation
fadd.h f21, f2, f13, rtz # perform operation
fadd.h f21, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fadd.h f15, f5, f6, dyn # perform operation
fadd.h f15, f5, f6, rdn # perform operation
fadd.h f15, f5, f6, rmm # perform operation
fadd.h f15, f5, f6, rne # perform operation
fadd.h f15, f5, f6, rtz # perform operation
fadd.h f15, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fadd.h f11, f16, f25, dyn # perform operation
fadd.h f11, f16, f25, rdn # perform operation
fadd.h f11, f16, f25, rmm # perform operation
fadd.h f11, f16, f25, rne # perform operation
fadd.h f11, f16, f25, rtz # perform operation
fadd.h f11, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fadd.h f5, f1, f11, dyn # perform operation
fadd.h f5, f1, f11, rdn # perform operation
fadd.h f5, f1, f11, rmm # perform operation
fadd.h f5, f1, f11, rne # perform operation
fadd.h f5, f1, f11, rtz # perform operation
fadd.h f5, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fadd.h f26, f24, f13, dyn # perform operation
fadd.h f26, f24, f13, rdn # perform operation
fadd.h f26, f24, f13, rmm # perform operation
fadd.h f26, f24, f13, rne # perform operation
fadd.h f26, f24, f13, rtz # perform operation
fadd.h f26, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fadd.h f13, f5, f6, dyn # perform operation
fadd.h f13, f5, f6, rdn # perform operation
fadd.h f13, f5, f6, rmm # perform operation
fadd.h f13, f5, f6, rne # perform operation
fadd.h f13, f5, f6, rtz # perform operation
fadd.h f13, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f1, f30, f15, dyn # perform operation
fadd.h f1, f30, f15, rdn # perform operation
fadd.h f1, f30, f15, rmm # perform operation
fadd.h f1, f30, f15, rne # perform operation
fadd.h f1, f30, f15, rtz # perform operation
fadd.h f1, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fadd.h f28, f14, f27, dyn # perform operation
fadd.h f28, f14, f27, rdn # perform operation
fadd.h f28, f14, f27, rmm # perform operation
fadd.h f28, f14, f27, rne # perform operation
fadd.h f28, f14, f27, rtz # perform operation
fadd.h f28, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fadd.h f6, f22, f24, dyn # perform operation
fadd.h f6, f22, f24, rdn # perform operation
fadd.h f6, f22, f24, rmm # perform operation
fadd.h f6, f22, f24, rne # perform operation
fadd.h f6, f22, f24, rtz # perform operation
fadd.h f6, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fadd.h f1, f17, f19, dyn # perform operation
fadd.h f1, f17, f19, rdn # perform operation
fadd.h f1, f17, f19, rmm # perform operation
fadd.h f1, f17, f19, rne # perform operation
fadd.h f1, f17, f19, rtz # perform operation
fadd.h f1, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fadd.h f3, f18, f19, dyn # perform operation
fadd.h f3, f18, f19, rdn # perform operation
fadd.h f3, f18, f19, rmm # perform operation
fadd.h f3, f18, f19, rne # perform operation
fadd.h f3, f18, f19, rtz # perform operation
fadd.h f3, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f18, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fadd.h f17, f5, f8, dyn # perform operation
fadd.h f17, f5, f8, rdn # perform operation
fadd.h f17, f5, f8, rmm # perform operation
fadd.h f17, f5, f8, rne # perform operation
fadd.h f17, f5, f8, rtz # perform operation
fadd.h f17, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fadd.h f3, f20, f7, dyn # perform operation
fadd.h f3, f20, f7, rdn # perform operation
fadd.h f3, f20, f7, rmm # perform operation
fadd.h f3, f20, f7, rne # perform operation
fadd.h f3, f20, f7, rtz # perform operation
fadd.h f3, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fadd.h f14, f23, f11, dyn # perform operation
fadd.h f14, f23, f11, rdn # perform operation
fadd.h f14, f23, f11, rmm # perform operation
fadd.h f14, f23, f11, rne # perform operation
fadd.h f14, f23, f11, rtz # perform operation
fadd.h f14, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f22, f16, f18, dyn # perform operation
fadd.h f22, f16, f18, rdn # perform operation
fadd.h f22, f16, f18, rmm # perform operation
fadd.h f22, f16, f18, rne # perform operation
fadd.h f22, f16, f18, rtz # perform operation
fadd.h f22, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fadd.h f14, f13, f29, dyn # perform operation
fadd.h f14, f13, f29, rdn # perform operation
fadd.h f14, f13, f29, rmm # perform operation
fadd.h f14, f13, f29, rne # perform operation
fadd.h f14, f13, f29, rtz # perform operation
fadd.h f14, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fadd.h f27, f15, f29, dyn # perform operation
fadd.h f27, f15, f29, rdn # perform operation
fadd.h f27, f15, f29, rmm # perform operation
fadd.h f27, f15, f29, rne # perform operation
fadd.h f27, f15, f29, rtz # perform operation
fadd.h f27, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f6, f13, f31, dyn # perform operation
fadd.h f6, f13, f31, rdn # perform operation
fadd.h f6, f13, f31, rmm # perform operation
fadd.h f6, f13, f31, rne # perform operation
fadd.h f6, f13, f31, rtz # perform operation
fadd.h f6, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fadd.h f31, f7, f26, dyn # perform operation
fadd.h f31, f7, f26, rdn # perform operation
fadd.h f31, f7, f26, rmm # perform operation
fadd.h f31, f7, f26, rne # perform operation
fadd.h f31, f7, f26, rtz # perform operation
fadd.h f31, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fadd.h f26, f1, f25, dyn # perform operation
fadd.h f26, f1, f25, rdn # perform operation
fadd.h f26, f1, f25, rmm # perform operation
fadd.h f26, f1, f25, rne # perform operation
fadd.h f26, f1, f25, rtz # perform operation
fadd.h f26, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fadd.h f29, f23, f18, dyn # perform operation
fadd.h f29, f23, f18, rdn # perform operation
fadd.h f29, f23, f18, rmm # perform operation
fadd.h f29, f23, f18, rne # perform operation
fadd.h f29, f23, f18, rtz # perform operation
fadd.h f29, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fadd.h f24, f15, f23, dyn # perform operation
fadd.h f24, f15, f23, rdn # perform operation
fadd.h f24, f15, f23, rmm # perform operation
fadd.h f24, f15, f23, rne # perform operation
fadd.h f24, f15, f23, rtz # perform operation
fadd.h f24, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fadd.h f21, f6, f16, dyn # perform operation
fadd.h f21, f6, f16, rdn # perform operation
fadd.h f21, f6, f16, rmm # perform operation
fadd.h f21, f6, f16, rne # perform operation
fadd.h f21, f6, f16, rtz # perform operation
fadd.h f21, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
fadd.h f5, f11, f31, dyn # perform operation
fadd.h f5, f11, f31, rdn # perform operation
fadd.h f5, f11, f31, rmm # perform operation
fadd.h f5, f11, f31, rne # perform operation
fadd.h f5, f11, f31, rtz # perform operation
fadd.h f5, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fadd.h f18, f23, f5, dyn # perform operation
fadd.h f18, f23, f5, rdn # perform operation
fadd.h f18, f23, f5, rmm # perform operation
fadd.h f18, f23, f5, rne # perform operation
fadd.h f18, f23, f5, rtz # perform operation
fadd.h f18, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fadd.h f20, f11, f10, dyn # perform operation
fadd.h f20, f11, f10, rdn # perform operation
fadd.h f20, f11, f10, rmm # perform operation
fadd.h f20, f11, f10, rne # perform operation
fadd.h f20, f11, f10, rtz # perform operation
fadd.h f20, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fadd.h f10, f19, f16, dyn # perform operation
fadd.h f10, f19, f16, rdn # perform operation
fadd.h f10, f19, f16, rmm # perform operation
fadd.h f10, f19, f16, rne # perform operation
fadd.h f10, f19, f16, rtz # perform operation
fadd.h f10, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fadd.h f15, f14, f23, dyn # perform operation
fadd.h f15, f14, f23, rdn # perform operation
fadd.h f15, f14, f23, rmm # perform operation
fadd.h f15, f14, f23, rne # perform operation
fadd.h f15, f14, f23, rtz # perform operation
fadd.h f15, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fadd.h f10, f18, f14, dyn # perform operation
fadd.h f10, f18, f14, rdn # perform operation
fadd.h f10, f18, f14, rmm # perform operation
fadd.h f10, f18, f14, rne # perform operation
fadd.h f10, f18, f14, rtz # perform operation
fadd.h f10, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fadd.h f9, f17, f5, dyn # perform operation
fadd.h f9, f17, f5, rdn # perform operation
fadd.h f9, f17, f5, rmm # perform operation
fadd.h f9, f17, f5, rne # perform operation
fadd.h f9, f17, f5, rtz # perform operation
fadd.h f9, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fadd.h f20, f25, f22, dyn # perform operation
fadd.h f20, f25, f22, rdn # perform operation
fadd.h f20, f25, f22, rmm # perform operation
fadd.h f20, f25, f22, rne # perform operation
fadd.h f20, f25, f22, rtz # perform operation
fadd.h f20, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fadd.h f15, f14, f28, dyn # perform operation
fadd.h f15, f14, f28, rdn # perform operation
fadd.h f15, f14, f28, rmm # perform operation
fadd.h f15, f14, f28, rne # perform operation
fadd.h f15, f14, f28, rtz # perform operation
fadd.h f15, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fadd.h f30, f8, f11, dyn # perform operation
fadd.h f30, f8, f11, rdn # perform operation
fadd.h f30, f8, f11, rmm # perform operation
fadd.h f30, f8, f11, rne # perform operation
fadd.h f30, f8, f11, rtz # perform operation
fadd.h f30, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fadd.h f22, f1, f10, dyn # perform operation
fadd.h f22, f1, f10, rdn # perform operation
fadd.h f22, f1, f10, rmm # perform operation
fadd.h f22, f1, f10, rne # perform operation
fadd.h f22, f1, f10, rtz # perform operation
fadd.h f22, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fadd.h f16, f24, f20, dyn # perform operation
fadd.h f16, f24, f20, rdn # perform operation
fadd.h f16, f24, f20, rmm # perform operation
fadd.h f16, f24, f20, rne # perform operation
fadd.h f16, f24, f20, rtz # perform operation
fadd.h f16, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fadd.h f6, f18, f26, dyn # perform operation
fadd.h f6, f18, f26, rdn # perform operation
fadd.h f6, f18, f26, rmm # perform operation
fadd.h f6, f18, f26, rne # perform operation
fadd.h f6, f18, f26, rtz # perform operation
fadd.h f6, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fadd.h f1, f23, f11, dyn # perform operation
fadd.h f1, f23, f11, rdn # perform operation
fadd.h f1, f23, f11, rmm # perform operation
fadd.h f1, f23, f11, rne # perform operation
fadd.h f1, f23, f11, rtz # perform operation
fadd.h f1, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fadd.h f30, f21, f13, dyn # perform operation
fadd.h f30, f21, f13, rdn # perform operation
fadd.h f30, f21, f13, rmm # perform operation
fadd.h f30, f21, f13, rne # perform operation
fadd.h f30, f21, f13, rtz # perform operation
fadd.h f30, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fadd.h f1, f26, f14, dyn # perform operation
fadd.h f1, f26, f14, rdn # perform operation
fadd.h f1, f26, f14, rmm # perform operation
fadd.h f1, f26, f14, rne # perform operation
fadd.h f1, f26, f14, rtz # perform operation
fadd.h f1, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fadd.h f18, f31, f27, dyn # perform operation
fadd.h f18, f31, f27, rdn # perform operation
fadd.h f18, f31, f27, rmm # perform operation
fadd.h f18, f31, f27, rne # perform operation
fadd.h f18, f31, f27, rtz # perform operation
fadd.h f18, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fadd.h f14, f28, f27, dyn # perform operation
fadd.h f14, f28, f27, rdn # perform operation
fadd.h f14, f28, f27, rmm # perform operation
fadd.h f14, f28, f27, rne # perform operation
fadd.h f14, f28, f27, rtz # perform operation
fadd.h f14, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fadd.h f19, f6, f8, dyn # perform operation
fadd.h f19, f6, f8, rdn # perform operation
fadd.h f19, f6, f8, rmm # perform operation
fadd.h f19, f6, f8, rne # perform operation
fadd.h f19, f6, f8, rtz # perform operation
fadd.h f19, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fadd.h f31, f12, f30, dyn # perform operation
fadd.h f31, f12, f30, rdn # perform operation
fadd.h f31, f12, f30, rmm # perform operation
fadd.h f31, f12, f30, rne # perform operation
fadd.h f31, f12, f30, rtz # perform operation
fadd.h f31, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fadd.h f19, f22, f9, dyn # perform operation
fadd.h f19, f22, f9, rdn # perform operation
fadd.h f19, f22, f9, rmm # perform operation
fadd.h f19, f22, f9, rne # perform operation
fadd.h f19, f22, f9, rtz # perform operation
fadd.h f19, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fadd.h f2, f9, f20, dyn # perform operation
fadd.h f2, f9, f20, rdn # perform operation
fadd.h f2, f9, f20, rmm # perform operation
fadd.h f2, f9, f20, rne # perform operation
fadd.h f2, f9, f20, rtz # perform operation
fadd.h f2, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fadd.h f22, f26, f29, dyn # perform operation
fadd.h f22, f26, f29, rdn # perform operation
fadd.h f22, f26, f29, rmm # perform operation
fadd.h f22, f26, f29, rne # perform operation
fadd.h f22, f26, f29, rtz # perform operation
fadd.h f22, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fadd.h f20, f26, f25, dyn # perform operation
fadd.h f20, f26, f25, rdn # perform operation
fadd.h f20, f26, f25, rmm # perform operation
fadd.h f20, f26, f25, rne # perform operation
fadd.h f20, f26, f25, rtz # perform operation
fadd.h f20, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fadd.h f28, f11, f26, dyn # perform operation
fadd.h f28, f11, f26, rdn # perform operation
fadd.h f28, f11, f26, rmm # perform operation
fadd.h f28, f11, f26, rne # perform operation
fadd.h f28, f11, f26, rtz # perform operation
fadd.h f28, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fadd.h f21, f16, f22, dyn # perform operation
fadd.h f21, f16, f22, rdn # perform operation
fadd.h f21, f16, f22, rmm # perform operation
fadd.h f21, f16, f22, rne # perform operation
fadd.h f21, f16, f22, rtz # perform operation
fadd.h f21, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fadd.h f19, f12, f24, dyn # perform operation
fadd.h f19, f12, f24, rdn # perform operation
fadd.h f19, f12, f24, rmm # perform operation
fadd.h f19, f12, f24, rne # perform operation
fadd.h f19, f12, f24, rtz # perform operation
fadd.h f19, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fadd.h f26, f22, f13, dyn # perform operation
fadd.h f26, f22, f13, rdn # perform operation
fadd.h f26, f22, f13, rmm # perform operation
fadd.h f26, f22, f13, rne # perform operation
fadd.h f26, f22, f13, rtz # perform operation
fadd.h f26, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fadd.h f19, f2, f27, dyn # perform operation
fadd.h f19, f2, f27, rdn # perform operation
fadd.h f19, f2, f27, rmm # perform operation
fadd.h f19, f2, f27, rne # perform operation
fadd.h f19, f2, f27, rtz # perform operation
fadd.h f19, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fadd.h f22, f14, f12, dyn # perform operation
fadd.h f22, f14, f12, rdn # perform operation
fadd.h f22, f14, f12, rmm # perform operation
fadd.h f22, f14, f12, rne # perform operation
fadd.h f22, f14, f12, rtz # perform operation
fadd.h f22, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fadd.h f2, f12, f21, dyn # perform operation
fadd.h f2, f12, f21, rdn # perform operation
fadd.h f2, f12, f21, rmm # perform operation
fadd.h f2, f12, f21, rne # perform operation
fadd.h f2, f12, f21, rtz # perform operation
fadd.h f2, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f12, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
fadd.h f24, f2, f9, dyn # perform operation
fadd.h f24, f2, f9, rdn # perform operation
fadd.h f24, f2, f9, rmm # perform operation
fadd.h f24, f2, f9, rne # perform operation
fadd.h f24, f2, f9, rtz # perform operation
fadd.h f24, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f2, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fadd.h f6, f12, f15, dyn # perform operation
fadd.h f6, f12, f15, rdn # perform operation
fadd.h f6, f12, f15, rmm # perform operation
fadd.h f6, f12, f15, rne # perform operation
fadd.h f6, f12, f15, rtz # perform operation
fadd.h f6, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fadd.h f27, f28, f22, dyn # perform operation
fadd.h f27, f28, f22, rdn # perform operation
fadd.h f27, f28, f22, rmm # perform operation
fadd.h f27, f28, f22, rne # perform operation
fadd.h f27, f28, f22, rtz # perform operation
fadd.h f27, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fadd.h f10, f12, f9, dyn # perform operation
fadd.h f10, f12, f9, rdn # perform operation
fadd.h f10, f12, f9, rmm # perform operation
fadd.h f10, f12, f9, rne # perform operation
fadd.h f10, f12, f9, rtz # perform operation
fadd.h f10, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fadd.h f31, f3, f1, dyn # perform operation
fadd.h f31, f3, f1, rdn # perform operation
fadd.h f31, f3, f1, rmm # perform operation
fadd.h f31, f3, f1, rne # perform operation
fadd.h f31, f3, f1, rtz # perform operation
fadd.h f31, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f22, f15, f8, dyn # perform operation
fadd.h f22, f15, f8, rdn # perform operation
fadd.h f22, f15, f8, rmm # perform operation
fadd.h f22, f15, f8, rne # perform operation
fadd.h f22, f15, f8, rtz # perform operation
fadd.h f22, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fadd.h f17, f21, f13, dyn # perform operation
fadd.h f17, f21, f13, rdn # perform operation
fadd.h f17, f21, f13, rmm # perform operation
fadd.h f17, f21, f13, rne # perform operation
fadd.h f17, f21, f13, rtz # perform operation
fadd.h f17, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fadd.h f1, f15, f28, dyn # perform operation
fadd.h f1, f15, f28, rdn # perform operation
fadd.h f1, f15, f28, rmm # perform operation
fadd.h f1, f15, f28, rne # perform operation
fadd.h f1, f15, f28, rtz # perform operation
fadd.h f1, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fadd.h f9, f24, f21, dyn # perform operation
fadd.h f9, f24, f21, rdn # perform operation
fadd.h f9, f24, f21, rmm # perform operation
fadd.h f9, f24, f21, rne # perform operation
fadd.h f9, f24, f21, rtz # perform operation
fadd.h f9, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fadd.h f14, f12, f25, dyn # perform operation
fadd.h f14, f12, f25, rdn # perform operation
fadd.h f14, f12, f25, rmm # perform operation
fadd.h f14, f12, f25, rne # perform operation
fadd.h f14, f12, f25, rtz # perform operation
fadd.h f14, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fadd.h f5, f15, f30, dyn # perform operation
fadd.h f5, f15, f30, rdn # perform operation
fadd.h f5, f15, f30, rmm # perform operation
fadd.h f5, f15, f30, rne # perform operation
fadd.h f5, f15, f30, rtz # perform operation
fadd.h f5, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fadd.h f5, f13, f24, dyn # perform operation
fadd.h f5, f13, f24, rdn # perform operation
fadd.h f5, f13, f24, rmm # perform operation
fadd.h f5, f13, f24, rne # perform operation
fadd.h f5, f13, f24, rtz # perform operation
fadd.h f5, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fadd.h f30, f21, f25, dyn # perform operation
fadd.h f30, f21, f25, rdn # perform operation
fadd.h f30, f21, f25, rmm # perform operation
fadd.h f30, f21, f25, rne # perform operation
fadd.h f30, f21, f25, rtz # perform operation
fadd.h f30, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fadd.h f25, f21, f2, dyn # perform operation
fadd.h f25, f21, f2, rdn # perform operation
fadd.h f25, f21, f2, rmm # perform operation
fadd.h f25, f21, f2, rne # perform operation
fadd.h f25, f21, f2, rtz # perform operation
fadd.h f25, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fadd.h f10, f3, f23, dyn # perform operation
fadd.h f10, f3, f23, rdn # perform operation
fadd.h f10, f3, f23, rmm # perform operation
fadd.h f10, f3, f23, rne # perform operation
fadd.h f10, f3, f23, rtz # perform operation
fadd.h f10, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fadd.h f7, f19, f21, dyn # perform operation
fadd.h f7, f19, f21, rdn # perform operation
fadd.h f7, f19, f21, rmm # perform operation
fadd.h f7, f19, f21, rne # perform operation
fadd.h f7, f19, f21, rtz # perform operation
fadd.h f7, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fadd.h f27, f17, f14, dyn # perform operation
fadd.h f27, f17, f14, rdn # perform operation
fadd.h f27, f17, f14, rmm # perform operation
fadd.h f27, f17, f14, rne # perform operation
fadd.h f27, f17, f14, rtz # perform operation
fadd.h f27, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fadd.h f3, f6, f2, dyn # perform operation
fadd.h f3, f6, f2, rdn # perform operation
fadd.h f3, f6, f2, rmm # perform operation
fadd.h f3, f6, f2, rne # perform operation
fadd.h f3, f6, f2, rtz # perform operation
fadd.h f3, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fadd.h f23, f10, f2, dyn # perform operation
fadd.h f23, f10, f2, rdn # perform operation
fadd.h f23, f10, f2, rmm # perform operation
fadd.h f23, f10, f2, rne # perform operation
fadd.h f23, f10, f2, rtz # perform operation
fadd.h f23, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fadd.h f8, f6, f9, dyn # perform operation
fadd.h f8, f6, f9, rdn # perform operation
fadd.h f8, f6, f9, rmm # perform operation
fadd.h f8, f6, f9, rne # perform operation
fadd.h f8, f6, f9, rtz # perform operation
fadd.h f8, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fadd.h f30, f20, f27, dyn # perform operation
fadd.h f30, f20, f27, rdn # perform operation
fadd.h f30, f20, f27, rmm # perform operation
fadd.h f30, f20, f27, rne # perform operation
fadd.h f30, f20, f27, rtz # perform operation
fadd.h f30, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fadd.h f17, f19, f9, dyn # perform operation
fadd.h f17, f19, f9, rdn # perform operation
fadd.h f17, f19, f9, rmm # perform operation
fadd.h f17, f19, f9, rne # perform operation
fadd.h f17, f19, f9, rtz # perform operation
fadd.h f17, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fadd.h f22, f11, f30, dyn # perform operation
fadd.h f22, f11, f30, rdn # perform operation
fadd.h f22, f11, f30, rmm # perform operation
fadd.h f22, f11, f30, rne # perform operation
fadd.h f22, f11, f30, rtz # perform operation
fadd.h f22, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fadd.h f24, f18, f2, dyn # perform operation
fadd.h f24, f18, f2, rdn # perform operation
fadd.h f24, f18, f2, rmm # perform operation
fadd.h f24, f18, f2, rne # perform operation
fadd.h f24, f18, f2, rtz # perform operation
fadd.h f24, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fadd.h f28, f10, f6, dyn # perform operation
fadd.h f28, f10, f6, rdn # perform operation
fadd.h f28, f10, f6, rmm # perform operation
fadd.h f28, f10, f6, rne # perform operation
fadd.h f28, f10, f6, rtz # perform operation
fadd.h f28, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fadd.h f12, f23, f15, dyn # perform operation
fadd.h f12, f23, f15, rdn # perform operation
fadd.h f12, f23, f15, rmm # perform operation
fadd.h f12, f23, f15, rne # perform operation
fadd.h f12, f23, f15, rtz # perform operation
fadd.h f12, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fadd.h f8, f30, f12, dyn # perform operation
fadd.h f8, f30, f12, rdn # perform operation
fadd.h f8, f30, f12, rmm # perform operation
fadd.h f8, f30, f12, rne # perform operation
fadd.h f8, f30, f12, rtz # perform operation
fadd.h f8, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fadd.h f25, f30, f9, dyn # perform operation
fadd.h f25, f30, f9, rdn # perform operation
fadd.h f25, f30, f9, rmm # perform operation
fadd.h f25, f30, f9, rne # perform operation
fadd.h f25, f30, f9, rtz # perform operation
fadd.h f25, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fadd.h f8, f15, f25, dyn # perform operation
fadd.h f8, f15, f25, rdn # perform operation
fadd.h f8, f15, f25, rmm # perform operation
fadd.h f8, f15, f25, rne # perform operation
fadd.h f8, f15, f25, rtz # perform operation
fadd.h f8, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fadd.h f5, f28, f23, dyn # perform operation
fadd.h f5, f28, f23, rdn # perform operation
fadd.h f5, f28, f23, rmm # perform operation
fadd.h f5, f28, f23, rne # perform operation
fadd.h f5, f28, f23, rtz # perform operation
fadd.h f5, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fadd.h f14, f25, f10, dyn # perform operation
fadd.h f14, f25, f10, rdn # perform operation
fadd.h f14, f25, f10, rmm # perform operation
fadd.h f14, f25, f10, rne # perform operation
fadd.h f14, f25, f10, rtz # perform operation
fadd.h f14, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fadd.h f15, f1, f23, dyn # perform operation
fadd.h f15, f1, f23, rdn # perform operation
fadd.h f15, f1, f23, rmm # perform operation
fadd.h f15, f1, f23, rne # perform operation
fadd.h f15, f1, f23, rtz # perform operation
fadd.h f15, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fadd.h f16, f12, f25, dyn # perform operation
fadd.h f16, f12, f25, rdn # perform operation
fadd.h f16, f12, f25, rmm # perform operation
fadd.h f16, f12, f25, rne # perform operation
fadd.h f16, f12, f25, rtz # perform operation
fadd.h f16, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fadd.h f8, f30, f6, dyn # perform operation
fadd.h f8, f30, f6, rdn # perform operation
fadd.h f8, f30, f6, rmm # perform operation
fadd.h f8, f30, f6, rne # perform operation
fadd.h f8, f30, f6, rtz # perform operation
fadd.h f8, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fadd.h f23, f14, f11, dyn # perform operation
fadd.h f23, f14, f11, rdn # perform operation
fadd.h f23, f14, f11, rmm # perform operation
fadd.h f23, f14, f11, rne # perform operation
fadd.h f23, f14, f11, rtz # perform operation
fadd.h f23, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fadd.h f3, f26, f20, dyn # perform operation
fadd.h f3, f26, f20, rdn # perform operation
fadd.h f3, f26, f20, rmm # perform operation
fadd.h f3, f26, f20, rne # perform operation
fadd.h f3, f26, f20, rtz # perform operation
fadd.h f3, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fadd.h f11, f23, f14, dyn # perform operation
fadd.h f11, f23, f14, rdn # perform operation
fadd.h f11, f23, f14, rmm # perform operation
fadd.h f11, f23, f14, rne # perform operation
fadd.h f11, f23, f14, rtz # perform operation
fadd.h f11, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fadd.h f18, f31, f20, dyn # perform operation
fadd.h f18, f31, f20, rdn # perform operation
fadd.h f18, f31, f20, rmm # perform operation
fadd.h f18, f31, f20, rne # perform operation
fadd.h f18, f31, f20, rtz # perform operation
fadd.h f18, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f31, f21, f3, dyn # perform operation
fadd.h f31, f21, f3, rdn # perform operation
fadd.h f31, f21, f3, rmm # perform operation
fadd.h f31, f21, f3, rne # perform operation
fadd.h f31, f21, f3, rtz # perform operation
fadd.h f31, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fadd.h f3, f27, f19, dyn # perform operation
fadd.h f3, f27, f19, rdn # perform operation
fadd.h f3, f27, f19, rmm # perform operation
fadd.h f3, f27, f19, rne # perform operation
fadd.h f3, f27, f19, rtz # perform operation
fadd.h f3, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fadd.h f24, f16, f7, dyn # perform operation
fadd.h f24, f16, f7, rdn # perform operation
fadd.h f24, f16, f7, rmm # perform operation
fadd.h f24, f16, f7, rne # perform operation
fadd.h f24, f16, f7, rtz # perform operation
fadd.h f24, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fadd.h f14, f22, f10, dyn # perform operation
fadd.h f14, f22, f10, rdn # perform operation
fadd.h f14, f22, f10, rmm # perform operation
fadd.h f14, f22, f10, rne # perform operation
fadd.h f14, f22, f10, rtz # perform operation
fadd.h f14, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fadd.h f5, f13, f3, dyn # perform operation
fadd.h f5, f13, f3, rdn # perform operation
fadd.h f5, f13, f3, rmm # perform operation
fadd.h f5, f13, f3, rne # perform operation
fadd.h f5, f13, f3, rtz # perform operation
fadd.h f5, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fadd.h f19, f2, f12, dyn # perform operation
fadd.h f19, f2, f12, rdn # perform operation
fadd.h f19, f2, f12, rmm # perform operation
fadd.h f19, f2, f12, rne # perform operation
fadd.h f19, f2, f12, rtz # perform operation
fadd.h f19, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fadd.h f15, f9, f28, dyn # perform operation
fadd.h f15, f9, f28, rdn # perform operation
fadd.h f15, f9, f28, rmm # perform operation
fadd.h f15, f9, f28, rne # perform operation
fadd.h f15, f9, f28, rtz # perform operation
fadd.h f15, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fadd.h f12, f25, f8, dyn # perform operation
fadd.h f12, f25, f8, rdn # perform operation
fadd.h f12, f25, f8, rmm # perform operation
fadd.h f12, f25, f8, rne # perform operation
fadd.h f12, f25, f8, rtz # perform operation
fadd.h f12, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fadd.h f8, f22, f14, dyn # perform operation
fadd.h f8, f22, f14, rdn # perform operation
fadd.h f8, f22, f14, rmm # perform operation
fadd.h f8, f22, f14, rne # perform operation
fadd.h f8, f22, f14, rtz # perform operation
fadd.h f8, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fadd.h f27, f17, f22, dyn # perform operation
fadd.h f27, f17, f22, rdn # perform operation
fadd.h f27, f17, f22, rmm # perform operation
fadd.h f27, f17, f22, rne # perform operation
fadd.h f27, f17, f22, rtz # perform operation
fadd.h f27, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fadd.h f1, f14, f8, dyn # perform operation
fadd.h f1, f14, f8, rdn # perform operation
fadd.h f1, f14, f8, rmm # perform operation
fadd.h f1, f14, f8, rne # perform operation
fadd.h f1, f14, f8, rtz # perform operation
fadd.h f1, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fadd.h f5, f29, f3, dyn # perform operation
fadd.h f5, f29, f3, rdn # perform operation
fadd.h f5, f29, f3, rmm # perform operation
fadd.h f5, f29, f3, rne # perform operation
fadd.h f5, f29, f3, rtz # perform operation
fadd.h f5, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fadd.h f15, f17, f21, dyn # perform operation
fadd.h f15, f17, f21, rdn # perform operation
fadd.h f15, f17, f21, rmm # perform operation
fadd.h f15, f17, f21, rne # perform operation
fadd.h f15, f17, f21, rtz # perform operation
fadd.h f15, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fadd.h f10, f25, f22, dyn # perform operation
fadd.h f10, f25, f22, rdn # perform operation
fadd.h f10, f25, f22, rmm # perform operation
fadd.h f10, f25, f22, rne # perform operation
fadd.h f10, f25, f22, rtz # perform operation
fadd.h f10, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fadd.h f16, f24, f29, dyn # perform operation
fadd.h f16, f24, f29, rdn # perform operation
fadd.h f16, f24, f29, rmm # perform operation
fadd.h f16, f24, f29, rne # perform operation
fadd.h f16, f24, f29, rtz # perform operation
fadd.h f16, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fadd.h f27, f14, f30, dyn # perform operation
fadd.h f27, f14, f30, rdn # perform operation
fadd.h f27, f14, f30, rmm # perform operation
fadd.h f27, f14, f30, rne # perform operation
fadd.h f27, f14, f30, rtz # perform operation
fadd.h f27, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fadd.h f29, f19, f3, dyn # perform operation
fadd.h f29, f19, f3, rdn # perform operation
fadd.h f29, f19, f3, rmm # perform operation
fadd.h f29, f19, f3, rne # perform operation
fadd.h f29, f19, f3, rtz # perform operation
fadd.h f29, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fadd.h f26, f16, f19, dyn # perform operation
fadd.h f26, f16, f19, rdn # perform operation
fadd.h f26, f16, f19, rmm # perform operation
fadd.h f26, f16, f19, rne # perform operation
fadd.h f26, f16, f19, rtz # perform operation
fadd.h f26, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
fadd.h f13, f2, f28, dyn # perform operation
fadd.h f13, f2, f28, rdn # perform operation
fadd.h f13, f2, f28, rmm # perform operation
fadd.h f13, f2, f28, rne # perform operation
fadd.h f13, f2, f28, rtz # perform operation
fadd.h f13, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fadd.h f27, f30, f29, dyn # perform operation
fadd.h f27, f30, f29, rdn # perform operation
fadd.h f27, f30, f29, rmm # perform operation
fadd.h f27, f30, f29, rne # perform operation
fadd.h f27, f30, f29, rtz # perform operation
fadd.h f27, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fadd.h f20, f21, f25, dyn # perform operation
fadd.h f20, f21, f25, rdn # perform operation
fadd.h f20, f21, f25, rmm # perform operation
fadd.h f20, f21, f25, rne # perform operation
fadd.h f20, f21, f25, rtz # perform operation
fadd.h f20, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fadd.h f3, f15, f17, dyn # perform operation
fadd.h f3, f15, f17, rdn # perform operation
fadd.h f3, f15, f17, rmm # perform operation
fadd.h f3, f15, f17, rne # perform operation
fadd.h f3, f15, f17, rtz # perform operation
fadd.h f3, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f10, f30, f29, dyn # perform operation
fadd.h f10, f30, f29, rdn # perform operation
fadd.h f10, f30, f29, rmm # perform operation
fadd.h f10, f30, f29, rne # perform operation
fadd.h f10, f30, f29, rtz # perform operation
fadd.h f10, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fadd.h f30, f14, f13, dyn # perform operation
fadd.h f30, f14, f13, rdn # perform operation
fadd.h f30, f14, f13, rmm # perform operation
fadd.h f30, f14, f13, rne # perform operation
fadd.h f30, f14, f13, rtz # perform operation
fadd.h f30, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fadd.h f20, f15, f24, dyn # perform operation
fadd.h f20, f15, f24, rdn # perform operation
fadd.h f20, f15, f24, rmm # perform operation
fadd.h f20, f15, f24, rne # perform operation
fadd.h f20, f15, f24, rtz # perform operation
fadd.h f20, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fadd.h f23, f2, f27, dyn # perform operation
fadd.h f23, f2, f27, rdn # perform operation
fadd.h f23, f2, f27, rmm # perform operation
fadd.h f23, f2, f27, rne # perform operation
fadd.h f23, f2, f27, rtz # perform operation
fadd.h f23, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fadd.h f3, f30, f7, dyn # perform operation
fadd.h f3, f30, f7, rdn # perform operation
fadd.h f3, f30, f7, rmm # perform operation
fadd.h f3, f30, f7, rne # perform operation
fadd.h f3, f30, f7, rtz # perform operation
fadd.h f3, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fadd.h f31, f15, f12, dyn # perform operation
fadd.h f31, f15, f12, rdn # perform operation
fadd.h f31, f15, f12, rmm # perform operation
fadd.h f31, f15, f12, rne # perform operation
fadd.h f31, f15, f12, rtz # perform operation
fadd.h f31, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fadd.h f9, f24, f15, dyn # perform operation
fadd.h f9, f24, f15, rdn # perform operation
fadd.h f9, f24, f15, rmm # perform operation
fadd.h f9, f24, f15, rne # perform operation
fadd.h f9, f24, f15, rtz # perform operation
fadd.h f9, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fadd.h f30, f7, f31, dyn # perform operation
fadd.h f30, f7, f31, rdn # perform operation
fadd.h f30, f7, f31, rmm # perform operation
fadd.h f30, f7, f31, rne # perform operation
fadd.h f30, f7, f31, rtz # perform operation
fadd.h f30, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fadd.h f6, f5, f26, dyn # perform operation
fadd.h f6, f5, f26, rdn # perform operation
fadd.h f6, f5, f26, rmm # perform operation
fadd.h f6, f5, f26, rne # perform operation
fadd.h f6, f5, f26, rtz # perform operation
fadd.h f6, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f5, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fadd.h f26, f25, f16, dyn # perform operation
fadd.h f26, f25, f16, rdn # perform operation
fadd.h f26, f25, f16, rmm # perform operation
fadd.h f26, f25, f16, rne # perform operation
fadd.h f26, f25, f16, rtz # perform operation
fadd.h f26, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fadd.h f16, f8, f19, dyn # perform operation
fadd.h f16, f8, f19, rdn # perform operation
fadd.h f16, f8, f19, rmm # perform operation
fadd.h f16, f8, f19, rne # perform operation
fadd.h f16, f8, f19, rtz # perform operation
fadd.h f16, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fadd.h f6, f21, f8, dyn # perform operation
fadd.h f6, f21, f8, rdn # perform operation
fadd.h f6, f21, f8, rmm # perform operation
fadd.h f6, f21, f8, rne # perform operation
fadd.h f6, f21, f8, rtz # perform operation
fadd.h f6, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fadd.h f3, f28, f7, dyn # perform operation
fadd.h f3, f28, f7, rdn # perform operation
fadd.h f3, f28, f7, rmm # perform operation
fadd.h f3, f28, f7, rne # perform operation
fadd.h f3, f28, f7, rtz # perform operation
fadd.h f3, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fadd.h f21, f26, f13, dyn # perform operation
fadd.h f21, f26, f13, rdn # perform operation
fadd.h f21, f26, f13, rmm # perform operation
fadd.h f21, f26, f13, rne # perform operation
fadd.h f21, f26, f13, rtz # perform operation
fadd.h f21, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fadd.h f23, f9, f12, dyn # perform operation
fadd.h f23, f9, f12, rdn # perform operation
fadd.h f23, f9, f12, rmm # perform operation
fadd.h f23, f9, f12, rne # perform operation
fadd.h f23, f9, f12, rtz # perform operation
fadd.h f23, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fadd.h f15, f19, f20, dyn # perform operation
fadd.h f15, f19, f20, rdn # perform operation
fadd.h f15, f19, f20, rmm # perform operation
fadd.h f15, f19, f20, rne # perform operation
fadd.h f15, f19, f20, rtz # perform operation
fadd.h f15, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fadd.h f13, f1, f18, dyn # perform operation
fadd.h f13, f1, f18, rdn # perform operation
fadd.h f13, f1, f18, rmm # perform operation
fadd.h f13, f1, f18, rne # perform operation
fadd.h f13, f1, f18, rtz # perform operation
fadd.h f13, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fadd.h f13, f28, f17, dyn # perform operation
fadd.h f13, f28, f17, rdn # perform operation
fadd.h f13, f28, f17, rmm # perform operation
fadd.h f13, f28, f17, rne # perform operation
fadd.h f13, f28, f17, rtz # perform operation
fadd.h f13, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fadd.h f10, f22, f30, dyn # perform operation
fadd.h f10, f22, f30, rdn # perform operation
fadd.h f10, f22, f30, rmm # perform operation
fadd.h f10, f22, f30, rne # perform operation
fadd.h f10, f22, f30, rtz # perform operation
fadd.h f10, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fadd.h f26, f6, f27, dyn # perform operation
fadd.h f26, f6, f27, rdn # perform operation
fadd.h f26, f6, f27, rmm # perform operation
fadd.h f26, f6, f27, rne # perform operation
fadd.h f26, f6, f27, rtz # perform operation
fadd.h f26, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fadd.h f7, f25, f22, dyn # perform operation
fadd.h f7, f25, f22, rdn # perform operation
fadd.h f7, f25, f22, rmm # perform operation
fadd.h f7, f25, f22, rne # perform operation
fadd.h f7, f25, f22, rtz # perform operation
fadd.h f7, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fadd.h f14, f21, f10, dyn # perform operation
fadd.h f14, f21, f10, rdn # perform operation
fadd.h f14, f21, f10, rmm # perform operation
fadd.h f14, f21, f10, rne # perform operation
fadd.h f14, f21, f10, rtz # perform operation
fadd.h f14, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fadd.h f27, f26, f18, dyn # perform operation
fadd.h f27, f26, f18, rdn # perform operation
fadd.h f27, f26, f18, rmm # perform operation
fadd.h f27, f26, f18, rne # perform operation
fadd.h f27, f26, f18, rtz # perform operation
fadd.h f27, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f26, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f7, f15, f25, dyn # perform operation
fadd.h f7, f15, f25, rdn # perform operation
fadd.h f7, f15, f25, rmm # perform operation
fadd.h f7, f15, f25, rne # perform operation
fadd.h f7, f15, f25, rtz # perform operation
fadd.h f7, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fadd.h f8, f24, f6, dyn # perform operation
fadd.h f8, f24, f6, rdn # perform operation
fadd.h f8, f24, f6, rmm # perform operation
fadd.h f8, f24, f6, rne # perform operation
fadd.h f8, f24, f6, rtz # perform operation
fadd.h f8, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fadd.h f24, f3, f10, dyn # perform operation
fadd.h f24, f3, f10, rdn # perform operation
fadd.h f24, f3, f10, rmm # perform operation
fadd.h f24, f3, f10, rne # perform operation
fadd.h f24, f3, f10, rtz # perform operation
fadd.h f24, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fadd.h f7, f8, f6, dyn # perform operation
fadd.h f7, f8, f6, rdn # perform operation
fadd.h f7, f8, f6, rmm # perform operation
fadd.h f7, f8, f6, rne # perform operation
fadd.h f7, f8, f6, rtz # perform operation
fadd.h f7, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fadd.h f9, f27, f13, dyn # perform operation
fadd.h f9, f27, f13, rdn # perform operation
fadd.h f9, f27, f13, rmm # perform operation
fadd.h f9, f27, f13, rne # perform operation
fadd.h f9, f27, f13, rtz # perform operation
fadd.h f9, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fadd.h f6, f2, f20, dyn # perform operation
fadd.h f6, f2, f20, rdn # perform operation
fadd.h f6, f2, f20, rmm # perform operation
fadd.h f6, f2, f20, rne # perform operation
fadd.h f6, f2, f20, rtz # perform operation
fadd.h f6, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fadd.h f21, f29, f12, dyn # perform operation
fadd.h f21, f29, f12, rdn # perform operation
fadd.h f21, f29, f12, rmm # perform operation
fadd.h f21, f29, f12, rne # perform operation
fadd.h f21, f29, f12, rtz # perform operation
fadd.h f21, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f3, f8, f18, dyn # perform operation
fadd.h f3, f8, f18, rdn # perform operation
fadd.h f3, f8, f18, rmm # perform operation
fadd.h f3, f8, f18, rne # perform operation
fadd.h f3, f8, f18, rtz # perform operation
fadd.h f3, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f27, f2, f15, dyn # perform operation
fadd.h f27, f2, f15, rdn # perform operation
fadd.h f27, f2, f15, rmm # perform operation
fadd.h f27, f2, f15, rne # perform operation
fadd.h f27, f2, f15, rtz # perform operation
fadd.h f27, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fadd.h f11, f15, f9, dyn # perform operation
fadd.h f11, f15, f9, rdn # perform operation
fadd.h f11, f15, f9, rmm # perform operation
fadd.h f11, f15, f9, rne # perform operation
fadd.h f11, f15, f9, rtz # perform operation
fadd.h f11, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fadd.h f20, f12, f28, dyn # perform operation
fadd.h f20, f12, f28, rdn # perform operation
fadd.h f20, f12, f28, rmm # perform operation
fadd.h f20, f12, f28, rne # perform operation
fadd.h f20, f12, f28, rtz # perform operation
fadd.h f20, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fadd.h f30, f9, f18, dyn # perform operation
fadd.h f30, f9, f18, rdn # perform operation
fadd.h f30, f9, f18, rmm # perform operation
fadd.h f30, f9, f18, rne # perform operation
fadd.h f30, f9, f18, rtz # perform operation
fadd.h f30, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fadd.h f21, f1, f25, dyn # perform operation
fadd.h f21, f1, f25, rdn # perform operation
fadd.h f21, f1, f25, rmm # perform operation
fadd.h f21, f1, f25, rne # perform operation
fadd.h f21, f1, f25, rtz # perform operation
fadd.h f21, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fadd.h f10, f24, f5, dyn # perform operation
fadd.h f10, f24, f5, rdn # perform operation
fadd.h f10, f24, f5, rmm # perform operation
fadd.h f10, f24, f5, rne # perform operation
fadd.h f10, f24, f5, rtz # perform operation
fadd.h f10, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fadd.h f8, f9, f12, dyn # perform operation
fadd.h f8, f9, f12, rdn # perform operation
fadd.h f8, f9, f12, rmm # perform operation
fadd.h f8, f9, f12, rne # perform operation
fadd.h f8, f9, f12, rtz # perform operation
fadd.h f8, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f9, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fadd.h f24, f14, f19, dyn # perform operation
fadd.h f24, f14, f19, rdn # perform operation
fadd.h f24, f14, f19, rmm # perform operation
fadd.h f24, f14, f19, rne # perform operation
fadd.h f24, f14, f19, rtz # perform operation
fadd.h f24, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fadd.h f7, f14, f25, dyn # perform operation
fadd.h f7, f14, f25, rdn # perform operation
fadd.h f7, f14, f25, rmm # perform operation
fadd.h f7, f14, f25, rne # perform operation
fadd.h f7, f14, f25, rtz # perform operation
fadd.h f7, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fadd.h f10, f11, f13, dyn # perform operation
fadd.h f10, f11, f13, rdn # perform operation
fadd.h f10, f11, f13, rmm # perform operation
fadd.h f10, f11, f13, rne # perform operation
fadd.h f10, f11, f13, rtz # perform operation
fadd.h f10, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fadd.h f3, f28, f19, dyn # perform operation
fadd.h f3, f28, f19, rdn # perform operation
fadd.h f3, f28, f19, rmm # perform operation
fadd.h f3, f28, f19, rne # perform operation
fadd.h f3, f28, f19, rtz # perform operation
fadd.h f3, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fadd.h f5, f6, f31, dyn # perform operation
fadd.h f5, f6, f31, rdn # perform operation
fadd.h f5, f6, f31, rmm # perform operation
fadd.h f5, f6, f31, rne # perform operation
fadd.h f5, f6, f31, rtz # perform operation
fadd.h f5, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fadd.h f14, f28, f20, dyn # perform operation
fadd.h f14, f28, f20, rdn # perform operation
fadd.h f14, f28, f20, rmm # perform operation
fadd.h f14, f28, f20, rne # perform operation
fadd.h f14, f28, f20, rtz # perform operation
fadd.h f14, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fadd.h f10, f15, f24, dyn # perform operation
fadd.h f10, f15, f24, rdn # perform operation
fadd.h f10, f15, f24, rmm # perform operation
fadd.h f10, f15, f24, rne # perform operation
fadd.h f10, f15, f24, rtz # perform operation
fadd.h f10, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fadd.h f25, f11, f26, dyn # perform operation
fadd.h f25, f11, f26, rdn # perform operation
fadd.h f25, f11, f26, rmm # perform operation
fadd.h f25, f11, f26, rne # perform operation
fadd.h f25, f11, f26, rtz # perform operation
fadd.h f25, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fadd.h f15, f30, f25, dyn # perform operation
fadd.h f15, f30, f25, rdn # perform operation
fadd.h f15, f30, f25, rmm # perform operation
fadd.h f15, f30, f25, rne # perform operation
fadd.h f15, f30, f25, rtz # perform operation
fadd.h f15, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fadd.h f11, f6, f10, dyn # perform operation
fadd.h f11, f6, f10, rdn # perform operation
fadd.h f11, f6, f10, rmm # perform operation
fadd.h f11, f6, f10, rne # perform operation
fadd.h f11, f6, f10, rtz # perform operation
fadd.h f11, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fadd.h f5, f16, f28, dyn # perform operation
fadd.h f5, f16, f28, rdn # perform operation
fadd.h f5, f16, f28, rmm # perform operation
fadd.h f5, f16, f28, rne # perform operation
fadd.h f5, f16, f28, rtz # perform operation
fadd.h f5, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
fadd.h f28, f1, f20, dyn # perform operation
fadd.h f28, f1, f20, rdn # perform operation
fadd.h f28, f1, f20, rmm # perform operation
fadd.h f28, f1, f20, rne # perform operation
fadd.h f28, f1, f20, rtz # perform operation
fadd.h f28, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fadd.h f2, f13, f31, dyn # perform operation
fadd.h f2, f13, f31, rdn # perform operation
fadd.h f2, f13, f31, rmm # perform operation
fadd.h f2, f13, f31, rne # perform operation
fadd.h f2, f13, f31, rtz # perform operation
fadd.h f2, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fadd.h f20, f29, f28, dyn # perform operation
fadd.h f20, f29, f28, rdn # perform operation
fadd.h f20, f29, f28, rmm # perform operation
fadd.h f20, f29, f28, rne # perform operation
fadd.h f20, f29, f28, rtz # perform operation
fadd.h f20, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fadd.h f14, f19, f5, dyn # perform operation
fadd.h f14, f19, f5, rdn # perform operation
fadd.h f14, f19, f5, rmm # perform operation
fadd.h f14, f19, f5, rne # perform operation
fadd.h f14, f19, f5, rtz # perform operation
fadd.h f14, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f31, f29, f8, dyn # perform operation
fadd.h f31, f29, f8, rdn # perform operation
fadd.h f31, f29, f8, rmm # perform operation
fadd.h f31, f29, f8, rne # perform operation
fadd.h f31, f29, f8, rtz # perform operation
fadd.h f31, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fadd.h f5, f21, f19, dyn # perform operation
fadd.h f5, f21, f19, rdn # perform operation
fadd.h f5, f21, f19, rmm # perform operation
fadd.h f5, f21, f19, rne # perform operation
fadd.h f5, f21, f19, rtz # perform operation
fadd.h f5, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fadd.h f14, f1, f3, dyn # perform operation
fadd.h f14, f1, f3, rdn # perform operation
fadd.h f14, f1, f3, rmm # perform operation
fadd.h f14, f1, f3, rne # perform operation
fadd.h f14, f1, f3, rtz # perform operation
fadd.h f14, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fadd.h f30, f21, f13, dyn # perform operation
fadd.h f30, f21, f13, rdn # perform operation
fadd.h f30, f21, f13, rmm # perform operation
fadd.h f30, f21, f13, rne # perform operation
fadd.h f30, f21, f13, rtz # perform operation
fadd.h f30, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fadd.h f23, f26, f28, dyn # perform operation
fadd.h f23, f26, f28, rdn # perform operation
fadd.h f23, f26, f28, rmm # perform operation
fadd.h f23, f26, f28, rne # perform operation
fadd.h f23, f26, f28, rtz # perform operation
fadd.h f23, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fadd.h f30, f19, f3, dyn # perform operation
fadd.h f30, f19, f3, rdn # perform operation
fadd.h f30, f19, f3, rmm # perform operation
fadd.h f30, f19, f3, rne # perform operation
fadd.h f30, f19, f3, rtz # perform operation
fadd.h f30, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fadd.h f21, f27, f3, dyn # perform operation
fadd.h f21, f27, f3, rdn # perform operation
fadd.h f21, f27, f3, rmm # perform operation
fadd.h f21, f27, f3, rne # perform operation
fadd.h f21, f27, f3, rtz # perform operation
fadd.h f21, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fadd.h f27, f7, f22, dyn # perform operation
fadd.h f27, f7, f22, rdn # perform operation
fadd.h f27, f7, f22, rmm # perform operation
fadd.h f27, f7, f22, rne # perform operation
fadd.h f27, f7, f22, rtz # perform operation
fadd.h f27, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fadd.h f29, f5, f3, dyn # perform operation
fadd.h f29, f5, f3, rdn # perform operation
fadd.h f29, f5, f3, rmm # perform operation
fadd.h f29, f5, f3, rne # perform operation
fadd.h f29, f5, f3, rtz # perform operation
fadd.h f29, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fadd.h f7, f2, f14, dyn # perform operation
fadd.h f7, f2, f14, rdn # perform operation
fadd.h f7, f2, f14, rmm # perform operation
fadd.h f7, f2, f14, rne # perform operation
fadd.h f7, f2, f14, rtz # perform operation
fadd.h f7, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fadd.h f19, f30, f29, dyn # perform operation
fadd.h f19, f30, f29, rdn # perform operation
fadd.h f19, f30, f29, rmm # perform operation
fadd.h f19, f30, f29, rne # perform operation
fadd.h f19, f30, f29, rtz # perform operation
fadd.h f19, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fadd.h f28, f13, f7, dyn # perform operation
fadd.h f28, f13, f7, rdn # perform operation
fadd.h f28, f13, f7, rmm # perform operation
fadd.h f28, f13, f7, rne # perform operation
fadd.h f28, f13, f7, rtz # perform operation
fadd.h f28, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fadd.h f9, f8, f24, dyn # perform operation
fadd.h f9, f8, f24, rdn # perform operation
fadd.h f9, f8, f24, rmm # perform operation
fadd.h f9, f8, f24, rne # perform operation
fadd.h f9, f8, f24, rtz # perform operation
fadd.h f9, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fadd.h f13, f25, f22, dyn # perform operation
fadd.h f13, f25, f22, rdn # perform operation
fadd.h f13, f25, f22, rmm # perform operation
fadd.h f13, f25, f22, rne # perform operation
fadd.h f13, f25, f22, rtz # perform operation
fadd.h f13, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f9, f14, f17, dyn # perform operation
fadd.h f9, f14, f17, rdn # perform operation
fadd.h f9, f14, f17, rmm # perform operation
fadd.h f9, f14, f17, rne # perform operation
fadd.h f9, f14, f17, rtz # perform operation
fadd.h f9, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fadd.h f27, f19, f30, dyn # perform operation
fadd.h f27, f19, f30, rdn # perform operation
fadd.h f27, f19, f30, rmm # perform operation
fadd.h f27, f19, f30, rne # perform operation
fadd.h f27, f19, f30, rtz # perform operation
fadd.h f27, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fadd.h f20, f28, f2, dyn # perform operation
fadd.h f20, f28, f2, rdn # perform operation
fadd.h f20, f28, f2, rmm # perform operation
fadd.h f20, f28, f2, rne # perform operation
fadd.h f20, f28, f2, rtz # perform operation
fadd.h f20, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fadd.h f20, f7, f12, dyn # perform operation
fadd.h f20, f7, f12, rdn # perform operation
fadd.h f20, f7, f12, rmm # perform operation
fadd.h f20, f7, f12, rne # perform operation
fadd.h f20, f7, f12, rtz # perform operation
fadd.h f20, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fadd.h f31, f13, f27, dyn # perform operation
fadd.h f31, f13, f27, rdn # perform operation
fadd.h f31, f13, f27, rmm # perform operation
fadd.h f31, f13, f27, rne # perform operation
fadd.h f31, f13, f27, rtz # perform operation
fadd.h f31, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fadd.h f31, f30, f12, dyn # perform operation
fadd.h f31, f30, f12, rdn # perform operation
fadd.h f31, f30, f12, rmm # perform operation
fadd.h f31, f30, f12, rne # perform operation
fadd.h f31, f30, f12, rtz # perform operation
fadd.h f31, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fadd.h f2, f15, f9, dyn # perform operation
fadd.h f2, f15, f9, rdn # perform operation
fadd.h f2, f15, f9, rmm # perform operation
fadd.h f2, f15, f9, rne # perform operation
fadd.h f2, f15, f9, rtz # perform operation
fadd.h f2, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fadd.h f15, f24, f28, dyn # perform operation
fadd.h f15, f24, f28, rdn # perform operation
fadd.h f15, f24, f28, rmm # perform operation
fadd.h f15, f24, f28, rne # perform operation
fadd.h f15, f24, f28, rtz # perform operation
fadd.h f15, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fadd.h f28, f16, f3, dyn # perform operation
fadd.h f28, f16, f3, rdn # perform operation
fadd.h f28, f16, f3, rmm # perform operation
fadd.h f28, f16, f3, rne # perform operation
fadd.h f28, f16, f3, rtz # perform operation
fadd.h f28, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fadd.h f27, f2, f24, dyn # perform operation
fadd.h f27, f2, f24, rdn # perform operation
fadd.h f27, f2, f24, rmm # perform operation
fadd.h f27, f2, f24, rne # perform operation
fadd.h f27, f2, f24, rtz # perform operation
fadd.h f27, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fadd.h f26, f11, f1, dyn # perform operation
fadd.h f26, f11, f1, rdn # perform operation
fadd.h f26, f11, f1, rmm # perform operation
fadd.h f26, f11, f1, rne # perform operation
fadd.h f26, f11, f1, rtz # perform operation
fadd.h f26, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fadd.h f3, f16, f19, dyn # perform operation
fadd.h f3, f16, f19, rdn # perform operation
fadd.h f3, f16, f19, rmm # perform operation
fadd.h f3, f16, f19, rne # perform operation
fadd.h f3, f16, f19, rtz # perform operation
fadd.h f3, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fadd.h f3, f20, f17, dyn # perform operation
fadd.h f3, f20, f17, rdn # perform operation
fadd.h f3, f20, f17, rmm # perform operation
fadd.h f3, f20, f17, rne # perform operation
fadd.h f3, f20, f17, rtz # perform operation
fadd.h f3, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fadd.h f5, f13, f8, dyn # perform operation
fadd.h f5, f13, f8, rdn # perform operation
fadd.h f5, f13, f8, rmm # perform operation
fadd.h f5, f13, f8, rne # perform operation
fadd.h f5, f13, f8, rtz # perform operation
fadd.h f5, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fadd.h f12, f23, f16, dyn # perform operation
fadd.h f12, f23, f16, rdn # perform operation
fadd.h f12, f23, f16, rmm # perform operation
fadd.h f12, f23, f16, rne # perform operation
fadd.h f12, f23, f16, rtz # perform operation
fadd.h f12, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fadd.h f29, f9, f31, dyn # perform operation
fadd.h f29, f9, f31, rdn # perform operation
fadd.h f29, f9, f31, rmm # perform operation
fadd.h f29, f9, f31, rne # perform operation
fadd.h f29, f9, f31, rtz # perform operation
fadd.h f29, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fadd.h f31, f30, f24, dyn # perform operation
fadd.h f31, f30, f24, rdn # perform operation
fadd.h f31, f30, f24, rmm # perform operation
fadd.h f31, f30, f24, rne # perform operation
fadd.h f31, f30, f24, rtz # perform operation
fadd.h f31, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fadd.h f25, f6, f7, dyn # perform operation
fadd.h f25, f6, f7, rdn # perform operation
fadd.h f25, f6, f7, rmm # perform operation
fadd.h f25, f6, f7, rne # perform operation
fadd.h f25, f6, f7, rtz # perform operation
fadd.h f25, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fadd.h f9, f16, f7, dyn # perform operation
fadd.h f9, f16, f7, rdn # perform operation
fadd.h f9, f16, f7, rmm # perform operation
fadd.h f9, f16, f7, rne # perform operation
fadd.h f9, f16, f7, rtz # perform operation
fadd.h f9, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f16, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fadd.h f21, f2, f20, dyn # perform operation
fadd.h f21, f2, f20, rdn # perform operation
fadd.h f21, f2, f20, rmm # perform operation
fadd.h f21, f2, f20, rne # perform operation
fadd.h f21, f2, f20, rtz # perform operation
fadd.h f21, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fadd.h f3, f13, f29, dyn # perform operation
fadd.h f3, f13, f29, rdn # perform operation
fadd.h f3, f13, f29, rmm # perform operation
fadd.h f3, f13, f29, rne # perform operation
fadd.h f3, f13, f29, rtz # perform operation
fadd.h f3, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fadd.h f22, f12, f1, dyn # perform operation
fadd.h f22, f12, f1, rdn # perform operation
fadd.h f22, f12, f1, rmm # perform operation
fadd.h f22, f12, f1, rne # perform operation
fadd.h f22, f12, f1, rtz # perform operation
fadd.h f22, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fadd.h f30, f20, f21, dyn # perform operation
fadd.h f30, f20, f21, rdn # perform operation
fadd.h f30, f20, f21, rmm # perform operation
fadd.h f30, f20, f21, rne # perform operation
fadd.h f30, f20, f21, rtz # perform operation
fadd.h f30, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fadd.h f11, f27, f5, dyn # perform operation
fadd.h f11, f27, f5, rdn # perform operation
fadd.h f11, f27, f5, rmm # perform operation
fadd.h f11, f27, f5, rne # perform operation
fadd.h f11, f27, f5, rtz # perform operation
fadd.h f11, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fadd.h f24, f23, f17, dyn # perform operation
fadd.h f24, f23, f17, rdn # perform operation
fadd.h f24, f23, f17, rmm # perform operation
fadd.h f24, f23, f17, rne # perform operation
fadd.h f24, f23, f17, rtz # perform operation
fadd.h f24, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fadd.h f31, f22, f2, dyn # perform operation
fadd.h f31, f22, f2, rdn # perform operation
fadd.h f31, f22, f2, rmm # perform operation
fadd.h f31, f22, f2, rne # perform operation
fadd.h f31, f22, f2, rtz # perform operation
fadd.h f31, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fadd.h f5, f27, f26, dyn # perform operation
fadd.h f5, f27, f26, rdn # perform operation
fadd.h f5, f27, f26, rmm # perform operation
fadd.h f5, f27, f26, rne # perform operation
fadd.h f5, f27, f26, rtz # perform operation
fadd.h f5, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fadd.h f20, f18, f14, dyn # perform operation
fadd.h f20, f18, f14, rdn # perform operation
fadd.h f20, f18, f14, rmm # perform operation
fadd.h f20, f18, f14, rne # perform operation
fadd.h f20, f18, f14, rtz # perform operation
fadd.h f20, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fadd.h f20, f29, f24, dyn # perform operation
fadd.h f20, f29, f24, rdn # perform operation
fadd.h f20, f29, f24, rmm # perform operation
fadd.h f20, f29, f24, rne # perform operation
fadd.h f20, f29, f24, rtz # perform operation
fadd.h f20, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fadd.h f10, f20, f29, dyn # perform operation
fadd.h f10, f20, f29, rdn # perform operation
fadd.h f10, f20, f29, rmm # perform operation
fadd.h f10, f20, f29, rne # perform operation
fadd.h f10, f20, f29, rtz # perform operation
fadd.h f10, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fadd.h f13, f25, f28, dyn # perform operation
fadd.h f13, f25, f28, rdn # perform operation
fadd.h f13, f25, f28, rmm # perform operation
fadd.h f13, f25, f28, rne # perform operation
fadd.h f13, f25, f28, rtz # perform operation
fadd.h f13, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fadd.h f1, f24, f26, dyn # perform operation
fadd.h f1, f24, f26, rdn # perform operation
fadd.h f1, f24, f26, rmm # perform operation
fadd.h f1, f24, f26, rne # perform operation
fadd.h f1, f24, f26, rtz # perform operation
fadd.h f1, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fadd.h f10, f31, f28, dyn # perform operation
fadd.h f10, f31, f28, rdn # perform operation
fadd.h f10, f31, f28, rmm # perform operation
fadd.h f10, f31, f28, rne # perform operation
fadd.h f10, f31, f28, rtz # perform operation
fadd.h f10, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fadd.h f2, f15, f11, dyn # perform operation
fadd.h f2, f15, f11, rdn # perform operation
fadd.h f2, f15, f11, rmm # perform operation
fadd.h f2, f15, f11, rne # perform operation
fadd.h f2, f15, f11, rtz # perform operation
fadd.h f2, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fadd.h f14, f27, f9, dyn # perform operation
fadd.h f14, f27, f9, rdn # perform operation
fadd.h f14, f27, f9, rmm # perform operation
fadd.h f14, f27, f9, rne # perform operation
fadd.h f14, f27, f9, rtz # perform operation
fadd.h f14, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fadd.h f22, f21, f8, dyn # perform operation
fadd.h f22, f21, f8, rdn # perform operation
fadd.h f22, f21, f8, rmm # perform operation
fadd.h f22, f21, f8, rne # perform operation
fadd.h f22, f21, f8, rtz # perform operation
fadd.h f22, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fadd.h f20, f12, f10, dyn # perform operation
fadd.h f20, f12, f10, rdn # perform operation
fadd.h f20, f12, f10, rmm # perform operation
fadd.h f20, f12, f10, rne # perform operation
fadd.h f20, f12, f10, rtz # perform operation
fadd.h f20, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f28, f5, f2, dyn # perform operation
fadd.h f28, f5, f2, rdn # perform operation
fadd.h f28, f5, f2, rmm # perform operation
fadd.h f28, f5, f2, rne # perform operation
fadd.h f28, f5, f2, rtz # perform operation
fadd.h f28, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
fadd.h f6, f26, f25, dyn # perform operation
fadd.h f6, f26, f25, rdn # perform operation
fadd.h f6, f26, f25, rmm # perform operation
fadd.h f6, f26, f25, rne # perform operation
fadd.h f6, f26, f25, rtz # perform operation
fadd.h f6, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fadd.h f31, f30, f3, dyn # perform operation
fadd.h f31, f30, f3, rdn # perform operation
fadd.h f31, f30, f3, rmm # perform operation
fadd.h f31, f30, f3, rne # perform operation
fadd.h f31, f30, f3, rtz # perform operation
fadd.h f31, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fadd.h f19, f26, f27, dyn # perform operation
fadd.h f19, f26, f27, rdn # perform operation
fadd.h f19, f26, f27, rmm # perform operation
fadd.h f19, f26, f27, rne # perform operation
fadd.h f19, f26, f27, rtz # perform operation
fadd.h f19, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
fadd.h f1, f9, f23, dyn # perform operation
fadd.h f1, f9, f23, rdn # perform operation
fadd.h f1, f9, f23, rmm # perform operation
fadd.h f1, f9, f23, rne # perform operation
fadd.h f1, f9, f23, rtz # perform operation
fadd.h f1, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fadd.h f27, f29, f15, dyn # perform operation
fadd.h f27, f29, f15, rdn # perform operation
fadd.h f27, f29, f15, rmm # perform operation
fadd.h f27, f29, f15, rne # perform operation
fadd.h f27, f29, f15, rtz # perform operation
fadd.h f27, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fadd.h f3, f2, f24, dyn # perform operation
fadd.h f3, f2, f24, rdn # perform operation
fadd.h f3, f2, f24, rmm # perform operation
fadd.h f3, f2, f24, rne # perform operation
fadd.h f3, f2, f24, rtz # perform operation
fadd.h f3, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fadd.h f29, f5, f8, dyn # perform operation
fadd.h f29, f5, f8, rdn # perform operation
fadd.h f29, f5, f8, rmm # perform operation
fadd.h f29, f5, f8, rne # perform operation
fadd.h f29, f5, f8, rtz # perform operation
fadd.h f29, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fadd.h f20, f1, f6, dyn # perform operation
fadd.h f20, f1, f6, rdn # perform operation
fadd.h f20, f1, f6, rmm # perform operation
fadd.h f20, f1, f6, rne # perform operation
fadd.h f20, f1, f6, rtz # perform operation
fadd.h f20, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fadd.h f10, f9, f13, dyn # perform operation
fadd.h f10, f9, f13, rdn # perform operation
fadd.h f10, f9, f13, rmm # perform operation
fadd.h f10, f9, f13, rne # perform operation
fadd.h f10, f9, f13, rtz # perform operation
fadd.h f10, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fadd.h f12, f24, f28, dyn # perform operation
fadd.h f12, f24, f28, rdn # perform operation
fadd.h f12, f24, f28, rmm # perform operation
fadd.h f12, f24, f28, rne # perform operation
fadd.h f12, f24, f28, rtz # perform operation
fadd.h f12, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fadd.h f11, f29, f21, dyn # perform operation
fadd.h f11, f29, f21, rdn # perform operation
fadd.h f11, f29, f21, rmm # perform operation
fadd.h f11, f29, f21, rne # perform operation
fadd.h f11, f29, f21, rtz # perform operation
fadd.h f11, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f29, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fadd.h f24, f22, f25, dyn # perform operation
fadd.h f24, f22, f25, rdn # perform operation
fadd.h f24, f22, f25, rmm # perform operation
fadd.h f24, f22, f25, rne # perform operation
fadd.h f24, f22, f25, rtz # perform operation
fadd.h f24, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f22, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fadd.h f30, f19, f10, dyn # perform operation
fadd.h f30, f19, f10, rdn # perform operation
fadd.h f30, f19, f10, rmm # perform operation
fadd.h f30, f19, f10, rne # perform operation
fadd.h f30, f19, f10, rtz # perform operation
fadd.h f30, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fadd.h f5, f13, f16, dyn # perform operation
fadd.h f5, f13, f16, rdn # perform operation
fadd.h f5, f13, f16, rmm # perform operation
fadd.h f5, f13, f16, rne # perform operation
fadd.h f5, f13, f16, rtz # perform operation
fadd.h f5, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fadd.h f20, f10, f13, dyn # perform operation
fadd.h f20, f10, f13, rdn # perform operation
fadd.h f20, f10, f13, rmm # perform operation
fadd.h f20, f10, f13, rne # perform operation
fadd.h f20, f10, f13, rtz # perform operation
fadd.h f20, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f10, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f2, f10, f1, dyn # perform operation
fadd.h f2, f10, f1, rdn # perform operation
fadd.h f2, f10, f1, rmm # perform operation
fadd.h f2, f10, f1, rne # perform operation
fadd.h f2, f10, f1, rtz # perform operation
fadd.h f2, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fadd.h f26, f17, f23, dyn # perform operation
fadd.h f26, f17, f23, rdn # perform operation
fadd.h f26, f17, f23, rmm # perform operation
fadd.h f26, f17, f23, rne # perform operation
fadd.h f26, f17, f23, rtz # perform operation
fadd.h f26, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fadd.h f6, f11, f7, dyn # perform operation
fadd.h f6, f11, f7, rdn # perform operation
fadd.h f6, f11, f7, rmm # perform operation
fadd.h f6, f11, f7, rne # perform operation
fadd.h f6, f11, f7, rtz # perform operation
fadd.h f6, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fadd.h f12, f7, f6, dyn # perform operation
fadd.h f12, f7, f6, rdn # perform operation
fadd.h f12, f7, f6, rmm # perform operation
fadd.h f12, f7, f6, rne # perform operation
fadd.h f12, f7, f6, rtz # perform operation
fadd.h f12, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fadd.h f6, f23, f16, dyn # perform operation
fadd.h f6, f23, f16, rdn # perform operation
fadd.h f6, f23, f16, rmm # perform operation
fadd.h f6, f23, f16, rne # perform operation
fadd.h f6, f23, f16, rtz # perform operation
fadd.h f6, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fadd.h f30, f20, f31, dyn # perform operation
fadd.h f30, f20, f31, rdn # perform operation
fadd.h f30, f20, f31, rmm # perform operation
fadd.h f30, f20, f31, rne # perform operation
fadd.h f30, f20, f31, rtz # perform operation
fadd.h f30, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fadd.h f15, f24, f18, dyn # perform operation
fadd.h f15, f24, f18, rdn # perform operation
fadd.h f15, f24, f18, rmm # perform operation
fadd.h f15, f24, f18, rne # perform operation
fadd.h f15, f24, f18, rtz # perform operation
fadd.h f15, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f8, f22, f31, dyn # perform operation
fadd.h f8, f22, f31, rdn # perform operation
fadd.h f8, f22, f31, rmm # perform operation
fadd.h f8, f22, f31, rne # perform operation
fadd.h f8, f22, f31, rtz # perform operation
fadd.h f8, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fadd.h f28, f26, f25, dyn # perform operation
fadd.h f28, f26, f25, rdn # perform operation
fadd.h f28, f26, f25, rmm # perform operation
fadd.h f28, f26, f25, rne # perform operation
fadd.h f28, f26, f25, rtz # perform operation
fadd.h f28, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fadd.h f26, f24, f6, dyn # perform operation
fadd.h f26, f24, f6, rdn # perform operation
fadd.h f26, f24, f6, rmm # perform operation
fadd.h f26, f24, f6, rne # perform operation
fadd.h f26, f24, f6, rtz # perform operation
fadd.h f26, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f6, f20, f29, dyn # perform operation
fadd.h f6, f20, f29, rdn # perform operation
fadd.h f6, f20, f29, rmm # perform operation
fadd.h f6, f20, f29, rne # perform operation
fadd.h f6, f20, f29, rtz # perform operation
fadd.h f6, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fadd.h f15, f6, f31, dyn # perform operation
fadd.h f15, f6, f31, rdn # perform operation
fadd.h f15, f6, f31, rmm # perform operation
fadd.h f15, f6, f31, rne # perform operation
fadd.h f15, f6, f31, rtz # perform operation
fadd.h f15, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fadd.h f15, f12, f28, dyn # perform operation
fadd.h f15, f12, f28, rdn # perform operation
fadd.h f15, f12, f28, rmm # perform operation
fadd.h f15, f12, f28, rne # perform operation
fadd.h f15, f12, f28, rtz # perform operation
fadd.h f15, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fadd.h f11, f20, f10, dyn # perform operation
fadd.h f11, f20, f10, rdn # perform operation
fadd.h f11, f20, f10, rmm # perform operation
fadd.h f11, f20, f10, rne # perform operation
fadd.h f11, f20, f10, rtz # perform operation
fadd.h f11, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fadd.h f22, f15, f24, dyn # perform operation
fadd.h f22, f15, f24, rdn # perform operation
fadd.h f22, f15, f24, rmm # perform operation
fadd.h f22, f15, f24, rne # perform operation
fadd.h f22, f15, f24, rtz # perform operation
fadd.h f22, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fadd.h f15, f17, f10, dyn # perform operation
fadd.h f15, f17, f10, rdn # perform operation
fadd.h f15, f17, f10, rmm # perform operation
fadd.h f15, f17, f10, rne # perform operation
fadd.h f15, f17, f10, rtz # perform operation
fadd.h f15, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fadd.h f22, f11, f18, dyn # perform operation
fadd.h f22, f11, f18, rdn # perform operation
fadd.h f22, f11, f18, rmm # perform operation
fadd.h f22, f11, f18, rne # perform operation
fadd.h f22, f11, f18, rtz # perform operation
fadd.h f22, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fadd.h f21, f12, f22, dyn # perform operation
fadd.h f21, f12, f22, rdn # perform operation
fadd.h f21, f12, f22, rmm # perform operation
fadd.h f21, f12, f22, rne # perform operation
fadd.h f21, f12, f22, rtz # perform operation
fadd.h f21, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fadd.h f3, f23, f6, dyn # perform operation
fadd.h f3, f23, f6, rdn # perform operation
fadd.h f3, f23, f6, rmm # perform operation
fadd.h f3, f23, f6, rne # perform operation
fadd.h f3, f23, f6, rtz # perform operation
fadd.h f3, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fadd.h f26, f11, f30, dyn # perform operation
fadd.h f26, f11, f30, rdn # perform operation
fadd.h f26, f11, f30, rmm # perform operation
fadd.h f26, f11, f30, rne # perform operation
fadd.h f26, f11, f30, rtz # perform operation
fadd.h f26, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fadd.h f3, f8, f10, dyn # perform operation
fadd.h f3, f8, f10, rdn # perform operation
fadd.h f3, f8, f10, rmm # perform operation
fadd.h f3, f8, f10, rne # perform operation
fadd.h f3, f8, f10, rtz # perform operation
fadd.h f3, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fadd.h f2, f14, f27, dyn # perform operation
fadd.h f2, f14, f27, rdn # perform operation
fadd.h f2, f14, f27, rmm # perform operation
fadd.h f2, f14, f27, rne # perform operation
fadd.h f2, f14, f27, rtz # perform operation
fadd.h f2, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fadd.h f3, f24, f1, dyn # perform operation
fadd.h f3, f24, f1, rdn # perform operation
fadd.h f3, f24, f1, rmm # perform operation
fadd.h f3, f24, f1, rne # perform operation
fadd.h f3, f24, f1, rtz # perform operation
fadd.h f3, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fadd.h f13, f18, f28, dyn # perform operation
fadd.h f13, f18, f28, rdn # perform operation
fadd.h f13, f18, f28, rmm # perform operation
fadd.h f13, f18, f28, rne # perform operation
fadd.h f13, f18, f28, rtz # perform operation
fadd.h f13, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f18, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fadd.h f29, f3, f11, dyn # perform operation
fadd.h f29, f3, f11, rdn # perform operation
fadd.h f29, f3, f11, rmm # perform operation
fadd.h f29, f3, f11, rne # perform operation
fadd.h f29, f3, f11, rtz # perform operation
fadd.h f29, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fadd.h f25, f19, f10, dyn # perform operation
fadd.h f25, f19, f10, rdn # perform operation
fadd.h f25, f19, f10, rmm # perform operation
fadd.h f25, f19, f10, rne # perform operation
fadd.h f25, f19, f10, rtz # perform operation
fadd.h f25, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fadd.h f29, f25, f26, dyn # perform operation
fadd.h f29, f25, f26, rdn # perform operation
fadd.h f29, f25, f26, rmm # perform operation
fadd.h f29, f25, f26, rne # perform operation
fadd.h f29, f25, f26, rtz # perform operation
fadd.h f29, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fadd.h f28, f8, f18, dyn # perform operation
fadd.h f28, f8, f18, rdn # perform operation
fadd.h f28, f8, f18, rmm # perform operation
fadd.h f28, f8, f18, rne # perform operation
fadd.h f28, f8, f18, rtz # perform operation
fadd.h f28, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fadd.h f23, f1, f21, dyn # perform operation
fadd.h f23, f1, f21, rdn # perform operation
fadd.h f23, f1, f21, rmm # perform operation
fadd.h f23, f1, f21, rne # perform operation
fadd.h f23, f1, f21, rtz # perform operation
fadd.h f23, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fadd.h f10, f28, f24, dyn # perform operation
fadd.h f10, f28, f24, rdn # perform operation
fadd.h f10, f28, f24, rmm # perform operation
fadd.h f10, f28, f24, rne # perform operation
fadd.h f10, f28, f24, rtz # perform operation
fadd.h f10, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fadd.h f10, f8, f2, dyn # perform operation
fadd.h f10, f8, f2, rdn # perform operation
fadd.h f10, f8, f2, rmm # perform operation
fadd.h f10, f8, f2, rne # perform operation
fadd.h f10, f8, f2, rtz # perform operation
fadd.h f10, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fadd.h f9, f5, f25, dyn # perform operation
fadd.h f9, f5, f25, rdn # perform operation
fadd.h f9, f5, f25, rmm # perform operation
fadd.h f9, f5, f25, rne # perform operation
fadd.h f9, f5, f25, rtz # perform operation
fadd.h f9, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f2, f11, f18, dyn # perform operation
fadd.h f2, f11, f18, rdn # perform operation
fadd.h f2, f11, f18, rmm # perform operation
fadd.h f2, f11, f18, rne # perform operation
fadd.h f2, f11, f18, rtz # perform operation
fadd.h f2, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fadd.h f13, f24, f5, dyn # perform operation
fadd.h f13, f24, f5, rdn # perform operation
fadd.h f13, f24, f5, rmm # perform operation
fadd.h f13, f24, f5, rne # perform operation
fadd.h f13, f24, f5, rtz # perform operation
fadd.h f13, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fadd.h f19, f17, f16, dyn # perform operation
fadd.h f19, f17, f16, rdn # perform operation
fadd.h f19, f17, f16, rmm # perform operation
fadd.h f19, f17, f16, rne # perform operation
fadd.h f19, f17, f16, rtz # perform operation
fadd.h f19, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fadd.h f15, f18, f9, dyn # perform operation
fadd.h f15, f18, f9, rdn # perform operation
fadd.h f15, f18, f9, rmm # perform operation
fadd.h f15, f18, f9, rne # perform operation
fadd.h f15, f18, f9, rtz # perform operation
fadd.h f15, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fadd.h f30, f9, f23, dyn # perform operation
fadd.h f30, f9, f23, rdn # perform operation
fadd.h f30, f9, f23, rmm # perform operation
fadd.h f30, f9, f23, rne # perform operation
fadd.h f30, f9, f23, rtz # perform operation
fadd.h f30, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fadd.h f26, f7, f31, dyn # perform operation
fadd.h f26, f7, f31, rdn # perform operation
fadd.h f26, f7, f31, rmm # perform operation
fadd.h f26, f7, f31, rne # perform operation
fadd.h f26, f7, f31, rtz # perform operation
fadd.h f26, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fadd.h f20, f25, f24, dyn # perform operation
fadd.h f20, f25, f24, rdn # perform operation
fadd.h f20, f25, f24, rmm # perform operation
fadd.h f20, f25, f24, rne # perform operation
fadd.h f20, f25, f24, rtz # perform operation
fadd.h f20, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fadd.h f20, f13, f16, dyn # perform operation
fadd.h f20, f13, f16, rdn # perform operation
fadd.h f20, f13, f16, rmm # perform operation
fadd.h f20, f13, f16, rne # perform operation
fadd.h f20, f13, f16, rtz # perform operation
fadd.h f20, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f6, f14, f2, dyn # perform operation
fadd.h f6, f14, f2, rdn # perform operation
fadd.h f6, f14, f2, rmm # perform operation
fadd.h f6, f14, f2, rne # perform operation
fadd.h f6, f14, f2, rtz # perform operation
fadd.h f6, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fadd.h f25, f9, f5, dyn # perform operation
fadd.h f25, f9, f5, rdn # perform operation
fadd.h f25, f9, f5, rmm # perform operation
fadd.h f25, f9, f5, rne # perform operation
fadd.h f25, f9, f5, rtz # perform operation
fadd.h f25, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fadd.h f22, f13, f3, dyn # perform operation
fadd.h f22, f13, f3, rdn # perform operation
fadd.h f22, f13, f3, rmm # perform operation
fadd.h f22, f13, f3, rne # perform operation
fadd.h f22, f13, f3, rtz # perform operation
fadd.h f22, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fadd.h f9, f27, f15, dyn # perform operation
fadd.h f9, f27, f15, rdn # perform operation
fadd.h f9, f27, f15, rmm # perform operation
fadd.h f9, f27, f15, rne # perform operation
fadd.h f9, f27, f15, rtz # perform operation
fadd.h f9, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fadd.h f3, f22, f18, dyn # perform operation
fadd.h f3, f22, f18, rdn # perform operation
fadd.h f3, f22, f18, rmm # perform operation
fadd.h f3, f22, f18, rne # perform operation
fadd.h f3, f22, f18, rtz # perform operation
fadd.h f3, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fadd.h f22, f26, f11, dyn # perform operation
fadd.h f22, f26, f11, rdn # perform operation
fadd.h f22, f26, f11, rmm # perform operation
fadd.h f22, f26, f11, rne # perform operation
fadd.h f22, f26, f11, rtz # perform operation
fadd.h f22, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fadd.h f30, f9, f16, dyn # perform operation
fadd.h f30, f9, f16, rdn # perform operation
fadd.h f30, f9, f16, rmm # perform operation
fadd.h f30, f9, f16, rne # perform operation
fadd.h f30, f9, f16, rtz # perform operation
fadd.h f30, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fadd.h f18, f2, f12, dyn # perform operation
fadd.h f18, f2, f12, rdn # perform operation
fadd.h f18, f2, f12, rmm # perform operation
fadd.h f18, f2, f12, rne # perform operation
fadd.h f18, f2, f12, rtz # perform operation
fadd.h f18, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fadd.h f30, f13, f31, dyn # perform operation
fadd.h f30, f13, f31, rdn # perform operation
fadd.h f30, f13, f31, rmm # perform operation
fadd.h f30, f13, f31, rne # perform operation
fadd.h f30, f13, f31, rtz # perform operation
fadd.h f30, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fadd.h f5, f7, f29, dyn # perform operation
fadd.h f5, f7, f29, rdn # perform operation
fadd.h f5, f7, f29, rmm # perform operation
fadd.h f5, f7, f29, rne # perform operation
fadd.h f5, f7, f29, rtz # perform operation
fadd.h f5, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fadd.h f2, f1, f15, dyn # perform operation
fadd.h f2, f1, f15, rdn # perform operation
fadd.h f2, f1, f15, rmm # perform operation
fadd.h f2, f1, f15, rne # perform operation
fadd.h f2, f1, f15, rtz # perform operation
fadd.h f2, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f21, f2, f15, dyn # perform operation
fadd.h f21, f2, f15, rdn # perform operation
fadd.h f21, f2, f15, rmm # perform operation
fadd.h f21, f2, f15, rne # perform operation
fadd.h f21, f2, f15, rtz # perform operation
fadd.h f21, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fadd.h f8, f17, f23, dyn # perform operation
fadd.h f8, f17, f23, rdn # perform operation
fadd.h f8, f17, f23, rmm # perform operation
fadd.h f8, f17, f23, rne # perform operation
fadd.h f8, f17, f23, rtz # perform operation
fadd.h f8, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fadd.h f7, f20, f19, dyn # perform operation
fadd.h f7, f20, f19, rdn # perform operation
fadd.h f7, f20, f19, rmm # perform operation
fadd.h f7, f20, f19, rne # perform operation
fadd.h f7, f20, f19, rtz # perform operation
fadd.h f7, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fadd.h f14, f17, f28, dyn # perform operation
fadd.h f14, f17, f28, rdn # perform operation
fadd.h f14, f17, f28, rmm # perform operation
fadd.h f14, f17, f28, rne # perform operation
fadd.h f14, f17, f28, rtz # perform operation
fadd.h f14, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fadd.h f7, f15, f29, dyn # perform operation
fadd.h f7, f15, f29, rdn # perform operation
fadd.h f7, f15, f29, rmm # perform operation
fadd.h f7, f15, f29, rne # perform operation
fadd.h f7, f15, f29, rtz # perform operation
fadd.h f7, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f3, f22, f1, dyn # perform operation
fadd.h f3, f22, f1, rdn # perform operation
fadd.h f3, f22, f1, rmm # perform operation
fadd.h f3, f22, f1, rne # perform operation
fadd.h f3, f22, f1, rtz # perform operation
fadd.h f3, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fadd.h f31, f29, f11, dyn # perform operation
fadd.h f31, f29, f11, rdn # perform operation
fadd.h f31, f29, f11, rmm # perform operation
fadd.h f31, f29, f11, rne # perform operation
fadd.h f31, f29, f11, rtz # perform operation
fadd.h f31, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fadd.h f20, f3, f29, dyn # perform operation
fadd.h f20, f3, f29, rdn # perform operation
fadd.h f20, f3, f29, rmm # perform operation
fadd.h f20, f3, f29, rne # perform operation
fadd.h f20, f3, f29, rtz # perform operation
fadd.h f20, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fadd.h f29, f27, f3, dyn # perform operation
fadd.h f29, f27, f3, rdn # perform operation
fadd.h f29, f27, f3, rmm # perform operation
fadd.h f29, f27, f3, rne # perform operation
fadd.h f29, f27, f3, rtz # perform operation
fadd.h f29, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fadd.h f14, f15, f22, dyn # perform operation
fadd.h f14, f15, f22, rdn # perform operation
fadd.h f14, f15, f22, rmm # perform operation
fadd.h f14, f15, f22, rne # perform operation
fadd.h f14, f15, f22, rtz # perform operation
fadd.h f14, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fadd.h f2, f8, f14, dyn # perform operation
fadd.h f2, f8, f14, rdn # perform operation
fadd.h f2, f8, f14, rmm # perform operation
fadd.h f2, f8, f14, rne # perform operation
fadd.h f2, f8, f14, rtz # perform operation
fadd.h f2, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fadd.h f14, f13, f2, dyn # perform operation
fadd.h f14, f13, f2, rdn # perform operation
fadd.h f14, f13, f2, rmm # perform operation
fadd.h f14, f13, f2, rne # perform operation
fadd.h f14, f13, f2, rtz # perform operation
fadd.h f14, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fadd.h f16, f29, f8, dyn # perform operation
fadd.h f16, f29, f8, rdn # perform operation
fadd.h f16, f29, f8, rmm # perform operation
fadd.h f16, f29, f8, rne # perform operation
fadd.h f16, f29, f8, rtz # perform operation
fadd.h f16, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fadd.h f22, f26, f24, dyn # perform operation
fadd.h f22, f26, f24, rdn # perform operation
fadd.h f22, f26, f24, rmm # perform operation
fadd.h f22, f26, f24, rne # perform operation
fadd.h f22, f26, f24, rtz # perform operation
fadd.h f22, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fadd.h f27, f2, f20, dyn # perform operation
fadd.h f27, f2, f20, rdn # perform operation
fadd.h f27, f2, f20, rmm # perform operation
fadd.h f27, f2, f20, rne # perform operation
fadd.h f27, f2, f20, rtz # perform operation
fadd.h f27, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fadd.h f10, f20, f26, dyn # perform operation
fadd.h f10, f20, f26, rdn # perform operation
fadd.h f10, f20, f26, rmm # perform operation
fadd.h f10, f20, f26, rne # perform operation
fadd.h f10, f20, f26, rtz # perform operation
fadd.h f10, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fadd.h f21, f15, f29, dyn # perform operation
fadd.h f21, f15, f29, rdn # perform operation
fadd.h f21, f15, f29, rmm # perform operation
fadd.h f21, f15, f29, rne # perform operation
fadd.h f21, f15, f29, rtz # perform operation
fadd.h f21, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fadd.h f13, f19, f15, dyn # perform operation
fadd.h f13, f19, f15, rdn # perform operation
fadd.h f13, f19, f15, rmm # perform operation
fadd.h f13, f19, f15, rne # perform operation
fadd.h f13, f19, f15, rtz # perform operation
fadd.h f13, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fadd.h f18, f27, f15, dyn # perform operation
fadd.h f18, f27, f15, rdn # perform operation
fadd.h f18, f27, f15, rmm # perform operation
fadd.h f18, f27, f15, rne # perform operation
fadd.h f18, f27, f15, rtz # perform operation
fadd.h f18, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fadd.h f26, f31, f10, dyn # perform operation
fadd.h f26, f31, f10, rdn # perform operation
fadd.h f26, f31, f10, rmm # perform operation
fadd.h f26, f31, f10, rne # perform operation
fadd.h f26, f31, f10, rtz # perform operation
fadd.h f26, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fadd.h f29, f28, f27, dyn # perform operation
fadd.h f29, f28, f27, rdn # perform operation
fadd.h f29, f28, f27, rmm # perform operation
fadd.h f29, f28, f27, rne # perform operation
fadd.h f29, f28, f27, rtz # perform operation
fadd.h f29, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
fadd.h f23, f19, f28, dyn # perform operation
fadd.h f23, f19, f28, rdn # perform operation
fadd.h f23, f19, f28, rmm # perform operation
fadd.h f23, f19, f28, rne # perform operation
fadd.h f23, f19, f28, rtz # perform operation
fadd.h f23, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f13, f7, f8, dyn # perform operation
fadd.h f13, f7, f8, rdn # perform operation
fadd.h f13, f7, f8, rmm # perform operation
fadd.h f13, f7, f8, rne # perform operation
fadd.h f13, f7, f8, rtz # perform operation
fadd.h f13, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fadd.h f24, f19, f17, dyn # perform operation
fadd.h f24, f19, f17, rdn # perform operation
fadd.h f24, f19, f17, rmm # perform operation
fadd.h f24, f19, f17, rne # perform operation
fadd.h f24, f19, f17, rtz # perform operation
fadd.h f24, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fadd.h f9, f30, f2, dyn # perform operation
fadd.h f9, f30, f2, rdn # perform operation
fadd.h f9, f30, f2, rmm # perform operation
fadd.h f9, f30, f2, rne # perform operation
fadd.h f9, f30, f2, rtz # perform operation
fadd.h f9, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fadd.h f26, f16, f11, dyn # perform operation
fadd.h f26, f16, f11, rdn # perform operation
fadd.h f26, f16, f11, rmm # perform operation
fadd.h f26, f16, f11, rne # perform operation
fadd.h f26, f16, f11, rtz # perform operation
fadd.h f26, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fadd.h f25, f15, f23, dyn # perform operation
fadd.h f25, f15, f23, rdn # perform operation
fadd.h f25, f15, f23, rmm # perform operation
fadd.h f25, f15, f23, rne # perform operation
fadd.h f25, f15, f23, rtz # perform operation
fadd.h f25, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fadd.h f3, f9, f31, dyn # perform operation
fadd.h f3, f9, f31, rdn # perform operation
fadd.h f3, f9, f31, rmm # perform operation
fadd.h f3, f9, f31, rne # perform operation
fadd.h f3, f9, f31, rtz # perform operation
fadd.h f3, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f9, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fadd.h f7, f14, f17, dyn # perform operation
fadd.h f7, f14, f17, rdn # perform operation
fadd.h f7, f14, f17, rmm # perform operation
fadd.h f7, f14, f17, rne # perform operation
fadd.h f7, f14, f17, rtz # perform operation
fadd.h f7, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fadd.h f8, f27, f14, dyn # perform operation
fadd.h f8, f27, f14, rdn # perform operation
fadd.h f8, f27, f14, rmm # perform operation
fadd.h f8, f27, f14, rne # perform operation
fadd.h f8, f27, f14, rtz # perform operation
fadd.h f8, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fadd.h f16, f31, f18, dyn # perform operation
fadd.h f16, f31, f18, rdn # perform operation
fadd.h f16, f31, f18, rmm # perform operation
fadd.h f16, f31, f18, rne # perform operation
fadd.h f16, f31, f18, rtz # perform operation
fadd.h f16, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fadd.h f6, f11, f10, dyn # perform operation
fadd.h f6, f11, f10, rdn # perform operation
fadd.h f6, f11, f10, rmm # perform operation
fadd.h f6, f11, f10, rne # perform operation
fadd.h f6, f11, f10, rtz # perform operation
fadd.h f6, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fadd.h f22, f16, f17, dyn # perform operation
fadd.h f22, f16, f17, rdn # perform operation
fadd.h f22, f16, f17, rmm # perform operation
fadd.h f22, f16, f17, rne # perform operation
fadd.h f22, f16, f17, rtz # perform operation
fadd.h f22, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fadd.h f9, f29, f8, dyn # perform operation
fadd.h f9, f29, f8, rdn # perform operation
fadd.h f9, f29, f8, rmm # perform operation
fadd.h f9, f29, f8, rne # perform operation
fadd.h f9, f29, f8, rtz # perform operation
fadd.h f9, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fadd.h f9, f24, f2, dyn # perform operation
fadd.h f9, f24, f2, rdn # perform operation
fadd.h f9, f24, f2, rmm # perform operation
fadd.h f9, f24, f2, rne # perform operation
fadd.h f9, f24, f2, rtz # perform operation
fadd.h f9, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fadd.h f28, f23, f26, dyn # perform operation
fadd.h f28, f23, f26, rdn # perform operation
fadd.h f28, f23, f26, rmm # perform operation
fadd.h f28, f23, f26, rne # perform operation
fadd.h f28, f23, f26, rtz # perform operation
fadd.h f28, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fadd.h f10, f23, f26, dyn # perform operation
fadd.h f10, f23, f26, rdn # perform operation
fadd.h f10, f23, f26, rmm # perform operation
fadd.h f10, f23, f26, rne # perform operation
fadd.h f10, f23, f26, rtz # perform operation
fadd.h f10, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fadd.h f14, f27, f11, dyn # perform operation
fadd.h f14, f27, f11, rdn # perform operation
fadd.h f14, f27, f11, rmm # perform operation
fadd.h f14, f27, f11, rne # perform operation
fadd.h f14, f27, f11, rtz # perform operation
fadd.h f14, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fadd.h f26, f13, f5, dyn # perform operation
fadd.h f26, f13, f5, rdn # perform operation
fadd.h f26, f13, f5, rmm # perform operation
fadd.h f26, f13, f5, rne # perform operation
fadd.h f26, f13, f5, rtz # perform operation
fadd.h f26, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fadd.h f11, f16, f26, dyn # perform operation
fadd.h f11, f16, f26, rdn # perform operation
fadd.h f11, f16, f26, rmm # perform operation
fadd.h f11, f16, f26, rne # perform operation
fadd.h f11, f16, f26, rtz # perform operation
fadd.h f11, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fadd.h f16, f19, f1, dyn # perform operation
fadd.h f16, f19, f1, rdn # perform operation
fadd.h f16, f19, f1, rmm # perform operation
fadd.h f16, f19, f1, rne # perform operation
fadd.h f16, f19, f1, rtz # perform operation
fadd.h f16, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fadd.h f17, f3, f1, dyn # perform operation
fadd.h f17, f3, f1, rdn # perform operation
fadd.h f17, f3, f1, rmm # perform operation
fadd.h f17, f3, f1, rne # perform operation
fadd.h f17, f3, f1, rtz # perform operation
fadd.h f17, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fadd.h f27, f31, f1, dyn # perform operation
fadd.h f27, f31, f1, rdn # perform operation
fadd.h f27, f31, f1, rmm # perform operation
fadd.h f27, f31, f1, rne # perform operation
fadd.h f27, f31, f1, rtz # perform operation
fadd.h f27, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fadd.h f6, f3, f22, dyn # perform operation
fadd.h f6, f3, f22, rdn # perform operation
fadd.h f6, f3, f22, rmm # perform operation
fadd.h f6, f3, f22, rne # perform operation
fadd.h f6, f3, f22, rtz # perform operation
fadd.h f6, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f3, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fadd.h f12, f5, f17, dyn # perform operation
fadd.h f12, f5, f17, rdn # perform operation
fadd.h f12, f5, f17, rmm # perform operation
fadd.h f12, f5, f17, rne # perform operation
fadd.h f12, f5, f17, rtz # perform operation
fadd.h f12, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fadd.h f6, f28, f14, dyn # perform operation
fadd.h f6, f28, f14, rdn # perform operation
fadd.h f6, f28, f14, rmm # perform operation
fadd.h f6, f28, f14, rne # perform operation
fadd.h f6, f28, f14, rtz # perform operation
fadd.h f6, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fadd.h f13, f17, f1, dyn # perform operation
fadd.h f13, f17, f1, rdn # perform operation
fadd.h f13, f17, f1, rmm # perform operation
fadd.h f13, f17, f1, rne # perform operation
fadd.h f13, f17, f1, rtz # perform operation
fadd.h f13, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fadd.h f13, f31, f21, dyn # perform operation
fadd.h f13, f31, f21, rdn # perform operation
fadd.h f13, f31, f21, rmm # perform operation
fadd.h f13, f31, f21, rne # perform operation
fadd.h f13, f31, f21, rtz # perform operation
fadd.h f13, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f16, f14, f25, dyn # perform operation
fadd.h f16, f14, f25, rdn # perform operation
fadd.h f16, f14, f25, rmm # perform operation
fadd.h f16, f14, f25, rne # perform operation
fadd.h f16, f14, f25, rtz # perform operation
fadd.h f16, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fadd.h f6, f9, f5, dyn # perform operation
fadd.h f6, f9, f5, rdn # perform operation
fadd.h f6, f9, f5, rmm # perform operation
fadd.h f6, f9, f5, rne # perform operation
fadd.h f6, f9, f5, rtz # perform operation
fadd.h f6, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f21, f20, f30, dyn # perform operation
fadd.h f21, f20, f30, rdn # perform operation
fadd.h f21, f20, f30, rmm # perform operation
fadd.h f21, f20, f30, rne # perform operation
fadd.h f21, f20, f30, rtz # perform operation
fadd.h f21, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fadd.h f25, f8, f22, dyn # perform operation
fadd.h f25, f8, f22, rdn # perform operation
fadd.h f25, f8, f22, rmm # perform operation
fadd.h f25, f8, f22, rne # perform operation
fadd.h f25, f8, f22, rtz # perform operation
fadd.h f25, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fadd.h f17, f22, f20, dyn # perform operation
fadd.h f17, f22, f20, rdn # perform operation
fadd.h f17, f22, f20, rmm # perform operation
fadd.h f17, f22, f20, rne # perform operation
fadd.h f17, f22, f20, rtz # perform operation
fadd.h f17, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fadd.h f9, f17, f26, dyn # perform operation
fadd.h f9, f17, f26, rdn # perform operation
fadd.h f9, f17, f26, rmm # perform operation
fadd.h f9, f17, f26, rne # perform operation
fadd.h f9, f17, f26, rtz # perform operation
fadd.h f9, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fadd.h f25, f8, f23, dyn # perform operation
fadd.h f25, f8, f23, rdn # perform operation
fadd.h f25, f8, f23, rmm # perform operation
fadd.h f25, f8, f23, rne # perform operation
fadd.h f25, f8, f23, rtz # perform operation
fadd.h f25, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f8, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fadd.h f20, f22, f8, dyn # perform operation
fadd.h f20, f22, f8, rdn # perform operation
fadd.h f20, f22, f8, rmm # perform operation
fadd.h f20, f22, f8, rne # perform operation
fadd.h f20, f22, f8, rtz # perform operation
fadd.h f20, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fadd.h f10, f23, f14, dyn # perform operation
fadd.h f10, f23, f14, rdn # perform operation
fadd.h f10, f23, f14, rmm # perform operation
fadd.h f10, f23, f14, rne # perform operation
fadd.h f10, f23, f14, rtz # perform operation
fadd.h f10, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fadd.h f16, f19, f31, dyn # perform operation
fadd.h f16, f19, f31, rdn # perform operation
fadd.h f16, f19, f31, rmm # perform operation
fadd.h f16, f19, f31, rne # perform operation
fadd.h f16, f19, f31, rtz # perform operation
fadd.h f16, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f1, f18, f6, dyn # perform operation
fadd.h f1, f18, f6, rdn # perform operation
fadd.h f1, f18, f6, rmm # perform operation
fadd.h f1, f18, f6, rne # perform operation
fadd.h f1, f18, f6, rtz # perform operation
fadd.h f1, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fadd.h f28, f15, f1, dyn # perform operation
fadd.h f28, f15, f1, rdn # perform operation
fadd.h f28, f15, f1, rmm # perform operation
fadd.h f28, f15, f1, rne # perform operation
fadd.h f28, f15, f1, rtz # perform operation
fadd.h f28, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fadd.h f28, f23, f30, dyn # perform operation
fadd.h f28, f23, f30, rdn # perform operation
fadd.h f28, f23, f30, rmm # perform operation
fadd.h f28, f23, f30, rne # perform operation
fadd.h f28, f23, f30, rtz # perform operation
fadd.h f28, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fadd.h f29, f6, f3, dyn # perform operation
fadd.h f29, f6, f3, rdn # perform operation
fadd.h f29, f6, f3, rmm # perform operation
fadd.h f29, f6, f3, rne # perform operation
fadd.h f29, f6, f3, rtz # perform operation
fadd.h f29, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fadd.h f21, f11, f22, dyn # perform operation
fadd.h f21, f11, f22, rdn # perform operation
fadd.h f21, f11, f22, rmm # perform operation
fadd.h f21, f11, f22, rne # perform operation
fadd.h f21, f11, f22, rtz # perform operation
fadd.h f21, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fadd.h f25, f18, f21, dyn # perform operation
fadd.h f25, f18, f21, rdn # perform operation
fadd.h f25, f18, f21, rmm # perform operation
fadd.h f25, f18, f21, rne # perform operation
fadd.h f25, f18, f21, rtz # perform operation
fadd.h f25, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fadd.h f19, f16, f20, dyn # perform operation
fadd.h f19, f16, f20, rdn # perform operation
fadd.h f19, f16, f20, rmm # perform operation
fadd.h f19, f16, f20, rne # perform operation
fadd.h f19, f16, f20, rtz # perform operation
fadd.h f19, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fadd.h f31, f7, f2, dyn # perform operation
fadd.h f31, f7, f2, rdn # perform operation
fadd.h f31, f7, f2, rmm # perform operation
fadd.h f31, f7, f2, rne # perform operation
fadd.h f31, f7, f2, rtz # perform operation
fadd.h f31, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fadd.h f25, f14, f2, dyn # perform operation
fadd.h f25, f14, f2, rdn # perform operation
fadd.h f25, f14, f2, rmm # perform operation
fadd.h f25, f14, f2, rne # perform operation
fadd.h f25, f14, f2, rtz # perform operation
fadd.h f25, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fadd.h f27, f3, f26, dyn # perform operation
fadd.h f27, f3, f26, rdn # perform operation
fadd.h f27, f3, f26, rmm # perform operation
fadd.h f27, f3, f26, rne # perform operation
fadd.h f27, f3, f26, rtz # perform operation
fadd.h f27, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fadd.h f6, f21, f23, dyn # perform operation
fadd.h f6, f21, f23, rdn # perform operation
fadd.h f6, f21, f23, rmm # perform operation
fadd.h f6, f21, f23, rne # perform operation
fadd.h f6, f21, f23, rtz # perform operation
fadd.h f6, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fadd.h f15, f30, f9, dyn # perform operation
fadd.h f15, f30, f9, rdn # perform operation
fadd.h f15, f30, f9, rmm # perform operation
fadd.h f15, f30, f9, rne # perform operation
fadd.h f15, f30, f9, rtz # perform operation
fadd.h f15, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fadd.h f6, f7, f15, dyn # perform operation
fadd.h f6, f7, f15, rdn # perform operation
fadd.h f6, f7, f15, rmm # perform operation
fadd.h f6, f7, f15, rne # perform operation
fadd.h f6, f7, f15, rtz # perform operation
fadd.h f6, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fadd.h f9, f31, f12, dyn # perform operation
fadd.h f9, f31, f12, rdn # perform operation
fadd.h f9, f31, f12, rmm # perform operation
fadd.h f9, f31, f12, rne # perform operation
fadd.h f9, f31, f12, rtz # perform operation
fadd.h f9, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fadd.h f23, f10, f29, dyn # perform operation
fadd.h f23, f10, f29, rdn # perform operation
fadd.h f23, f10, f29, rmm # perform operation
fadd.h f23, f10, f29, rne # perform operation
fadd.h f23, f10, f29, rtz # perform operation
fadd.h f23, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fadd.h f1, f11, f16, dyn # perform operation
fadd.h f1, f11, f16, rdn # perform operation
fadd.h f1, f11, f16, rmm # perform operation
fadd.h f1, f11, f16, rne # perform operation
fadd.h f1, f11, f16, rtz # perform operation
fadd.h f1, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
fadd.h f18, f17, f14, dyn # perform operation
fadd.h f18, f17, f14, rdn # perform operation
fadd.h f18, f17, f14, rmm # perform operation
fadd.h f18, f17, f14, rne # perform operation
fadd.h f18, f17, f14, rtz # perform operation
fadd.h f18, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fadd.h f28, f21, f3, dyn # perform operation
fadd.h f28, f21, f3, rdn # perform operation
fadd.h f28, f21, f3, rmm # perform operation
fadd.h f28, f21, f3, rne # perform operation
fadd.h f28, f21, f3, rtz # perform operation
fadd.h f28, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fadd.h f11, f10, f23, dyn # perform operation
fadd.h f11, f10, f23, rdn # perform operation
fadd.h f11, f10, f23, rmm # perform operation
fadd.h f11, f10, f23, rne # perform operation
fadd.h f11, f10, f23, rtz # perform operation
fadd.h f11, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
fadd.h f12, f5, f2, dyn # perform operation
fadd.h f12, f5, f2, rdn # perform operation
fadd.h f12, f5, f2, rmm # perform operation
fadd.h f12, f5, f2, rne # perform operation
fadd.h f12, f5, f2, rtz # perform operation
fadd.h f12, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fadd.h f17, f23, f5, dyn # perform operation
fadd.h f17, f23, f5, rdn # perform operation
fadd.h f17, f23, f5, rmm # perform operation
fadd.h f17, f23, f5, rne # perform operation
fadd.h f17, f23, f5, rtz # perform operation
fadd.h f17, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fadd.h f6, f14, f12, dyn # perform operation
fadd.h f6, f14, f12, rdn # perform operation
fadd.h f6, f14, f12, rmm # perform operation
fadd.h f6, f14, f12, rne # perform operation
fadd.h f6, f14, f12, rtz # perform operation
fadd.h f6, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fadd.h f5, f18, f24, dyn # perform operation
fadd.h f5, f18, f24, rdn # perform operation
fadd.h f5, f18, f24, rmm # perform operation
fadd.h f5, f18, f24, rne # perform operation
fadd.h f5, f18, f24, rtz # perform operation
fadd.h f5, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fadd.h f7, f26, f27, dyn # perform operation
fadd.h f7, f26, f27, rdn # perform operation
fadd.h f7, f26, f27, rmm # perform operation
fadd.h f7, f26, f27, rne # perform operation
fadd.h f7, f26, f27, rtz # perform operation
fadd.h f7, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fadd.h f31, f22, f18, dyn # perform operation
fadd.h f31, f22, f18, rdn # perform operation
fadd.h f31, f22, f18, rmm # perform operation
fadd.h f31, f22, f18, rne # perform operation
fadd.h f31, f22, f18, rtz # perform operation
fadd.h f31, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fadd.h f16, f25, f26, dyn # perform operation
fadd.h f16, f25, f26, rdn # perform operation
fadd.h f16, f25, f26, rmm # perform operation
fadd.h f16, f25, f26, rne # perform operation
fadd.h f16, f25, f26, rtz # perform operation
fadd.h f16, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fadd.h f16, f1, f13, dyn # perform operation
fadd.h f16, f1, f13, rdn # perform operation
fadd.h f16, f1, f13, rmm # perform operation
fadd.h f16, f1, f13, rne # perform operation
fadd.h f16, f1, f13, rtz # perform operation
fadd.h f16, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fadd.h f24, f5, f20, dyn # perform operation
fadd.h f24, f5, f20, rdn # perform operation
fadd.h f24, f5, f20, rmm # perform operation
fadd.h f24, f5, f20, rne # perform operation
fadd.h f24, f5, f20, rtz # perform operation
fadd.h f24, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fadd.h f14, f8, f16, dyn # perform operation
fadd.h f14, f8, f16, rdn # perform operation
fadd.h f14, f8, f16, rmm # perform operation
fadd.h f14, f8, f16, rne # perform operation
fadd.h f14, f8, f16, rtz # perform operation
fadd.h f14, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fadd.h f22, f17, f9, dyn # perform operation
fadd.h f22, f17, f9, rdn # perform operation
fadd.h f22, f17, f9, rmm # perform operation
fadd.h f22, f17, f9, rne # perform operation
fadd.h f22, f17, f9, rtz # perform operation
fadd.h f22, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fadd.h f22, f1, f8, dyn # perform operation
fadd.h f22, f1, f8, rdn # perform operation
fadd.h f22, f1, f8, rmm # perform operation
fadd.h f22, f1, f8, rne # perform operation
fadd.h f22, f1, f8, rtz # perform operation
fadd.h f22, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f1, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fadd.h f26, f2, f20, dyn # perform operation
fadd.h f26, f2, f20, rdn # perform operation
fadd.h f26, f2, f20, rmm # perform operation
fadd.h f26, f2, f20, rne # perform operation
fadd.h f26, f2, f20, rtz # perform operation
fadd.h f26, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fadd.h f1, f13, f24, dyn # perform operation
fadd.h f1, f13, f24, rdn # perform operation
fadd.h f1, f13, f24, rmm # perform operation
fadd.h f1, f13, f24, rne # perform operation
fadd.h f1, f13, f24, rtz # perform operation
fadd.h f1, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fadd.h f11, f7, f6, dyn # perform operation
fadd.h f11, f7, f6, rdn # perform operation
fadd.h f11, f7, f6, rmm # perform operation
fadd.h f11, f7, f6, rne # perform operation
fadd.h f11, f7, f6, rtz # perform operation
fadd.h f11, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fadd.h f18, f14, f29, dyn # perform operation
fadd.h f18, f14, f29, rdn # perform operation
fadd.h f18, f14, f29, rmm # perform operation
fadd.h f18, f14, f29, rne # perform operation
fadd.h f18, f14, f29, rtz # perform operation
fadd.h f18, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f30, f14, f18, dyn # perform operation
fadd.h f30, f14, f18, rdn # perform operation
fadd.h f30, f14, f18, rmm # perform operation
fadd.h f30, f14, f18, rne # perform operation
fadd.h f30, f14, f18, rtz # perform operation
fadd.h f30, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fadd.h f24, f8, f27, dyn # perform operation
fadd.h f24, f8, f27, rdn # perform operation
fadd.h f24, f8, f27, rmm # perform operation
fadd.h f24, f8, f27, rne # perform operation
fadd.h f24, f8, f27, rtz # perform operation
fadd.h f24, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fadd.h f7, f23, f13, dyn # perform operation
fadd.h f7, f23, f13, rdn # perform operation
fadd.h f7, f23, f13, rmm # perform operation
fadd.h f7, f23, f13, rne # perform operation
fadd.h f7, f23, f13, rtz # perform operation
fadd.h f7, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fadd.h f10, f2, f16, dyn # perform operation
fadd.h f10, f2, f16, rdn # perform operation
fadd.h f10, f2, f16, rmm # perform operation
fadd.h f10, f2, f16, rne # perform operation
fadd.h f10, f2, f16, rtz # perform operation
fadd.h f10, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fadd.h f3, f15, f8, dyn # perform operation
fadd.h f3, f15, f8, rdn # perform operation
fadd.h f3, f15, f8, rmm # perform operation
fadd.h f3, f15, f8, rne # perform operation
fadd.h f3, f15, f8, rtz # perform operation
fadd.h f3, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fadd.h f24, f3, f6, dyn # perform operation
fadd.h f24, f3, f6, rdn # perform operation
fadd.h f24, f3, f6, rmm # perform operation
fadd.h f24, f3, f6, rne # perform operation
fadd.h f24, f3, f6, rtz # perform operation
fadd.h f24, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fadd.h f30, f26, f14, dyn # perform operation
fadd.h f30, f26, f14, rdn # perform operation
fadd.h f30, f26, f14, rmm # perform operation
fadd.h f30, f26, f14, rne # perform operation
fadd.h f30, f26, f14, rtz # perform operation
fadd.h f30, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fadd.h f21, f1, f2, dyn # perform operation
fadd.h f21, f1, f2, rdn # perform operation
fadd.h f21, f1, f2, rmm # perform operation
fadd.h f21, f1, f2, rne # perform operation
fadd.h f21, f1, f2, rtz # perform operation
fadd.h f21, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fadd.h f16, f13, f18, dyn # perform operation
fadd.h f16, f13, f18, rdn # perform operation
fadd.h f16, f13, f18, rmm # perform operation
fadd.h f16, f13, f18, rne # perform operation
fadd.h f16, f13, f18, rtz # perform operation
fadd.h f16, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fadd.h f5, f15, f18, dyn # perform operation
fadd.h f5, f15, f18, rdn # perform operation
fadd.h f5, f15, f18, rmm # perform operation
fadd.h f5, f15, f18, rne # perform operation
fadd.h f5, f15, f18, rtz # perform operation
fadd.h f5, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fadd.h f20, f15, f26, dyn # perform operation
fadd.h f20, f15, f26, rdn # perform operation
fadd.h f20, f15, f26, rmm # perform operation
fadd.h f20, f15, f26, rne # perform operation
fadd.h f20, f15, f26, rtz # perform operation
fadd.h f20, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fadd.h f16, f27, f12, dyn # perform operation
fadd.h f16, f27, f12, rdn # perform operation
fadd.h f16, f27, f12, rmm # perform operation
fadd.h f16, f27, f12, rne # perform operation
fadd.h f16, f27, f12, rtz # perform operation
fadd.h f16, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fadd.h f5, f21, f27, dyn # perform operation
fadd.h f5, f21, f27, rdn # perform operation
fadd.h f5, f21, f27, rmm # perform operation
fadd.h f5, f21, f27, rne # perform operation
fadd.h f5, f21, f27, rtz # perform operation
fadd.h f5, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fadd.h f20, f12, f15, dyn # perform operation
fadd.h f20, f12, f15, rdn # perform operation
fadd.h f20, f12, f15, rmm # perform operation
fadd.h f20, f12, f15, rne # perform operation
fadd.h f20, f12, f15, rtz # perform operation
fadd.h f20, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fadd.h f24, f13, f26, dyn # perform operation
fadd.h f24, f13, f26, rdn # perform operation
fadd.h f24, f13, f26, rmm # perform operation
fadd.h f24, f13, f26, rne # perform operation
fadd.h f24, f13, f26, rtz # perform operation
fadd.h f24, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fadd.h f19, f24, f1, dyn # perform operation
fadd.h f19, f24, f1, rdn # perform operation
fadd.h f19, f24, f1, rmm # perform operation
fadd.h f19, f24, f1, rne # perform operation
fadd.h f19, f24, f1, rtz # perform operation
fadd.h f19, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fadd.h f20, f15, f7, dyn # perform operation
fadd.h f20, f15, f7, rdn # perform operation
fadd.h f20, f15, f7, rmm # perform operation
fadd.h f20, f15, f7, rne # perform operation
fadd.h f20, f15, f7, rtz # perform operation
fadd.h f20, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fadd.h f22, f25, f1, dyn # perform operation
fadd.h f22, f25, f1, rdn # perform operation
fadd.h f22, f25, f1, rmm # perform operation
fadd.h f22, f25, f1, rne # perform operation
fadd.h f22, f25, f1, rtz # perform operation
fadd.h f22, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f3, f7, f18, dyn # perform operation
fadd.h f3, f7, f18, rdn # perform operation
fadd.h f3, f7, f18, rmm # perform operation
fadd.h f3, f7, f18, rne # perform operation
fadd.h f3, f7, f18, rtz # perform operation
fadd.h f3, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fadd.h f29, f17, f22, dyn # perform operation
fadd.h f29, f17, f22, rdn # perform operation
fadd.h f29, f17, f22, rmm # perform operation
fadd.h f29, f17, f22, rne # perform operation
fadd.h f29, f17, f22, rtz # perform operation
fadd.h f29, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fadd.h f1, f28, f17, dyn # perform operation
fadd.h f1, f28, f17, rdn # perform operation
fadd.h f1, f28, f17, rmm # perform operation
fadd.h f1, f28, f17, rne # perform operation
fadd.h f1, f28, f17, rtz # perform operation
fadd.h f1, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fadd.h f9, f10, f2, dyn # perform operation
fadd.h f9, f10, f2, rdn # perform operation
fadd.h f9, f10, f2, rmm # perform operation
fadd.h f9, f10, f2, rne # perform operation
fadd.h f9, f10, f2, rtz # perform operation
fadd.h f9, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fadd.h f27, f22, f17, dyn # perform operation
fadd.h f27, f22, f17, rdn # perform operation
fadd.h f27, f22, f17, rmm # perform operation
fadd.h f27, f22, f17, rne # perform operation
fadd.h f27, f22, f17, rtz # perform operation
fadd.h f27, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fadd.h f18, f3, f2, dyn # perform operation
fadd.h f18, f3, f2, rdn # perform operation
fadd.h f18, f3, f2, rmm # perform operation
fadd.h f18, f3, f2, rne # perform operation
fadd.h f18, f3, f2, rtz # perform operation
fadd.h f18, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fadd.h f25, f21, f20, dyn # perform operation
fadd.h f25, f21, f20, rdn # perform operation
fadd.h f25, f21, f20, rmm # perform operation
fadd.h f25, f21, f20, rne # perform operation
fadd.h f25, f21, f20, rtz # perform operation
fadd.h f25, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fadd.h f28, f5, f17, dyn # perform operation
fadd.h f28, f5, f17, rdn # perform operation
fadd.h f28, f5, f17, rmm # perform operation
fadd.h f28, f5, f17, rne # perform operation
fadd.h f28, f5, f17, rtz # perform operation
fadd.h f28, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fadd.h f31, f6, f8, dyn # perform operation
fadd.h f31, f6, f8, rdn # perform operation
fadd.h f31, f6, f8, rmm # perform operation
fadd.h f31, f6, f8, rne # perform operation
fadd.h f31, f6, f8, rtz # perform operation
fadd.h f31, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fadd.h f23, f28, f14, dyn # perform operation
fadd.h f23, f28, f14, rdn # perform operation
fadd.h f23, f28, f14, rmm # perform operation
fadd.h f23, f28, f14, rne # perform operation
fadd.h f23, f28, f14, rtz # perform operation
fadd.h f23, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fadd.h f25, f13, f29, dyn # perform operation
fadd.h f25, f13, f29, rdn # perform operation
fadd.h f25, f13, f29, rmm # perform operation
fadd.h f25, f13, f29, rne # perform operation
fadd.h f25, f13, f29, rtz # perform operation
fadd.h f25, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fadd.h f5, f26, f14, dyn # perform operation
fadd.h f5, f26, f14, rdn # perform operation
fadd.h f5, f26, f14, rmm # perform operation
fadd.h f5, f26, f14, rne # perform operation
fadd.h f5, f26, f14, rtz # perform operation
fadd.h f5, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fadd.h f11, f3, f12, dyn # perform operation
fadd.h f11, f3, f12, rdn # perform operation
fadd.h f11, f3, f12, rmm # perform operation
fadd.h f11, f3, f12, rne # perform operation
fadd.h f11, f3, f12, rtz # perform operation
fadd.h f11, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f15, f29, f19, dyn # perform operation
fadd.h f15, f29, f19, rdn # perform operation
fadd.h f15, f29, f19, rmm # perform operation
fadd.h f15, f29, f19, rne # perform operation
fadd.h f15, f29, f19, rtz # perform operation
fadd.h f15, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fadd.h f10, f19, f30, dyn # perform operation
fadd.h f10, f19, f30, rdn # perform operation
fadd.h f10, f19, f30, rmm # perform operation
fadd.h f10, f19, f30, rne # perform operation
fadd.h f10, f19, f30, rtz # perform operation
fadd.h f10, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fadd.h f10, f19, f15, dyn # perform operation
fadd.h f10, f19, f15, rdn # perform operation
fadd.h f10, f19, f15, rmm # perform operation
fadd.h f10, f19, f15, rne # perform operation
fadd.h f10, f19, f15, rtz # perform operation
fadd.h f10, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fadd.h f15, f2, f21, dyn # perform operation
fadd.h f15, f2, f21, rdn # perform operation
fadd.h f15, f2, f21, rmm # perform operation
fadd.h f15, f2, f21, rne # perform operation
fadd.h f15, f2, f21, rtz # perform operation
fadd.h f15, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fadd.h f16, f28, f12, dyn # perform operation
fadd.h f16, f28, f12, rdn # perform operation
fadd.h f16, f28, f12, rmm # perform operation
fadd.h f16, f28, f12, rne # perform operation
fadd.h f16, f28, f12, rtz # perform operation
fadd.h f16, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fadd.h f31, f1, f3, dyn # perform operation
fadd.h f31, f1, f3, rdn # perform operation
fadd.h f31, f1, f3, rmm # perform operation
fadd.h f31, f1, f3, rne # perform operation
fadd.h f31, f1, f3, rtz # perform operation
fadd.h f31, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fadd.h f1, f12, f26, dyn # perform operation
fadd.h f1, f12, f26, rdn # perform operation
fadd.h f1, f12, f26, rmm # perform operation
fadd.h f1, f12, f26, rne # perform operation
fadd.h f1, f12, f26, rtz # perform operation
fadd.h f1, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fadd.h f7, f15, f26, dyn # perform operation
fadd.h f7, f15, f26, rdn # perform operation
fadd.h f7, f15, f26, rmm # perform operation
fadd.h f7, f15, f26, rne # perform operation
fadd.h f7, f15, f26, rtz # perform operation
fadd.h f7, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fadd.h f31, f20, f16, dyn # perform operation
fadd.h f31, f20, f16, rdn # perform operation
fadd.h f31, f20, f16, rmm # perform operation
fadd.h f31, f20, f16, rne # perform operation
fadd.h f31, f20, f16, rtz # perform operation
fadd.h f31, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fadd.h f31, f13, f1, dyn # perform operation
fadd.h f31, f13, f1, rdn # perform operation
fadd.h f31, f13, f1, rmm # perform operation
fadd.h f31, f13, f1, rne # perform operation
fadd.h f31, f13, f1, rtz # perform operation
fadd.h f31, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f13, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fadd.h f29, f14, f9, dyn # perform operation
fadd.h f29, f14, f9, rdn # perform operation
fadd.h f29, f14, f9, rmm # perform operation
fadd.h f29, f14, f9, rne # perform operation
fadd.h f29, f14, f9, rtz # perform operation
fadd.h f29, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fadd.h f10, f29, f18, dyn # perform operation
fadd.h f10, f29, f18, rdn # perform operation
fadd.h f10, f29, f18, rmm # perform operation
fadd.h f10, f29, f18, rne # perform operation
fadd.h f10, f29, f18, rtz # perform operation
fadd.h f10, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fadd.h f15, f11, f30, dyn # perform operation
fadd.h f15, f11, f30, rdn # perform operation
fadd.h f15, f11, f30, rmm # perform operation
fadd.h f15, f11, f30, rne # perform operation
fadd.h f15, f11, f30, rtz # perform operation
fadd.h f15, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f21, f15, f29, dyn # perform operation
fadd.h f21, f15, f29, rdn # perform operation
fadd.h f21, f15, f29, rmm # perform operation
fadd.h f21, f15, f29, rne # perform operation
fadd.h f21, f15, f29, rtz # perform operation
fadd.h f21, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fadd.h f1, f28, f29, dyn # perform operation
fadd.h f1, f28, f29, rdn # perform operation
fadd.h f1, f28, f29, rmm # perform operation
fadd.h f1, f28, f29, rne # perform operation
fadd.h f1, f28, f29, rtz # perform operation
fadd.h f1, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fadd.h f10, f9, f15, dyn # perform operation
fadd.h f10, f9, f15, rdn # perform operation
fadd.h f10, f9, f15, rmm # perform operation
fadd.h f10, f9, f15, rne # perform operation
fadd.h f10, f9, f15, rtz # perform operation
fadd.h f10, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fadd.h f8, f27, f2, dyn # perform operation
fadd.h f8, f27, f2, rdn # perform operation
fadd.h f8, f27, f2, rmm # perform operation
fadd.h f8, f27, f2, rne # perform operation
fadd.h f8, f27, f2, rtz # perform operation
fadd.h f8, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fadd.h f18, f19, f25, dyn # perform operation
fadd.h f18, f19, f25, rdn # perform operation
fadd.h f18, f19, f25, rmm # perform operation
fadd.h f18, f19, f25, rne # perform operation
fadd.h f18, f19, f25, rtz # perform operation
fadd.h f18, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f5, f19, f6, dyn # perform operation
fadd.h f5, f19, f6, rdn # perform operation
fadd.h f5, f19, f6, rmm # perform operation
fadd.h f5, f19, f6, rne # perform operation
fadd.h f5, f19, f6, rtz # perform operation
fadd.h f5, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fadd.h f22, f9, f20, dyn # perform operation
fadd.h f22, f9, f20, rdn # perform operation
fadd.h f22, f9, f20, rmm # perform operation
fadd.h f22, f9, f20, rne # perform operation
fadd.h f22, f9, f20, rtz # perform operation
fadd.h f22, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fadd.h f17, f22, f7, dyn # perform operation
fadd.h f17, f22, f7, rdn # perform operation
fadd.h f17, f22, f7, rmm # perform operation
fadd.h f17, f22, f7, rne # perform operation
fadd.h f17, f22, f7, rtz # perform operation
fadd.h f17, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f19, f11, f1, dyn # perform operation
fadd.h f19, f11, f1, rdn # perform operation
fadd.h f19, f11, f1, rmm # perform operation
fadd.h f19, f11, f1, rne # perform operation
fadd.h f19, f11, f1, rtz # perform operation
fadd.h f19, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fadd.h f27, f13, f6, dyn # perform operation
fadd.h f27, f13, f6, rdn # perform operation
fadd.h f27, f13, f6, rmm # perform operation
fadd.h f27, f13, f6, rne # perform operation
fadd.h f27, f13, f6, rtz # perform operation
fadd.h f27, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fadd.h f19, f27, f8, dyn # perform operation
fadd.h f19, f27, f8, rdn # perform operation
fadd.h f19, f27, f8, rmm # perform operation
fadd.h f19, f27, f8, rne # perform operation
fadd.h f19, f27, f8, rtz # perform operation
fadd.h f19, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fadd.h f22, f31, f19, dyn # perform operation
fadd.h f22, f31, f19, rdn # perform operation
fadd.h f22, f31, f19, rmm # perform operation
fadd.h f22, f31, f19, rne # perform operation
fadd.h f22, f31, f19, rtz # perform operation
fadd.h f22, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fadd.h f11, f2, f27, dyn # perform operation
fadd.h f11, f2, f27, rdn # perform operation
fadd.h f11, f2, f27, rmm # perform operation
fadd.h f11, f2, f27, rne # perform operation
fadd.h f11, f2, f27, rtz # perform operation
fadd.h f11, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fadd.h f12, f28, f22, dyn # perform operation
fadd.h f12, f28, f22, rdn # perform operation
fadd.h f12, f28, f22, rmm # perform operation
fadd.h f12, f28, f22, rne # perform operation
fadd.h f12, f28, f22, rtz # perform operation
fadd.h f12, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f28, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fadd.h f7, f1, f27, dyn # perform operation
fadd.h f7, f1, f27, rdn # perform operation
fadd.h f7, f1, f27, rmm # perform operation
fadd.h f7, f1, f27, rne # perform operation
fadd.h f7, f1, f27, rtz # perform operation
fadd.h f7, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fadd.h f26, f6, f25, dyn # perform operation
fadd.h f26, f6, f25, rdn # perform operation
fadd.h f26, f6, f25, rmm # perform operation
fadd.h f26, f6, f25, rne # perform operation
fadd.h f26, f6, f25, rtz # perform operation
fadd.h f26, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fadd.h f12, f15, f31, dyn # perform operation
fadd.h f12, f15, f31, rdn # perform operation
fadd.h f12, f15, f31, rmm # perform operation
fadd.h f12, f15, f31, rne # perform operation
fadd.h f12, f15, f31, rtz # perform operation
fadd.h f12, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fadd.h f29, f31, f22, dyn # perform operation
fadd.h f29, f31, f22, rdn # perform operation
fadd.h f29, f31, f22, rmm # perform operation
fadd.h f29, f31, f22, rne # perform operation
fadd.h f29, f31, f22, rtz # perform operation
fadd.h f29, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fadd.h f3, f19, f12, dyn # perform operation
fadd.h f3, f19, f12, rdn # perform operation
fadd.h f3, f19, f12, rmm # perform operation
fadd.h f3, f19, f12, rne # perform operation
fadd.h f3, f19, f12, rtz # perform operation
fadd.h f3, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fadd.h f20, f16, f21, dyn # perform operation
fadd.h f20, f16, f21, rdn # perform operation
fadd.h f20, f16, f21, rmm # perform operation
fadd.h f20, f16, f21, rne # perform operation
fadd.h f20, f16, f21, rtz # perform operation
fadd.h f20, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fadd.h f12, f2, f22, dyn # perform operation
fadd.h f12, f2, f22, rdn # perform operation
fadd.h f12, f2, f22, rmm # perform operation
fadd.h f12, f2, f22, rne # perform operation
fadd.h f12, f2, f22, rtz # perform operation
fadd.h f12, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
fadd.h f18, f10, f24, dyn # perform operation
fadd.h f18, f10, f24, rdn # perform operation
fadd.h f18, f10, f24, rmm # perform operation
fadd.h f18, f10, f24, rne # perform operation
fadd.h f18, f10, f24, rtz # perform operation
fadd.h f18, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fadd.h f28, f21, f13, dyn # perform operation
fadd.h f28, f21, f13, rdn # perform operation
fadd.h f28, f21, f13, rmm # perform operation
fadd.h f28, f21, f13, rne # perform operation
fadd.h f28, f21, f13, rtz # perform operation
fadd.h f28, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fadd.h f14, f5, f26, dyn # perform operation
fadd.h f14, f5, f26, rdn # perform operation
fadd.h f14, f5, f26, rmm # perform operation
fadd.h f14, f5, f26, rne # perform operation
fadd.h f14, f5, f26, rtz # perform operation
fadd.h f14, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f5, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
fadd.h f25, f26, f13, dyn # perform operation
fadd.h f25, f26, f13, rdn # perform operation
fadd.h f25, f26, f13, rmm # perform operation
fadd.h f25, f26, f13, rne # perform operation
fadd.h f25, f26, f13, rtz # perform operation
fadd.h f25, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fadd.h f6, f17, f25, dyn # perform operation
fadd.h f6, f17, f25, rdn # perform operation
fadd.h f6, f17, f25, rmm # perform operation
fadd.h f6, f17, f25, rne # perform operation
fadd.h f6, f17, f25, rtz # perform operation
fadd.h f6, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fadd.h f27, f9, f11, dyn # perform operation
fadd.h f27, f9, f11, rdn # perform operation
fadd.h f27, f9, f11, rmm # perform operation
fadd.h f27, f9, f11, rne # perform operation
fadd.h f27, f9, f11, rtz # perform operation
fadd.h f27, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fadd.h f29, f28, f25, dyn # perform operation
fadd.h f29, f28, f25, rdn # perform operation
fadd.h f29, f28, f25, rmm # perform operation
fadd.h f29, f28, f25, rne # perform operation
fadd.h f29, f28, f25, rtz # perform operation
fadd.h f29, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fadd.h f25, f15, f2, dyn # perform operation
fadd.h f25, f15, f2, rdn # perform operation
fadd.h f25, f15, f2, rmm # perform operation
fadd.h f25, f15, f2, rne # perform operation
fadd.h f25, f15, f2, rtz # perform operation
fadd.h f25, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fadd.h f30, f10, f14, dyn # perform operation
fadd.h f30, f10, f14, rdn # perform operation
fadd.h f30, f10, f14, rmm # perform operation
fadd.h f30, f10, f14, rne # perform operation
fadd.h f30, f10, f14, rtz # perform operation
fadd.h f30, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fadd.h f6, f17, f2, dyn # perform operation
fadd.h f6, f17, f2, rdn # perform operation
fadd.h f6, f17, f2, rmm # perform operation
fadd.h f6, f17, f2, rne # perform operation
fadd.h f6, f17, f2, rtz # perform operation
fadd.h f6, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fadd.h f27, f13, f30, dyn # perform operation
fadd.h f27, f13, f30, rdn # perform operation
fadd.h f27, f13, f30, rmm # perform operation
fadd.h f27, f13, f30, rne # perform operation
fadd.h f27, f13, f30, rtz # perform operation
fadd.h f27, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fadd.h f19, f27, f10, dyn # perform operation
fadd.h f19, f27, f10, rdn # perform operation
fadd.h f19, f27, f10, rmm # perform operation
fadd.h f19, f27, f10, rne # perform operation
fadd.h f19, f27, f10, rtz # perform operation
fadd.h f19, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fadd.h f16, f8, f29, dyn # perform operation
fadd.h f16, f8, f29, rdn # perform operation
fadd.h f16, f8, f29, rmm # perform operation
fadd.h f16, f8, f29, rne # perform operation
fadd.h f16, f8, f29, rtz # perform operation
fadd.h f16, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fadd.h f18, f10, f27, dyn # perform operation
fadd.h f18, f10, f27, rdn # perform operation
fadd.h f18, f10, f27, rmm # perform operation
fadd.h f18, f10, f27, rne # perform operation
fadd.h f18, f10, f27, rtz # perform operation
fadd.h f18, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fadd.h f11, f5, f25, dyn # perform operation
fadd.h f11, f5, f25, rdn # perform operation
fadd.h f11, f5, f25, rmm # perform operation
fadd.h f11, f5, f25, rne # perform operation
fadd.h f11, f5, f25, rtz # perform operation
fadd.h f11, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fadd.h f15, f8, f5, dyn # perform operation
fadd.h f15, f8, f5, rdn # perform operation
fadd.h f15, f8, f5, rmm # perform operation
fadd.h f15, f8, f5, rne # perform operation
fadd.h f15, f8, f5, rtz # perform operation
fadd.h f15, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fadd.h f28, f30, f12, dyn # perform operation
fadd.h f28, f30, f12, rdn # perform operation
fadd.h f28, f30, f12, rmm # perform operation
fadd.h f28, f30, f12, rne # perform operation
fadd.h f28, f30, f12, rtz # perform operation
fadd.h f28, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fadd.h f27, f18, f25, dyn # perform operation
fadd.h f27, f18, f25, rdn # perform operation
fadd.h f27, f18, f25, rmm # perform operation
fadd.h f27, f18, f25, rne # perform operation
fadd.h f27, f18, f25, rtz # perform operation
fadd.h f27, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f18, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fadd.h f2, f19, f31, dyn # perform operation
fadd.h f2, f19, f31, rdn # perform operation
fadd.h f2, f19, f31, rmm # perform operation
fadd.h f2, f19, f31, rne # perform operation
fadd.h f2, f19, f31, rtz # perform operation
fadd.h f2, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fadd.h f5, f12, f19, dyn # perform operation
fadd.h f5, f12, f19, rdn # perform operation
fadd.h f5, f12, f19, rmm # perform operation
fadd.h f5, f12, f19, rne # perform operation
fadd.h f5, f12, f19, rtz # perform operation
fadd.h f5, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fadd.h f3, f30, f8, dyn # perform operation
fadd.h f3, f30, f8, rdn # perform operation
fadd.h f3, f30, f8, rmm # perform operation
fadd.h f3, f30, f8, rne # perform operation
fadd.h f3, f30, f8, rtz # perform operation
fadd.h f3, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fadd.h f11, f18, f20, dyn # perform operation
fadd.h f11, f18, f20, rdn # perform operation
fadd.h f11, f18, f20, rmm # perform operation
fadd.h f11, f18, f20, rne # perform operation
fadd.h f11, f18, f20, rtz # perform operation
fadd.h f11, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f18, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fadd.h f29, f26, f13, dyn # perform operation
fadd.h f29, f26, f13, rdn # perform operation
fadd.h f29, f26, f13, rmm # perform operation
fadd.h f29, f26, f13, rne # perform operation
fadd.h f29, f26, f13, rtz # perform operation
fadd.h f29, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fadd.h f29, f11, f27, dyn # perform operation
fadd.h f29, f11, f27, rdn # perform operation
fadd.h f29, f11, f27, rmm # perform operation
fadd.h f29, f11, f27, rne # perform operation
fadd.h f29, f11, f27, rtz # perform operation
fadd.h f29, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fadd.h f7, f12, f18, dyn # perform operation
fadd.h f7, f12, f18, rdn # perform operation
fadd.h f7, f12, f18, rmm # perform operation
fadd.h f7, f12, f18, rne # perform operation
fadd.h f7, f12, f18, rtz # perform operation
fadd.h f7, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fadd.h f2, f16, f20, dyn # perform operation
fadd.h f2, f16, f20, rdn # perform operation
fadd.h f2, f16, f20, rmm # perform operation
fadd.h f2, f16, f20, rne # perform operation
fadd.h f2, f16, f20, rtz # perform operation
fadd.h f2, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fadd.h f19, f10, f18, dyn # perform operation
fadd.h f19, f10, f18, rdn # perform operation
fadd.h f19, f10, f18, rmm # perform operation
fadd.h f19, f10, f18, rne # perform operation
fadd.h f19, f10, f18, rtz # perform operation
fadd.h f19, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fadd.h f3, f17, f24, dyn # perform operation
fadd.h f3, f17, f24, rdn # perform operation
fadd.h f3, f17, f24, rmm # perform operation
fadd.h f3, f17, f24, rne # perform operation
fadd.h f3, f17, f24, rtz # perform operation
fadd.h f3, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fadd.h f1, f18, f16, dyn # perform operation
fadd.h f1, f18, f16, rdn # perform operation
fadd.h f1, f18, f16, rmm # perform operation
fadd.h f1, f18, f16, rne # perform operation
fadd.h f1, f18, f16, rtz # perform operation
fadd.h f1, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fadd.h f26, f19, f30, dyn # perform operation
fadd.h f26, f19, f30, rdn # perform operation
fadd.h f26, f19, f30, rmm # perform operation
fadd.h f26, f19, f30, rne # perform operation
fadd.h f26, f19, f30, rtz # perform operation
fadd.h f26, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fadd.h f15, f18, f30, dyn # perform operation
fadd.h f15, f18, f30, rdn # perform operation
fadd.h f15, f18, f30, rmm # perform operation
fadd.h f15, f18, f30, rne # perform operation
fadd.h f15, f18, f30, rtz # perform operation
fadd.h f15, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fadd.h f3, f22, f7, dyn # perform operation
fadd.h f3, f22, f7, rdn # perform operation
fadd.h f3, f22, f7, rmm # perform operation
fadd.h f3, f22, f7, rne # perform operation
fadd.h f3, f22, f7, rtz # perform operation
fadd.h f3, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f24, f19, f8, dyn # perform operation
fadd.h f24, f19, f8, rdn # perform operation
fadd.h f24, f19, f8, rmm # perform operation
fadd.h f24, f19, f8, rne # perform operation
fadd.h f24, f19, f8, rtz # perform operation
fadd.h f24, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fadd.h f30, f25, f27, dyn # perform operation
fadd.h f30, f25, f27, rdn # perform operation
fadd.h f30, f25, f27, rmm # perform operation
fadd.h f30, f25, f27, rne # perform operation
fadd.h f30, f25, f27, rtz # perform operation
fadd.h f30, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fadd.h f25, f12, f30, dyn # perform operation
fadd.h f25, f12, f30, rdn # perform operation
fadd.h f25, f12, f30, rmm # perform operation
fadd.h f25, f12, f30, rne # perform operation
fadd.h f25, f12, f30, rtz # perform operation
fadd.h f25, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f12, f2, f29, dyn # perform operation
fadd.h f12, f2, f29, rdn # perform operation
fadd.h f12, f2, f29, rmm # perform operation
fadd.h f12, f2, f29, rne # perform operation
fadd.h f12, f2, f29, rtz # perform operation
fadd.h f12, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fadd.h f17, f3, f2, dyn # perform operation
fadd.h f17, f3, f2, rdn # perform operation
fadd.h f17, f3, f2, rmm # perform operation
fadd.h f17, f3, f2, rne # perform operation
fadd.h f17, f3, f2, rtz # perform operation
fadd.h f17, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fadd.h f24, f27, f20, dyn # perform operation
fadd.h f24, f27, f20, rdn # perform operation
fadd.h f24, f27, f20, rmm # perform operation
fadd.h f24, f27, f20, rne # perform operation
fadd.h f24, f27, f20, rtz # perform operation
fadd.h f24, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f29, 0(x2) # load 0x0000fe00 from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fadd.h f22, f29, f30, dyn # perform operation
fadd.h f22, f29, f30, rdn # perform operation
fadd.h f22, f29, f30, rmm # perform operation
fadd.h f22, f29, f30, rne # perform operation
fadd.h f22, f29, f30, rtz # perform operation
fadd.h f22, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fadd.h f3, f14, f13, dyn # perform operation
fadd.h f3, f14, f13, rdn # perform operation
fadd.h f3, f14, f13, rmm # perform operation
fadd.h f3, f14, f13, rne # perform operation
fadd.h f3, f14, f13, rtz # perform operation
fadd.h f3, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fadd.h f7, f20, f15, dyn # perform operation
fadd.h f7, f20, f15, rdn # perform operation
fadd.h f7, f20, f15, rmm # perform operation
fadd.h f7, f20, f15, rne # perform operation
fadd.h f7, f20, f15, rtz # perform operation
fadd.h f7, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fadd.h f30, f14, f1, dyn # perform operation
fadd.h f30, f14, f1, rdn # perform operation
fadd.h f30, f14, f1, rmm # perform operation
fadd.h f30, f14, f1, rne # perform operation
fadd.h f30, f14, f1, rtz # perform operation
fadd.h f30, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fadd.h f30, f19, f15, dyn # perform operation
fadd.h f30, f19, f15, rdn # perform operation
fadd.h f30, f19, f15, rmm # perform operation
fadd.h f30, f19, f15, rne # perform operation
fadd.h f30, f19, f15, rtz # perform operation
fadd.h f30, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fadd.h f16, f20, f13, dyn # perform operation
fadd.h f16, f20, f13, rdn # perform operation
fadd.h f16, f20, f13, rmm # perform operation
fadd.h f16, f20, f13, rne # perform operation
fadd.h f16, f20, f13, rtz # perform operation
fadd.h f16, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fadd.h f7, f10, f21, dyn # perform operation
fadd.h f7, f10, f21, rdn # perform operation
fadd.h f7, f10, f21, rmm # perform operation
fadd.h f7, f10, f21, rne # perform operation
fadd.h f7, f10, f21, rtz # perform operation
fadd.h f7, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fadd.h f21, f23, f14, dyn # perform operation
fadd.h f21, f23, f14, rdn # perform operation
fadd.h f21, f23, f14, rmm # perform operation
fadd.h f21, f23, f14, rne # perform operation
fadd.h f21, f23, f14, rtz # perform operation
fadd.h f21, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fadd.h f29, f17, f6, dyn # perform operation
fadd.h f29, f17, f6, rdn # perform operation
fadd.h f29, f17, f6, rmm # perform operation
fadd.h f29, f17, f6, rne # perform operation
fadd.h f29, f17, f6, rtz # perform operation
fadd.h f29, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fadd.h f22, f15, f24, dyn # perform operation
fadd.h f22, f15, f24, rdn # perform operation
fadd.h f22, f15, f24, rmm # perform operation
fadd.h f22, f15, f24, rne # perform operation
fadd.h f22, f15, f24, rtz # perform operation
fadd.h f22, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fadd.h f20, f17, f5, dyn # perform operation
fadd.h f20, f17, f5, rdn # perform operation
fadd.h f20, f17, f5, rmm # perform operation
fadd.h f20, f17, f5, rne # perform operation
fadd.h f20, f17, f5, rtz # perform operation
fadd.h f20, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fadd.h f21, f25, f6, dyn # perform operation
fadd.h f21, f25, f6, rdn # perform operation
fadd.h f21, f25, f6, rmm # perform operation
fadd.h f21, f25, f6, rne # perform operation
fadd.h f21, f25, f6, rtz # perform operation
fadd.h f21, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fadd.h f31, f7, f30, dyn # perform operation
fadd.h f31, f7, f30, rdn # perform operation
fadd.h f31, f7, f30, rmm # perform operation
fadd.h f31, f7, f30, rne # perform operation
fadd.h f31, f7, f30, rtz # perform operation
fadd.h f31, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fadd.h f15, f3, f24, dyn # perform operation
fadd.h f15, f3, f24, rdn # perform operation
fadd.h f15, f3, f24, rmm # perform operation
fadd.h f15, f3, f24, rne # perform operation
fadd.h f15, f3, f24, rtz # perform operation
fadd.h f15, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fadd.h f12, f11, f25, dyn # perform operation
fadd.h f12, f11, f25, rdn # perform operation
fadd.h f12, f11, f25, rmm # perform operation
fadd.h f12, f11, f25, rne # perform operation
fadd.h f12, f11, f25, rtz # perform operation
fadd.h f12, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fadd.h f6, f22, f27, dyn # perform operation
fadd.h f6, f22, f27, rdn # perform operation
fadd.h f6, f22, f27, rmm # perform operation
fadd.h f6, f22, f27, rne # perform operation
fadd.h f6, f22, f27, rtz # perform operation
fadd.h f6, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fadd.h f28, f27, f24, dyn # perform operation
fadd.h f28, f27, f24, rdn # perform operation
fadd.h f28, f27, f24, rmm # perform operation
fadd.h f28, f27, f24, rne # perform operation
fadd.h f28, f27, f24, rtz # perform operation
fadd.h f28, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fadd.h f7, f15, f16, dyn # perform operation
fadd.h f7, f15, f16, rdn # perform operation
fadd.h f7, f15, f16, rmm # perform operation
fadd.h f7, f15, f16, rne # perform operation
fadd.h f7, f15, f16, rtz # perform operation
fadd.h f7, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
fadd.h f3, f11, f8, dyn # perform operation
fadd.h f3, f11, f8, rdn # perform operation
fadd.h f3, f11, f8, rmm # perform operation
fadd.h f3, f11, f8, rne # perform operation
fadd.h f3, f11, f8, rtz # perform operation
fadd.h f3, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fadd.h f1, f3, f10, dyn # perform operation
fadd.h f1, f3, f10, rdn # perform operation
fadd.h f1, f3, f10, rmm # perform operation
fadd.h f1, f3, f10, rne # perform operation
fadd.h f1, f3, f10, rtz # perform operation
fadd.h f1, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fadd.h f30, f13, f17, dyn # perform operation
fadd.h f30, f13, f17, rdn # perform operation
fadd.h f30, f13, f17, rmm # perform operation
fadd.h f30, f13, f17, rne # perform operation
fadd.h f30, f13, f17, rtz # perform operation
fadd.h f30, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
fadd.h f17, f28, f26, dyn # perform operation
fadd.h f17, f28, f26, rdn # perform operation
fadd.h f17, f28, f26, rmm # perform operation
fadd.h f17, f28, f26, rne # perform operation
fadd.h f17, f28, f26, rtz # perform operation
fadd.h f17, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fadd.h f9, f15, f10, dyn # perform operation
fadd.h f9, f15, f10, rdn # perform operation
fadd.h f9, f15, f10, rmm # perform operation
fadd.h f9, f15, f10, rne # perform operation
fadd.h f9, f15, f10, rtz # perform operation
fadd.h f9, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fadd.h f30, f28, f23, dyn # perform operation
fadd.h f30, f28, f23, rdn # perform operation
fadd.h f30, f28, f23, rmm # perform operation
fadd.h f30, f28, f23, rne # perform operation
fadd.h f30, f28, f23, rtz # perform operation
fadd.h f30, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fadd.h f8, f16, f27, dyn # perform operation
fadd.h f8, f16, f27, rdn # perform operation
fadd.h f8, f16, f27, rmm # perform operation
fadd.h f8, f16, f27, rne # perform operation
fadd.h f8, f16, f27, rtz # perform operation
fadd.h f8, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fadd.h f2, f13, f25, dyn # perform operation
fadd.h f2, f13, f25, rdn # perform operation
fadd.h f2, f13, f25, rmm # perform operation
fadd.h f2, f13, f25, rne # perform operation
fadd.h f2, f13, f25, rtz # perform operation
fadd.h f2, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fadd.h f6, f9, f5, dyn # perform operation
fadd.h f6, f9, f5, rdn # perform operation
fadd.h f6, f9, f5, rmm # perform operation
fadd.h f6, f9, f5, rne # perform operation
fadd.h f6, f9, f5, rtz # perform operation
fadd.h f6, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fadd.h f25, f14, f7, dyn # perform operation
fadd.h f25, f14, f7, rdn # perform operation
fadd.h f25, f14, f7, rmm # perform operation
fadd.h f25, f14, f7, rne # perform operation
fadd.h f25, f14, f7, rtz # perform operation
fadd.h f25, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fadd.h f6, f21, f25, dyn # perform operation
fadd.h f6, f21, f25, rdn # perform operation
fadd.h f6, f21, f25, rmm # perform operation
fadd.h f6, f21, f25, rne # perform operation
fadd.h f6, f21, f25, rtz # perform operation
fadd.h f6, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fadd.h f7, f26, f10, dyn # perform operation
fadd.h f7, f26, f10, rdn # perform operation
fadd.h f7, f26, f10, rmm # perform operation
fadd.h f7, f26, f10, rne # perform operation
fadd.h f7, f26, f10, rtz # perform operation
fadd.h f7, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fadd.h f2, f21, f25, dyn # perform operation
fadd.h f2, f21, f25, rdn # perform operation
fadd.h f2, f21, f25, rmm # perform operation
fadd.h f2, f21, f25, rne # perform operation
fadd.h f2, f21, f25, rtz # perform operation
fadd.h f2, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fadd.h f18, f19, f21, dyn # perform operation
fadd.h f18, f19, f21, rdn # perform operation
fadd.h f18, f19, f21, rmm # perform operation
fadd.h f18, f19, f21, rne # perform operation
fadd.h f18, f19, f21, rtz # perform operation
fadd.h f18, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fadd.h f22, f23, f6, dyn # perform operation
fadd.h f22, f23, f6, rdn # perform operation
fadd.h f22, f23, f6, rmm # perform operation
fadd.h f22, f23, f6, rne # perform operation
fadd.h f22, f23, f6, rtz # perform operation
fadd.h f22, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fadd.h f15, f19, f3, dyn # perform operation
fadd.h f15, f19, f3, rdn # perform operation
fadd.h f15, f19, f3, rmm # perform operation
fadd.h f15, f19, f3, rne # perform operation
fadd.h f15, f19, f3, rtz # perform operation
fadd.h f15, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fadd.h f12, f2, f14, dyn # perform operation
fadd.h f12, f2, f14, rdn # perform operation
fadd.h f12, f2, f14, rmm # perform operation
fadd.h f12, f2, f14, rne # perform operation
fadd.h f12, f2, f14, rtz # perform operation
fadd.h f12, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fadd.h f27, f3, f9, dyn # perform operation
fadd.h f27, f3, f9, rdn # perform operation
fadd.h f27, f3, f9, rmm # perform operation
fadd.h f27, f3, f9, rne # perform operation
fadd.h f27, f3, f9, rtz # perform operation
fadd.h f27, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f3, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fadd.h f17, f18, f31, dyn # perform operation
fadd.h f17, f18, f31, rdn # perform operation
fadd.h f17, f18, f31, rmm # perform operation
fadd.h f17, f18, f31, rne # perform operation
fadd.h f17, f18, f31, rtz # perform operation
fadd.h f17, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fadd.h f22, f14, f30, dyn # perform operation
fadd.h f22, f14, f30, rdn # perform operation
fadd.h f22, f14, f30, rmm # perform operation
fadd.h f22, f14, f30, rne # perform operation
fadd.h f22, f14, f30, rtz # perform operation
fadd.h f22, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fadd.h f27, f30, f16, dyn # perform operation
fadd.h f27, f30, f16, rdn # perform operation
fadd.h f27, f30, f16, rmm # perform operation
fadd.h f27, f30, f16, rne # perform operation
fadd.h f27, f30, f16, rtz # perform operation
fadd.h f27, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fadd.h f26, f8, f15, dyn # perform operation
fadd.h f26, f8, f15, rdn # perform operation
fadd.h f26, f8, f15, rmm # perform operation
fadd.h f26, f8, f15, rne # perform operation
fadd.h f26, f8, f15, rtz # perform operation
fadd.h f26, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fadd.h f22, f16, f25, dyn # perform operation
fadd.h f22, f16, f25, rdn # perform operation
fadd.h f22, f16, f25, rmm # perform operation
fadd.h f22, f16, f25, rne # perform operation
fadd.h f22, f16, f25, rtz # perform operation
fadd.h f22, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fadd.h f26, f29, f30, dyn # perform operation
fadd.h f26, f29, f30, rdn # perform operation
fadd.h f26, f29, f30, rmm # perform operation
fadd.h f26, f29, f30, rne # perform operation
fadd.h f26, f29, f30, rtz # perform operation
fadd.h f26, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fadd.h f17, f12, f25, dyn # perform operation
fadd.h f17, f12, f25, rdn # perform operation
fadd.h f17, f12, f25, rmm # perform operation
fadd.h f17, f12, f25, rne # perform operation
fadd.h f17, f12, f25, rtz # perform operation
fadd.h f17, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fadd.h f15, f6, f7, dyn # perform operation
fadd.h f15, f6, f7, rdn # perform operation
fadd.h f15, f6, f7, rmm # perform operation
fadd.h f15, f6, f7, rne # perform operation
fadd.h f15, f6, f7, rtz # perform operation
fadd.h f15, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fadd.h f26, f27, f24, dyn # perform operation
fadd.h f26, f27, f24, rdn # perform operation
fadd.h f26, f27, f24, rmm # perform operation
fadd.h f26, f27, f24, rne # perform operation
fadd.h f26, f27, f24, rtz # perform operation
fadd.h f26, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fadd.h f29, f28, f12, dyn # perform operation
fadd.h f29, f28, f12, rdn # perform operation
fadd.h f29, f28, f12, rmm # perform operation
fadd.h f29, f28, f12, rne # perform operation
fadd.h f29, f28, f12, rtz # perform operation
fadd.h f29, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fadd.h f21, f6, f26, dyn # perform operation
fadd.h f21, f6, f26, rdn # perform operation
fadd.h f21, f6, f26, rmm # perform operation
fadd.h f21, f6, f26, rne # perform operation
fadd.h f21, f6, f26, rtz # perform operation
fadd.h f21, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fadd.h f1, f13, f14, dyn # perform operation
fadd.h f1, f13, f14, rdn # perform operation
fadd.h f1, f13, f14, rmm # perform operation
fadd.h f1, f13, f14, rne # perform operation
fadd.h f1, f13, f14, rtz # perform operation
fadd.h f1, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fadd.h f31, f28, f24, dyn # perform operation
fadd.h f31, f28, f24, rdn # perform operation
fadd.h f31, f28, f24, rmm # perform operation
fadd.h f31, f28, f24, rne # perform operation
fadd.h f31, f28, f24, rtz # perform operation
fadd.h f31, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
fadd.h f2, f3, f15, dyn # perform operation
fadd.h f2, f3, f15, rdn # perform operation
fadd.h f2, f3, f15, rmm # perform operation
fadd.h f2, f3, f15, rne # perform operation
fadd.h f2, f3, f15, rtz # perform operation
fadd.h f2, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f3, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fadd.h f22, f14, f7, dyn # perform operation
fadd.h f22, f14, f7, rdn # perform operation
fadd.h f22, f14, f7, rmm # perform operation
fadd.h f22, f14, f7, rne # perform operation
fadd.h f22, f14, f7, rtz # perform operation
fadd.h f22, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fadd.h f6, f17, f19, dyn # perform operation
fadd.h f6, f17, f19, rdn # perform operation
fadd.h f6, f17, f19, rmm # perform operation
fadd.h f6, f17, f19, rne # perform operation
fadd.h f6, f17, f19, rtz # perform operation
fadd.h f6, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fadd.h f24, f8, f31, dyn # perform operation
fadd.h f24, f8, f31, rdn # perform operation
fadd.h f24, f8, f31, rmm # perform operation
fadd.h f24, f8, f31, rne # perform operation
fadd.h f24, f8, f31, rtz # perform operation
fadd.h f24, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f12, f23, f29, dyn # perform operation
fadd.h f12, f23, f29, rdn # perform operation
fadd.h f12, f23, f29, rmm # perform operation
fadd.h f12, f23, f29, rne # perform operation
fadd.h f12, f23, f29, rtz # perform operation
fadd.h f12, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fadd.h f18, f24, f28, dyn # perform operation
fadd.h f18, f24, f28, rdn # perform operation
fadd.h f18, f24, f28, rmm # perform operation
fadd.h f18, f24, f28, rne # perform operation
fadd.h f18, f24, f28, rtz # perform operation
fadd.h f18, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fadd.h f23, f26, f15, dyn # perform operation
fadd.h f23, f26, f15, rdn # perform operation
fadd.h f23, f26, f15, rmm # perform operation
fadd.h f23, f26, f15, rne # perform operation
fadd.h f23, f26, f15, rtz # perform operation
fadd.h f23, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fadd.h f3, f12, f17, dyn # perform operation
fadd.h f3, f12, f17, rdn # perform operation
fadd.h f3, f12, f17, rmm # perform operation
fadd.h f3, f12, f17, rne # perform operation
fadd.h f3, f12, f17, rtz # perform operation
fadd.h f3, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fadd.h f7, f5, f23, dyn # perform operation
fadd.h f7, f5, f23, rdn # perform operation
fadd.h f7, f5, f23, rmm # perform operation
fadd.h f7, f5, f23, rne # perform operation
fadd.h f7, f5, f23, rtz # perform operation
fadd.h f7, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fadd.h f31, f8, f3, dyn # perform operation
fadd.h f31, f8, f3, rdn # perform operation
fadd.h f31, f8, f3, rmm # perform operation
fadd.h f31, f8, f3, rne # perform operation
fadd.h f31, f8, f3, rtz # perform operation
fadd.h f31, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fadd.h f16, f24, f8, dyn # perform operation
fadd.h f16, f24, f8, rdn # perform operation
fadd.h f16, f24, f8, rmm # perform operation
fadd.h f16, f24, f8, rne # perform operation
fadd.h f16, f24, f8, rtz # perform operation
fadd.h f16, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fadd.h f19, f9, f25, dyn # perform operation
fadd.h f19, f9, f25, rdn # perform operation
fadd.h f19, f9, f25, rmm # perform operation
fadd.h f19, f9, f25, rne # perform operation
fadd.h f19, f9, f25, rtz # perform operation
fadd.h f19, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f9, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fadd.h f5, f30, f16, dyn # perform operation
fadd.h f5, f30, f16, rdn # perform operation
fadd.h f5, f30, f16, rmm # perform operation
fadd.h f5, f30, f16, rne # perform operation
fadd.h f5, f30, f16, rtz # perform operation
fadd.h f5, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fadd.h f10, f12, f7, dyn # perform operation
fadd.h f10, f12, f7, rdn # perform operation
fadd.h f10, f12, f7, rmm # perform operation
fadd.h f10, f12, f7, rne # perform operation
fadd.h f10, f12, f7, rtz # perform operation
fadd.h f10, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fadd.h f10, f8, f5, dyn # perform operation
fadd.h f10, f8, f5, rdn # perform operation
fadd.h f10, f8, f5, rmm # perform operation
fadd.h f10, f8, f5, rne # perform operation
fadd.h f10, f8, f5, rtz # perform operation
fadd.h f10, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fadd.h f21, f9, f7, dyn # perform operation
fadd.h f21, f9, f7, rdn # perform operation
fadd.h f21, f9, f7, rmm # perform operation
fadd.h f21, f9, f7, rne # perform operation
fadd.h f21, f9, f7, rtz # perform operation
fadd.h f21, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fadd.h f29, f19, f2, dyn # perform operation
fadd.h f29, f19, f2, rdn # perform operation
fadd.h f29, f19, f2, rmm # perform operation
fadd.h f29, f19, f2, rne # perform operation
fadd.h f29, f19, f2, rtz # perform operation
fadd.h f29, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fadd.h f24, f2, f25, dyn # perform operation
fadd.h f24, f2, f25, rdn # perform operation
fadd.h f24, f2, f25, rmm # perform operation
fadd.h f24, f2, f25, rne # perform operation
fadd.h f24, f2, f25, rtz # perform operation
fadd.h f24, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f15, f1, f7, dyn # perform operation
fadd.h f15, f1, f7, rdn # perform operation
fadd.h f15, f1, f7, rmm # perform operation
fadd.h f15, f1, f7, rne # perform operation
fadd.h f15, f1, f7, rtz # perform operation
fadd.h f15, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fadd.h f6, f13, f24, dyn # perform operation
fadd.h f6, f13, f24, rdn # perform operation
fadd.h f6, f13, f24, rmm # perform operation
fadd.h f6, f13, f24, rne # perform operation
fadd.h f6, f13, f24, rtz # perform operation
fadd.h f6, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fadd.h f26, f28, f17, dyn # perform operation
fadd.h f26, f28, f17, rdn # perform operation
fadd.h f26, f28, f17, rmm # perform operation
fadd.h f26, f28, f17, rne # perform operation
fadd.h f26, f28, f17, rtz # perform operation
fadd.h f26, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fadd.h f1, f29, f11, dyn # perform operation
fadd.h f1, f29, f11, rdn # perform operation
fadd.h f1, f29, f11, rmm # perform operation
fadd.h f1, f29, f11, rne # perform operation
fadd.h f1, f29, f11, rtz # perform operation
fadd.h f1, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fadd.h f30, f5, f31, dyn # perform operation
fadd.h f30, f5, f31, rdn # perform operation
fadd.h f30, f5, f31, rmm # perform operation
fadd.h f30, f5, f31, rne # perform operation
fadd.h f30, f5, f31, rtz # perform operation
fadd.h f30, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fadd.h f18, f31, f20, dyn # perform operation
fadd.h f18, f31, f20, rdn # perform operation
fadd.h f18, f31, f20, rmm # perform operation
fadd.h f18, f31, f20, rne # perform operation
fadd.h f18, f31, f20, rtz # perform operation
fadd.h f18, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fadd.h f3, f17, f29, dyn # perform operation
fadd.h f3, f17, f29, rdn # perform operation
fadd.h f3, f17, f29, rmm # perform operation
fadd.h f3, f17, f29, rne # perform operation
fadd.h f3, f17, f29, rtz # perform operation
fadd.h f3, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fadd.h f9, f17, f28, dyn # perform operation
fadd.h f9, f17, f28, rdn # perform operation
fadd.h f9, f17, f28, rmm # perform operation
fadd.h f9, f17, f28, rne # perform operation
fadd.h f9, f17, f28, rtz # perform operation
fadd.h f9, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f17, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fadd.h f29, f31, f7, dyn # perform operation
fadd.h f29, f31, f7, rdn # perform operation
fadd.h f29, f31, f7, rmm # perform operation
fadd.h f29, f31, f7, rne # perform operation
fadd.h f29, f31, f7, rtz # perform operation
fadd.h f29, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fadd.h f27, f15, f29, dyn # perform operation
fadd.h f27, f15, f29, rdn # perform operation
fadd.h f27, f15, f29, rmm # perform operation
fadd.h f27, f15, f29, rne # perform operation
fadd.h f27, f15, f29, rtz # perform operation
fadd.h f27, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fadd.h f12, f26, f29, dyn # perform operation
fadd.h f12, f26, f29, rdn # perform operation
fadd.h f12, f26, f29, rmm # perform operation
fadd.h f12, f26, f29, rne # perform operation
fadd.h f12, f26, f29, rtz # perform operation
fadd.h f12, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fadd.h f18, f16, f21, dyn # perform operation
fadd.h f18, f16, f21, rdn # perform operation
fadd.h f18, f16, f21, rmm # perform operation
fadd.h f18, f16, f21, rne # perform operation
fadd.h f18, f16, f21, rtz # perform operation
fadd.h f18, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fadd.h f21, f12, f8, dyn # perform operation
fadd.h f21, f12, f8, rdn # perform operation
fadd.h f21, f12, f8, rmm # perform operation
fadd.h f21, f12, f8, rne # perform operation
fadd.h f21, f12, f8, rtz # perform operation
fadd.h f21, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fadd.h f21, f10, f29, dyn # perform operation
fadd.h f21, f10, f29, rdn # perform operation
fadd.h f21, f10, f29, rmm # perform operation
fadd.h f21, f10, f29, rne # perform operation
fadd.h f21, f10, f29, rtz # perform operation
fadd.h f21, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fadd.h f26, f28, f7, dyn # perform operation
fadd.h f26, f28, f7, rdn # perform operation
fadd.h f26, f28, f7, rmm # perform operation
fadd.h f26, f28, f7, rne # perform operation
fadd.h f26, f28, f7, rtz # perform operation
fadd.h f26, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fadd.h f8, f13, f10, dyn # perform operation
fadd.h f8, f13, f10, rdn # perform operation
fadd.h f8, f13, f10, rmm # perform operation
fadd.h f8, f13, f10, rne # perform operation
fadd.h f8, f13, f10, rtz # perform operation
fadd.h f8, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fadd.h f1, f22, f5, dyn # perform operation
fadd.h f1, f22, f5, rdn # perform operation
fadd.h f1, f22, f5, rmm # perform operation
fadd.h f1, f22, f5, rne # perform operation
fadd.h f1, f22, f5, rtz # perform operation
fadd.h f1, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fadd.h f28, f19, f1, dyn # perform operation
fadd.h f28, f19, f1, rdn # perform operation
fadd.h f28, f19, f1, rmm # perform operation
fadd.h f28, f19, f1, rne # perform operation
fadd.h f28, f19, f1, rtz # perform operation
fadd.h f28, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fadd.h f22, f8, f24, dyn # perform operation
fadd.h f22, f8, f24, rdn # perform operation
fadd.h f22, f8, f24, rmm # perform operation
fadd.h f22, f8, f24, rne # perform operation
fadd.h f22, f8, f24, rtz # perform operation
fadd.h f22, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fadd.h f11, f29, f12, dyn # perform operation
fadd.h f11, f29, f12, rdn # perform operation
fadd.h f11, f29, f12, rmm # perform operation
fadd.h f11, f29, f12, rne # perform operation
fadd.h f11, f29, f12, rtz # perform operation
fadd.h f11, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fadd.h f29, f23, f7, dyn # perform operation
fadd.h f29, f23, f7, rdn # perform operation
fadd.h f29, f23, f7, rmm # perform operation
fadd.h f29, f23, f7, rne # perform operation
fadd.h f29, f23, f7, rtz # perform operation
fadd.h f29, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fadd.h f6, f16, f12, dyn # perform operation
fadd.h f6, f16, f12, rdn # perform operation
fadd.h f6, f16, f12, rmm # perform operation
fadd.h f6, f16, f12, rne # perform operation
fadd.h f6, f16, f12, rtz # perform operation
fadd.h f6, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fadd.h f5, f1, f22, dyn # perform operation
fadd.h f5, f1, f22, rdn # perform operation
fadd.h f5, f1, f22, rmm # perform operation
fadd.h f5, f1, f22, rne # perform operation
fadd.h f5, f1, f22, rtz # perform operation
fadd.h f5, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fadd.h f6, f24, f8, dyn # perform operation
fadd.h f6, f24, f8, rdn # perform operation
fadd.h f6, f24, f8, rmm # perform operation
fadd.h f6, f24, f8, rne # perform operation
fadd.h f6, f24, f8, rtz # perform operation
fadd.h f6, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fadd.h f9, f23, f27, dyn # perform operation
fadd.h f9, f23, f27, rdn # perform operation
fadd.h f9, f23, f27, rmm # perform operation
fadd.h f9, f23, f27, rne # perform operation
fadd.h f9, f23, f27, rtz # perform operation
fadd.h f9, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fadd.h f29, f5, f19, dyn # perform operation
fadd.h f29, f5, f19, rdn # perform operation
fadd.h f29, f5, f19, rmm # perform operation
fadd.h f29, f5, f19, rne # perform operation
fadd.h f29, f5, f19, rtz # perform operation
fadd.h f29, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f21, f27, f18, dyn # perform operation
fadd.h f21, f27, f18, rdn # perform operation
fadd.h f21, f27, f18, rmm # perform operation
fadd.h f21, f27, f18, rne # perform operation
fadd.h f21, f27, f18, rtz # perform operation
fadd.h f21, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fadd.h f23, f29, f15, dyn # perform operation
fadd.h f23, f29, f15, rdn # perform operation
fadd.h f23, f29, f15, rmm # perform operation
fadd.h f23, f29, f15, rne # perform operation
fadd.h f23, f29, f15, rtz # perform operation
fadd.h f23, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fadd.h f26, f16, f10, dyn # perform operation
fadd.h f26, f16, f10, rdn # perform operation
fadd.h f26, f16, f10, rmm # perform operation
fadd.h f26, f16, f10, rne # perform operation
fadd.h f26, f16, f10, rtz # perform operation
fadd.h f26, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fadd.h f12, f25, f28, dyn # perform operation
fadd.h f12, f25, f28, rdn # perform operation
fadd.h f12, f25, f28, rmm # perform operation
fadd.h f12, f25, f28, rne # perform operation
fadd.h f12, f25, f28, rtz # perform operation
fadd.h f12, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fadd.h f23, f1, f15, dyn # perform operation
fadd.h f23, f1, f15, rdn # perform operation
fadd.h f23, f1, f15, rmm # perform operation
fadd.h f23, f1, f15, rne # perform operation
fadd.h f23, f1, f15, rtz # perform operation
fadd.h f23, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f1, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fadd.h f27, f30, f29, dyn # perform operation
fadd.h f27, f30, f29, rdn # perform operation
fadd.h f27, f30, f29, rmm # perform operation
fadd.h f27, f30, f29, rne # perform operation
fadd.h f27, f30, f29, rtz # perform operation
fadd.h f27, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fadd.h f14, f5, f3, dyn # perform operation
fadd.h f14, f5, f3, rdn # perform operation
fadd.h f14, f5, f3, rmm # perform operation
fadd.h f14, f5, f3, rne # perform operation
fadd.h f14, f5, f3, rtz # perform operation
fadd.h f14, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fadd.h f12, f1, f13, dyn # perform operation
fadd.h f12, f1, f13, rdn # perform operation
fadd.h f12, f1, f13, rmm # perform operation
fadd.h f12, f1, f13, rne # perform operation
fadd.h f12, f1, f13, rtz # perform operation
fadd.h f12, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fadd.h f21, f19, f12, dyn # perform operation
fadd.h f21, f19, f12, rdn # perform operation
fadd.h f21, f19, f12, rmm # perform operation
fadd.h f21, f19, f12, rne # perform operation
fadd.h f21, f19, f12, rtz # perform operation
fadd.h f21, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fadd.h f15, f3, f28, dyn # perform operation
fadd.h f15, f3, f28, rdn # perform operation
fadd.h f15, f3, f28, rmm # perform operation
fadd.h f15, f3, f28, rne # perform operation
fadd.h f15, f3, f28, rtz # perform operation
fadd.h f15, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fadd.h f29, f24, f10, dyn # perform operation
fadd.h f29, f24, f10, rdn # perform operation
fadd.h f29, f24, f10, rmm # perform operation
fadd.h f29, f24, f10, rne # perform operation
fadd.h f29, f24, f10, rtz # perform operation
fadd.h f29, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fadd.h f13, f11, f23, dyn # perform operation
fadd.h f13, f11, f23, rdn # perform operation
fadd.h f13, f11, f23, rmm # perform operation
fadd.h f13, f11, f23, rne # perform operation
fadd.h f13, f11, f23, rtz # perform operation
fadd.h f13, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fadd.h f6, f30, f7, dyn # perform operation
fadd.h f6, f30, f7, rdn # perform operation
fadd.h f6, f30, f7, rmm # perform operation
fadd.h f6, f30, f7, rne # perform operation
fadd.h f6, f30, f7, rtz # perform operation
fadd.h f6, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f10, 0(x2) # load 0x0000fc01 from memory into f10
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fadd.h f14, f10, f20, dyn # perform operation
fadd.h f14, f10, f20, rdn # perform operation
fadd.h f14, f10, f20, rmm # perform operation
fadd.h f14, f10, f20, rne # perform operation
fadd.h f14, f10, f20, rtz # perform operation
fadd.h f14, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fadd.h f9, f18, f16, dyn # perform operation
fadd.h f9, f18, f16, rdn # perform operation
fadd.h f9, f18, f16, rmm # perform operation
fadd.h f9, f18, f16, rne # perform operation
fadd.h f9, f18, f16, rtz # perform operation
fadd.h f9, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fadd.h f26, f24, f2, dyn # perform operation
fadd.h f26, f24, f2, rdn # perform operation
fadd.h f26, f24, f2, rmm # perform operation
fadd.h f26, f24, f2, rne # perform operation
fadd.h f26, f24, f2, rtz # perform operation
fadd.h f26, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fadd.h f10, f5, f13, dyn # perform operation
fadd.h f10, f5, f13, rdn # perform operation
fadd.h f10, f5, f13, rmm # perform operation
fadd.h f10, f5, f13, rne # perform operation
fadd.h f10, f5, f13, rtz # perform operation
fadd.h f10, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fadd.h f13, f7, f30, dyn # perform operation
fadd.h f13, f7, f30, rdn # perform operation
fadd.h f13, f7, f30, rmm # perform operation
fadd.h f13, f7, f30, rne # perform operation
fadd.h f13, f7, f30, rtz # perform operation
fadd.h f13, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fadd.h f15, f3, f14, dyn # perform operation
fadd.h f15, f3, f14, rdn # perform operation
fadd.h f15, f3, f14, rmm # perform operation
fadd.h f15, f3, f14, rne # perform operation
fadd.h f15, f3, f14, rtz # perform operation
fadd.h f15, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fadd.h f30, f11, f24, dyn # perform operation
fadd.h f30, f11, f24, rdn # perform operation
fadd.h f30, f11, f24, rmm # perform operation
fadd.h f30, f11, f24, rne # perform operation
fadd.h f30, f11, f24, rtz # perform operation
fadd.h f30, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fadd.h f22, f26, f12, dyn # perform operation
fadd.h f22, f26, f12, rdn # perform operation
fadd.h f22, f26, f12, rmm # perform operation
fadd.h f22, f26, f12, rne # perform operation
fadd.h f22, f26, f12, rtz # perform operation
fadd.h f22, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fadd.h f5, f24, f21, dyn # perform operation
fadd.h f5, f24, f21, rdn # perform operation
fadd.h f5, f24, f21, rmm # perform operation
fadd.h f5, f24, f21, rne # perform operation
fadd.h f5, f24, f21, rtz # perform operation
fadd.h f5, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fadd.h f1, f17, f21, dyn # perform operation
fadd.h f1, f17, f21, rdn # perform operation
fadd.h f1, f17, f21, rmm # perform operation
fadd.h f1, f17, f21, rne # perform operation
fadd.h f1, f17, f21, rtz # perform operation
fadd.h f1, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fadd.h f6, f22, f19, dyn # perform operation
fadd.h f6, f22, f19, rdn # perform operation
fadd.h f6, f22, f19, rmm # perform operation
fadd.h f6, f22, f19, rne # perform operation
fadd.h f6, f22, f19, rtz # perform operation
fadd.h f6, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fadd.h f28, f21, f26, dyn # perform operation
fadd.h f28, f21, f26, rdn # perform operation
fadd.h f28, f21, f26, rmm # perform operation
fadd.h f28, f21, f26, rne # perform operation
fadd.h f28, f21, f26, rtz # perform operation
fadd.h f28, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fadd.h f20, f17, f6, dyn # perform operation
fadd.h f20, f17, f6, rdn # perform operation
fadd.h f20, f17, f6, rmm # perform operation
fadd.h f20, f17, f6, rne # perform operation
fadd.h f20, f17, f6, rtz # perform operation
fadd.h f20, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fadd.h f8, f5, f2, dyn # perform operation
fadd.h f8, f5, f2, rdn # perform operation
fadd.h f8, f5, f2, rmm # perform operation
fadd.h f8, f5, f2, rne # perform operation
fadd.h f8, f5, f2, rtz # perform operation
fadd.h f8, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fadd.h f22, f5, f6, dyn # perform operation
fadd.h f22, f5, f6, rdn # perform operation
fadd.h f22, f5, f6, rmm # perform operation
fadd.h f22, f5, f6, rne # perform operation
fadd.h f22, f5, f6, rtz # perform operation
fadd.h f22, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fadd.h f17, f29, f14, dyn # perform operation
fadd.h f17, f29, f14, rdn # perform operation
fadd.h f17, f29, f14, rmm # perform operation
fadd.h f17, f29, f14, rne # perform operation
fadd.h f17, f29, f14, rtz # perform operation
fadd.h f17, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fadd.h f25, f30, f9, dyn # perform operation
fadd.h f25, f30, f9, rdn # perform operation
fadd.h f25, f30, f9, rmm # perform operation
fadd.h f25, f30, f9, rne # perform operation
fadd.h f25, f30, f9, rtz # perform operation
fadd.h f25, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f30, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fadd.h f16, f19, f3, dyn # perform operation
fadd.h f16, f19, f3, rdn # perform operation
fadd.h f16, f19, f3, rmm # perform operation
fadd.h f16, f19, f3, rne # perform operation
fadd.h f16, f19, f3, rtz # perform operation
fadd.h f16, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fadd.h f8, f10, f2, dyn # perform operation
fadd.h f8, f10, f2, rdn # perform operation
fadd.h f8, f10, f2, rmm # perform operation
fadd.h f8, f10, f2, rne # perform operation
fadd.h f8, f10, f2, rtz # perform operation
fadd.h f8, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fadd.h f23, f17, f14, dyn # perform operation
fadd.h f23, f17, f14, rdn # perform operation
fadd.h f23, f17, f14, rmm # perform operation
fadd.h f23, f17, f14, rne # perform operation
fadd.h f23, f17, f14, rtz # perform operation
fadd.h f23, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fadd.h f29, f25, f3, dyn # perform operation
fadd.h f29, f25, f3, rdn # perform operation
fadd.h f29, f25, f3, rmm # perform operation
fadd.h f29, f25, f3, rne # perform operation
fadd.h f29, f25, f3, rtz # perform operation
fadd.h f29, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fadd.h f7, f13, f25, dyn # perform operation
fadd.h f7, f13, f25, rdn # perform operation
fadd.h f7, f13, f25, rmm # perform operation
fadd.h f7, f13, f25, rne # perform operation
fadd.h f7, f13, f25, rtz # perform operation
fadd.h f7, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fadd.h f24, f15, f27, dyn # perform operation
fadd.h f24, f15, f27, rdn # perform operation
fadd.h f24, f15, f27, rmm # perform operation
fadd.h f24, f15, f27, rne # perform operation
fadd.h f24, f15, f27, rtz # perform operation
fadd.h f24, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fadd.h f10, f24, f9, dyn # perform operation
fadd.h f10, f24, f9, rdn # perform operation
fadd.h f10, f24, f9, rmm # perform operation
fadd.h f10, f24, f9, rne # perform operation
fadd.h f10, f24, f9, rtz # perform operation
fadd.h f10, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
fadd.h f14, f29, f23, dyn # perform operation
fadd.h f14, f29, f23, rdn # perform operation
fadd.h f14, f29, f23, rmm # perform operation
fadd.h f14, f29, f23, rne # perform operation
fadd.h f14, f29, f23, rtz # perform operation
fadd.h f14, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fadd.h f22, f24, f16, dyn # perform operation
fadd.h f22, f24, f16, rdn # perform operation
fadd.h f22, f24, f16, rmm # perform operation
fadd.h f22, f24, f16, rne # perform operation
fadd.h f22, f24, f16, rtz # perform operation
fadd.h f22, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fadd.h f6, f8, f9, dyn # perform operation
fadd.h f6, f8, f9, rdn # perform operation
fadd.h f6, f8, f9, rmm # perform operation
fadd.h f6, f8, f9, rne # perform operation
fadd.h f6, f8, f9, rtz # perform operation
fadd.h f6, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
fadd.h f8, f9, f14, dyn # perform operation
fadd.h f8, f9, f14, rdn # perform operation
fadd.h f8, f9, f14, rmm # perform operation
fadd.h f8, f9, f14, rne # perform operation
fadd.h f8, f9, f14, rtz # perform operation
fadd.h f8, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f3, f7, f30, dyn # perform operation
fadd.h f3, f7, f30, rdn # perform operation
fadd.h f3, f7, f30, rmm # perform operation
fadd.h f3, f7, f30, rne # perform operation
fadd.h f3, f7, f30, rtz # perform operation
fadd.h f3, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fadd.h f3, f9, f2, dyn # perform operation
fadd.h f3, f9, f2, rdn # perform operation
fadd.h f3, f9, f2, rmm # perform operation
fadd.h f3, f9, f2, rne # perform operation
fadd.h f3, f9, f2, rtz # perform operation
fadd.h f3, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fadd.h f13, f9, f11, dyn # perform operation
fadd.h f13, f9, f11, rdn # perform operation
fadd.h f13, f9, f11, rmm # perform operation
fadd.h f13, f9, f11, rne # perform operation
fadd.h f13, f9, f11, rtz # perform operation
fadd.h f13, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f9, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fadd.h f27, f7, f8, dyn # perform operation
fadd.h f27, f7, f8, rdn # perform operation
fadd.h f27, f7, f8, rmm # perform operation
fadd.h f27, f7, f8, rne # perform operation
fadd.h f27, f7, f8, rtz # perform operation
fadd.h f27, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fadd.h f15, f25, f21, dyn # perform operation
fadd.h f15, f25, f21, rdn # perform operation
fadd.h f15, f25, f21, rmm # perform operation
fadd.h f15, f25, f21, rne # perform operation
fadd.h f15, f25, f21, rtz # perform operation
fadd.h f15, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fadd.h f5, f22, f8, dyn # perform operation
fadd.h f5, f22, f8, rdn # perform operation
fadd.h f5, f22, f8, rmm # perform operation
fadd.h f5, f22, f8, rne # perform operation
fadd.h f5, f22, f8, rtz # perform operation
fadd.h f5, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f20, f26, f15, dyn # perform operation
fadd.h f20, f26, f15, rdn # perform operation
fadd.h f20, f26, f15, rmm # perform operation
fadd.h f20, f26, f15, rne # perform operation
fadd.h f20, f26, f15, rtz # perform operation
fadd.h f20, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fadd.h f27, f31, f17, dyn # perform operation
fadd.h f27, f31, f17, rdn # perform operation
fadd.h f27, f31, f17, rmm # perform operation
fadd.h f27, f31, f17, rne # perform operation
fadd.h f27, f31, f17, rtz # perform operation
fadd.h f27, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fadd.h f12, f10, f26, dyn # perform operation
fadd.h f12, f10, f26, rdn # perform operation
fadd.h f12, f10, f26, rmm # perform operation
fadd.h f12, f10, f26, rne # perform operation
fadd.h f12, f10, f26, rtz # perform operation
fadd.h f12, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f10, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fadd.h f13, f28, f5, dyn # perform operation
fadd.h f13, f28, f5, rdn # perform operation
fadd.h f13, f28, f5, rmm # perform operation
fadd.h f13, f28, f5, rne # perform operation
fadd.h f13, f28, f5, rtz # perform operation
fadd.h f13, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fadd.h f18, f17, f21, dyn # perform operation
fadd.h f18, f17, f21, rdn # perform operation
fadd.h f18, f17, f21, rmm # perform operation
fadd.h f18, f17, f21, rne # perform operation
fadd.h f18, f17, f21, rtz # perform operation
fadd.h f18, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fadd.h f12, f18, f11, dyn # perform operation
fadd.h f12, f18, f11, rdn # perform operation
fadd.h f12, f18, f11, rmm # perform operation
fadd.h f12, f18, f11, rne # perform operation
fadd.h f12, f18, f11, rtz # perform operation
fadd.h f12, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fadd.h f26, f6, f19, dyn # perform operation
fadd.h f26, f6, f19, rdn # perform operation
fadd.h f26, f6, f19, rmm # perform operation
fadd.h f26, f6, f19, rne # perform operation
fadd.h f26, f6, f19, rtz # perform operation
fadd.h f26, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fadd.h f28, f24, f15, dyn # perform operation
fadd.h f28, f24, f15, rdn # perform operation
fadd.h f28, f24, f15, rmm # perform operation
fadd.h f28, f24, f15, rne # perform operation
fadd.h f28, f24, f15, rtz # perform operation
fadd.h f28, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fadd.h f12, f15, f18, dyn # perform operation
fadd.h f12, f15, f18, rdn # perform operation
fadd.h f12, f15, f18, rmm # perform operation
fadd.h f12, f15, f18, rne # perform operation
fadd.h f12, f15, f18, rtz # perform operation
fadd.h f12, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fadd.h f9, f14, f15, dyn # perform operation
fadd.h f9, f14, f15, rdn # perform operation
fadd.h f9, f14, f15, rmm # perform operation
fadd.h f9, f14, f15, rne # perform operation
fadd.h f9, f14, f15, rtz # perform operation
fadd.h f9, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fadd.h f23, f18, f24, dyn # perform operation
fadd.h f23, f18, f24, rdn # perform operation
fadd.h f23, f18, f24, rmm # perform operation
fadd.h f23, f18, f24, rne # perform operation
fadd.h f23, f18, f24, rtz # perform operation
fadd.h f23, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fadd.h f15, f18, f16, dyn # perform operation
fadd.h f15, f18, f16, rdn # perform operation
fadd.h f15, f18, f16, rmm # perform operation
fadd.h f15, f18, f16, rne # perform operation
fadd.h f15, f18, f16, rtz # perform operation
fadd.h f15, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fadd.h f11, f18, f26, dyn # perform operation
fadd.h f11, f18, f26, rdn # perform operation
fadd.h f11, f18, f26, rmm # perform operation
fadd.h f11, f18, f26, rne # perform operation
fadd.h f11, f18, f26, rtz # perform operation
fadd.h f11, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fadd.h f27, f16, f25, dyn # perform operation
fadd.h f27, f16, f25, rdn # perform operation
fadd.h f27, f16, f25, rmm # perform operation
fadd.h f27, f16, f25, rne # perform operation
fadd.h f27, f16, f25, rtz # perform operation
fadd.h f27, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fadd.h f23, f17, f5, dyn # perform operation
fadd.h f23, f17, f5, rdn # perform operation
fadd.h f23, f17, f5, rmm # perform operation
fadd.h f23, f17, f5, rne # perform operation
fadd.h f23, f17, f5, rtz # perform operation
fadd.h f23, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fadd.h f1, f21, f28, dyn # perform operation
fadd.h f1, f21, f28, rdn # perform operation
fadd.h f1, f21, f28, rmm # perform operation
fadd.h f1, f21, f28, rne # perform operation
fadd.h f1, f21, f28, rtz # perform operation
fadd.h f1, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fadd.h f25, f12, f31, dyn # perform operation
fadd.h f25, f12, f31, rdn # perform operation
fadd.h f25, f12, f31, rmm # perform operation
fadd.h f25, f12, f31, rne # perform operation
fadd.h f25, f12, f31, rtz # perform operation
fadd.h f25, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f12, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fadd.h f23, f12, f26, dyn # perform operation
fadd.h f23, f12, f26, rdn # perform operation
fadd.h f23, f12, f26, rmm # perform operation
fadd.h f23, f12, f26, rne # perform operation
fadd.h f23, f12, f26, rtz # perform operation
fadd.h f23, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fadd.h f22, f24, f26, dyn # perform operation
fadd.h f22, f24, f26, rdn # perform operation
fadd.h f22, f24, f26, rmm # perform operation
fadd.h f22, f24, f26, rne # perform operation
fadd.h f22, f24, f26, rtz # perform operation
fadd.h f22, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fadd.h f23, f18, f17, dyn # perform operation
fadd.h f23, f18, f17, rdn # perform operation
fadd.h f23, f18, f17, rmm # perform operation
fadd.h f23, f18, f17, rne # perform operation
fadd.h f23, f18, f17, rtz # perform operation
fadd.h f23, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fadd.h f11, f27, f6, dyn # perform operation
fadd.h f11, f27, f6, rdn # perform operation
fadd.h f11, f27, f6, rmm # perform operation
fadd.h f11, f27, f6, rne # perform operation
fadd.h f11, f27, f6, rtz # perform operation
fadd.h f11, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fadd.h f19, f1, f30, dyn # perform operation
fadd.h f19, f1, f30, rdn # perform operation
fadd.h f19, f1, f30, rmm # perform operation
fadd.h f19, f1, f30, rne # perform operation
fadd.h f19, f1, f30, rtz # perform operation
fadd.h f19, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fadd.h f6, f18, f14, dyn # perform operation
fadd.h f6, f18, f14, rdn # perform operation
fadd.h f6, f18, f14, rmm # perform operation
fadd.h f6, f18, f14, rne # perform operation
fadd.h f6, f18, f14, rtz # perform operation
fadd.h f6, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fadd.h f24, f10, f20, dyn # perform operation
fadd.h f24, f10, f20, rdn # perform operation
fadd.h f24, f10, f20, rmm # perform operation
fadd.h f24, f10, f20, rne # perform operation
fadd.h f24, f10, f20, rtz # perform operation
fadd.h f24, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f10, f20 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x2791cf4d5fe3322e # load x3 with value 0x2791cf4d5fe3322e
sw x3, 0(x2) # store 0x2791cf4d5fe3322e in memory
flh f15, 0(x2) # load 0x2791cf4d5fe3322e from memory into f15
la x2, scratch
li x3, 0x11e14e0b00a15ec3 # load x3 with value 0x11e14e0b00a15ec3
sw x3, 0(x2) # store 0x11e14e0b00a15ec3 in memory
flh f1, 0(x2) # load 0x11e14e0b00a15ec3 from memory into f1
fadd.h f24, f15, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
la x2, scratch
li x3, 0x6fb95a2e412c672 # load x3 with value 0x6fb95a2e412c672
sw x3, 0(x2) # store 0x6fb95a2e412c672 in memory
flw f6, 0(x2) # load 0x6fb95a2e412c672 from memory into f6
fadd.h f19, f7, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f6, 0(x2) # load 0xfffe8000 from memory into f6
la x2, scratch
li x3, 0xde5ef7b53b245f8c # load x3 with value 0xde5ef7b53b245f8c
sw x3, 0(x2) # store 0xde5ef7b53b245f8c in memory
flw f1, 0(x2) # load 0xde5ef7b53b245f8c from memory into f1
fadd.h f28, f6, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f11, 0(x2) # load 0x7fff3c00 from memory into f11
la x2, scratch
li x3, 0x9f5dad72b306347e # load x3 with value 0x9f5dad72b306347e
sw x3, 0(x2) # store 0x9f5dad72b306347e in memory
flw f6, 0(x2) # load 0x9f5dad72b306347e from memory into f6
fadd.h f25, f11, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f9, 0(x2) # load 0xbeefbc00 from memory into f9
la x2, scratch
li x3, 0xb07596f8cbc9155a # load x3 with value 0xb07596f8cbc9155a
sw x3, 0(x2) # store 0xb07596f8cbc9155a in memory
flw f20, 0(x2) # load 0xb07596f8cbc9155a from memory into f20
fadd.h f14, f9, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f23, 0(x2) # load 0xfeff0400 from memory into f23
la x2, scratch
li x3, 0x27537996930dea08 # load x3 with value 0x27537996930dea08
sw x3, 0(x2) # store 0x27537996930dea08 in memory
flw f18, 0(x2) # load 0x27537996930dea08 from memory into f18
fadd.h f6, f23, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f17, 0(x2) # load 0x0fff8400 from memory into f17
la x2, scratch
li x3, 0x583654b00865afaa # load x3 with value 0x583654b00865afaa
sw x3, 0(x2) # store 0x583654b00865afaa in memory
flw f2, 0(x2) # load 0x583654b00865afaa from memory into f2
fadd.h f10, f17, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f28, 0(x2) # load 0xefff7bff from memory into f28
la x2, scratch
li x3, 0x412234a2e874f752 # load x3 with value 0x412234a2e874f752
sw x3, 0(x2) # store 0x412234a2e874f752 in memory
flw f1, 0(x2) # load 0x412234a2e874f752 from memory into f1
fadd.h f23, f28, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f23, 0(x2) # load 0xc0defbff from memory into f23
la x2, scratch
li x3, 0xd79d055b794e7965 # load x3 with value 0xd79d055b794e7965
sw x3, 0(x2) # store 0xd79d055b794e7965 in memory
flw f11, 0(x2) # load 0xd79d055b794e7965 from memory into f11
fadd.h f21, f23, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f16, 0(x2) # load 0x4f1a7c00 from memory into f16
la x2, scratch
li x3, 0x45e6c3b50b92250b # load x3 with value 0x45e6c3b50b92250b
sw x3, 0(x2) # store 0x45e6c3b50b92250b in memory
flw f22, 0(x2) # load 0x45e6c3b50b92250b from memory into f22
fadd.h f31, f16, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f11, 0(x2) # load 0x0ffffc00 from memory into f11
la x2, scratch
li x3, 0x5083577d4bce096b # load x3 with value 0x5083577d4bce096b
sw x3, 0(x2) # store 0x5083577d4bce096b in memory
flw f21, 0(x2) # load 0x5083577d4bce096b from memory into f21
fadd.h f24, f11, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f22, 0(x2) # load 0xffef7e00 from memory into f22
la x2, scratch
li x3, 0x6dd78319c2ebe824 # load x3 with value 0x6dd78319c2ebe824
sw x3, 0(x2) # store 0x6dd78319c2ebe824 in memory
flw f8, 0(x2) # load 0x6dd78319c2ebe824 from memory into f8
fadd.h f29, f22, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f3, 0(x2) # load 0xfeef7fff from memory into f3
la x2, scratch
li x3, 0x7d4a4cf3a0937e01 # load x3 with value 0x7d4a4cf3a0937e01
sw x3, 0(x2) # store 0x7d4a4cf3a0937e01 in memory
flw f29, 0(x2) # load 0x7d4a4cf3a0937e01 from memory into f29
fadd.h f22, f3, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f19, 0(x2) # load 0xa1b27c01 from memory into f19
la x2, scratch
li x3, 0xd8c5c3adb47ccde3 # load x3 with value 0xd8c5c3adb47ccde3
sw x3, 0(x2) # store 0xd8c5c3adb47ccde3 in memory
flw f30, 0(x2) # load 0xd8c5c3adb47ccde3 from memory into f30
fadd.h f16, f19, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f15, 0(x2) # load 0x4fd77dff from memory into f15
la x2, scratch
li x3, 0xd965fb7a756d3d59 # load x3 with value 0xd965fb7a756d3d59
sw x3, 0(x2) # store 0xd965fb7a756d3d59 in memory
flw f5, 0(x2) # load 0xd965fb7a756d3d59 from memory into f5
fadd.h f9, f15, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x15d61b3aa2bd7f74 # load x3 with value 0x15d61b3aa2bd7f74
sw x3, 0(x2) # store 0x15d61b3aa2bd7f74 in memory
flw f12, 0(x2) # load 0x15d61b3aa2bd7f74 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fadd.h f11, f12, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0x26ea128dd5027e41 # load x3 with value 0x26ea128dd5027e41
sw x3, 0(x2) # store 0x26ea128dd5027e41 in memory
flw f21, 0(x2) # load 0x26ea128dd5027e41 from memory into f21
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f2, 0(x2) # load 0xfffe8000 from memory into f2
fadd.h f1, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0xba33c405d1271fb5 # load x3 with value 0xba33c405d1271fb5
sw x3, 0(x2) # store 0xba33c405d1271fb5 in memory
flw f10, 0(x2) # load 0xba33c405d1271fb5 from memory into f10
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f26, 0(x2) # load 0x7fff3c00 from memory into f26
fadd.h f3, f10, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0x36351c7d8a55b335 # load x3 with value 0x36351c7d8a55b335
sw x3, 0(x2) # store 0x36351c7d8a55b335 in memory
flw f2, 0(x2) # load 0x36351c7d8a55b335 from memory into f2
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f29, 0(x2) # load 0xbeefbc00 from memory into f29
fadd.h f25, f2, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0x8340f8dd6fa41193 # load x3 with value 0x8340f8dd6fa41193
sw x3, 0(x2) # store 0x8340f8dd6fa41193 in memory
flw f18, 0(x2) # load 0x8340f8dd6fa41193 from memory into f18
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f10, 0(x2) # load 0xfeff0400 from memory into f10
fadd.h f28, f18, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x7de8031b86a43e0d # load x3 with value 0x7de8031b86a43e0d
sw x3, 0(x2) # store 0x7de8031b86a43e0d in memory
flw f30, 0(x2) # load 0x7de8031b86a43e0d from memory into f30
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f15, 0(x2) # load 0x0fff8400 from memory into f15
fadd.h f1, f30, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0x877f0d2ff7c4d0b # load x3 with value 0x877f0d2ff7c4d0b
sw x3, 0(x2) # store 0x877f0d2ff7c4d0b in memory
flw f10, 0(x2) # load 0x877f0d2ff7c4d0b from memory into f10
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f23, 0(x2) # load 0xefff7bff from memory into f23
fadd.h f24, f10, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0x81c5b3b1e91c42b3 # load x3 with value 0x81c5b3b1e91c42b3
sw x3, 0(x2) # store 0x81c5b3b1e91c42b3 in memory
flw f25, 0(x2) # load 0x81c5b3b1e91c42b3 from memory into f25
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f16, 0(x2) # load 0xc0defbff from memory into f16
fadd.h f6, f25, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x80b2c53b9ec31385 # load x3 with value 0x80b2c53b9ec31385
sw x3, 0(x2) # store 0x80b2c53b9ec31385 in memory
flw f23, 0(x2) # load 0x80b2c53b9ec31385 from memory into f23
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f29, 0(x2) # load 0x4f1a7c00 from memory into f29
fadd.h f14, f23, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0xfb41f858d4ebe2cf # load x3 with value 0xfb41f858d4ebe2cf
sw x3, 0(x2) # store 0xfb41f858d4ebe2cf in memory
flw f20, 0(x2) # load 0xfb41f858d4ebe2cf from memory into f20
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f8, 0(x2) # load 0x0ffffc00 from memory into f8
fadd.h f26, f20, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0x7c62411da47c6b8c # load x3 with value 0x7c62411da47c6b8c
sw x3, 0(x2) # store 0x7c62411da47c6b8c in memory
flw f10, 0(x2) # load 0x7c62411da47c6b8c from memory into f10
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f18, 0(x2) # load 0xffef7e00 from memory into f18
fadd.h f12, f10, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0xeb432bdae515d16b # load x3 with value 0xeb432bdae515d16b
sw x3, 0(x2) # store 0xeb432bdae515d16b in memory
flw f13, 0(x2) # load 0xeb432bdae515d16b from memory into f13
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f12, 0(x2) # load 0xfeef7fff from memory into f12
fadd.h f25, f13, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xe4c8560e2c83dc2b # load x3 with value 0xe4c8560e2c83dc2b
sw x3, 0(x2) # store 0xe4c8560e2c83dc2b in memory
flw f28, 0(x2) # load 0xe4c8560e2c83dc2b from memory into f28
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f26, 0(x2) # load 0xa1b27c01 from memory into f26
fadd.h f23, f28, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x8d06609b2fcc5fa0 # load x3 with value 0x8d06609b2fcc5fa0
sw x3, 0(x2) # store 0x8d06609b2fcc5fa0 in memory
flw f29, 0(x2) # load 0x8d06609b2fcc5fa0 from memory into f29
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f16, 0(x2) # load 0x4fd77dff from memory into f16
fadd.h f6, f29, f16 # perform operation

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
