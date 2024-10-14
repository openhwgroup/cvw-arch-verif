///////////////////////////////////////////
// ZicsrM.S
//
// Written: David_Harris@hmc.edu 13 October 2024
//
// Purpose: Functional coverage tests for CSRs in machine mode
//
// A component of the CORE-V-WALLY configurable RISC-V project.
// https://github.com/openhwgroup/cvw
// 
// Copyright (C) 2021-23 Harvey Mudd College & Oklahoma State University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file 
// except in compliance with the License, or, at your option, the Apache License version 2.0. You 
// may obtain a copy of the License at
//
// https://solderpad.org/licenses/SHL-2.1/
//
// Unless required by applicable law or agreed to in writing, any work distributed under the 
// License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
// either express or implied. See the License for the specific language governing permissions 
// and limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////

// General notes:
// Use csrrw/csrrs/csrrc when modifying a CSR to also check the old value.

// included from $WALLY/tests/coverage
#include "WALLY-init-lib.h"

main:

    j tmp  // *** jump over mcause_write, which fails on Issue #1007

/////////////////////////////////
// cp_mcause_write
/////////////////////////////////
    csrr s0, mcause     # save CSR
// with interrupt = 0: 0-64, walking 1s in bits 6-(XLEN-2)
    // with interrupt = 0: write mcause with 0-64 (0 already done)
    li t1, 64           # upper bound
    mv t0, x0           # initialize loop counter 
1:  csrrw t6, mcause, t0     # write CSR 
    beq t0, t1, cp_mcause_walking1s_noint
    addi t0, t0, 1      # increment test value
    j   1b
   // with interrupt = 0: write mcause with walking 1s in bits 6-(XLEN-2)"
cp_mcause_walking1s_noint: 
    slli t0, t0, 1      # walk 1s
    csrrw t6, mcause, t0     # write CSR
    bnez t0, cp_mcause_walking1s_noint  # until all 1s are gone
// with interrupt = 1: 0-15, walking 1s in bits 4-(XLEN-2)
// Now set interrupt = 1 as msb of register
    jal setmsb          # put a 1 in the msb of a0
    li t1, 16           # upper bound
    mv t0, x0           # initialize loop counter
1: or t2, t0, a0       # set interrupt = 1 with msb
    csrrw t6, mcause, t2    # write CSR 
    beq t0, t1, cp_mcause_walking1s_int
    addi t0, t0, 1      # increment test value
    j   1b
   // with interrupt = 0: write mcause with walking 1s in bits 6-(XLEN-2)"
cp_mcause_walking1s_int: 
    slli t0, t0, 1      # walk 1s
    csrrw t6, mcause, t0     # write CSR
    bnez t0, cp_mcause_walking1s_noint  # until all 1s are gone
    csrrw t6, mcause, s0      # restore CSR

/////////////////////////////////
// cp_misa_mxl_write
/////////////////////////////////
tmp:
// Write 0, 1, 2, 3 to misa.MXL
    jal setmsb          # put a 1 in the msb of a0 (XLEN-1)
    srli a1, a0, 1      # put a 1 in the second msb of a1 (XLEN-2)
    or a2, a1, a0       # put a 1 in both msbs of a2 (XLEN-1:XLEN-2)
    not a3, a2          # put 1s in all but the 2 msbs of a3
    csrr s0, misa       # read MISA
    and t0, s0, a3      # clear 2 msbs
    or t1, t0, a1       # set XLEN-2
    or t2, t0, a0       # set XLEN-1
    or t3, t0, a2       # set both msbs
    csrrc t6, misa, t0       # misa.MXL = 0
    csrrc t6, misa, t1       # misa.MXL = 1
    csrrc t6, misa, t2       # misa.MXL = 2
    csrrc t6, misa, t3       # misa.MXL = 3
    csrrw t6, misa, s0       # restore MISA

/////////////////////////////////
// cp_misa_ext_write_corners:
// and cp_misa_middle_write
/////////////////////////////////
// write all 0s to extension bits [25:0]
    li t0, 0x03FFFFFF   # 1s in bottom 26 bits
    csrrc t6, misa, t0       # try clearing all bits
// write all 0s to extension bits
    csrrs t6, misa, t0       # try setting all bits
// walking 0s and walking 1s
    li t1, 1            # 1 in lsb
    csrrw t6, misa, s0       # restore misa
1:  csrrc t6, misa, t1       # and clear the walking zero bit
    csrrs t6, misa, t1       # and set the walking zero bit
    slli t1, t1, 1      # shift walking zero
    bnez t1, 1b         # continue until zero walks off the end

/////////////////////////////////
// cp_misa_ext_disable / enable
/////////////////////////////////
    csrrw t6, misa, s0       # restore misa

    // A bit
    li t0, 1            # 1 in A bit
    csrrc t6, misa, t0       # clear A bit
    la t1, scratch      # scratch memory location
    lr.w t2, (t1)       # try an A (Zalrsc) instruction
    amoadd.w t2, s0, (t1)   # try an A (Zaamo) instruction
    csrrs t6, misa, t0       # set A bit
    lr.w t2, (t1)       # try an A (Zalrsc) instruction
    amoadd.w t2, s0, (t1)   # try an A (Zaamo) instruction

    // B bit
    li t0, 2            # 1 in B bit
    csrrc t6, misa, t0       # clear B bit
    sh1add t2, x0, t0   # try a Zba instruction
    min t2, x0, t0      # try a Zbb instruction
    bset t2, x0, t0     # try a Zbs instruction
    csrrs t6, misa, t0       # set B bit
    sh1add t2, x0, t0   # try a Zba instruction
    min t2, x0, t0      # try a Zbb instruction
    bset t2, x0, t0     # try a Zbs instruction

    // C bit
    li t0, 4            # 1 in C bit
    csrrc t6, misa, t0       # clear C bit
    .word 0x00019396    # try C instructions: c.add x7, x5 = 0x9396; c.nop = 0x0001
    csrrs t6, misa, t0       # set C bit
    .word 0x00019396    # try C instructions: c.add x7, x5 = 0x9396; c.nop = 0x0001
  
    // F bit
    li t0, 0x2000       # 1 in bit 13
    csrrs t6, mstatus, t0    # turn on FS to enable floating-point
    li t0, 0x20         # 1 in F bit
    csrrc t6, misa, t0       # clear F bit
    fcvt.s.w f0, t0     # try a F instruction
    csrrs t6, misa, t0       # set F bit
    fcvt.s.w f0, t0     # try a F instruction

    // D bit (with F already on, if possible)
    li t0, 0x08         # 1 in D bit
    csrrc t6, misa, t0       # clear D bit
    fcvt.d.w f0, t0     # try a D instruction
    csrrs t6, misa, t0       # set D bit
    fcvt.d.w f0, t0     # try a D instruction

    // I bit
    li t0, 0x100        # 1 in I bit
    csrrc t6, misa, t0       # clear I bit
    add t2, t0, t0      # try a I instruction
    csrrs t6, misa, t0       # set I bit
    add t2, t0, t0      # try a I instruction

    // M bit
    li t0, 0x1000       # 1 in M bit
    csrrc t6, misa, t0       # clear M bit
    mul t2, t0, t0      # try a M instruction
    csrrs t6, misa, t0       # set M bit
    mul t2, t0, t0      # try a M instruction

    // Restore MISA
    csrrw t6, misa, s0       # restore saved value
   
/////////////////////////////////
// cp_medeleg_write_corners
/////////////////////////////////

    csrr s0, medeleg    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, medeleg, t1    # clear all bits
    csrrs t6, medeleg, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, medeleg, t1    # set all bits
    csrrc t6, medeleg, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, medeleg, s0    # restore CSR

/////////////////////////////////
// cp_mideleg_write_corners
/////////////////////////////////

    csrr s0, mideleg    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, mideleg, t1    # clear all bits
    csrrs t6, mideleg, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, mideleg, t1    # set all bits
    csrrc t6, mideleg, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, mideleg, s0    # restore CSR

/////////////////////////////////
// cp_mie_write_corners
/////////////////////////////////

    csrr s0, mie    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, mie, t1    # clear all bits
    csrrs t6, mie, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, mie, t1    # set all bits
    csrrc t6, mie, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, mie, s0    # restore CSR

/////////////////////////////////
// cp_mepc_write_corners
/////////////////////////////////

    csrr s0, mepc    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, mepc, t1    # clear all bits
    csrrs t6, mepc, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, mepc, t1    # set all bits
    csrrc t6, mepc, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, mepc, s0    # restore CSR

/////////////////////////////////
// cp_mtval_write_corners
/////////////////////////////////

    csrr s0, mtval    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, mtval, t1    # clear all bits
    csrrs t6, mtval, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, mtval, t1    # set all bits
    csrrc t6, mtval, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, mtval, s0    # restore CSR

/////////////////////////////////
// cp_mseccfg_write_corners
/////////////////////////////////

    csrr s0, mseccfg    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, mseccfg, t1    # clear all bits
    csrrs t6, mseccfg, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, mseccfg, t1    # set all bits
    csrrc t6, mseccfg, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, mseccfg, s0    # restore CSR

/////////////////////////////////
// cp_menvcfg_write_corners
/////////////////////////////////

    csrr s0, menvcfg    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, menvcfg, t1    # clear all bits
    csrrs t6, menvcfg, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, menvcfg, t1    # set all bits
    csrrc t6, menvcfg, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, menvcfg, s0    # restore CSR

/////////////////////////////////
// cp_mip_write_corners
/////////////////////////////////

    csrr s0, mip    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, mip, t1    # clear all bits
    csrrs t6, mip, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, mip, t1    # set all bits
    csrrc t6, mip, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    csrrw t6, mip, s0    # restore CSR

/////////////////////////////////
// cp_mtvec_base_write_corners
// cp_mtvec_mode_write
/////////////////////////////////

    csrr s0, mtvec    # save CSR
    li t1, -1           # all 1s
    li t0, 1            # 1 in lsb
1:  csrrc t6, mtvec, t1    # clear all bits
    csrrs t6, mtvec, t0    # set walking 1
    slli t0, t0, 1      # walk the 1 
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 1            # 1 in lsb
1:  csrrs t6, mtvec, t1    # set all bits
    csrrc t6, mtvec, t0    # clear walking 1
    slli t0, t0, 1      # walk the 1
    bnez t0, 1b         # repeat until all bits are walked

    li t0, 3            # Write 3 to mode
    csrrw t6, mtvec, t0 # exercise case of cp_mtvec_mode_write not captured by walking ones

    csrrw t6, mtvec, s0    # restore CSR

// *** still need mstatus,
// RV32 registers
// *** instructions
 
/////////////////////////////////
// Autogenerated code pasted in from csrtests.py to hit the following coverpoints
// cp_csrr                  Read all 4096 CSRs in M mode
// cp_csrw_corners          Write all zeroes and all ones to 4096 CSRs in M mode
// cp_csrc                  Clear all 4096 CSRs in M mode
// cp_csrs                  Set all 4096 CSRs in M mode
// put these tests at the end of this file so they don't clutter up the human generated ones.
/////////////////////////////////

#include "Zicsr-CSR-Tests.h"

finished:
    j done

