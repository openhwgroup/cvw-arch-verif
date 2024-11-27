///////////////////////////////////////////
// ExceptionsInstr.S
//
// Written: David_Harris@hmc.edu 26 November 2024
//
// Purpose: Functional coverage tests for illegal instructions
//          Portion of ExceptionsM_coverage
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////


#include "WALLY-init-lib.h"

main:

    # set up fast trap handler for uncompressed illegal instructions
    # because Zicsr tests will throw a lot of illegal instruction traps while attempting to access CSRs
    # This cuts the instruction count and runtime by nearly 2x
    # However, don't blindly use this handler in other privileged tests
    la t0, trap_handler_fastuncompressedillegalinstr
    csrw mtvec, t0

    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0

/////////////////////////////////
// cp_legalI: legal integer instructions
/////////////////////////////////
    auipc t0, 0
    lb t1, 4(t0)    # legal lb
    lh t2, 8(t0)    # legal lh

/////////////////////////////////
// cp_illegal
/////////////////////////////////
    // op[6:2] unused ops
    .word 0b00000000000000000000000000001011 # illegal op2
    .word 0b00000000000000000000000000011111 # illegal op7
    .word 0b00000000000000000000000000101011 # illegal op10
    .word 0b00000000000000000000000000111111 # illegal op15
    .word 0b00000000000000000000000001010111 # illegal op21
    .word 0b00000000000000000000000001011011 # illegal op22
    .word 0b00000000000000000000000001011111 # illegal op23
    .word 0b00000000000000000000000001101011 # illegal op26
    .word 0b00000000000000000000000001110111 # illegal op29
    .word 0b00000000000000000000000001111011 # illegal op30
    .word 0b00000000000000000000000001111111 # illegal op31

    // illegal loads
    .word 0b00000000000000000111000000000011 # load with illegal funct3 = 7
    .word 0b00000000000000000011000000000011 # ld, illegal in rv32
    .word 0b00000000000000000110000000000011 # lwu, illegal in rv32

    // illegal floating-point
    .word 0b00000000000000000000000000000111 # fp load with funct3 = 0
    .word 0b00000000000000000101000000000111 # fp load with funct3 = 5
    .word 0b00000000000000000110000000000111 # fp load with funct3 = 6
    .word 0b00000000000000000111000000000111 # fp load with funct3 = 7

    // illegal fence/cbo
    .word 0b00000000000000000011000000001111 # fence/cbo with funct3 = 3
    .word 0b00000000000000000100000000001111 # fence/cbo with funct3 = 4
    .word 0b00000000000000000101000000001111 # fence/cbo with funct3 = 5
    .word 0b00000000000000000111000000001111 # fence/cbo with funct3 = 7
    .word 0b10000000000000000010000000001111 # cbo with illegal imm field
    .word 0b00000000000000000010000010001111 # cbo with illegal rd field

/////////////////////////////////
// cp_reserved
/////////////////////////////////
    .word 0b00010000000000000000000000001111 # fence with reserved fm
    .word 0b10000000000000000000000000001111 # fence.tso with reserved ordering
    .word 0b00001111111100001000000000001111 # fence with reserved rs1
    .word 0b00001111111100000000000010001111 # fence with reserved rd

finished:
    j done

