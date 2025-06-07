///////////////////////////////////////////
// Svinval.S
//
// Written: David_Harris@hmc.edu 3 June 2025
//
// Purpose: Svinval tests
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"

main:
    // Just check that the instructions execute.

    /////////////////////
    // Should succeed in machine mode
    /////////////////////
    sinval.vma x0, x0
    sfence.w.inval
    sfence.inval.ir

    /////////////////////
    // should throw illegal instruction in user mode
    /////////////////////

    # enter user mode
    li a0, 0
    ecall

    sinval.vma x0, x0
    sfence.w.inval
    sfence.inval.ir

    /////////////////////
    // should succeed in supervisor mode independent of mstatus.TVM
    /////////////////////

    # enter supervisor mode
    li a0, 1
    ecall

    sinval.vma x0, x0
    sfence.w.inval
    sfence.inval.ir

    # back to machine mode and set mstatus.TVM
    li a0, 3
    ecall
    li t0, 1
    slli t0, t0, 20
    csrs mstatus, t0    # set mstatus.TVM

    # back to supervisor mode
    li a0, 1
    ecall

    sinval.vma x0, x0
    sfence.w.inval
    sfence.inval.ir

finished:
    j done
