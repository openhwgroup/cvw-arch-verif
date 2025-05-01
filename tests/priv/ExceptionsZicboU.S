///////////////////////////////////////////
// ExceptionsZicboU.S
//
// Written: Roman De Santos rdesantos@hmc.edu 17 April 2025
//
// Purpose: Functional coverage test for ExceptionsZicbo in U mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"

main:

li a0, 3

// TODO: add all function calls in all modes

finished:
    j done

////////////////
// Helper functions
////////////////

/////FUNCTION enter description
cbieFunction:
    li      t0, 0          # t0 = i = 0  (outer loop counter)

cbieLoop:
    // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr cbie
    csrw  cbie, t0    //bits 4 and 5 of csr menvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    la scratch, t2

    cbo.inval    0(t2)      // HOW DO I SELECT A CACHE BLOCK
    fence iorw, iorw // IS THIS NEEDED FOR CACHE OPERATIONS?

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    blt     t0, 4, cbieLoop   # while (i < 4) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret


/////FUNCTION enter description
cbcfeFunction:
    li      t0, 0          # t0 = i = 0  (outer loop counter)

cbcfeLoop:
    // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr cbie
    slli  t1, t0, 6
    csrw  cbcfe, t1    //bit 6 of csr menvcfg

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

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    blt     t0, 2, cbcfeLoop   # while (i < 2) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret

/////FUNCTION enter description
cbcfeFunction:
    li      t0, 0          # t0 = i = 0  (outer loop counter)

cbcfeLoop:
    // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr cbcfe
    slli  t1, t0, 7
    csrw  menvcfg, t0    // bit 7 csr menvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    la scratch, t2

    fence iorw, iorw // IS THIS NEEDED FOR CACHE OPERATIONS?
    cbo.zero    0(t2)      // HOW DO I SELECT A CACHE BLOCK
    fence iorw, iorw // IS THIS NEEDED FOR CACHE OPERATIONS?

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    blt     t0, 2, cbzeLoop   # while (i < 2) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret
