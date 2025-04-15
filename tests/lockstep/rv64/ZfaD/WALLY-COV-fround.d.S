///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fround.d.S
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
add x16, x10, x28 # perform first operation
fround.d f20, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x14, x22 # perform first operation
fround.d f10, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x10, x26 # perform first operation
fround.d f31, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f29, f7, f9 # perform first operation
fround.d f8, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x22, x29 # perform first operation
fround.d f29, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x23, x12 # perform first operation
fround.d f19, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f17, f27 # perform first operation
fround.d f19, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f14, f16, f5 # perform first operation
fround.d f14, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f26, f29 # perform first operation
fround.d f24, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f22, f25 # perform first operation
fround.d f22, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f28, f2 # perform first operation
fround.d f2, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f13, f15, f22 # perform first operation
fround.d f8, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcaadb3d111c5412a # load x3 with value 0xcaadb3d111c5412a
sd x3, 0(x2) # store 0xcaadb3d111c5412a in memory
fld f0, 0(x2) # load 0xcaadb3d111c5412a from memory into f0
fround.d f28, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e3291e54a5ce727 # load x3 with value 0x7e3291e54a5ce727
sd x3, 0(x2) # store 0x7e3291e54a5ce727 in memory
fld f1, 0(x2) # load 0x7e3291e54a5ce727 from memory into f1
fround.d f27, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5024f74ab8323906 # load x3 with value 0x5024f74ab8323906
sd x3, 0(x2) # store 0x5024f74ab8323906 in memory
fld f2, 0(x2) # load 0x5024f74ab8323906 from memory into f2
fround.d f9, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x34f5633cfaff7f86 # load x3 with value 0x34f5633cfaff7f86
sd x3, 0(x2) # store 0x34f5633cfaff7f86 in memory
fld f3, 0(x2) # load 0x34f5633cfaff7f86 from memory into f3
fround.d f18, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaed8a2849f75f7a3 # load x3 with value 0xaed8a2849f75f7a3
sd x3, 0(x2) # store 0xaed8a2849f75f7a3 in memory
fld f4, 0(x2) # load 0xaed8a2849f75f7a3 from memory into f4
fround.d f11, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xabbfe8a4bdde124e # load x3 with value 0xabbfe8a4bdde124e
sd x3, 0(x2) # store 0xabbfe8a4bdde124e in memory
fld f5, 0(x2) # load 0xabbfe8a4bdde124e from memory into f5
fround.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ea4601594d2bfbf # load x3 with value 0x2ea4601594d2bfbf
sd x3, 0(x2) # store 0x2ea4601594d2bfbf in memory
fld f6, 0(x2) # load 0x2ea4601594d2bfbf from memory into f6
fround.d f9, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x67d327b69fc44e6b # load x3 with value 0x67d327b69fc44e6b
sd x3, 0(x2) # store 0x67d327b69fc44e6b in memory
fld f7, 0(x2) # load 0x67d327b69fc44e6b from memory into f7
fround.d f17, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb479a978852e8a6b # load x3 with value 0xb479a978852e8a6b
sd x3, 0(x2) # store 0xb479a978852e8a6b in memory
fld f8, 0(x2) # load 0xb479a978852e8a6b from memory into f8
fround.d f25, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe61df0470dfcf17a # load x3 with value 0xe61df0470dfcf17a
sd x3, 0(x2) # store 0xe61df0470dfcf17a in memory
fld f9, 0(x2) # load 0xe61df0470dfcf17a from memory into f9
fround.d f6, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1939284caaa28da7 # load x3 with value 0x1939284caaa28da7
sd x3, 0(x2) # store 0x1939284caaa28da7 in memory
fld f10, 0(x2) # load 0x1939284caaa28da7 from memory into f10
fround.d f3, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x43f81b9f25de07ac # load x3 with value 0x43f81b9f25de07ac
sd x3, 0(x2) # store 0x43f81b9f25de07ac in memory
fld f11, 0(x2) # load 0x43f81b9f25de07ac from memory into f11
fround.d f31, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaf93ab382f1c98b9 # load x3 with value 0xaf93ab382f1c98b9
sd x3, 0(x2) # store 0xaf93ab382f1c98b9 in memory
fld f12, 0(x2) # load 0xaf93ab382f1c98b9 from memory into f12
fround.d f11, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb09d02205ccf7d45 # load x3 with value 0xb09d02205ccf7d45
sd x3, 0(x2) # store 0xb09d02205ccf7d45 in memory
fld f13, 0(x2) # load 0xb09d02205ccf7d45 from memory into f13
fround.d f11, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3dcaae75ac193ddb # load x3 with value 0x3dcaae75ac193ddb
sd x3, 0(x2) # store 0x3dcaae75ac193ddb in memory
fld f14, 0(x2) # load 0x3dcaae75ac193ddb from memory into f14
fround.d f22, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb73eb48e3c4a9303 # load x3 with value 0xb73eb48e3c4a9303
sd x3, 0(x2) # store 0xb73eb48e3c4a9303 in memory
fld f15, 0(x2) # load 0xb73eb48e3c4a9303 from memory into f15
fround.d f17, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa696ccbbbdb15b66 # load x3 with value 0xa696ccbbbdb15b66
sd x3, 0(x2) # store 0xa696ccbbbdb15b66 in memory
fld f16, 0(x2) # load 0xa696ccbbbdb15b66 from memory into f16
fround.d f7, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb44270d12c39c623 # load x3 with value 0xb44270d12c39c623
sd x3, 0(x2) # store 0xb44270d12c39c623 in memory
fld f17, 0(x2) # load 0xb44270d12c39c623 from memory into f17
fround.d f30, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf166470d5e8b3f75 # load x3 with value 0xf166470d5e8b3f75
sd x3, 0(x2) # store 0xf166470d5e8b3f75 in memory
fld f18, 0(x2) # load 0xf166470d5e8b3f75 from memory into f18
fround.d f31, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6eff8604e77fb928 # load x3 with value 0x6eff8604e77fb928
sd x3, 0(x2) # store 0x6eff8604e77fb928 in memory
fld f19, 0(x2) # load 0x6eff8604e77fb928 from memory into f19
fround.d f7, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x77d4da5a9b676f78 # load x3 with value 0x77d4da5a9b676f78
sd x3, 0(x2) # store 0x77d4da5a9b676f78 in memory
fld f20, 0(x2) # load 0x77d4da5a9b676f78 from memory into f20
fround.d f30, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72768050ff2a3891 # load x3 with value 0x72768050ff2a3891
sd x3, 0(x2) # store 0x72768050ff2a3891 in memory
fld f21, 0(x2) # load 0x72768050ff2a3891 from memory into f21
fround.d f10, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd25fd6d89356164 # load x3 with value 0xfd25fd6d89356164
sd x3, 0(x2) # store 0xfd25fd6d89356164 in memory
fld f22, 0(x2) # load 0xfd25fd6d89356164 from memory into f22
fround.d f11, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe99016464bef78b0 # load x3 with value 0xe99016464bef78b0
sd x3, 0(x2) # store 0xe99016464bef78b0 in memory
fld f23, 0(x2) # load 0xe99016464bef78b0 from memory into f23
fround.d f3, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe3ac3e2f9d04fc63 # load x3 with value 0xe3ac3e2f9d04fc63
sd x3, 0(x2) # store 0xe3ac3e2f9d04fc63 in memory
fld f24, 0(x2) # load 0xe3ac3e2f9d04fc63 from memory into f24
fround.d f25, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd1dfc792ce695ce1 # load x3 with value 0xd1dfc792ce695ce1
sd x3, 0(x2) # store 0xd1dfc792ce695ce1 in memory
fld f25, 0(x2) # load 0xd1dfc792ce695ce1 from memory into f25
fround.d f9, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff0e50cc61103484 # load x3 with value 0xff0e50cc61103484
sd x3, 0(x2) # store 0xff0e50cc61103484 in memory
fld f26, 0(x2) # load 0xff0e50cc61103484 from memory into f26
fround.d f24, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x379f67dd79f0c666 # load x3 with value 0x379f67dd79f0c666
sd x3, 0(x2) # store 0x379f67dd79f0c666 in memory
fld f27, 0(x2) # load 0x379f67dd79f0c666 from memory into f27
fround.d f16, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f2ccb74456e98bf # load x3 with value 0x7f2ccb74456e98bf
sd x3, 0(x2) # store 0x7f2ccb74456e98bf in memory
fld f28, 0(x2) # load 0x7f2ccb74456e98bf from memory into f28
fround.d f2, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4204d59a0523fec6 # load x3 with value 0x4204d59a0523fec6
sd x3, 0(x2) # store 0x4204d59a0523fec6 in memory
fld f29, 0(x2) # load 0x4204d59a0523fec6 from memory into f29
fround.d f22, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a4698f155632310 # load x3 with value 0x2a4698f155632310
sd x3, 0(x2) # store 0x2a4698f155632310 in memory
fld f30, 0(x2) # load 0x2a4698f155632310 from memory into f30
fround.d f20, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65204f0e0586de61 # load x3 with value 0x65204f0e0586de61
sd x3, 0(x2) # store 0x65204f0e0586de61 in memory
fld f31, 0(x2) # load 0x65204f0e0586de61 from memory into f31
fround.d f18, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x513989f078027ac9 # load x3 with value 0x513989f078027ac9
sd x3, 0(x2) # store 0x513989f078027ac9 in memory
fld f12, 0(x2) # load 0x513989f078027ac9 from memory into f12
fround.d f0, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x27f6b74c44027f0f # load x3 with value 0x27f6b74c44027f0f
sd x3, 0(x2) # store 0x27f6b74c44027f0f in memory
fld f22, 0(x2) # load 0x27f6b74c44027f0f from memory into f22
fround.d f1, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0b02d48eabc2aab # load x3 with value 0xc0b02d48eabc2aab
sd x3, 0(x2) # store 0xc0b02d48eabc2aab in memory
fld f16, 0(x2) # load 0xc0b02d48eabc2aab from memory into f16
fround.d f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa197104f3ef81d86 # load x3 with value 0xa197104f3ef81d86
sd x3, 0(x2) # store 0xa197104f3ef81d86 in memory
fld f27, 0(x2) # load 0xa197104f3ef81d86 from memory into f27
fround.d f3, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaeb2f0477b8c9068 # load x3 with value 0xaeb2f0477b8c9068
sd x3, 0(x2) # store 0xaeb2f0477b8c9068 in memory
fld f30, 0(x2) # load 0xaeb2f0477b8c9068 from memory into f30
fround.d f4, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1a6564f160b65851 # load x3 with value 0x1a6564f160b65851
sd x3, 0(x2) # store 0x1a6564f160b65851 in memory
fld f12, 0(x2) # load 0x1a6564f160b65851 from memory into f12
fround.d f5, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc655fdf0911781e2 # load x3 with value 0xc655fdf0911781e2
sd x3, 0(x2) # store 0xc655fdf0911781e2 in memory
fld f3, 0(x2) # load 0xc655fdf0911781e2 from memory into f3
fround.d f6, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ceff8ffcb3fb242 # load x3 with value 0x7ceff8ffcb3fb242
sd x3, 0(x2) # store 0x7ceff8ffcb3fb242 in memory
fld f13, 0(x2) # load 0x7ceff8ffcb3fb242 from memory into f13
fround.d f7, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6455125fbf46c5b2 # load x3 with value 0x6455125fbf46c5b2
sd x3, 0(x2) # store 0x6455125fbf46c5b2 in memory
fld f30, 0(x2) # load 0x6455125fbf46c5b2 from memory into f30
fround.d f8, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe1a3e662e629cc1c # load x3 with value 0xe1a3e662e629cc1c
sd x3, 0(x2) # store 0xe1a3e662e629cc1c in memory
fld f24, 0(x2) # load 0xe1a3e662e629cc1c from memory into f24
fround.d f9, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdca4287537ce8819 # load x3 with value 0xdca4287537ce8819
sd x3, 0(x2) # store 0xdca4287537ce8819 in memory
fld f11, 0(x2) # load 0xdca4287537ce8819 from memory into f11
fround.d f10, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x41a327d6377d0b7e # load x3 with value 0x41a327d6377d0b7e
sd x3, 0(x2) # store 0x41a327d6377d0b7e in memory
fld f16, 0(x2) # load 0x41a327d6377d0b7e from memory into f16
fround.d f11, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x69e912818165a46d # load x3 with value 0x69e912818165a46d
sd x3, 0(x2) # store 0x69e912818165a46d in memory
fld f26, 0(x2) # load 0x69e912818165a46d from memory into f26
fround.d f12, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2675599534798a64 # load x3 with value 0x2675599534798a64
sd x3, 0(x2) # store 0x2675599534798a64 in memory
fld f2, 0(x2) # load 0x2675599534798a64 from memory into f2
fround.d f13, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa70c9d267d456271 # load x3 with value 0xa70c9d267d456271
sd x3, 0(x2) # store 0xa70c9d267d456271 in memory
fld f13, 0(x2) # load 0xa70c9d267d456271 from memory into f13
fround.d f14, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0a21c709a41950dc # load x3 with value 0x0a21c709a41950dc
sd x3, 0(x2) # store 0x0a21c709a41950dc in memory
fld f8, 0(x2) # load 0x0a21c709a41950dc from memory into f8
fround.d f15, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x774b6c9aa6092fa1 # load x3 with value 0x774b6c9aa6092fa1
sd x3, 0(x2) # store 0x774b6c9aa6092fa1 in memory
fld f7, 0(x2) # load 0x774b6c9aa6092fa1 from memory into f7
fround.d f16, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x675cbd6655e76b6e # load x3 with value 0x675cbd6655e76b6e
sd x3, 0(x2) # store 0x675cbd6655e76b6e in memory
fld f3, 0(x2) # load 0x675cbd6655e76b6e from memory into f3
fround.d f17, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b6d56cfcb28de06 # load x3 with value 0x1b6d56cfcb28de06
sd x3, 0(x2) # store 0x1b6d56cfcb28de06 in memory
fld f5, 0(x2) # load 0x1b6d56cfcb28de06 from memory into f5
fround.d f18, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7f0605bb980d230 # load x3 with value 0xd7f0605bb980d230
sd x3, 0(x2) # store 0xd7f0605bb980d230 in memory
fld f13, 0(x2) # load 0xd7f0605bb980d230 from memory into f13
fround.d f19, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1fe8c3f38e57956c # load x3 with value 0x1fe8c3f38e57956c
sd x3, 0(x2) # store 0x1fe8c3f38e57956c in memory
fld f30, 0(x2) # load 0x1fe8c3f38e57956c from memory into f30
fround.d f20, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xac629ecac5e23d4e # load x3 with value 0xac629ecac5e23d4e
sd x3, 0(x2) # store 0xac629ecac5e23d4e in memory
fld f13, 0(x2) # load 0xac629ecac5e23d4e from memory into f13
fround.d f21, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3af910a45ce2bb9e # load x3 with value 0x3af910a45ce2bb9e
sd x3, 0(x2) # store 0x3af910a45ce2bb9e in memory
fld f10, 0(x2) # load 0x3af910a45ce2bb9e from memory into f10
fround.d f22, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a9818387a1c7688 # load x3 with value 0x3a9818387a1c7688
sd x3, 0(x2) # store 0x3a9818387a1c7688 in memory
fld f26, 0(x2) # load 0x3a9818387a1c7688 from memory into f26
fround.d f23, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacd97028d186c105 # load x3 with value 0xacd97028d186c105
sd x3, 0(x2) # store 0xacd97028d186c105 in memory
fld f1, 0(x2) # load 0xacd97028d186c105 from memory into f1
fround.d f24, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfed6b51e0ab726a7 # load x3 with value 0xfed6b51e0ab726a7
sd x3, 0(x2) # store 0xfed6b51e0ab726a7 in memory
fld f23, 0(x2) # load 0xfed6b51e0ab726a7 from memory into f23
fround.d f25, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc11adce014fcaadf # load x3 with value 0xc11adce014fcaadf
sd x3, 0(x2) # store 0xc11adce014fcaadf in memory
fld f13, 0(x2) # load 0xc11adce014fcaadf from memory into f13
fround.d f26, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x32fc46b10d089192 # load x3 with value 0x32fc46b10d089192
sd x3, 0(x2) # store 0x32fc46b10d089192 in memory
fld f8, 0(x2) # load 0x32fc46b10d089192 from memory into f8
fround.d f27, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbb91b6168281a710 # load x3 with value 0xbb91b6168281a710
sd x3, 0(x2) # store 0xbb91b6168281a710 in memory
fld f15, 0(x2) # load 0xbb91b6168281a710 from memory into f15
fround.d f28, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd31195b58cc76c9e # load x3 with value 0xd31195b58cc76c9e
sd x3, 0(x2) # store 0xd31195b58cc76c9e in memory
fld f27, 0(x2) # load 0xd31195b58cc76c9e from memory into f27
fround.d f29, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbd394c7502be162d # load x3 with value 0xbd394c7502be162d
sd x3, 0(x2) # store 0xbd394c7502be162d in memory
fld f14, 0(x2) # load 0xbd394c7502be162d from memory into f14
fround.d f30, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0cf81389cefdfaff # load x3 with value 0x0cf81389cefdfaff
sd x3, 0(x2) # store 0x0cf81389cefdfaff in memory
fld f6, 0(x2) # load 0x0cf81389cefdfaff from memory into f6
fround.d f31, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
fround.d f8, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fround.d f28, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
fround.d f31, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fround.d f26, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
fround.d f27, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fround.d f8, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fround.d f17, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fround.d f23, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fround.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fround.d f6, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fround.d f12, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fround.d f3, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fround.d f18, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fround.d f14, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
fround.d f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fround.d f7, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fround.d f31, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fround.d f24, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fround.d f29, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fround.d f21, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
fround.d f25, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fround.d f9, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f12, 0(x2) # load 0xfff8000000000000 from memory into f12
fround.d f14, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fround.d f24, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fround.d f26, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f6, 0(x2) # load 0xfff0000000000001 from memory into f6
fround.d f31, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fround.d f6, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fround.d f25, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f4bfed6e199727a # load x3 with value 0x9f4bfed6e199727a
sd x3, 0(x2) # store 0x9f4bfed6e199727a in memory
fld f0, 0(x2) # load 0x9f4bfed6e199727a from memory into f0
fround.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x49458ee265d69033 # load x3 with value 0x49458ee265d69033
sd x3, 0(x2) # store 0x49458ee265d69033 in memory
fld f1, 0(x2) # load 0x49458ee265d69033 from memory into f1
fround.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x73140be760e2cef4 # load x3 with value 0x73140be760e2cef4
sd x3, 0(x2) # store 0x73140be760e2cef4 in memory
fld f2, 0(x2) # load 0x73140be760e2cef4 from memory into f2
fround.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbc7278641f308ab5 # load x3 with value 0xbc7278641f308ab5
sd x3, 0(x2) # store 0xbc7278641f308ab5 in memory
fld f3, 0(x2) # load 0xbc7278641f308ab5 from memory into f3
fround.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12a1c773d723746c # load x3 with value 0x12a1c773d723746c
sd x3, 0(x2) # store 0x12a1c773d723746c in memory
fld f4, 0(x2) # load 0x12a1c773d723746c from memory into f4
fround.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2dc3ebaf192be816 # load x3 with value 0x2dc3ebaf192be816
sd x3, 0(x2) # store 0x2dc3ebaf192be816 in memory
fld f5, 0(x2) # load 0x2dc3ebaf192be816 from memory into f5
fround.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xca9b5b6cd53eb7ad # load x3 with value 0xca9b5b6cd53eb7ad
sd x3, 0(x2) # store 0xca9b5b6cd53eb7ad in memory
fld f6, 0(x2) # load 0xca9b5b6cd53eb7ad from memory into f6
fround.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x63b199bf607eca3f # load x3 with value 0x63b199bf607eca3f
sd x3, 0(x2) # store 0x63b199bf607eca3f in memory
fld f7, 0(x2) # load 0x63b199bf607eca3f from memory into f7
fround.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xddd14ddc3d8c7a12 # load x3 with value 0xddd14ddc3d8c7a12
sd x3, 0(x2) # store 0xddd14ddc3d8c7a12 in memory
fld f8, 0(x2) # load 0xddd14ddc3d8c7a12 from memory into f8
fround.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc2220d23523ce0db # load x3 with value 0xc2220d23523ce0db
sd x3, 0(x2) # store 0xc2220d23523ce0db in memory
fld f9, 0(x2) # load 0xc2220d23523ce0db from memory into f9
fround.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x847c7fb875efab48 # load x3 with value 0x847c7fb875efab48
sd x3, 0(x2) # store 0x847c7fb875efab48 in memory
fld f10, 0(x2) # load 0x847c7fb875efab48 from memory into f10
fround.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2f312c0ce050201a # load x3 with value 0x2f312c0ce050201a
sd x3, 0(x2) # store 0x2f312c0ce050201a in memory
fld f11, 0(x2) # load 0x2f312c0ce050201a from memory into f11
fround.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa175398491d06927 # load x3 with value 0xa175398491d06927
sd x3, 0(x2) # store 0xa175398491d06927 in memory
fld f12, 0(x2) # load 0xa175398491d06927 from memory into f12
fround.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xccb75bfc08c8b274 # load x3 with value 0xccb75bfc08c8b274
sd x3, 0(x2) # store 0xccb75bfc08c8b274 in memory
fld f13, 0(x2) # load 0xccb75bfc08c8b274 from memory into f13
fround.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x76e9e4982ec59b2e # load x3 with value 0x76e9e4982ec59b2e
sd x3, 0(x2) # store 0x76e9e4982ec59b2e in memory
fld f14, 0(x2) # load 0x76e9e4982ec59b2e from memory into f14
fround.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9fdcb589fcde5826 # load x3 with value 0x9fdcb589fcde5826
sd x3, 0(x2) # store 0x9fdcb589fcde5826 in memory
fld f15, 0(x2) # load 0x9fdcb589fcde5826 from memory into f15
fround.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x85714d91b9b00b4b # load x3 with value 0x85714d91b9b00b4b
sd x3, 0(x2) # store 0x85714d91b9b00b4b in memory
fld f16, 0(x2) # load 0x85714d91b9b00b4b from memory into f16
fround.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x99cb6a18137434ce # load x3 with value 0x99cb6a18137434ce
sd x3, 0(x2) # store 0x99cb6a18137434ce in memory
fld f17, 0(x2) # load 0x99cb6a18137434ce from memory into f17
fround.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x115fe60e9bf59993 # load x3 with value 0x115fe60e9bf59993
sd x3, 0(x2) # store 0x115fe60e9bf59993 in memory
fld f18, 0(x2) # load 0x115fe60e9bf59993 from memory into f18
fround.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1714aabb58448089 # load x3 with value 0x1714aabb58448089
sd x3, 0(x2) # store 0x1714aabb58448089 in memory
fld f19, 0(x2) # load 0x1714aabb58448089 from memory into f19
fround.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e981d118313fc50 # load x3 with value 0x7e981d118313fc50
sd x3, 0(x2) # store 0x7e981d118313fc50 in memory
fld f20, 0(x2) # load 0x7e981d118313fc50 from memory into f20
fround.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbbf83d2f93f91eaa # load x3 with value 0xbbf83d2f93f91eaa
sd x3, 0(x2) # store 0xbbf83d2f93f91eaa in memory
fld f21, 0(x2) # load 0xbbf83d2f93f91eaa from memory into f21
fround.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3549c7a919ef42f # load x3 with value 0xd3549c7a919ef42f
sd x3, 0(x2) # store 0xd3549c7a919ef42f in memory
fld f22, 0(x2) # load 0xd3549c7a919ef42f from memory into f22
fround.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5b97c8581a706f67 # load x3 with value 0x5b97c8581a706f67
sd x3, 0(x2) # store 0x5b97c8581a706f67 in memory
fld f23, 0(x2) # load 0x5b97c8581a706f67 from memory into f23
fround.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x56364fd17beaa8e1 # load x3 with value 0x56364fd17beaa8e1
sd x3, 0(x2) # store 0x56364fd17beaa8e1 in memory
fld f24, 0(x2) # load 0x56364fd17beaa8e1 from memory into f24
fround.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x164570722093c098 # load x3 with value 0x164570722093c098
sd x3, 0(x2) # store 0x164570722093c098 in memory
fld f25, 0(x2) # load 0x164570722093c098 from memory into f25
fround.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5eb1bcfd0e4f1c8 # load x3 with value 0xb5eb1bcfd0e4f1c8
sd x3, 0(x2) # store 0xb5eb1bcfd0e4f1c8 in memory
fld f26, 0(x2) # load 0xb5eb1bcfd0e4f1c8 from memory into f26
fround.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9134f58b8f4e38f1 # load x3 with value 0x9134f58b8f4e38f1
sd x3, 0(x2) # store 0x9134f58b8f4e38f1 in memory
fld f27, 0(x2) # load 0x9134f58b8f4e38f1 from memory into f27
fround.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1bee01e1c92e74ae # load x3 with value 0x1bee01e1c92e74ae
sd x3, 0(x2) # store 0x1bee01e1c92e74ae in memory
fld f28, 0(x2) # load 0x1bee01e1c92e74ae from memory into f28
fround.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdd030d97d25c5db4 # load x3 with value 0xdd030d97d25c5db4
sd x3, 0(x2) # store 0xdd030d97d25c5db4 in memory
fld f29, 0(x2) # load 0xdd030d97d25c5db4 from memory into f29
fround.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x39dbbfbac3e35071 # load x3 with value 0x39dbbfbac3e35071
sd x3, 0(x2) # store 0x39dbbfbac3e35071 in memory
fld f30, 0(x2) # load 0x39dbbfbac3e35071 from memory into f30
fround.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x17b5a89758cfead1 # load x3 with value 0x17b5a89758cfead1
sd x3, 0(x2) # store 0x17b5a89758cfead1 in memory
fld f31, 0(x2) # load 0x17b5a89758cfead1 from memory into f31
fround.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x914939113b170eef # load x3 with value 0x914939113b170eef
sd x3, 0(x2) # store 0x914939113b170eef in memory
fld f30, 0(x2) # load 0x914939113b170eef from memory into f30
fround.d f14, f30, dyn # perform operation
fround.d f14, f30, rdn # perform operation
fround.d f14, f30, rmm # perform operation
fround.d f14, f30, rne # perform operation
fround.d f14, f30, rtz # perform operation
fround.d f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.d f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.d f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.d f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.d f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.d f14, f30 # perform operation


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
