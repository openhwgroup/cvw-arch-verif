// Copyright (c) 2023. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
// This file contains test macros for vector tests

#ifndef RISCV_TEST_SUITE_TEST_MACROS_VECTOR_H
#define RISCV_TEST_SUITE_TEST_MACROS_VECTOR_H

#include "model_test.h"
#include "arch_test.h"

// We require four GPRs to be reserved for special purposes:
// - SIG_BASE: Base address of signature memory region
//   Used by *SIGUPD_V* macros
// - DATA_BASE: Base address of data memory region
//   Used by TEST_CASE_*_V* macros to load input data
// - VLENB_CACHE: Cache for VLENB value (length of V registers in bytes)
//   Used by TEST_CASE_CHECK_VLENB
// - HELPER_GPR: Scratch register
//   Used by TEST_CASE_CHECK_VLENB to calculate the required vector length
#ifndef SIG_BASE
# error "SIG_BASE is not specified"
#endif // SIG_BASE
#ifndef DATA_BASE
# error "DATA_BASE"
#endif // DATA_BASE
#ifndef VLENB_CACHE
# error "VLENB_CACHE is not defined"
#endif // VLENB_CACHE
#ifndef HELPER_GPR
# error "HELPER_GPR is not defined"
#endif // HELPER_GPR

// Bits mstatus[10:9] have the vector state
#define MSTATUS_VS_SHIFT 9

#define MSTATUS_VS_OFF     (0x0 << MSTATUS_VS_SHIFT)
#define MSTATUS_VS_INITIAL (0x1 << MSTATUS_VS_SHIFT)
#define MSTATUS_VS_CLEAN   (0x2 << MSTATUS_VS_SHIFT)
#define MSTATUS_VS_DIRTY   (0x3 << MSTATUS_VS_SHIFT)
#define MSTATUS_VS_MASK    (0x3 << MSTATUS_VS_SHIFT)

// RVTEST_V_ENABLE enables the vector unit
// Perform the following steps:
// - Set mstatus.vs to OFF
// - Set mstatus.vs to INITIAL
// - Read out vlenb and store in VLENB_CACHE
#define RVTEST_V_ENABLE()                                               \
    li HELPER_GPR, MSTATUS_VS_MASK ;                                    \
    csrrc zero, mstatus, HELPER_GPR ;                                   \
    li HELPER_GPR, MSTATUS_VS_INITIAL ;                                 \
    csrrs zero, mstatus, HELPER_GPR ;                                   \
    csrr VLENB_CACHE, vlenb ;

// RVTEST_SIGUPD_V() stores the contests of a vector register in the signature
// _BR is basereg, not hard coded to account for VX instructions
// _TMPR is the original HELPER_GPR, used as a scratch register
// AVL is the application vector length
// SEW defines the element size in bits (8, 16, 32, or 64)
// VREG is a VR that holds the data
// offset will be updated (to the next 8-byte boundary)
#define RVTEST_SIGUPD_V(_BR, _TMPR, AVL, SEW, VREG)         \
    .if (offset & 7) > 0 ;                                              \
    .set offset, (offset + 8) & ~7 ;                                    \
    .endif ;                                                            \
    CHK_OFFSET(_BR, REGWIDTH, 0) ;                                           \
    addi _TMPR, _BR, offset ;                                                     \
    vse ## SEW ##.v VREG, (_TMPR) ;                                          \
    .set offset, offset + (AVL * SEW / 8) + 4;                          \
    .if (offset & 7) > 0 ;                                              \
    .set offset, (offset + 8) & ~7 ;                                    \
    .endif ;

#endif // RISCV_TEST_SUITE_TEST_MACROS_VECTOR_H
