// macros.h
// David_Harris@hmc.edu & Marina Bellido
// 21 Feb 2025
//SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Adapted from riscv-arch-test test_macros.h and arch_test.h 
// for simplifed test generation

#ifdef __riscv_xlen
        #if __riscv_xlen == 32
            #define SREG sw
            #define LREG lw
        #elif __riscv_xlen == 64
            #define SREG sd
            #define LREG ld
        #endif
    #else
        ERROR: __riscv_xlen not defined
#endif

// #if   XLEN==32
//     #define SREG sw
//     #define LREG lw
// #elif XLEN==64
//     #define SREG sd
//     #define LREG ld
// #else
//     #define SREG sq
//     #define LREG lq
// #endif

#if FLEN==32
    #define FLREG flw
    #define FSREG fsw
#elif FLEN==64
    #define FLREG fld
    #define FSREG fsd
#elif FLEN==128
    #define FLREG flq
    #define FSREG fsq
#endif

#if LOCKSTEP==1
    #define RVTEST_SIGUPD(sigreg, tempreg, rd, offset) // lockstep; no signature checking necessary
#elif SIGNATURE==1
    #define RVTEST_SIGUPD(sigreg, tempreg, rd, offset) SREG rd, offset(sigreg); nop; nop; // Integer signature
#elif SELFCHECK==1
    #define RVTEST_SIGUPD(sigreg, tempreg, rd, offset) LREG tempreg, offset(sigreg); // Load expected value
#endif

// #define RVTEST_SIGUPD(sigreg, tempreg, rd, offset)     ; \
//     .if ()
//     // a comment ; \
//     #if LOCKSTEP==1 ; \
//     // lockstep; no signature checking necessary ;\
//     #elif SIGNATURE==1 ;\
//     SREG rd, offset(sigreg); nop; nop; // Integer signature ;\
//     #elif SELFCHECK==1 ;\
//     LREG tempreg, offset(sigreg); // Load expected value ;\
//     beq tempreg, rd, 1f; // Check if expected value matches ;\
//     j failedtests; \
//     1f: ;\
//     #endif ;\

#define RVTEST_SIGUPD2(_BR,_R,...)			;\
    .if NARG(__VA_ARGS__) == 1				;\
      .set offset,_ARG1(__VA_OPT__(__VA_ARGS__,0))	;\
    .endif						;\
    CHK_OFFSET(_BR, REGWIDTH,0)				;\
    SREG _R,offset(_BR)					;\
    .set offset,offset+REGWIDTH
  