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
#define MTIMECMP        (CLINT_BASE_ADDR + 0x4000)
#define MTIMECMPH       (CLINT_BASE_ADDR + 0x4004)

#define THRESHOLD_0     (PLIC_BASE_ADDR + 0x002000)
#define THRESHOLD_1     (PLIC_BASE_ADDR + 0x201000)
#define INT_PRIORITY_3  (PLIC_BASE_ADDR + 0x00000C)
#define INT_EN_00       (PLIC_BASE_ADDR + 0x002000)

#define GPIO_OUTPUT_EN  (GPIO_BASE_ADDR + 0x08)
#define GPIO_OUTPUT_VAL (GPIO_BASE_ADDR + 0x0C)

main:
    jal reset_timer_compare

/////////////////////////////////
// cp_trigger_mti
/////////////////////////////////
cp_trigger_mti:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal cause_timer_interrupt_now
    jal reset_timer_compare # reset mtimecmp to avoid premature interrupt in next test

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal cause_timer_interrupt_now # expecting timer interrupt, so interrupt handler will reset mtimecmp

/////////////////////////////////
// cp_trigger_msi
/////////////////////////////////
cp_trigger_msi:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal set_msip
    jal reset_msip          # reset mip.SSIP since the trap handler will not reset it if no interrupt occurs

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal set_msip            # set mip.MSIP, expect interrupt

/////////////////////////////////
// cp_trigger_mei
/////////////////////////////////
cp_trigger_mei:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal cause_external_interrupt

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal cause_external_interrupt

/////////////////////////////////
// cp_trigger_sti
/////////////////////////////////
cp_trigger_sti:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    li t0, 32               # 1 in bit 5
    csrrs t6, mip, t0
    csrrc t6, mip, t0       # reset mip.STIP since the trap handler will not reset it if no interrupt occurs

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    li t0, 32               # 1 in bit 5
    csrrs t6, mip, t0       # set mip.STIP, expect interrupt
    nop

/////////////////////////////////
// cp_trigger_ssi
/////////////////////////////////
cp_trigger_ssi:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    li t0, 32               # 1 in bit 5
    csrrsi t6, mip, 2
    csrrci t6, mip, 2       # reset mip.SSIP since the trap handler will not reset it if no interrupt occurs

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    csrrsi t6, mip, 2       # set mip.SEIP, expect interrupt
    nop

/////////////////////////////////
// cp_trigger_sei
/////////////////////////////////
cp_trigger_sei:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    li t0, 512              # 1 in bit 9
    csrrs t6, mip, t0       # set mip.SEIP
    csrrc t6, mip, t0       # reset mip.SEIP since the trap handler will not reset it if no interrupt occurs

    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    li t0, 512              # 1 in bit 9
    csrrs t6, mip, t0       # set mip.SEIP, expect interrupt
    nop
    
    j done

set_msip:
    la t0, MSIP
    lw t1, 0(t0) 
    ori t1, t1, 1 # set lowest bit for hart 0
    sw t1, 0(t0)
    nop

    ret

reset_msip:
    la t0, MSIP
    lw t1, 0(t0) 
    andi t1, t1, -2 # set lowest bit for hart 0
    sw t1, 0(t0)

    ret

cause_external_interrupt:
    # set M-mode interrupt threshold to 0
    la t0, THRESHOLD_0
    sw zero, 0(t0)
    
    # set S-mode interrupt threshold to 7
    la t0, THRESHOLD_1
    li t1, 7
    sw t1, 0(t0)    

    # give GPIO sufficient priority to trigger interrupt
    la t0, INT_PRIORITY_3
    li t1, 1
    sw t1, 0(t0)

    # enable interrupts from source 3 (GPIO) in M-mode
    la t0, INT_EN_00
    li t1, 8
    sw t1, 0(t0)

    # clear all interrupt enables to make sure interrupt doesn't go off prematurely
    la t0, GPIO_BASE_ADDR
    sw zero, 0x18(t0) # clear rise
    sw zero, 0x20(t0) # clear fall
    sw zero, 0x28(t0) # clear high
    sw zero, 0x30(t0) # clear low

    # enable interrupts from high output
    li t1, 1
    sw t1, 0x28(t0) # enable high interrupt for pin 1
    sw t1, 0x08(t0) # enable output on pin 1
    sw t1, 0x0C(t0) # write 1 to pin 1, this should cause interrupt
    nop

    ret

reset_timer_compare:
    li t0, -1               # all 1s
    la t1, MTIMECMP
    sw t0, 0(t1)         

    #ifdef __riscv_xlen
        #if __riscv_xlen == 32
            la t1, MTIMECMPH
            sw t0, 0(t1)         # ignore if it doesn't exist
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

    ret

cause_timer_interrupt_now:
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
                la t0, MTIME
                ld t0, 0(t0)                    # read MTIME
                la t1, MTIMECMP
                sw t0, 0(t1)  # set MTIMECMP = MTIME to cause timer interrupt
        #elif __riscv_xlen == 32
                la t0, MTIME
                lw t1, 0(t0)                    # low word of MTIME
                lw t2, 4(t0)                    # high word of MTIME
                la t3, MTIMECMP
                la t4, MTIMECMPH
                sw t1, 0(t3)          # MTIMECMP low word = MTIME low word
                sw t2, 0(t4)         # MTIMECMP high word = MTIME high word
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    nop

    ret