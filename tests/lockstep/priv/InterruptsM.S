///////////////////////////////////////////
// InterruptsM.S
//
// Written: David_Harris@hmc.edu 3 February 2025
//          Hjamal@hmc.edu       4 February 2025
//
// Purpose: Functional coverage tests for Interrupts in machine mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

// General notes:
// Use csrrw/csrrs/csrrc t6, csr, rs1    when modifying a CSR to also check the old value.

#include "WALLY-init-lib.h"

#define CLINT_BASE_ADDR 0x02000000
#define PLIC_BASE_ADDR 0x0C000000
#define GPIO_BASE_ADDR 0x10060000

#define MTIME           (CLINT_BASE_ADDR + 0xBFF8)
#define MSIP            (CLINT_BASE_ADDR)

#define THRESHOLD_0     (PLIC_BASE_ADDR + 0x002000)
#define THRESHOLD_1     (PLIC_BASE_ADDR + 0x201000)
#define INT_PRIORITY_3  (PLIC_BASE_ADDR + 0x00000C)
#define INT_EN_00       (PLIC_BASE_ADDR + 0x002000)

#define GPIO_OUTPUT_EN  (GPIO_BASE_ADDR + 0x08)
#define GPIO_OUTPUT_VAL (GPIO_BASE_ADDR + 0x0C)

main:
    jalr reset_timer_compare

/////////////////////////////////
// cp_trigger_mti
/////////////////////////////////

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal cause_timer_interrupt_now
    jal reset_timer_compare

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal cause_timer_interrupt_now
    jal reset_timer_compare

/////////////////////////////////
// cp_trigger_msi
/////////////////////////////////

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal set_msip
    jal reset_msip

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal set_msip
    jal reset_msip

/////////////////////////////////
// cp_trigger_mei
/////////////////////////////////

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal cause_external_interrupt_now

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal cause_external_interrupt_now

// set mtimecmp to all 1s so it doestn't throw an interrupt prematurely
reset_timer_compare:
    li t0, -1               # all 1s
    csrrw t6, MTIMECMP, t0         
    
    #ifdef __riscv_xlen
        #if __riscv_xlen == 32
            csrrw t6, MTIMECMPH, t0         # ignore if it doesn't exist
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

    ret

set_msip:
    li t0, MSIP
    ld t1, 0(t0) # read current MSIP values for all harts
    ori t1, t1, 1 # set lowest bit for hart 0
    sw t1, 0(t0) # write back to MSIP

reset_msip:
    li t0, MSIP
    ld t1, 0(t0) # read current MSIP values for all harts
    andi t1, t1, 0 # clear lowest bit for hart 0
    sw t1, 0(t0) # write back to MSIP

cause_external_interrupt_now:
    # set M-mode interrupt threshold to 0
    li t0, THRESHOLD_0
    sw zero, 0(t0)
    
    # set S-mode interrupt threshold to 7
    li t0, THRESHOLD_1
    li t1, 7
    sw t1, 0(t0)    

    # give GPIO sufficient priority to trigger interrupt
    li t0, INT_PRIORITY_3
    li t1, 1
    sw t1, 0(t0)

    # enable interrupts from source 3 (GPIO) in M-mode
    li t0, INT_EN_00
    li t1, 8
    sw t1, 0(t0)

    # clear all interrupt enables to make sure interrupt doesn't go off prematurely
    li t0, GPIO_BASE_ADDR
    sw zero, 0x18(t0) # clear rise
    sw zero, 0x20(t0) # clear fall
    sw zero, 0x28(t0) # clear high
    sw zero, 0x30(t0) # clear low

    # enable interrupts from high output
    li t1, 1
    sw t1, 0x28(t0) # enable high interrupt for pin 1
    sw t1, 0x08(t0) # enable output on pin 1
    sw t1, 0x0C(t0) # write 1 to pin 1, this should cause interrupt

    ret

cause_timer_interrupt_now:
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
                li t0, MTIME
                ld t0, 0(t0)                    # read MTIME
                csrrw t6, MTIMECMP, t0  # set MTIMECMP = MTIME to cause timer interrupt
        #elif __riscv_xlen == 32
                li t0, MTIME
                lw t1, 0(t0)                    # low word of MTIME
                lw t2, 4(t0)                    # high word of MTIME
                csrrw t6, MTIMECMP, t1          # MTIMECMP low word = MTIME low word
                csrrw t6, MTIMECMPH, t2         # MTIMECMP high word = MTIME high word
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    ret

cause_timer_interrupt_soon:

