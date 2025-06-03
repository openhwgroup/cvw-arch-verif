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
    sinval.vma x0, x0
    sfence.w.inval
    sfence.inval.ir

finished:
    j done
