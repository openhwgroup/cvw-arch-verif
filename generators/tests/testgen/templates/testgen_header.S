//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

##### START_TEST_CONFIG #####
# implemented_extensions: @EXTENSION_LIST@
# params:
#   MXLEN: @XLEN@
# MARCH: @MARCH@
# CONFIG_DEPENDENT: @CONFIG_DEPENDENT@
##### END_TEST_CONFIG #####

#include "model_test.h"
#include "arch_test.h"

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE( x3,signature_base)

#ifdef SELFCHECK
# Check CANARY in signature
LI(T1, CANARY_VALUE)
RVTEST_SIGUPD(x3, T1)  # sig_begin_canary
#endif
