//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

##### START_TEST_CONFIG #####
# EXTENSIONS: @EXTENSION_LIST@
# MARCH: @MARCH@
##### END_TEST_CONFIG #####

#include "model_test.h"
#include "arch_test.h"

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

RVTEST_SIGBASE( x3,signature_base)
