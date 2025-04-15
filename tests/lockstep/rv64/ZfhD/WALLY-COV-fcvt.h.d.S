///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fcvt.h.d.S
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
add x31, x12, x18 # perform first operation
fcvt.h.d f10, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x17, x27 # perform first operation
fcvt.h.d f7, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x1, x17 # perform first operation
fcvt.h.d f22, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f2, f27, f12 # perform first operation
fcvt.h.d f27, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x9, x27 # perform first operation
fcvt.h.d f9, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x15, x5 # perform first operation
fcvt.h.d f15, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f18, f28, f1 # perform first operation
fcvt.h.d f18, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f20, f13, f15 # perform first operation
fcvt.h.d f20, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f25, f5, f7 # perform first operation
fcvt.h.d f25, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f3, f31, f21 # perform first operation
fcvt.h.d f31, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f5, f25, f9 # perform first operation
fcvt.h.d f9, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f21, f24 # perform first operation
fcvt.h.d f23, f19 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7d75e7fed8731beb # load x3 with value 0x7d75e7fed8731beb
sd x3, 0(x2) # store 0x7d75e7fed8731beb in memory
fld f0, 0(x2) # load 0x7d75e7fed8731beb from memory into f0
fcvt.h.d f12, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x28f3f7725644e051 # load x3 with value 0x28f3f7725644e051
sd x3, 0(x2) # store 0x28f3f7725644e051 in memory
fld f1, 0(x2) # load 0x28f3f7725644e051 from memory into f1
fcvt.h.d f23, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa848354c3657eda2 # load x3 with value 0xa848354c3657eda2
sd x3, 0(x2) # store 0xa848354c3657eda2 in memory
fld f2, 0(x2) # load 0xa848354c3657eda2 from memory into f2
fcvt.h.d f6, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0b2f3a88372d211f # load x3 with value 0x0b2f3a88372d211f
sd x3, 0(x2) # store 0x0b2f3a88372d211f in memory
fld f3, 0(x2) # load 0x0b2f3a88372d211f from memory into f3
fcvt.h.d f19, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf632c063b5f4738a # load x3 with value 0xf632c063b5f4738a
sd x3, 0(x2) # store 0xf632c063b5f4738a in memory
fld f4, 0(x2) # load 0xf632c063b5f4738a from memory into f4
fcvt.h.d f18, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5af6279b034baab9 # load x3 with value 0x5af6279b034baab9
sd x3, 0(x2) # store 0x5af6279b034baab9 in memory
fld f5, 0(x2) # load 0x5af6279b034baab9 from memory into f5
fcvt.h.d f17, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c395183bb5e0c9f # load x3 with value 0x8c395183bb5e0c9f
sd x3, 0(x2) # store 0x8c395183bb5e0c9f in memory
fld f6, 0(x2) # load 0x8c395183bb5e0c9f from memory into f6
fcvt.h.d f20, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x98a8820e0d0e0987 # load x3 with value 0x98a8820e0d0e0987
sd x3, 0(x2) # store 0x98a8820e0d0e0987 in memory
fld f7, 0(x2) # load 0x98a8820e0d0e0987 from memory into f7
fcvt.h.d f2, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc1cd3a9f1979816d # load x3 with value 0xc1cd3a9f1979816d
sd x3, 0(x2) # store 0xc1cd3a9f1979816d in memory
fld f8, 0(x2) # load 0xc1cd3a9f1979816d from memory into f8
fcvt.h.d f17, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xeb53b9a205006d3e # load x3 with value 0xeb53b9a205006d3e
sd x3, 0(x2) # store 0xeb53b9a205006d3e in memory
fld f9, 0(x2) # load 0xeb53b9a205006d3e from memory into f9
fcvt.h.d f28, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe09b9e033b84e2db # load x3 with value 0xe09b9e033b84e2db
sd x3, 0(x2) # store 0xe09b9e033b84e2db in memory
fld f10, 0(x2) # load 0xe09b9e033b84e2db from memory into f10
fcvt.h.d f15, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5c1cb53bb6095c93 # load x3 with value 0x5c1cb53bb6095c93
sd x3, 0(x2) # store 0x5c1cb53bb6095c93 in memory
fld f11, 0(x2) # load 0x5c1cb53bb6095c93 from memory into f11
fcvt.h.d f17, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb77f91d2c2cbfe98 # load x3 with value 0xb77f91d2c2cbfe98
sd x3, 0(x2) # store 0xb77f91d2c2cbfe98 in memory
fld f12, 0(x2) # load 0xb77f91d2c2cbfe98 from memory into f12
fcvt.h.d f25, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c847aafc777efc8 # load x3 with value 0x9c847aafc777efc8
sd x3, 0(x2) # store 0x9c847aafc777efc8 in memory
fld f13, 0(x2) # load 0x9c847aafc777efc8 from memory into f13
fcvt.h.d f23, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfbb685bfd151f61c # load x3 with value 0xfbb685bfd151f61c
sd x3, 0(x2) # store 0xfbb685bfd151f61c in memory
fld f14, 0(x2) # load 0xfbb685bfd151f61c from memory into f14
fcvt.h.d f8, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x414de0bd0ecc602e # load x3 with value 0x414de0bd0ecc602e
sd x3, 0(x2) # store 0x414de0bd0ecc602e in memory
fld f15, 0(x2) # load 0x414de0bd0ecc602e from memory into f15
fcvt.h.d f17, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7dddca1ba6ff315 # load x3 with value 0xf7dddca1ba6ff315
sd x3, 0(x2) # store 0xf7dddca1ba6ff315 in memory
fld f16, 0(x2) # load 0xf7dddca1ba6ff315 from memory into f16
fcvt.h.d f15, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x25483b57dc7d4180 # load x3 with value 0x25483b57dc7d4180
sd x3, 0(x2) # store 0x25483b57dc7d4180 in memory
fld f17, 0(x2) # load 0x25483b57dc7d4180 from memory into f17
fcvt.h.d f13, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3953983e4d237835 # load x3 with value 0x3953983e4d237835
sd x3, 0(x2) # store 0x3953983e4d237835 in memory
fld f18, 0(x2) # load 0x3953983e4d237835 from memory into f18
fcvt.h.d f3, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3dbf42ea7f1786dd # load x3 with value 0x3dbf42ea7f1786dd
sd x3, 0(x2) # store 0x3dbf42ea7f1786dd in memory
fld f19, 0(x2) # load 0x3dbf42ea7f1786dd from memory into f19
fcvt.h.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbca31557df27552f # load x3 with value 0xbca31557df27552f
sd x3, 0(x2) # store 0xbca31557df27552f in memory
fld f20, 0(x2) # load 0xbca31557df27552f from memory into f20
fcvt.h.d f12, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd931f5ab74c7167 # load x3 with value 0xfd931f5ab74c7167
sd x3, 0(x2) # store 0xfd931f5ab74c7167 in memory
fld f21, 0(x2) # load 0xfd931f5ab74c7167 from memory into f21
fcvt.h.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x52091a9a6e775503 # load x3 with value 0x52091a9a6e775503
sd x3, 0(x2) # store 0x52091a9a6e775503 in memory
fld f22, 0(x2) # load 0x52091a9a6e775503 from memory into f22
fcvt.h.d f2, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd4200688e63dd1f8 # load x3 with value 0xd4200688e63dd1f8
sd x3, 0(x2) # store 0xd4200688e63dd1f8 in memory
fld f23, 0(x2) # load 0xd4200688e63dd1f8 from memory into f23
fcvt.h.d f18, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf7ac402f0fe662a # load x3 with value 0xbf7ac402f0fe662a
sd x3, 0(x2) # store 0xbf7ac402f0fe662a in memory
fld f24, 0(x2) # load 0xbf7ac402f0fe662a from memory into f24
fcvt.h.d f28, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb3b88b6d4200244d # load x3 with value 0xb3b88b6d4200244d
sd x3, 0(x2) # store 0xb3b88b6d4200244d in memory
fld f25, 0(x2) # load 0xb3b88b6d4200244d from memory into f25
fcvt.h.d f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb5fc56489bdfaf3c # load x3 with value 0xb5fc56489bdfaf3c
sd x3, 0(x2) # store 0xb5fc56489bdfaf3c in memory
fld f26, 0(x2) # load 0xb5fc56489bdfaf3c from memory into f26
fcvt.h.d f22, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x95d19453d23ead8f # load x3 with value 0x95d19453d23ead8f
sd x3, 0(x2) # store 0x95d19453d23ead8f in memory
fld f27, 0(x2) # load 0x95d19453d23ead8f from memory into f27
fcvt.h.d f5, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x166c50a421d9bc37 # load x3 with value 0x166c50a421d9bc37
sd x3, 0(x2) # store 0x166c50a421d9bc37 in memory
fld f28, 0(x2) # load 0x166c50a421d9bc37 from memory into f28
fcvt.h.d f25, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f5f6f07dfe02f3a # load x3 with value 0x0f5f6f07dfe02f3a
sd x3, 0(x2) # store 0x0f5f6f07dfe02f3a in memory
fld f29, 0(x2) # load 0x0f5f6f07dfe02f3a from memory into f29
fcvt.h.d f10, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ed59318c5ca3346 # load x3 with value 0x2ed59318c5ca3346
sd x3, 0(x2) # store 0x2ed59318c5ca3346 in memory
fld f30, 0(x2) # load 0x2ed59318c5ca3346 from memory into f30
fcvt.h.d f26, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2d23e5012a9cef6e # load x3 with value 0x2d23e5012a9cef6e
sd x3, 0(x2) # store 0x2d23e5012a9cef6e in memory
fld f31, 0(x2) # load 0x2d23e5012a9cef6e from memory into f31
fcvt.h.d f17, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd230167e7cf69b1b # load x3 with value 0xd230167e7cf69b1b
sd x3, 0(x2) # store 0xd230167e7cf69b1b in memory
fld f24, 0(x2) # load 0xd230167e7cf69b1b from memory into f24
fcvt.h.d f0, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a348a221a662382 # load x3 with value 0x7a348a221a662382
sd x3, 0(x2) # store 0x7a348a221a662382 in memory
fld f2, 0(x2) # load 0x7a348a221a662382 from memory into f2
fcvt.h.d f1, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe68b5c716b4a030b # load x3 with value 0xe68b5c716b4a030b
sd x3, 0(x2) # store 0xe68b5c716b4a030b in memory
fld f27, 0(x2) # load 0xe68b5c716b4a030b from memory into f27
fcvt.h.d f2, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xef6e17714c375667 # load x3 with value 0xef6e17714c375667
sd x3, 0(x2) # store 0xef6e17714c375667 in memory
fld f21, 0(x2) # load 0xef6e17714c375667 from memory into f21
fcvt.h.d f3, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x17981521b8b51d98 # load x3 with value 0x17981521b8b51d98
sd x3, 0(x2) # store 0x17981521b8b51d98 in memory
fld f25, 0(x2) # load 0x17981521b8b51d98 from memory into f25
fcvt.h.d f4, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec55e585365bb3ec # load x3 with value 0xec55e585365bb3ec
sd x3, 0(x2) # store 0xec55e585365bb3ec in memory
fld f11, 0(x2) # load 0xec55e585365bb3ec from memory into f11
fcvt.h.d f5, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5e76b1bfc42ee1e1 # load x3 with value 0x5e76b1bfc42ee1e1
sd x3, 0(x2) # store 0x5e76b1bfc42ee1e1 in memory
fld f5, 0(x2) # load 0x5e76b1bfc42ee1e1 from memory into f5
fcvt.h.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a7187fdc3823f5e # load x3 with value 0x2a7187fdc3823f5e
sd x3, 0(x2) # store 0x2a7187fdc3823f5e in memory
fld f13, 0(x2) # load 0x2a7187fdc3823f5e from memory into f13
fcvt.h.d f7, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x79e50c63038cca85 # load x3 with value 0x79e50c63038cca85
sd x3, 0(x2) # store 0x79e50c63038cca85 in memory
fld f14, 0(x2) # load 0x79e50c63038cca85 from memory into f14
fcvt.h.d f8, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd12c9edbd8bd65ce # load x3 with value 0xd12c9edbd8bd65ce
sd x3, 0(x2) # store 0xd12c9edbd8bd65ce in memory
fld f18, 0(x2) # load 0xd12c9edbd8bd65ce from memory into f18
fcvt.h.d f9, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe4d452defc2d723d # load x3 with value 0xe4d452defc2d723d
sd x3, 0(x2) # store 0xe4d452defc2d723d in memory
fld f17, 0(x2) # load 0xe4d452defc2d723d from memory into f17
fcvt.h.d f10, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64d185d43d9bb833 # load x3 with value 0x64d185d43d9bb833
sd x3, 0(x2) # store 0x64d185d43d9bb833 in memory
fld f6, 0(x2) # load 0x64d185d43d9bb833 from memory into f6
fcvt.h.d f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x893070f94f3fc64e # load x3 with value 0x893070f94f3fc64e
sd x3, 0(x2) # store 0x893070f94f3fc64e in memory
fld f21, 0(x2) # load 0x893070f94f3fc64e from memory into f21
fcvt.h.d f12, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc2eb12efaa77fd3a # load x3 with value 0xc2eb12efaa77fd3a
sd x3, 0(x2) # store 0xc2eb12efaa77fd3a in memory
fld f24, 0(x2) # load 0xc2eb12efaa77fd3a from memory into f24
fcvt.h.d f13, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaa13189841f91077 # load x3 with value 0xaa13189841f91077
sd x3, 0(x2) # store 0xaa13189841f91077 in memory
fld f10, 0(x2) # load 0xaa13189841f91077 from memory into f10
fcvt.h.d f14, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8e62497e5499ef7a # load x3 with value 0x8e62497e5499ef7a
sd x3, 0(x2) # store 0x8e62497e5499ef7a in memory
fld f24, 0(x2) # load 0x8e62497e5499ef7a from memory into f24
fcvt.h.d f15, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94c799b504a9ca30 # load x3 with value 0x94c799b504a9ca30
sd x3, 0(x2) # store 0x94c799b504a9ca30 in memory
fld f31, 0(x2) # load 0x94c799b504a9ca30 from memory into f31
fcvt.h.d f16, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12168fcb8ec5ef09 # load x3 with value 0x12168fcb8ec5ef09
sd x3, 0(x2) # store 0x12168fcb8ec5ef09 in memory
fld f28, 0(x2) # load 0x12168fcb8ec5ef09 from memory into f28
fcvt.h.d f17, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc079de15649caa5a # load x3 with value 0xc079de15649caa5a
sd x3, 0(x2) # store 0xc079de15649caa5a in memory
fld f17, 0(x2) # load 0xc079de15649caa5a from memory into f17
fcvt.h.d f18, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ae3f11fd86d83ee # load x3 with value 0x8ae3f11fd86d83ee
sd x3, 0(x2) # store 0x8ae3f11fd86d83ee in memory
fld f2, 0(x2) # load 0x8ae3f11fd86d83ee from memory into f2
fcvt.h.d f19, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9f197fa331ef938d # load x3 with value 0x9f197fa331ef938d
sd x3, 0(x2) # store 0x9f197fa331ef938d in memory
fld f18, 0(x2) # load 0x9f197fa331ef938d from memory into f18
fcvt.h.d f20, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2ccd44f35c167ea7 # load x3 with value 0x2ccd44f35c167ea7
sd x3, 0(x2) # store 0x2ccd44f35c167ea7 in memory
fld f26, 0(x2) # load 0x2ccd44f35c167ea7 from memory into f26
fcvt.h.d f21, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x71afef85bd9b3fca # load x3 with value 0x71afef85bd9b3fca
sd x3, 0(x2) # store 0x71afef85bd9b3fca in memory
fld f30, 0(x2) # load 0x71afef85bd9b3fca from memory into f30
fcvt.h.d f22, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x600c24f8119575b3 # load x3 with value 0x600c24f8119575b3
sd x3, 0(x2) # store 0x600c24f8119575b3 in memory
fld f17, 0(x2) # load 0x600c24f8119575b3 from memory into f17
fcvt.h.d f23, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x19774bdfbc399d8e # load x3 with value 0x19774bdfbc399d8e
sd x3, 0(x2) # store 0x19774bdfbc399d8e in memory
fld f3, 0(x2) # load 0x19774bdfbc399d8e from memory into f3
fcvt.h.d f24, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee465fe369e3b7bb # load x3 with value 0xee465fe369e3b7bb
sd x3, 0(x2) # store 0xee465fe369e3b7bb in memory
fld f11, 0(x2) # load 0xee465fe369e3b7bb from memory into f11
fcvt.h.d f25, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42fa3aeb9c8084dd # load x3 with value 0x42fa3aeb9c8084dd
sd x3, 0(x2) # store 0x42fa3aeb9c8084dd in memory
fld f5, 0(x2) # load 0x42fa3aeb9c8084dd from memory into f5
fcvt.h.d f26, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23b7a0d8440863bb # load x3 with value 0x23b7a0d8440863bb
sd x3, 0(x2) # store 0x23b7a0d8440863bb in memory
fld f29, 0(x2) # load 0x23b7a0d8440863bb from memory into f29
fcvt.h.d f27, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa944f0aa693e4961 # load x3 with value 0xa944f0aa693e4961
sd x3, 0(x2) # store 0xa944f0aa693e4961 in memory
fld f9, 0(x2) # load 0xa944f0aa693e4961 from memory into f9
fcvt.h.d f28, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x60a5cba9672b2afc # load x3 with value 0x60a5cba9672b2afc
sd x3, 0(x2) # store 0x60a5cba9672b2afc in memory
fld f2, 0(x2) # load 0x60a5cba9672b2afc from memory into f2
fcvt.h.d f29, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9457c6b8431e66d7 # load x3 with value 0x9457c6b8431e66d7
sd x3, 0(x2) # store 0x9457c6b8431e66d7 in memory
fld f1, 0(x2) # load 0x9457c6b8431e66d7 from memory into f1
fcvt.h.d f30, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe99fbd8d3e6d0b2b # load x3 with value 0xe99fbd8d3e6d0b2b
sd x3, 0(x2) # store 0xe99fbd8d3e6d0b2b in memory
fld f13, 0(x2) # load 0xe99fbd8d3e6d0b2b from memory into f13
fcvt.h.d f31, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fcvt.h.d f1, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fcvt.h.d f27, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
fcvt.h.d f27, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fcvt.h.d f8, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fcvt.h.d f22, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fcvt.h.d f27, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fcvt.h.d f27, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fcvt.h.d f20, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fcvt.h.d f19, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fcvt.h.d f13, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fcvt.h.d f26, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fcvt.h.d f11, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fcvt.h.d f28, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fcvt.h.d f16, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fcvt.h.d f15, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fcvt.h.d f22, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fcvt.h.d f15, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fcvt.h.d f10, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fcvt.h.d f6, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fcvt.h.d f12, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fcvt.h.d f13, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fcvt.h.d f12, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f7, 0(x2) # load 0xfff8000000000000 from memory into f7
fcvt.h.d f11, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fcvt.h.d f8, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fcvt.h.d f28, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f16, 0(x2) # load 0xfff0000000000001 from memory into f16
fcvt.h.d f29, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fcvt.h.d f26, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fcvt.h.d f24, f16 # perform operation second time to make sure flags don't change

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fcvt.h.d f19, f15, dyn # perform operation
fcvt.h.d f19, f15, rdn # perform operation
fcvt.h.d f19, f15, rmm # perform operation
fcvt.h.d f19, f15, rne # perform operation
fcvt.h.d f19, f15, rtz # perform operation
fcvt.h.d f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f19, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fcvt.h.d f27, f20, dyn # perform operation
fcvt.h.d f27, f20, rdn # perform operation
fcvt.h.d f27, f20, rmm # perform operation
fcvt.h.d f27, f20, rne # perform operation
fcvt.h.d f27, f20, rtz # perform operation
fcvt.h.d f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f27, f20 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fcvt.h.d f19, f12, dyn # perform operation
fcvt.h.d f19, f12, rdn # perform operation
fcvt.h.d f19, f12, rmm # perform operation
fcvt.h.d f19, f12, rne # perform operation
fcvt.h.d f19, f12, rtz # perform operation
fcvt.h.d f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f19, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fcvt.h.d f26, f10, dyn # perform operation
fcvt.h.d f26, f10, rdn # perform operation
fcvt.h.d f26, f10, rmm # perform operation
fcvt.h.d f26, f10, rne # perform operation
fcvt.h.d f26, f10, rtz # perform operation
fcvt.h.d f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f26, f10 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fcvt.h.d f6, f18, dyn # perform operation
fcvt.h.d f6, f18, rdn # perform operation
fcvt.h.d f6, f18, rmm # perform operation
fcvt.h.d f6, f18, rne # perform operation
fcvt.h.d f6, f18, rtz # perform operation
fcvt.h.d f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f6, f18 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fcvt.h.d f26, f3, dyn # perform operation
fcvt.h.d f26, f3, rdn # perform operation
fcvt.h.d f26, f3, rmm # perform operation
fcvt.h.d f26, f3, rne # perform operation
fcvt.h.d f26, f3, rtz # perform operation
fcvt.h.d f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f26, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fcvt.h.d f22, f15, dyn # perform operation
fcvt.h.d f22, f15, rdn # perform operation
fcvt.h.d f22, f15, rmm # perform operation
fcvt.h.d f22, f15, rne # perform operation
fcvt.h.d f22, f15, rtz # perform operation
fcvt.h.d f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f15 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fcvt.h.d f22, f25, dyn # perform operation
fcvt.h.d f22, f25, rdn # perform operation
fcvt.h.d f22, f25, rmm # perform operation
fcvt.h.d f22, f25, rne # perform operation
fcvt.h.d f22, f25, rtz # perform operation
fcvt.h.d f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f25 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fcvt.h.d f29, f24, dyn # perform operation
fcvt.h.d f29, f24, rdn # perform operation
fcvt.h.d f29, f24, rmm # perform operation
fcvt.h.d f29, f24, rne # perform operation
fcvt.h.d f29, f24, rtz # perform operation
fcvt.h.d f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f29, f24 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fcvt.h.d f10, f6, dyn # perform operation
fcvt.h.d f10, f6, rdn # perform operation
fcvt.h.d f10, f6, rmm # perform operation
fcvt.h.d f10, f6, rne # perform operation
fcvt.h.d f10, f6, rtz # perform operation
fcvt.h.d f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f10, f6 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fcvt.h.d f12, f9, dyn # perform operation
fcvt.h.d f12, f9, rdn # perform operation
fcvt.h.d f12, f9, rmm # perform operation
fcvt.h.d f12, f9, rne # perform operation
fcvt.h.d f12, f9, rtz # perform operation
fcvt.h.d f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f12, f9 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fcvt.h.d f25, f10, dyn # perform operation
fcvt.h.d f25, f10, rdn # perform operation
fcvt.h.d f25, f10, rmm # perform operation
fcvt.h.d f25, f10, rne # perform operation
fcvt.h.d f25, f10, rtz # perform operation
fcvt.h.d f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f25, f10 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fcvt.h.d f18, f14, dyn # perform operation
fcvt.h.d f18, f14, rdn # perform operation
fcvt.h.d f18, f14, rmm # perform operation
fcvt.h.d f18, f14, rne # perform operation
fcvt.h.d f18, f14, rtz # perform operation
fcvt.h.d f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f18, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fcvt.h.d f21, f12, dyn # perform operation
fcvt.h.d f21, f12, rdn # perform operation
fcvt.h.d f21, f12, rmm # perform operation
fcvt.h.d f21, f12, rne # perform operation
fcvt.h.d f21, f12, rtz # perform operation
fcvt.h.d f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fcvt.h.d f16, f31, dyn # perform operation
fcvt.h.d f16, f31, rdn # perform operation
fcvt.h.d f16, f31, rmm # perform operation
fcvt.h.d f16, f31, rne # perform operation
fcvt.h.d f16, f31, rtz # perform operation
fcvt.h.d f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f16, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fcvt.h.d f24, f29, dyn # perform operation
fcvt.h.d f24, f29, rdn # perform operation
fcvt.h.d f24, f29, rmm # perform operation
fcvt.h.d f24, f29, rne # perform operation
fcvt.h.d f24, f29, rtz # perform operation
fcvt.h.d f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f24, f29 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fcvt.h.d f24, f28, dyn # perform operation
fcvt.h.d f24, f28, rdn # perform operation
fcvt.h.d f24, f28, rmm # perform operation
fcvt.h.d f24, f28, rne # perform operation
fcvt.h.d f24, f28, rtz # perform operation
fcvt.h.d f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f24, f28 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fcvt.h.d f30, f3, dyn # perform operation
fcvt.h.d f30, f3, rdn # perform operation
fcvt.h.d f30, f3, rmm # perform operation
fcvt.h.d f30, f3, rne # perform operation
fcvt.h.d f30, f3, rtz # perform operation
fcvt.h.d f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f30, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fcvt.h.d f11, f24, dyn # perform operation
fcvt.h.d f11, f24, rdn # perform operation
fcvt.h.d f11, f24, rmm # perform operation
fcvt.h.d f11, f24, rne # perform operation
fcvt.h.d f11, f24, rtz # perform operation
fcvt.h.d f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f11, f24 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fcvt.h.d f15, f3, dyn # perform operation
fcvt.h.d f15, f3, rdn # perform operation
fcvt.h.d f15, f3, rmm # perform operation
fcvt.h.d f15, f3, rne # perform operation
fcvt.h.d f15, f3, rtz # perform operation
fcvt.h.d f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f15, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fcvt.h.d f22, f31, dyn # perform operation
fcvt.h.d f22, f31, rdn # perform operation
fcvt.h.d f22, f31, rmm # perform operation
fcvt.h.d f22, f31, rne # perform operation
fcvt.h.d f22, f31, rtz # perform operation
fcvt.h.d f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f31 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fcvt.h.d f21, f11, dyn # perform operation
fcvt.h.d f21, f11, rdn # perform operation
fcvt.h.d f21, f11, rmm # perform operation
fcvt.h.d f21, f11, rne # perform operation
fcvt.h.d f21, f11, rtz # perform operation
fcvt.h.d f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f21, f11 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff8000000000000 # load x3 with value 0xfff8000000000000
sd x3, 0(x2) # store 0xfff8000000000000 in memory
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
fcvt.h.d f17, f30, dyn # perform operation
fcvt.h.d f17, f30, rdn # perform operation
fcvt.h.d f17, f30, rmm # perform operation
fcvt.h.d f17, f30, rne # perform operation
fcvt.h.d f17, f30, rtz # perform operation
fcvt.h.d f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f17, f30 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fcvt.h.d f22, f12, dyn # perform operation
fcvt.h.d f22, f12, rdn # perform operation
fcvt.h.d f22, f12, rmm # perform operation
fcvt.h.d f22, f12, rne # perform operation
fcvt.h.d f22, f12, rtz # perform operation
fcvt.h.d f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f22, f12 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fcvt.h.d f3, f23, dyn # perform operation
fcvt.h.d f3, f23, rdn # perform operation
fcvt.h.d f3, f23, rmm # perform operation
fcvt.h.d f3, f23, rne # perform operation
fcvt.h.d f3, f23, rtz # perform operation
fcvt.h.d f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f3, f23 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfff0000000000001 # load x3 with value 0xfff0000000000001
sd x3, 0(x2) # store 0xfff0000000000001 in memory
fld f14, 0(x2) # load 0xfff0000000000001 from memory into f14
fcvt.h.d f11, f14, dyn # perform operation
fcvt.h.d f11, f14, rdn # perform operation
fcvt.h.d f11, f14, rmm # perform operation
fcvt.h.d f11, f14, rne # perform operation
fcvt.h.d f11, f14, rtz # perform operation
fcvt.h.d f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f11, f14 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
fcvt.h.d f5, f3, dyn # perform operation
fcvt.h.d f5, f3, rdn # perform operation
fcvt.h.d f5, f3, rmm # perform operation
fcvt.h.d f5, f3, rne # perform operation
fcvt.h.d f5, f3, rtz # perform operation
fcvt.h.d f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f5, f3 # perform operation


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fcvt.h.d f24, f25, dyn # perform operation
fcvt.h.d f24, f25, rdn # perform operation
fcvt.h.d f24, f25, rmm # perform operation
fcvt.h.d f24, f25, rne # perform operation
fcvt.h.d f24, f25, rtz # perform operation
fcvt.h.d f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f24, f25 # perform operation


# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x90d6f7a6f5e177fe # load x3 with value 0x90d6f7a6f5e177fe
sd x3, 0(x2) # store 0x90d6f7a6f5e177fe in memory
fld f0, 0(x2) # load 0x90d6f7a6f5e177fe from memory into f0
fcvt.h.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xae69ef4c9c406866 # load x3 with value 0xae69ef4c9c406866
sd x3, 0(x2) # store 0xae69ef4c9c406866 in memory
fld f1, 0(x2) # load 0xae69ef4c9c406866 from memory into f1
fcvt.h.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x646682ae9483491b # load x3 with value 0x646682ae9483491b
sd x3, 0(x2) # store 0x646682ae9483491b in memory
fld f2, 0(x2) # load 0x646682ae9483491b from memory into f2
fcvt.h.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ddd81e8acbd2382 # load x3 with value 0x6ddd81e8acbd2382
sd x3, 0(x2) # store 0x6ddd81e8acbd2382 in memory
fld f3, 0(x2) # load 0x6ddd81e8acbd2382 from memory into f3
fcvt.h.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x100b90a2b98f32ff # load x3 with value 0x100b90a2b98f32ff
sd x3, 0(x2) # store 0x100b90a2b98f32ff in memory
fld f4, 0(x2) # load 0x100b90a2b98f32ff from memory into f4
fcvt.h.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8f7b272ac22d1317 # load x3 with value 0x8f7b272ac22d1317
sd x3, 0(x2) # store 0x8f7b272ac22d1317 in memory
fld f5, 0(x2) # load 0x8f7b272ac22d1317 from memory into f5
fcvt.h.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e915d92918a5f4f # load x3 with value 0x2e915d92918a5f4f
sd x3, 0(x2) # store 0x2e915d92918a5f4f in memory
fld f6, 0(x2) # load 0x2e915d92918a5f4f from memory into f6
fcvt.h.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xac79b1b89a62ef79 # load x3 with value 0xac79b1b89a62ef79
sd x3, 0(x2) # store 0xac79b1b89a62ef79 in memory
fld f7, 0(x2) # load 0xac79b1b89a62ef79 from memory into f7
fcvt.h.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0a7bbdc7ce3dc4e2 # load x3 with value 0x0a7bbdc7ce3dc4e2
sd x3, 0(x2) # store 0x0a7bbdc7ce3dc4e2 in memory
fld f8, 0(x2) # load 0x0a7bbdc7ce3dc4e2 from memory into f8
fcvt.h.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa2768ab8bc2cde2e # load x3 with value 0xa2768ab8bc2cde2e
sd x3, 0(x2) # store 0xa2768ab8bc2cde2e in memory
fld f9, 0(x2) # load 0xa2768ab8bc2cde2e from memory into f9
fcvt.h.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ae2b11689061531 # load x3 with value 0x1ae2b11689061531
sd x3, 0(x2) # store 0x1ae2b11689061531 in memory
fld f10, 0(x2) # load 0x1ae2b11689061531 from memory into f10
fcvt.h.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf90c6deb5d2d606f # load x3 with value 0xf90c6deb5d2d606f
sd x3, 0(x2) # store 0xf90c6deb5d2d606f in memory
fld f11, 0(x2) # load 0xf90c6deb5d2d606f from memory into f11
fcvt.h.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec1ebca14fa4e04e # load x3 with value 0xec1ebca14fa4e04e
sd x3, 0(x2) # store 0xec1ebca14fa4e04e in memory
fld f12, 0(x2) # load 0xec1ebca14fa4e04e from memory into f12
fcvt.h.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e4642d73891c56d # load x3 with value 0x7e4642d73891c56d
sd x3, 0(x2) # store 0x7e4642d73891c56d in memory
fld f13, 0(x2) # load 0x7e4642d73891c56d from memory into f13
fcvt.h.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4caabbc860a9db5a # load x3 with value 0x4caabbc860a9db5a
sd x3, 0(x2) # store 0x4caabbc860a9db5a in memory
fld f14, 0(x2) # load 0x4caabbc860a9db5a from memory into f14
fcvt.h.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2c488ec54d3c9667 # load x3 with value 0x2c488ec54d3c9667
sd x3, 0(x2) # store 0x2c488ec54d3c9667 in memory
fld f15, 0(x2) # load 0x2c488ec54d3c9667 from memory into f15
fcvt.h.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x269ef05552deed4f # load x3 with value 0x269ef05552deed4f
sd x3, 0(x2) # store 0x269ef05552deed4f in memory
fld f16, 0(x2) # load 0x269ef05552deed4f from memory into f16
fcvt.h.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3a1c3d6ae487f47b # load x3 with value 0x3a1c3d6ae487f47b
sd x3, 0(x2) # store 0x3a1c3d6ae487f47b in memory
fld f17, 0(x2) # load 0x3a1c3d6ae487f47b from memory into f17
fcvt.h.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x472cb9dc2b37e798 # load x3 with value 0x472cb9dc2b37e798
sd x3, 0(x2) # store 0x472cb9dc2b37e798 in memory
fld f18, 0(x2) # load 0x472cb9dc2b37e798 from memory into f18
fcvt.h.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x38f26cad55a4a7fc # load x3 with value 0x38f26cad55a4a7fc
sd x3, 0(x2) # store 0x38f26cad55a4a7fc in memory
fld f19, 0(x2) # load 0x38f26cad55a4a7fc from memory into f19
fcvt.h.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x07cf344cc9e706f8 # load x3 with value 0x07cf344cc9e706f8
sd x3, 0(x2) # store 0x07cf344cc9e706f8 in memory
fld f20, 0(x2) # load 0x07cf344cc9e706f8 from memory into f20
fcvt.h.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe773431dac992845 # load x3 with value 0xe773431dac992845
sd x3, 0(x2) # store 0xe773431dac992845 in memory
fld f21, 0(x2) # load 0xe773431dac992845 from memory into f21
fcvt.h.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4d34f13e2de55106 # load x3 with value 0x4d34f13e2de55106
sd x3, 0(x2) # store 0x4d34f13e2de55106 in memory
fld f22, 0(x2) # load 0x4d34f13e2de55106 from memory into f22
fcvt.h.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x096ca126b50901b2 # load x3 with value 0x096ca126b50901b2
sd x3, 0(x2) # store 0x096ca126b50901b2 in memory
fld f23, 0(x2) # load 0x096ca126b50901b2 from memory into f23
fcvt.h.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6df0ded48a5f88b2 # load x3 with value 0x6df0ded48a5f88b2
sd x3, 0(x2) # store 0x6df0ded48a5f88b2 in memory
fld f24, 0(x2) # load 0x6df0ded48a5f88b2 from memory into f24
fcvt.h.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x97777e94a35a274d # load x3 with value 0x97777e94a35a274d
sd x3, 0(x2) # store 0x97777e94a35a274d in memory
fld f25, 0(x2) # load 0x97777e94a35a274d from memory into f25
fcvt.h.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0f0b41ad7f9d35da # load x3 with value 0x0f0b41ad7f9d35da
sd x3, 0(x2) # store 0x0f0b41ad7f9d35da in memory
fld f26, 0(x2) # load 0x0f0b41ad7f9d35da from memory into f26
fcvt.h.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf855dc194d316fe5 # load x3 with value 0xf855dc194d316fe5
sd x3, 0(x2) # store 0xf855dc194d316fe5 in memory
fld f27, 0(x2) # load 0xf855dc194d316fe5 from memory into f27
fcvt.h.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x763ac878aa4d70c2 # load x3 with value 0x763ac878aa4d70c2
sd x3, 0(x2) # store 0x763ac878aa4d70c2 in memory
fld f28, 0(x2) # load 0x763ac878aa4d70c2 from memory into f28
fcvt.h.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23dc136bcddeaf38 # load x3 with value 0x23dc136bcddeaf38
sd x3, 0(x2) # store 0x23dc136bcddeaf38 in memory
fld f29, 0(x2) # load 0x23dc136bcddeaf38 from memory into f29
fcvt.h.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8111ae0dbdd2f0f3 # load x3 with value 0x8111ae0dbdd2f0f3
sd x3, 0(x2) # store 0x8111ae0dbdd2f0f3 in memory
fld f30, 0(x2) # load 0x8111ae0dbdd2f0f3 from memory into f30
fcvt.h.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1b659d07776574ad # load x3 with value 0x1b659d07776574ad
sd x3, 0(x2) # store 0x1b659d07776574ad in memory
fld f31, 0(x2) # load 0x1b659d07776574ad from memory into f31
fcvt.h.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1c42952d324195bc # load x3 with value 0x1c42952d324195bc
sd x3, 0(x2) # store 0x1c42952d324195bc in memory
fld f26, 0(x2) # load 0x1c42952d324195bc from memory into f26
fcvt.h.d f9, f26, dyn # perform operation
fcvt.h.d f9, f26, rdn # perform operation
fcvt.h.d f9, f26, rmm # perform operation
fcvt.h.d f9, f26, rne # perform operation
fcvt.h.d f9, f26, rtz # perform operation
fcvt.h.d f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.d f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.d f9, f26 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86f659b6a15bcf51 # load x3 with value 0x86f659b6a15bcf51
sd x3, 0(x2) # store 0x86f659b6a15bcf51 in memory
fld f25, 0(x2) # load 0x86f659b6a15bcf51 from memory into f25
fcvt.h.d f5, f25 # perform operation second time to make sure flags don't change

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
