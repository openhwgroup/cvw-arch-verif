//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

// Define special purpose registers before including test_macros_vector.h
#define DATA_BASE x4
#define SIG_BASE x3
#define VLENB_CACHE x5
#define HELPER_GPR x6

#include "test_macros_vector.h"

RVTEST_ISA("ISAEXT")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"TestCase",Instruction)

RVTEST_V_ENABLE()
RVTEST_VALBASEUPD(DATA_BASE, vector_data)
RVTEST_SIGBASE(SIG_BASE, signature_base)
