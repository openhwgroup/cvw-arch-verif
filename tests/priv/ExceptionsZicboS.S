///////////////////////////////////////////
// ExceptionsZicboS.S
//
// Written: Roman De Santos rdesantos@hmc.edu 17 April 2025
//
// Purpose: Functional coverage test for ExceptionsZicbo in S mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"

main:


// TODO: add all function calls in all modes



finished:
    j done

////////////////
// Helper functions
////////////////

/// FUNCTION DESCRIPTION NEEDED
cbieFunctioon:
    li      t0, 0          # t0 = i = 0  (outer loop counter)
outerLoop:
    li      t1, 0          # t1 = j = 0  (inner loop counter)

innerLoop:
     // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr {m/s}cbie
    slli  t2, t0, 4
    csrw  menvcfg, t2    // bits 4 and 5 of csr menvcfg

    slli t3, t1, 4
    csrw senvcfg, t3     // bits 4 and 5 of senvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    /////
    la scratch, t2
    cbo.inval    0(t2)      // HOW DO I SELECT A CACHE BLOCK
    fence iorw, iorw // IS THIS NEEDED FOR CACHE OPERATIONS?
    ////

    # ---- advance inner counter j ----
    addi    t1, t1, 1          # j++
    blt     t1, 4, innerLoop   # while (j < 4) continue inner loop

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    blt     t0, 4, outerLoop   # while (i < 4) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret

/// FUNCTION DESCRIPTION NEEDED
cbcfeFunctioon:
    li      t0, 0          # t0 = i = 0  (outer loop counter)
outerCbcfeLoop:
    li      t1, 0          # t1 = j = 0  (inner loop counter)

innerCbcfeLoop:
     // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr {m/s}cbie
    slli  t2, t0, 6
    csrw  menvcfg, t2    // bit 6 of csr menvcfg

    slli t3, t1, 6
    csrw senvcfg, t3     // bit 6 of senvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall


    la scratch, t2
    ////
    fence iorw, iorw // IS THIS NEEDED FOR CACHE OPERATIONS?
    cbo.clean    0(t2)      // HOW DO I SELECT A CACHE BLOCK
    cbo.flush    0(t2)
    fence iorw, iorw // IS THIS NEEDED FOR CACHE OPERATIONS?
    ////


    # ---- advance inner counter j ----
    addi    t1, t1, 1          # j++
    blt     t1, 4, innerCbcfeLoop   # while (j < 4) continue inner loop

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    blt     t0, 4, outerCbcfeLoop   # while (i < 4) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret

// FUNCTION DESCRIPTION NEEDED
cbzeFunctioon:
    li      t0, 0          # t0 = i = 0  (outer loop counter)
outerCbzeLoop:
    li      t1, 0          # t1 = j = 0  (inner loop counter)

innerCbzeLoop:
     // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr {m/s}cbcfe
    slli  t2, t0, 7
    csrw  menvcfg, t2    //bit 7 csr menvcfg

    slli t3, t1, 7
    csrw senvcfg, t3     // bits 4 and 5 of senvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    ///
    la scratch, t2
    cbo.zero    0(t2)      // HOW DO I SELECT A CACHE BLOCK
    fence iorw, iorw // IS THIS NEEDED FOR CACHE OPERATIONS?
    ///

    # ---- advance inner counter j ----
    addi    t1, t1, 1          # j++
    blt     t1, 4, innerCbzeLoop   # while (j < 4) continue inner loop

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    blt     t0, 4, outerCbzeLoop   # while (i < 4) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret
