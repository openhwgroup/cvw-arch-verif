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

// machine cbie test
li a0, 3
ecall

li a0, 3
jal cbieFunction

// user cbie test
li a0, 0
ecall

li a0, 0
jal cbieFunction

// Machine cbcfe test
li a0, 3
ecall

li a0, 3
jal cbcfeFunction

// User cbcfe test
li a0, 0
ecall

li a0, 0
jal cbcfeFunction

// Machine cbze test
li a0, 3
ecall

li a0, 3
jal cbzeFunction

// User cbze test
li a0, 0
ecall

li a0, 0
jal cbzeFunction


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
    slli  t1, t0, 4
    csrw  menvcfg, t0    //bits 4 and 5 of csr menvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    la t2, DataBlock
    cbo.inval    0(t2)

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    li      t3, 4
    blt     t0, t3, cbieLoop   # while (i < 4) repeat outer loop

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
    csrw  menvcfg, t1    //bit 6 of csr menvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    la t2, DataBlock
    cbo.clean    0(t2)
    cbo.flush    0(t2)


    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    li t3, 2
    blt     t0, t3, cbcfeLoop   # while (i < 2) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret

/////FUNCTION enter description
cbzeFunction:
    li      t0, 0          # t0 = i = 0  (outer loop counter)

cbzeLoop:
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

    la t2, DataBlock
    cbo.zero    0(t2)

    # ---- once inner loop finishes, advance outer counter i ----
    addi    t0, t0, 1          # i++
    li t3, 2
    blt     t0, t3, cbzeLoop   # while (i < 2) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    ret


// Scratch data area for cache operations
// 4 times larger than cach size incase
// cbo instruction lands between two boundaries
.data
.align 10
DataBlock:
    .fill  2048
