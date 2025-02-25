///////////////////////////////////////////
// ZicsrU.S
//
// Written: vkrishna@hmc.edu 17 February 2024
//
// Purpose: Functional coverage tests for CSRs in user mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

// General notes:
// Use csrrw/csrrs/csrrc t6, csr, rs1    when modifying a CSR to also check the old value.

#include "WALLY-init-lib.h"

main:

    # set up fast trap handler for uncompressed illegal instructions
    # because Zicsr tests will throw a lot of illegal instruction traps while attempting to access CSRs
    # This cuts the instruction count and runtime by nearly 2x
    # However, don't blindly use this handler in other privileged tests
    la t0, trap_handler_fastuncompressedillegalinstr
    csrw mtvec, t0

    # enter user mode
    li a0, 0
    ecall

/////////////////////////////////
// cp_uprivinst
/////////////////////////////////
cp_uprivinst:
    // ecall
    li a0, 0
    ecall       # switch from user mode to user mode

    // ebreak
    ebreak       # take a trap, and the trap handler returns

    // fences.  These aren't really privileged instructions, but don't have a better place to test
    li a0, 0
    ecall
    fence
    fence rw, rw
    fence.tso
    li a0, 0
    ecall
    pause

/////////////////////////////////
// cp_satp
/////////////////////////////////
cp_satp:
    li t1, -1
    csrr t0, satp
    csrrc t3, satp, t1
    csrrw t3, satp, t1
    csrrw t3, satp, x0
    csrrs t3, satp, t1
    csrrw t3, satp, t0

/////////////////////////////////
// cp_mret
/////////////////////////////////
cp_mret:   
    li a0, 0
    ecall
    // Executing mret in user mode
    // Should throw an illegal instruction exception
    mret

/////////////////////////////////
// cp_sret
/////////////////////////////////
cp_sret:
    li a0, 0
    ecall
    // Executing sret in user mode
    // Should throw an illegal instruction exception
    sret

postsrettest:
# switch to machine mode and set fs = 1 so we can test
    li a0, 3
    ecall

    # set fs = 1
    li t0, 0x2000
    csrrw t6, mstatus, t0
    
# return to user mode to run tests
    li a0, 0
    ecall
#include "ZicsrU-Walk.h"
#include "ZicsrU-CSR-Tests.h"

finished:
    // return to machine mode
    li a0, 3
    ecall
    j done
