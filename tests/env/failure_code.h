

# Expects a PC16550-compatible UART.
# Change these addresses to match your memory map
.EQU UART_ENABLED, 1                     # set to 0 to not print
.EQU UART_BASE_ADDR, 0x10000000
.EQU UART_THR, (UART_BASE_ADDR + 0)
.EQU UART_RBR, (UART_BASE_ADDR + 0)
.EQU UART_LCR, (UART_BASE_ADDR + 3)
.EQU UART_LSR, (UART_BASE_ADDR + 5)

# Expects a SiFive-compatible GPIO
# Change these addresses to match your memory map
.EQU GPIO_ENABLED, 1
.EQU GPIO_BASE_ADDR, 0x10060000
.EQU GPIO_OUTPUT_EN, (GPIO_BASE_ADDR + 4)
.EQU GPIO_OUTPUT_VAL, (GPIO_BASE_ADDR + 8)

# self-checking test extracts the address of the failing test
# and the actual and expected values

# Log failure. x4 contains return address of jal from the failure and x5 is a vacant temporary register
failedtest_x4_x5:
    la x5, begin_failure_scratch
    SREG x4, 32(x5) # store return address
    j failedtest_saveregs

# Log failure. x7 contains return address of jal from the failure and x8 is a vacant temporary register
failedtest_x7_x8:
    la x8, begin_failure_scratch
    SREG x7, 56(x8) # store return address
    SREG x4, 32(x8) # save x4
    SREG x5, 40(x8) # save x5
    mv x4, x7       # move return address into x4
    mv x5, x8       # move signature base into x5
    # now x4 has the return address of jal from the failure and x5 is a vacant temporary register.
    j failedtest_saveregs

# Log failure. x12 contains return address of jal from the failure and x13 is a vacant temporary register
failedtest_x12_x13:
    la x13, begin_failure_scratch
    SREG x12, 96(x13) # store return address
    SREG x4, 32(x13)  # save x4
    SREG x5, 40(x13)  # save x5
    mv x4, x12        # move return address into x4
    mv x5, x13        # move signature base into x5
    # now x4 has the return address of jal from the failure and x5 is a vacant temporary register.
    j failedtest_saveregs

# for the rest of this code, x4 contains return address of jal from the failure, x5 points to signature
failedtest_saveregs:
    SREG x1, 8(x5)
    SREG x2, 16(x5)
    SREG x3, 24(x5)
    # SREG x4, 32(x5)
    # SREG x5, 40(x5)
    # x4 and x5 have already been saved if relevant
    SREG x6, 48(x5)
    SREG x7, 56(x5)
    SREG x8, 64(x5)
    SREG x9, 72(x5)
    SREG x10, 80(x5)
    SREG x11, 88(x5)
    SREG x12, 96(x5)
    SREG x13, 104(x5)
    SREG x14, 112(x5)
    SREG x15, 120(x5)
    SREG x16, 128(x5)
    SREG x17, 136(x5)
    SREG x18, 144(x5)
    SREG x19, 152(x5)
    SREG x20, 160(x5)
    SREG x21, 168(x5)
    SREG x22, 176(x5)
    SREG x23, 184(x5)
    SREG x24, 192(x5)
    SREG x25, 200(x5)
    SREG x26, 208(x5)
    SREG x27, 216(x5)
    SREG x28, 224(x5)
    SREG x29, 232(x5)
    SREG x30, 240(x5)
    SREG x31, 248(x5)

failedtest_saveresults:
    # failing instruction might be 16 or 32 bits, on a 16-byte boundary.
    # fetch with halfwords, report all 32 bits, let user figure it out
    lhu x6, -10(x4)     # get upper half of the failing instruction
    lhu x7, -12(x4)     # get lower half
    slli x6, x6, 16     # reassemble
    or x6, x6, x7
    sw x6, 256(x5)      # record 32 bits of failing instruction.  Actual instruction might be top half
    # branch might be on 16-byte boundary, so fetch with halfword
    lhu x6, -6(x4)      # get upper half of the the beq that compared good and bad registers
    lhu x7, -8(x4)      # get lower half of the beq
    slli x6, x6, 16     # reassemble beq
    or x6, x6, x7
    # extract rs1 and rs2 from branch
    srli x6, x4, 15
    andi x7, x6, 31     # x7 = rs1 of branch
    sw x7, 260(x5)      # record id of failing register
    srli x6, x6, 5
    andi x8, x6, 31     # x8 = rs2 of branch
    # save bad value form rs1
    slli x6, x7, 3      # rs1 * 8
    add  x6, x5, x6     # address of signature memory containing rs1
    LREG x6, 0(x6)      # value of rs1 (bad result of operation)
    SREG x6, 272(x5)    # record bad value
    # save expected value from rs2
    slli x6, x8, 3      # rs2 * 8
    add x6, x5, x6      # address of signature memory containing rs2
    LREG x6, 0(x6)      # value of rs2 (expected result of operation)
    SREG x6, 280(x5)    # record expected value
    # Save failing address
    addi x6, x4, -12    # address of the failing instruction (possibly including half of previous instruction)
    SREG x6, 264(x5)

failedtest_report:
    RVMODEL_IO_INIT
    RVMODEL_IO_WRITE_STR(a0, failstr)
    # jal failedtest_printstr
    # la a0, failing_instruction
    # jal failedtest_printhexln
    # la a0, failing_addr
    # jal failedtest_printhexln32
    # la a0, failing_reg
    # jal failedtest_printhexln32
    # la a0, failing_value
    # jal failedtest_printhexln
    # la a0, expected_value
    # jal failedtest_printhexln

failedtest_terminate:
    RVMODEL_HALT_FAIL

/*

# raise GPIO
# ideally the startup code would do OUTPUT_EN and set the pins low
# and write_tohost would show success by setting them to 01
    li x6, GPIO_ENABLED
    beqz x6, 1f             # skip if not enabled
    li x6, GPIO_OUTPUT_EN   # address of OUTPUT_EN register
    li x7, 3
    sw x7, 0(x6)            # enable GPIO pins 0 and 1
    li x6, GPIO_OUTPUT_VAL  # address of OUTPUT_VAL register
    sw x7, 0(x6)            # set GPIO pins 0 and 1 high to indicate failure
1:

write_tohost_failure:
    la x7, tohost
    li x6, 3 # failure code
    sw x6, 0(x7)
    sw zero, 4(x7)
    j self_loop

# simple printing routines.  Stack isn't set up, so use dedicated variables

# a0: pointer to null-terminated string to print
failedtest_printstr:
    lb a1, 0(a0)    # fetch a character
    beqz a1, 1f     # terminate if null
    jal a2, failedtest_putch   # print the character
    addi a1, a1, 1  # move to next character
    j failedtest_printstr
1:  ret             # return from function call

# a0: pointer to XLEN-sized number to print in hexadecimal form
failedtest_printhexln:
    li x6, __riscv_xlen     # 32 or 64
failedtest_printhexlnnibble:
    addi x6, x6, -4         # move over one nibble
    srl x7, a0, x6          # shift nibble into bottom bits
    andi x7, x7, 15         # mask upper bits
    li x8, 10               # check if this is a letter
    blt x8, x7, failedtest_printhexlnnumber
    addi x8, x7, 55         # convert letter to ASCII
    j failedtest_printhexlnputch
failedtest_printhexlnnumber:
    addi x6, x6, 48         # convert number to ASCII
failedtest_printhexlnputch:
    jal a2, failedtest_putch  # print the character
    bnez x6, failedtest_printhexlnnibble # repeat until done
    la a1, 10               # print \n character at end
    jal a2, failedtest_putch
    ret

# a0: pointer to 32-bit number to print in hexadecimal form
failedtest_printhexln32:
    li x6, 32               # 32 bits
    j failedtest_printhexlnnibble  # same as above

# Initialize UART
failedtest_uartinit:
    li x6, UART_ENABLED
    beqz x6, 1f             # skip if UART is not enabled
    li x6, UART_LCR
    li x7, 3                # 8-bit characters, 1 stop bit, no parity
    sb x7, 0(x6)
1:
    ret

# a1: character to print
# a2: return address
failedtest_putch:
    li x6, UART_ENABLED
    beqz x6, 1f             # skip if UART is not enabled
    li x6, UART_LSR
failedtest_waituartbusy:
    lbu x7, 0(x6)
    andi x7, x7, 0x20 # check line status register bit 5
    beqz x7, failedtest_waituartbusy # wait until Transmit Holding Register Empty is set

    li x6, UART_THR     # transmit character
    sb a1, 0(x6)
1:  jr a2               # return

*/

.data

.align 4
begin_failure_scratch:
    .fill 32,8,0xfeedf00dbaaaaaad
failing_instruction:
    .fill 1, 4, 0xfeedf00d
failing_reg:
    .fill 1, 4, 0xbaaaaaad
failing_addr:
    .fill 1, 8, 0xfeedf00dbaaaaaad
failing_value:
    .fill 1, 8, 0xfeedf00dbaaaaaad
expected_value:
    .fill 1, 8, 0xfeedf00dbaaaaaad
end_failure_scratch:


successstr:
    .string "Tests succeeded\n"
failstr:
    .string "Test failed: Instruction, Address, Register, Bad Value, Expected Value\n"
