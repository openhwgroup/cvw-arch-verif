///////////////////////////////////////////
// SsstrictCsrM.S
//
// Written: Roman De Santos rdesantos@hmc.edu 11 March 2025
//
// Purpose: Functional coverage test for Ssstrict Csrs in M mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"

main:

    # set up fast trap handler for uncompressed illegal instructions
    # because Zicsr tests will throw a lot of illegal instruction traps while attempting to access CSRs
    # This cuts the instruction count and runtime by nearly 2x
    # However, don't blindly use this handler in other privileged tests
    # Note this uses the normal trap handler if the instruction is compressed
    la t0, trap_handler_fastuncompressedillegalinstr
    csrw mtvec, t0

    # For M-mode (SsstrictM) only, lock PMP region 0 so that all the PMP CSRs can be accessed without corrupting region 0
    li t0, 0x8F
    csrw pmpcfg0, t0   # configure PMP0 to TOR RWX locked

/////////////////////////////////
// cp_cntr_write
// cp_cntrh_write
/////////////////////////////////


/////////////////////////////////
// Autogenerated code pasted in from csrtests.py to hit the following coverpoints
// cp_csrr                  Read all 4096 CSRs in M mode
// cp_csrw_edges          Write all zeroes and all ones to 4096 CSRs in M mode
// cp_csrc                  Clear all 4096 CSRs in M mode
// cp_csrs                  Set all 4096 CSRs in M mode
/////////////////////////////////

# include "ZicsrM-CSR-Tests.h"

finish:
    j done
