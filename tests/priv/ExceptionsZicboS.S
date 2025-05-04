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


// machine cbie test
li a0, 3
ecall

li a0, 3
jal cbieFunction

// Supervisor cbie test
li a0, 1
ecall

li a0, 1
jal cbieFunction

// User cbie test
li a0, 0
ecall

li a0, 0
jal cbieFunction

// Machine cbcfe test
li a0, 3
ecall

li a0, 3
jal cbcfeFunction

// Supervisor cbcfe test
li a0, 1
ecall

li a0, 1
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

// Supervisor cbze test
li a0, 1
ecall

li a0, 1
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
// Tests cbo.inval with all possible combinations of cbze in the menvcfg and senvcfg csr.
// Program always returns in machine mode.
//
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).
cbieFunction:
    li      t6, 2          // outer and inner loop limit
    li      t0, 0          // t0 = i = 0  (outer loop counter)
outerCbieLoop:
    li      t1, 0          // t1 = j = 0  (inner loop counter)

innerCbieLoop:
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

    // execute cbo instruction in a temp data block
    la t2, DataBlock
    cbo.inval    0(t2)

    // advance inner counter j
    addi    t1, t1, 1               // j++
    blt     t1, t6, innerCbieLoop   // while (j < 4) continue inner loop

    // advance outer counter i
    addi    t0, t0, 1               // i++
    blt     t0, t6, outerCbieLoop   // while (i < 4) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    // clear menvcfg csr before next test
    li    t0, 0
    csrw  menvcfg, t0

    // clear senvcfg csr before next test
    li    t0, 0
    csrw  senvcfg, t0

    ret

// Function: cbcfeFunction
// Tests cbo.clean and cbo.flush with all possible combinations of cbcfe in the menvcfg and senvcfg csr.
// Program always returns in machine mode.
//
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).
cbcfeFunction:
    li      t6, 2          // outer and inner loop limit
    li      t0, 0          // t0 = i = 0  (outer loop counter)

outerCbcfeLoop:
    li      t1, 0          // t1 = j = 0  (inner loop counter)

innerCbcfeLoop:
     // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr {m/s}cbcfe
    slli  t2, t0, 6
    csrw  menvcfg, t2    // bit 6 of csr menvcfg

    slli t3, t1, 6
    csrw senvcfg, t3     // bit 6 of senvcfg

    // run test in desired privilege mode
    mv a0,a1
    ecall

    // execute cbo instruction in a temp data block
    la t2, DataBlock

    cbo.clean    0(t2)
    cbo.flush    0(t2)

    // advance inner counter j
    addi    t1, t1, 1                // j++
    blt     t1, t6, innerCbcfeLoop   // while (j < 4) continue inner loop

    // advance outer counter i
    addi    t0, t0, 1                // i++
    blt     t0, t6, outerCbcfeLoop   // while (i < 4) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    // clear menvcfg csr before next test
    li    t0, 0
    csrw  menvcfg, t0

    // clear senvcfg csr before next test
    li    t0, 0
    csrw  senvcfg, t0

    ret

// Function: cbzeFunction
// Tests cbo.zero with all possible combinations of cbze in the menvcfg and senvcfg csr.
// Program always returns in machine mode.
//
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).
cbzeFunction:
    li      t6, 2          // outer and inner loop limit
    li      t0, 0          // t0 = i = 0  (outer loop counter)
outerCbzeLoop:
    li      t1, 0          // t1 = j = 0  (inner loop counter)

innerCbzeLoop:
     // save the value of the desired priv mode
    mv a1, a0

    // load into machine mode
    li   a0, 3
    ecall

    // update csr {m/s}cbze
    slli  t2, t0, 7
    csrw  menvcfg, t2    //bit 7 of menvcfg csr

    slli t3, t1, 7
    csrw senvcfg, t3     // bit 7 of senvcfg csr

    // run test in desired privilege mode
    mv a0, a1
    ecall

    // execute cbo instruction in a temp data block
    la t2, DataBlock
    cbo.zero    0(t2)

    // advance inner counter j
    addi    t1, t1, 1               // j++
    blt     t1, t6, innerCbzeLoop   // while (j < 4) continue inner loop

    // advance outer counter i
    addi    t0, t0, 1               // i++
    blt     t0, t6, outerCbzeLoop   // while (i < 4) repeat outer loop

    // load into machine mode when returning
    li   a0, 3
    ecall

    // clear menvcfg csr before next test
    li    t0, 0
    csrw  menvcfg, t0

    // clear senvcfg csr before next test
    li    t0, 0
    csrw  senvcfg, t0

    ret

// Scratch data area for cache operations
// 4 times larger than cach size to prevent
// accidental clearing of program data.
.data
.align 10
DataBlock:
    .fill  2048
