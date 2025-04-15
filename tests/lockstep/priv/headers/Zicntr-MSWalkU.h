
// Save the original values of csrs
	csrr s0, scounteren 	# save scounteren
	csrr s1, mcounteren 	# save mcounteren
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb

// Walk a single 1 in both CSRs simultaneously
	1: csrrc t6, scounteren, t1    # clear all bits in first csr
	csrrc t6, mcounteren, t1    # clear all bits in second csr
	csrrs t6, scounteren, t0    # set walking 1 in first csr
	csrrs t6, mcounteren, t0    # set walking 1 in second csr
	li a0, 0     # switch to U-mode
	ecall             # switch to U-mode
	csrr t2, cycle # read from cycle in U-mode
	csrr t2, time # read from time in U-mode
	csrr t2, instret # read from instret in U-mode
	csrr t2, hpmcounter3 # read from hpmcounter3 in U-mode
	csrr t2, hpmcounter4 # read from hpmcounter4 in U-mode
	csrr t2, hpmcounter5 # read from hpmcounter5 in U-mode
	csrr t2, hpmcounter6 # read from hpmcounter6 in U-mode
	csrr t2, hpmcounter7 # read from hpmcounter7 in U-mode
	csrr t2, hpmcounter8 # read from hpmcounter8 in U-mode
	csrr t2, hpmcounter9 # read from hpmcounter9 in U-mode
	csrr t2, hpmcounter10 # read from hpmcounter10 in U-mode
	csrr t2, hpmcounter11 # read from hpmcounter11 in U-mode
	csrr t2, hpmcounter12 # read from hpmcounter12 in U-mode
	csrr t2, hpmcounter13 # read from hpmcounter13 in U-mode
	csrr t2, hpmcounter14 # read from hpmcounter14 in U-mode
	csrr t2, hpmcounter15 # read from hpmcounter15 in U-mode
	csrr t2, hpmcounter16 # read from hpmcounter16 in U-mode
	csrr t2, hpmcounter17 # read from hpmcounter17 in U-mode
	csrr t2, hpmcounter18 # read from hpmcounter18 in U-mode
	csrr t2, hpmcounter19 # read from hpmcounter19 in U-mode
	csrr t2, hpmcounter20 # read from hpmcounter20 in U-mode
	csrr t2, hpmcounter21 # read from hpmcounter21 in U-mode
	csrr t2, hpmcounter22 # read from hpmcounter22 in U-mode
	csrr t2, hpmcounter23 # read from hpmcounter23 in U-mode
	csrr t2, hpmcounter24 # read from hpmcounter24 in U-mode
	csrr t2, hpmcounter25 # read from hpmcounter25 in U-mode
	csrr t2, hpmcounter26 # read from hpmcounter26 in U-mode
	csrr t2, hpmcounter27 # read from hpmcounter27 in U-mode
	csrr t2, hpmcounter28 # read from hpmcounter28 in U-mode
	csrr t2, hpmcounter29 # read from hpmcounter29 in U-mode
	csrr t2, hpmcounter30 # read from hpmcounter30 in U-mode
	csrr t2, hpmcounter31 # read from hpmcounter31 in U-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1      # walk the 1 to the next bit
	bnez t0, 1b         # repeat until all bits are walked

// Walk a single 0 in both CSRs and read from counter/counterh in U-mode
	li t0, 1            # reset t0 to 1
	2: csrrs t6, scounteren, t1    # set all bits in first csr
	csrrs t6, mcounteren, t1    # set all bits in second csr
	csrrc t6, scounteren, t0    # clear walking 0 in first csr
	csrrc t6, mcounteren, t0    # clear walking 0 in second csr
	li a0, 0     # switch to U-mode
	ecall             # switch to U-mode
	csrr t2, cycle # read from cycle in U-mode
	csrr t2, time # read from time in U-mode
	csrr t2, instret # read from instret in U-mode
	csrr t2, hpmcounter3 # read from hpmcounter3 in U-mode
	csrr t2, hpmcounter4 # read from hpmcounter4 in U-mode
	csrr t2, hpmcounter5 # read from hpmcounter5 in U-mode
	csrr t2, hpmcounter6 # read from hpmcounter6 in U-mode
	csrr t2, hpmcounter7 # read from hpmcounter7 in U-mode
	csrr t2, hpmcounter8 # read from hpmcounter8 in U-mode
	csrr t2, hpmcounter9 # read from hpmcounter9 in U-mode
	csrr t2, hpmcounter10 # read from hpmcounter10 in U-mode
	csrr t2, hpmcounter11 # read from hpmcounter11 in U-mode
	csrr t2, hpmcounter12 # read from hpmcounter12 in U-mode
	csrr t2, hpmcounter13 # read from hpmcounter13 in U-mode
	csrr t2, hpmcounter14 # read from hpmcounter14 in U-mode
	csrr t2, hpmcounter15 # read from hpmcounter15 in U-mode
	csrr t2, hpmcounter16 # read from hpmcounter16 in U-mode
	csrr t2, hpmcounter17 # read from hpmcounter17 in U-mode
	csrr t2, hpmcounter18 # read from hpmcounter18 in U-mode
	csrr t2, hpmcounter19 # read from hpmcounter19 in U-mode
	csrr t2, hpmcounter20 # read from hpmcounter20 in U-mode
	csrr t2, hpmcounter21 # read from hpmcounter21 in U-mode
	csrr t2, hpmcounter22 # read from hpmcounter22 in U-mode
	csrr t2, hpmcounter23 # read from hpmcounter23 in U-mode
	csrr t2, hpmcounter24 # read from hpmcounter24 in U-mode
	csrr t2, hpmcounter25 # read from hpmcounter25 in U-mode
	csrr t2, hpmcounter26 # read from hpmcounter26 in U-mode
	csrr t2, hpmcounter27 # read from hpmcounter27 in U-mode
	csrr t2, hpmcounter28 # read from hpmcounter28 in U-mode
	csrr t2, hpmcounter29 # read from hpmcounter29 in U-mode
	csrr t2, hpmcounter30 # read from hpmcounter30 in U-mode
	csrr t2, hpmcounter31 # read from hpmcounter31 in U-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1      # walk the 0 to the next bit
	bnez t0, 2b         # repeat until all bits are walked

// Restore the original values of csrs
	csrrw t6, scounteren, s0    # restore first csr
	csrrw t6, mcounteren, s1    # restore second csr

#if __riscv_xlen == 32

// Save the original values of csrs
	csrr s0, scounteren 	# save scounteren
	csrr s1, mcounteren 	# save mcounteren
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb

// Walk a single 1 in both CSRs simultaneously
	1: csrrc t6, scounteren, t1    # clear all bits in first csr
	csrrc t6, mcounteren, t1    # clear all bits in second csr
	csrrs t6, scounteren, t0    # set walking 1 in first csr
	csrrs t6, mcounteren, t0    # set walking 1 in second csr
	li a0, 0     # switch to U-mode
	ecall             # switch to U-mode
	csrr t2, cycleh # read from cycleh in U-mode
	csrr t2, timeh # read from timeh in U-mode
	csrr t2, instreth # read from instreth in U-mode
	csrr t2, hpmcounter3h # read from hpmcounter3h in U-mode
	csrr t2, hpmcounter4h # read from hpmcounter4h in U-mode
	csrr t2, hpmcounter5h # read from hpmcounter5h in U-mode
	csrr t2, hpmcounter6h # read from hpmcounter6h in U-mode
	csrr t2, hpmcounter7h # read from hpmcounter7h in U-mode
	csrr t2, hpmcounter8h # read from hpmcounter8h in U-mode
	csrr t2, hpmcounter9h # read from hpmcounter9h in U-mode
	csrr t2, hpmcounter10h # read from hpmcounter10h in U-mode
	csrr t2, hpmcounter11h # read from hpmcounter11h in U-mode
	csrr t2, hpmcounter12h # read from hpmcounter12h in U-mode
	csrr t2, hpmcounter13h # read from hpmcounter13h in U-mode
	csrr t2, hpmcounter14h # read from hpmcounter14h in U-mode
	csrr t2, hpmcounter15h # read from hpmcounter15h in U-mode
	csrr t2, hpmcounter16h # read from hpmcounter16h in U-mode
	csrr t2, hpmcounter17h # read from hpmcounter17h in U-mode
	csrr t2, hpmcounter18h # read from hpmcounter18h in U-mode
	csrr t2, hpmcounter19h # read from hpmcounter19h in U-mode
	csrr t2, hpmcounter20h # read from hpmcounter20h in U-mode
	csrr t2, hpmcounter21h # read from hpmcounter21h in U-mode
	csrr t2, hpmcounter22h # read from hpmcounter22h in U-mode
	csrr t2, hpmcounter23h # read from hpmcounter23h in U-mode
	csrr t2, hpmcounter24h # read from hpmcounter24h in U-mode
	csrr t2, hpmcounter25h # read from hpmcounter25h in U-mode
	csrr t2, hpmcounter26h # read from hpmcounter26h in U-mode
	csrr t2, hpmcounter27h # read from hpmcounter27h in U-mode
	csrr t2, hpmcounter28h # read from hpmcounter28h in U-mode
	csrr t2, hpmcounter29h # read from hpmcounter29h in U-mode
	csrr t2, hpmcounter30h # read from hpmcounter30h in U-mode
	csrr t2, hpmcounter31h # read from hpmcounter31h in U-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1      # walk the 1 to the next bit
	bnez t0, 1b         # repeat until all bits are walked

// Walk a single 0 in both CSRs and read from counter/counterh in U-mode
	li t0, 1            # reset t0 to 1
	2: csrrs t6, scounteren, t1    # set all bits in first csr
	csrrs t6, mcounteren, t1    # set all bits in second csr
	csrrc t6, scounteren, t0    # clear walking 0 in first csr
	csrrc t6, mcounteren, t0    # clear walking 0 in second csr
	li a0, 0     # switch to U-mode
	ecall             # switch to U-mode
	csrr t2, cycleh # read from cycleh in U-mode
	csrr t2, timeh # read from timeh in U-mode
	csrr t2, instreth # read from instreth in U-mode
	csrr t2, hpmcounter3h # read from hpmcounter3h in U-mode
	csrr t2, hpmcounter4h # read from hpmcounter4h in U-mode
	csrr t2, hpmcounter5h # read from hpmcounter5h in U-mode
	csrr t2, hpmcounter6h # read from hpmcounter6h in U-mode
	csrr t2, hpmcounter7h # read from hpmcounter7h in U-mode
	csrr t2, hpmcounter8h # read from hpmcounter8h in U-mode
	csrr t2, hpmcounter9h # read from hpmcounter9h in U-mode
	csrr t2, hpmcounter10h # read from hpmcounter10h in U-mode
	csrr t2, hpmcounter11h # read from hpmcounter11h in U-mode
	csrr t2, hpmcounter12h # read from hpmcounter12h in U-mode
	csrr t2, hpmcounter13h # read from hpmcounter13h in U-mode
	csrr t2, hpmcounter14h # read from hpmcounter14h in U-mode
	csrr t2, hpmcounter15h # read from hpmcounter15h in U-mode
	csrr t2, hpmcounter16h # read from hpmcounter16h in U-mode
	csrr t2, hpmcounter17h # read from hpmcounter17h in U-mode
	csrr t2, hpmcounter18h # read from hpmcounter18h in U-mode
	csrr t2, hpmcounter19h # read from hpmcounter19h in U-mode
	csrr t2, hpmcounter20h # read from hpmcounter20h in U-mode
	csrr t2, hpmcounter21h # read from hpmcounter21h in U-mode
	csrr t2, hpmcounter22h # read from hpmcounter22h in U-mode
	csrr t2, hpmcounter23h # read from hpmcounter23h in U-mode
	csrr t2, hpmcounter24h # read from hpmcounter24h in U-mode
	csrr t2, hpmcounter25h # read from hpmcounter25h in U-mode
	csrr t2, hpmcounter26h # read from hpmcounter26h in U-mode
	csrr t2, hpmcounter27h # read from hpmcounter27h in U-mode
	csrr t2, hpmcounter28h # read from hpmcounter28h in U-mode
	csrr t2, hpmcounter29h # read from hpmcounter29h in U-mode
	csrr t2, hpmcounter30h # read from hpmcounter30h in U-mode
	csrr t2, hpmcounter31h # read from hpmcounter31h in U-mode
	li a0, 3
	ecall             # switch back to M-mode
	slli t0, t0, 1      # walk the 0 to the next bit
	bnez t0, 2b         # repeat until all bits are walked

// Restore the original values of csrs
	csrrw t6, scounteren, s0    # restore first csr
	csrrw t6, mcounteren, s1    # restore second csr
#endif
