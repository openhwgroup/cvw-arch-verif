
// Save the original value of csr
	csrr s0, mcounteren  # save original csr value
	li t1, -1        # mask of all 1s
	li t0, 1         # initial bit position

// Walk a single 1 in M-mode
	1: csrrc t6, mcounteren, t1  # clear all bits
	csrrs t6, mcounteren, t0  # set current bit
	li a0, 1     # switch to S-mode
	ecall             # switch to S-mode
	csrr t2, cycle # read from cycle in S-mode
	csrr t2, time # read from time in S-mode
	csrr t2, instret # read from instret in S-mode
	csrr t2, hpmcounter3 # read from hpmcounter3 in S-mode
	csrr t2, hpmcounter4 # read from hpmcounter4 in S-mode
	csrr t2, hpmcounter5 # read from hpmcounter5 in S-mode
	csrr t2, hpmcounter6 # read from hpmcounter6 in S-mode
	csrr t2, hpmcounter7 # read from hpmcounter7 in S-mode
	csrr t2, hpmcounter8 # read from hpmcounter8 in S-mode
	csrr t2, hpmcounter9 # read from hpmcounter9 in S-mode
	csrr t2, hpmcounter10 # read from hpmcounter10 in S-mode
	csrr t2, hpmcounter11 # read from hpmcounter11 in S-mode
	csrr t2, hpmcounter12 # read from hpmcounter12 in S-mode
	csrr t2, hpmcounter13 # read from hpmcounter13 in S-mode
	csrr t2, hpmcounter14 # read from hpmcounter14 in S-mode
	csrr t2, hpmcounter15 # read from hpmcounter15 in S-mode
	csrr t2, hpmcounter16 # read from hpmcounter16 in S-mode
	csrr t2, hpmcounter17 # read from hpmcounter17 in S-mode
	csrr t2, hpmcounter18 # read from hpmcounter18 in S-mode
	csrr t2, hpmcounter19 # read from hpmcounter19 in S-mode
	csrr t2, hpmcounter20 # read from hpmcounter20 in S-mode
	csrr t2, hpmcounter21 # read from hpmcounter21 in S-mode
	csrr t2, hpmcounter22 # read from hpmcounter22 in S-mode
	csrr t2, hpmcounter23 # read from hpmcounter23 in S-mode
	csrr t2, hpmcounter24 # read from hpmcounter24 in S-mode
	csrr t2, hpmcounter25 # read from hpmcounter25 in S-mode
	csrr t2, hpmcounter26 # read from hpmcounter26 in S-mode
	csrr t2, hpmcounter27 # read from hpmcounter27 in S-mode
	csrr t2, hpmcounter28 # read from hpmcounter28 in S-mode
	csrr t2, hpmcounter29 # read from hpmcounter29 in S-mode
	csrr t2, hpmcounter30 # read from hpmcounter30 in S-mode
	csrr t2, hpmcounter31 # read from hpmcounter31 in S-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1   # shift to next bit
	bnez t0, 1b      # loop until all bits walked

// Walk a single 0 in M-mode and read from registers in S-mode
	li t0, 1         # reset bit position
	2: csrrs t6, mcounteren, t1  # set all bits
	csrrc t6, mcounteren, t0  # clear current bit
	li a0, 1     # switch to S-mode
	ecall             # switch to S-mode
	csrr t2, cycle # read from cycle in S-mode
	csrr t2, time # read from time in S-mode
	csrr t2, instret # read from instret in S-mode
	csrr t2, hpmcounter3 # read from hpmcounter3 in S-mode
	csrr t2, hpmcounter4 # read from hpmcounter4 in S-mode
	csrr t2, hpmcounter5 # read from hpmcounter5 in S-mode
	csrr t2, hpmcounter6 # read from hpmcounter6 in S-mode
	csrr t2, hpmcounter7 # read from hpmcounter7 in S-mode
	csrr t2, hpmcounter8 # read from hpmcounter8 in S-mode
	csrr t2, hpmcounter9 # read from hpmcounter9 in S-mode
	csrr t2, hpmcounter10 # read from hpmcounter10 in S-mode
	csrr t2, hpmcounter11 # read from hpmcounter11 in S-mode
	csrr t2, hpmcounter12 # read from hpmcounter12 in S-mode
	csrr t2, hpmcounter13 # read from hpmcounter13 in S-mode
	csrr t2, hpmcounter14 # read from hpmcounter14 in S-mode
	csrr t2, hpmcounter15 # read from hpmcounter15 in S-mode
	csrr t2, hpmcounter16 # read from hpmcounter16 in S-mode
	csrr t2, hpmcounter17 # read from hpmcounter17 in S-mode
	csrr t2, hpmcounter18 # read from hpmcounter18 in S-mode
	csrr t2, hpmcounter19 # read from hpmcounter19 in S-mode
	csrr t2, hpmcounter20 # read from hpmcounter20 in S-mode
	csrr t2, hpmcounter21 # read from hpmcounter21 in S-mode
	csrr t2, hpmcounter22 # read from hpmcounter22 in S-mode
	csrr t2, hpmcounter23 # read from hpmcounter23 in S-mode
	csrr t2, hpmcounter24 # read from hpmcounter24 in S-mode
	csrr t2, hpmcounter25 # read from hpmcounter25 in S-mode
	csrr t2, hpmcounter26 # read from hpmcounter26 in S-mode
	csrr t2, hpmcounter27 # read from hpmcounter27 in S-mode
	csrr t2, hpmcounter28 # read from hpmcounter28 in S-mode
	csrr t2, hpmcounter29 # read from hpmcounter29 in S-mode
	csrr t2, hpmcounter30 # read from hpmcounter30 in S-mode
	csrr t2, hpmcounter31 # read from hpmcounter31 in S-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1   # shift to next bit
	bnez t0, 2b      # loop until all bits walked

// Restore the original value of csr
	csrrw t6, mcounteren, s0  # restore original csr value

#if __riscv_xlen == 32

// Save the original value of csr
	csrr s0, mcounteren  # save original csr value
	li t1, -1        # mask of all 1s
	li t0, 1         # initial bit position

// Walk a single 1 in M-mode
	1: csrrc t6, mcounteren, t1  # clear all bits
	csrrs t6, mcounteren, t0  # set current bit
	li a0, 1     # switch to S-mode
	ecall             # switch to S-mode
	csrr t2, cycleh # read from cycleh in S-mode
	csrr t2, timeh # read from timeh in S-mode
	csrr t2, instreth # read from instreth in S-mode
	csrr t2, hpmcounter3h # read from hpmcounter3h in S-mode
	csrr t2, hpmcounter4h # read from hpmcounter4h in S-mode
	csrr t2, hpmcounter5h # read from hpmcounter5h in S-mode
	csrr t2, hpmcounter6h # read from hpmcounter6h in S-mode
	csrr t2, hpmcounter7h # read from hpmcounter7h in S-mode
	csrr t2, hpmcounter8h # read from hpmcounter8h in S-mode
	csrr t2, hpmcounter9h # read from hpmcounter9h in S-mode
	csrr t2, hpmcounter10h # read from hpmcounter10h in S-mode
	csrr t2, hpmcounter11h # read from hpmcounter11h in S-mode
	csrr t2, hpmcounter12h # read from hpmcounter12h in S-mode
	csrr t2, hpmcounter13h # read from hpmcounter13h in S-mode
	csrr t2, hpmcounter14h # read from hpmcounter14h in S-mode
	csrr t2, hpmcounter15h # read from hpmcounter15h in S-mode
	csrr t2, hpmcounter16h # read from hpmcounter16h in S-mode
	csrr t2, hpmcounter17h # read from hpmcounter17h in S-mode
	csrr t2, hpmcounter18h # read from hpmcounter18h in S-mode
	csrr t2, hpmcounter19h # read from hpmcounter19h in S-mode
	csrr t2, hpmcounter20h # read from hpmcounter20h in S-mode
	csrr t2, hpmcounter21h # read from hpmcounter21h in S-mode
	csrr t2, hpmcounter22h # read from hpmcounter22h in S-mode
	csrr t2, hpmcounter23h # read from hpmcounter23h in S-mode
	csrr t2, hpmcounter24h # read from hpmcounter24h in S-mode
	csrr t2, hpmcounter25h # read from hpmcounter25h in S-mode
	csrr t2, hpmcounter26h # read from hpmcounter26h in S-mode
	csrr t2, hpmcounter27h # read from hpmcounter27h in S-mode
	csrr t2, hpmcounter28h # read from hpmcounter28h in S-mode
	csrr t2, hpmcounter29h # read from hpmcounter29h in S-mode
	csrr t2, hpmcounter30h # read from hpmcounter30h in S-mode
	csrr t2, hpmcounter31h # read from hpmcounter31h in S-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1   # shift to next bit
	bnez t0, 1b      # loop until all bits walked

// Walk a single 0 in M-mode and read from registers in S-mode
	li t0, 1         # reset bit position
	2: csrrs t6, mcounteren, t1  # set all bits
	csrrc t6, mcounteren, t0  # clear current bit
	li a0, 1     # switch to S-mode
	ecall             # switch to S-mode
	csrr t2, cycleh # read from cycleh in S-mode
	csrr t2, timeh # read from timeh in S-mode
	csrr t2, instreth # read from instreth in S-mode
	csrr t2, hpmcounter3h # read from hpmcounter3h in S-mode
	csrr t2, hpmcounter4h # read from hpmcounter4h in S-mode
	csrr t2, hpmcounter5h # read from hpmcounter5h in S-mode
	csrr t2, hpmcounter6h # read from hpmcounter6h in S-mode
	csrr t2, hpmcounter7h # read from hpmcounter7h in S-mode
	csrr t2, hpmcounter8h # read from hpmcounter8h in S-mode
	csrr t2, hpmcounter9h # read from hpmcounter9h in S-mode
	csrr t2, hpmcounter10h # read from hpmcounter10h in S-mode
	csrr t2, hpmcounter11h # read from hpmcounter11h in S-mode
	csrr t2, hpmcounter12h # read from hpmcounter12h in S-mode
	csrr t2, hpmcounter13h # read from hpmcounter13h in S-mode
	csrr t2, hpmcounter14h # read from hpmcounter14h in S-mode
	csrr t2, hpmcounter15h # read from hpmcounter15h in S-mode
	csrr t2, hpmcounter16h # read from hpmcounter16h in S-mode
	csrr t2, hpmcounter17h # read from hpmcounter17h in S-mode
	csrr t2, hpmcounter18h # read from hpmcounter18h in S-mode
	csrr t2, hpmcounter19h # read from hpmcounter19h in S-mode
	csrr t2, hpmcounter20h # read from hpmcounter20h in S-mode
	csrr t2, hpmcounter21h # read from hpmcounter21h in S-mode
	csrr t2, hpmcounter22h # read from hpmcounter22h in S-mode
	csrr t2, hpmcounter23h # read from hpmcounter23h in S-mode
	csrr t2, hpmcounter24h # read from hpmcounter24h in S-mode
	csrr t2, hpmcounter25h # read from hpmcounter25h in S-mode
	csrr t2, hpmcounter26h # read from hpmcounter26h in S-mode
	csrr t2, hpmcounter27h # read from hpmcounter27h in S-mode
	csrr t2, hpmcounter28h # read from hpmcounter28h in S-mode
	csrr t2, hpmcounter29h # read from hpmcounter29h in S-mode
	csrr t2, hpmcounter30h # read from hpmcounter30h in S-mode
	csrr t2, hpmcounter31h # read from hpmcounter31h in S-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1   # shift to next bit
	bnez t0, 2b      # loop until all bits walked

// Restore the original value of csr
	csrrw t6, mcounteren, s0  # restore original csr value
#endif
