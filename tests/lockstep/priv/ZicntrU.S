///////////////////////////////////////////
// ZicntrU.S
// asantillana@hmc.edu 03/04/25
// Purpose: Functional coverage tests for Zicntr
///////////////////////////////////////////

#include "WALLY-init-lib.h"

main: 
 
/////////////////////////////////
// cp_mcounteren_access_u
/////////////////////////////////

#include "Zicntr-MWalkU.h"

#ifdef __riscv_xlen
    #if __riscv_xlen == 32
        #include "Zicntrh-MWalkU.h"
    #endif
#else
    ERROR: __riscv_xlen not defined
#endif

/////////////////////////////////
// cp_mcounteren_access_m
/////////////////////////////////
#include "Zicntr-MWalk.h"

#ifdef __riscv_xlen
    #if __riscv_xlen == 32
        #include "Zicntrh-MWalk.h"
    #endif
#else
    ERROR: __riscv_xlen not defined
#endif 
finished:
    j done

    