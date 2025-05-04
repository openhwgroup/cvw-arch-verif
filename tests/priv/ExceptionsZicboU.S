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


// Function: cbieFunction
// Tests cbo.inval with all possible combinations of cbie in the menvcfg csr.
// Program always returns in machine mode.
//
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).
cbieFunction:
    li      t6, 4          // loop limit
    li      t0, 0          // t0 = i = 0  (loop counter)

cbieLoop:
    // save requested priv mode
    mv a1, a0

    // switch to machine priv mode
    li   a0, 3
    ecall

    // shift i to bits 4-5 of menvcfg (cbie value)
    slli  t1, t0, 4
    csrw  menvcfg, t1

    // switch back to requested priv mode
    mv a0,a1
    ecall

    // execute cbo instruction in a temp data block
    la t2, DataBlock
    cbo.inval    0(t2)

    // loop update
    addi    t0, t0, 1
    blt     t0, t6, cbieLoop

    // return in machine mode
    li   a0, 3
    ecall

    //clear menvcfg csr before next test
    li    t0, 0
    csrw  menvcfg, t0

    ret


// Function: cbcfeFunction
// Tests cbo.clean and cbo.flush with all possible combinations of cbcfe in the menvcfg csr.
// Program always returns in machine mode.
//
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).
cbcfeFunction:
    li      t6, 2          // loop limit
    li      t0, 0          // t0 = i = 0  (loop counter)

cbcfeLoop:
    // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr cbcfe
    slli  t1, t0, 6
    csrw  menvcfg, t1    //bit 6 of csr menvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    // execute cbo instruction in a temp data block
    la t2, DataBlock
    cbo.clean    0(t2)
    cbo.flush    0(t2)


    // loop update
    addi    t0, t0, 1          # i++
    blt     t0, t6, cbcfeLoop   # while (i < 2) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    //clear menvcfg csr before next test
    li    t0, 0
    csrw  menvcfg, t0

    ret


// Function: cbzeFunction
// Tests cbo.zero with all possible combinations of cbze in the menvcfg csr.
// Program always returns in machine mode.
//
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).
cbzeFunction:
    li      t6, 2          // loop limit
    li      t0, 0          // t0 = i = 0  (loop counter)

cbzeLoop:
    // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr cbze
    slli  t1, t0, 7
    csrw  menvcfg, t1    // bit 7 csr menvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    // execute cbo instruction in a temp data block
    la t2, DataBlock
    cbo.zero    0(t2)

    // loop update
    addi    t0, t0, 1          // i++
    blt     t0, t6, cbzeLoop   // while (i < 2) repeat

    // load into machine mode when returning
    li   a0, 3
    ecall

    //clear menvcfg csr before next test
    li    t0, 0
    csrw  menvcfg, t0

    ret


// Scratch data area for cache operations
// 4 times larger than cach size to prevent
// accidental clearing of program data.
.data
.align 10
DataBlock:
    .fill  2048
