
// Testing walking zeros and ones for CSR mcycle
	csrr s0, mcycle	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mcycle, t1    # clear all bits
	csrrs t6, mcycle, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mcycle, t1    # set all bits
	csrrc t6, mcycle, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mcycle, s0    # restore CSR

// Testing walking zeros and ones for CSR mcountinhibit
	csrr s0, mcountinhibit	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mcountinhibit, t1    # clear all bits
	csrrs t6, mcountinhibit, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mcountinhibit, t1    # set all bits
	csrrc t6, mcountinhibit, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mcountinhibit, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter3
	csrr s0, mhpmcounter3	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter3, t1    # clear all bits
	csrrs t6, mhpmcounter3, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter3, t1    # set all bits
	csrrc t6, mhpmcounter3, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter3, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter4
	csrr s0, mhpmcounter4	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter4, t1    # clear all bits
	csrrs t6, mhpmcounter4, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter4, t1    # set all bits
	csrrc t6, mhpmcounter4, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter4, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter5
	csrr s0, mhpmcounter5	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter5, t1    # clear all bits
	csrrs t6, mhpmcounter5, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter5, t1    # set all bits
	csrrc t6, mhpmcounter5, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter5, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter6
	csrr s0, mhpmcounter6	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter6, t1    # clear all bits
	csrrs t6, mhpmcounter6, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter6, t1    # set all bits
	csrrc t6, mhpmcounter6, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter6, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter7
	csrr s0, mhpmcounter7	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter7, t1    # clear all bits
	csrrs t6, mhpmcounter7, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter7, t1    # set all bits
	csrrc t6, mhpmcounter7, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter7, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter8
	csrr s0, mhpmcounter8	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter8, t1    # clear all bits
	csrrs t6, mhpmcounter8, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter8, t1    # set all bits
	csrrc t6, mhpmcounter8, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter8, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter9
	csrr s0, mhpmcounter9	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter9, t1    # clear all bits
	csrrs t6, mhpmcounter9, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter9, t1    # set all bits
	csrrc t6, mhpmcounter9, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter9, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter10
	csrr s0, mhpmcounter10	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter10, t1    # clear all bits
	csrrs t6, mhpmcounter10, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter10, t1    # set all bits
	csrrc t6, mhpmcounter10, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter10, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter11
	csrr s0, mhpmcounter11	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter11, t1    # clear all bits
	csrrs t6, mhpmcounter11, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter11, t1    # set all bits
	csrrc t6, mhpmcounter11, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter11, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter12
	csrr s0, mhpmcounter12	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter12, t1    # clear all bits
	csrrs t6, mhpmcounter12, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter12, t1    # set all bits
	csrrc t6, mhpmcounter12, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter12, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter13
	csrr s0, mhpmcounter13	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter13, t1    # clear all bits
	csrrs t6, mhpmcounter13, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter13, t1    # set all bits
	csrrc t6, mhpmcounter13, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter13, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter14
	csrr s0, mhpmcounter14	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter14, t1    # clear all bits
	csrrs t6, mhpmcounter14, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter14, t1    # set all bits
	csrrc t6, mhpmcounter14, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter14, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter15
	csrr s0, mhpmcounter15	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter15, t1    # clear all bits
	csrrs t6, mhpmcounter15, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter15, t1    # set all bits
	csrrc t6, mhpmcounter15, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter15, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter16
	csrr s0, mhpmcounter16	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter16, t1    # clear all bits
	csrrs t6, mhpmcounter16, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter16, t1    # set all bits
	csrrc t6, mhpmcounter16, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter16, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter17
	csrr s0, mhpmcounter17	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter17, t1    # clear all bits
	csrrs t6, mhpmcounter17, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter17, t1    # set all bits
	csrrc t6, mhpmcounter17, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter17, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter18
	csrr s0, mhpmcounter18	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter18, t1    # clear all bits
	csrrs t6, mhpmcounter18, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter18, t1    # set all bits
	csrrc t6, mhpmcounter18, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter18, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter19
	csrr s0, mhpmcounter19	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter19, t1    # clear all bits
	csrrs t6, mhpmcounter19, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter19, t1    # set all bits
	csrrc t6, mhpmcounter19, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter19, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter20
	csrr s0, mhpmcounter20	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter20, t1    # clear all bits
	csrrs t6, mhpmcounter20, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter20, t1    # set all bits
	csrrc t6, mhpmcounter20, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter20, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter21
	csrr s0, mhpmcounter21	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter21, t1    # clear all bits
	csrrs t6, mhpmcounter21, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter21, t1    # set all bits
	csrrc t6, mhpmcounter21, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter21, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter22
	csrr s0, mhpmcounter22	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter22, t1    # clear all bits
	csrrs t6, mhpmcounter22, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter22, t1    # set all bits
	csrrc t6, mhpmcounter22, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter22, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter23
	csrr s0, mhpmcounter23	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter23, t1    # clear all bits
	csrrs t6, mhpmcounter23, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter23, t1    # set all bits
	csrrc t6, mhpmcounter23, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter23, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter24
	csrr s0, mhpmcounter24	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter24, t1    # clear all bits
	csrrs t6, mhpmcounter24, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter24, t1    # set all bits
	csrrc t6, mhpmcounter24, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter24, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter25
	csrr s0, mhpmcounter25	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter25, t1    # clear all bits
	csrrs t6, mhpmcounter25, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter25, t1    # set all bits
	csrrc t6, mhpmcounter25, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter25, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter26
	csrr s0, mhpmcounter26	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter26, t1    # clear all bits
	csrrs t6, mhpmcounter26, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter26, t1    # set all bits
	csrrc t6, mhpmcounter26, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter26, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter27
	csrr s0, mhpmcounter27	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter27, t1    # clear all bits
	csrrs t6, mhpmcounter27, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter27, t1    # set all bits
	csrrc t6, mhpmcounter27, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter27, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter28
	csrr s0, mhpmcounter28	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter28, t1    # clear all bits
	csrrs t6, mhpmcounter28, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter28, t1    # set all bits
	csrrc t6, mhpmcounter28, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter28, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter29
	csrr s0, mhpmcounter29	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter29, t1    # clear all bits
	csrrs t6, mhpmcounter29, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter29, t1    # set all bits
	csrrc t6, mhpmcounter29, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter29, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter30
	csrr s0, mhpmcounter30	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter30, t1    # clear all bits
	csrrs t6, mhpmcounter30, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter30, t1    # set all bits
	csrrc t6, mhpmcounter30, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter30, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter31
	csrr s0, mhpmcounter31	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter31, t1    # clear all bits
	csrrs t6, mhpmcounter31, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter31, t1    # set all bits
	csrrc t6, mhpmcounter31, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter31, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent3
	csrr s0, mhpmevent3	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent3, t1    # clear all bits
	csrrs t6, mhpmevent3, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent3, t1    # set all bits
	csrrc t6, mhpmevent3, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent3, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent4
	csrr s0, mhpmevent4	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent4, t1    # clear all bits
	csrrs t6, mhpmevent4, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent4, t1    # set all bits
	csrrc t6, mhpmevent4, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent4, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent5
	csrr s0, mhpmevent5	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent5, t1    # clear all bits
	csrrs t6, mhpmevent5, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent5, t1    # set all bits
	csrrc t6, mhpmevent5, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent5, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent6
	csrr s0, mhpmevent6	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent6, t1    # clear all bits
	csrrs t6, mhpmevent6, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent6, t1    # set all bits
	csrrc t6, mhpmevent6, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent6, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent7
	csrr s0, mhpmevent7	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent7, t1    # clear all bits
	csrrs t6, mhpmevent7, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent7, t1    # set all bits
	csrrc t6, mhpmevent7, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent7, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent8
	csrr s0, mhpmevent8	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent8, t1    # clear all bits
	csrrs t6, mhpmevent8, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent8, t1    # set all bits
	csrrc t6, mhpmevent8, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent8, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent9
	csrr s0, mhpmevent9	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent9, t1    # clear all bits
	csrrs t6, mhpmevent9, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent9, t1    # set all bits
	csrrc t6, mhpmevent9, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent9, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent10
	csrr s0, mhpmevent10	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent10, t1    # clear all bits
	csrrs t6, mhpmevent10, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent10, t1    # set all bits
	csrrc t6, mhpmevent10, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent10, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent11
	csrr s0, mhpmevent11	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent11, t1    # clear all bits
	csrrs t6, mhpmevent11, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent11, t1    # set all bits
	csrrc t6, mhpmevent11, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent11, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent12
	csrr s0, mhpmevent12	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent12, t1    # clear all bits
	csrrs t6, mhpmevent12, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent12, t1    # set all bits
	csrrc t6, mhpmevent12, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent12, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent13
	csrr s0, mhpmevent13	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent13, t1    # clear all bits
	csrrs t6, mhpmevent13, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent13, t1    # set all bits
	csrrc t6, mhpmevent13, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent13, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent14
	csrr s0, mhpmevent14	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent14, t1    # clear all bits
	csrrs t6, mhpmevent14, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent14, t1    # set all bits
	csrrc t6, mhpmevent14, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent14, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent15
	csrr s0, mhpmevent15	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent15, t1    # clear all bits
	csrrs t6, mhpmevent15, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent15, t1    # set all bits
	csrrc t6, mhpmevent15, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent15, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent16
	csrr s0, mhpmevent16	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent16, t1    # clear all bits
	csrrs t6, mhpmevent16, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent16, t1    # set all bits
	csrrc t6, mhpmevent16, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent16, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent17
	csrr s0, mhpmevent17	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent17, t1    # clear all bits
	csrrs t6, mhpmevent17, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent17, t1    # set all bits
	csrrc t6, mhpmevent17, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent17, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent18
	csrr s0, mhpmevent18	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent18, t1    # clear all bits
	csrrs t6, mhpmevent18, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent18, t1    # set all bits
	csrrc t6, mhpmevent18, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent18, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent19
	csrr s0, mhpmevent19	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent19, t1    # clear all bits
	csrrs t6, mhpmevent19, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent19, t1    # set all bits
	csrrc t6, mhpmevent19, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent19, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent20
	csrr s0, mhpmevent20	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent20, t1    # clear all bits
	csrrs t6, mhpmevent20, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent20, t1    # set all bits
	csrrc t6, mhpmevent20, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent20, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent21
	csrr s0, mhpmevent21	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent21, t1    # clear all bits
	csrrs t6, mhpmevent21, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent21, t1    # set all bits
	csrrc t6, mhpmevent21, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent21, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent22
	csrr s0, mhpmevent22	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent22, t1    # clear all bits
	csrrs t6, mhpmevent22, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent22, t1    # set all bits
	csrrc t6, mhpmevent22, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent22, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent23
	csrr s0, mhpmevent23	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent23, t1    # clear all bits
	csrrs t6, mhpmevent23, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent23, t1    # set all bits
	csrrc t6, mhpmevent23, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent23, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent24
	csrr s0, mhpmevent24	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent24, t1    # clear all bits
	csrrs t6, mhpmevent24, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent24, t1    # set all bits
	csrrc t6, mhpmevent24, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent24, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent25
	csrr s0, mhpmevent25	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent25, t1    # clear all bits
	csrrs t6, mhpmevent25, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent25, t1    # set all bits
	csrrc t6, mhpmevent25, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent25, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent26
	csrr s0, mhpmevent26	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent26, t1    # clear all bits
	csrrs t6, mhpmevent26, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent26, t1    # set all bits
	csrrc t6, mhpmevent26, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent26, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent27
	csrr s0, mhpmevent27	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent27, t1    # clear all bits
	csrrs t6, mhpmevent27, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent27, t1    # set all bits
	csrrc t6, mhpmevent27, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent27, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent28
	csrr s0, mhpmevent28	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent28, t1    # clear all bits
	csrrs t6, mhpmevent28, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent28, t1    # set all bits
	csrrc t6, mhpmevent28, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent28, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent29
	csrr s0, mhpmevent29	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent29, t1    # clear all bits
	csrrs t6, mhpmevent29, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent29, t1    # set all bits
	csrrc t6, mhpmevent29, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent29, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent30
	csrr s0, mhpmevent30	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent30, t1    # clear all bits
	csrrs t6, mhpmevent30, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent30, t1    # set all bits
	csrrc t6, mhpmevent30, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent30, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent31
	csrr s0, mhpmevent31	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent31, t1    # clear all bits
	csrrs t6, mhpmevent31, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent31, t1    # set all bits
	csrrc t6, mhpmevent31, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent31, s0    # restore CSR

#if __riscv_xlen == 32

// Testing walking zeros and ones for CSR mcycleh
	csrr s0, mcycleh	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mcycleh, t1    # clear all bits
	csrrs t6, mcycleh, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mcycleh, t1    # set all bits
	csrrc t6, mcycleh, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mcycleh, s0    # restore CSR

// Testing walking zeros and ones for CSR minstreth
	csrr s0, minstreth	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, minstreth, t1    # clear all bits
	csrrs t6, minstreth, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, minstreth, t1    # set all bits
	csrrc t6, minstreth, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, minstreth, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter3h
	csrr s0, mhpmcounter3h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter3h, t1    # clear all bits
	csrrs t6, mhpmcounter3h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter3h, t1    # set all bits
	csrrc t6, mhpmcounter3h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter3h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter4h
	csrr s0, mhpmcounter4h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter4h, t1    # clear all bits
	csrrs t6, mhpmcounter4h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter4h, t1    # set all bits
	csrrc t6, mhpmcounter4h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter4h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter5h
	csrr s0, mhpmcounter5h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter5h, t1    # clear all bits
	csrrs t6, mhpmcounter5h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter5h, t1    # set all bits
	csrrc t6, mhpmcounter5h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter5h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter6h
	csrr s0, mhpmcounter6h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter6h, t1    # clear all bits
	csrrs t6, mhpmcounter6h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter6h, t1    # set all bits
	csrrc t6, mhpmcounter6h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter6h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter7h
	csrr s0, mhpmcounter7h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter7h, t1    # clear all bits
	csrrs t6, mhpmcounter7h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter7h, t1    # set all bits
	csrrc t6, mhpmcounter7h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter7h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter8h
	csrr s0, mhpmcounter8h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter8h, t1    # clear all bits
	csrrs t6, mhpmcounter8h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter8h, t1    # set all bits
	csrrc t6, mhpmcounter8h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter8h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter9h
	csrr s0, mhpmcounter9h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter9h, t1    # clear all bits
	csrrs t6, mhpmcounter9h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter9h, t1    # set all bits
	csrrc t6, mhpmcounter9h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter9h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter10h
	csrr s0, mhpmcounter10h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter10h, t1    # clear all bits
	csrrs t6, mhpmcounter10h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter10h, t1    # set all bits
	csrrc t6, mhpmcounter10h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter10h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter11h
	csrr s0, mhpmcounter11h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter11h, t1    # clear all bits
	csrrs t6, mhpmcounter11h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter11h, t1    # set all bits
	csrrc t6, mhpmcounter11h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter11h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter12h
	csrr s0, mhpmcounter12h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter12h, t1    # clear all bits
	csrrs t6, mhpmcounter12h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter12h, t1    # set all bits
	csrrc t6, mhpmcounter12h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter12h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter13h
	csrr s0, mhpmcounter13h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter13h, t1    # clear all bits
	csrrs t6, mhpmcounter13h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter13h, t1    # set all bits
	csrrc t6, mhpmcounter13h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter13h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter14h
	csrr s0, mhpmcounter14h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter14h, t1    # clear all bits
	csrrs t6, mhpmcounter14h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter14h, t1    # set all bits
	csrrc t6, mhpmcounter14h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter14h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter15h
	csrr s0, mhpmcounter15h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter15h, t1    # clear all bits
	csrrs t6, mhpmcounter15h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter15h, t1    # set all bits
	csrrc t6, mhpmcounter15h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter15h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter16h
	csrr s0, mhpmcounter16h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter16h, t1    # clear all bits
	csrrs t6, mhpmcounter16h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter16h, t1    # set all bits
	csrrc t6, mhpmcounter16h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter16h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter17h
	csrr s0, mhpmcounter17h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter17h, t1    # clear all bits
	csrrs t6, mhpmcounter17h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter17h, t1    # set all bits
	csrrc t6, mhpmcounter17h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter17h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter18h
	csrr s0, mhpmcounter18h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter18h, t1    # clear all bits
	csrrs t6, mhpmcounter18h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter18h, t1    # set all bits
	csrrc t6, mhpmcounter18h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter18h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter19h
	csrr s0, mhpmcounter19h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter19h, t1    # clear all bits
	csrrs t6, mhpmcounter19h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter19h, t1    # set all bits
	csrrc t6, mhpmcounter19h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter19h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter20h
	csrr s0, mhpmcounter20h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter20h, t1    # clear all bits
	csrrs t6, mhpmcounter20h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter20h, t1    # set all bits
	csrrc t6, mhpmcounter20h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter20h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter21h
	csrr s0, mhpmcounter21h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter21h, t1    # clear all bits
	csrrs t6, mhpmcounter21h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter21h, t1    # set all bits
	csrrc t6, mhpmcounter21h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter21h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter22h
	csrr s0, mhpmcounter22h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter22h, t1    # clear all bits
	csrrs t6, mhpmcounter22h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter22h, t1    # set all bits
	csrrc t6, mhpmcounter22h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter22h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter23h
	csrr s0, mhpmcounter23h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter23h, t1    # clear all bits
	csrrs t6, mhpmcounter23h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter23h, t1    # set all bits
	csrrc t6, mhpmcounter23h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter23h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter24h
	csrr s0, mhpmcounter24h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter24h, t1    # clear all bits
	csrrs t6, mhpmcounter24h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter24h, t1    # set all bits
	csrrc t6, mhpmcounter24h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter24h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter25h
	csrr s0, mhpmcounter25h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter25h, t1    # clear all bits
	csrrs t6, mhpmcounter25h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter25h, t1    # set all bits
	csrrc t6, mhpmcounter25h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter25h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter26h
	csrr s0, mhpmcounter26h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter26h, t1    # clear all bits
	csrrs t6, mhpmcounter26h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter26h, t1    # set all bits
	csrrc t6, mhpmcounter26h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter26h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter27h
	csrr s0, mhpmcounter27h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter27h, t1    # clear all bits
	csrrs t6, mhpmcounter27h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter27h, t1    # set all bits
	csrrc t6, mhpmcounter27h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter27h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter28h
	csrr s0, mhpmcounter28h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter28h, t1    # clear all bits
	csrrs t6, mhpmcounter28h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter28h, t1    # set all bits
	csrrc t6, mhpmcounter28h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter28h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter29h
	csrr s0, mhpmcounter29h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter29h, t1    # clear all bits
	csrrs t6, mhpmcounter29h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter29h, t1    # set all bits
	csrrc t6, mhpmcounter29h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter29h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter30h
	csrr s0, mhpmcounter30h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter30h, t1    # clear all bits
	csrrs t6, mhpmcounter30h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter30h, t1    # set all bits
	csrrc t6, mhpmcounter30h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter30h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmcounter31h
	csrr s0, mhpmcounter31h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmcounter31h, t1    # clear all bits
	csrrs t6, mhpmcounter31h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmcounter31h, t1    # set all bits
	csrrc t6, mhpmcounter31h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmcounter31h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent3h
	csrr s0, mhpmevent3h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent3h, t1    # clear all bits
	csrrs t6, mhpmevent3h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent3h, t1    # set all bits
	csrrc t6, mhpmevent3h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent3h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent4h
	csrr s0, mhpmevent4h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent4h, t1    # clear all bits
	csrrs t6, mhpmevent4h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent4h, t1    # set all bits
	csrrc t6, mhpmevent4h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent4h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent5h
	csrr s0, mhpmevent5h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent5h, t1    # clear all bits
	csrrs t6, mhpmevent5h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent5h, t1    # set all bits
	csrrc t6, mhpmevent5h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent5h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent6h
	csrr s0, mhpmevent6h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent6h, t1    # clear all bits
	csrrs t6, mhpmevent6h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent6h, t1    # set all bits
	csrrc t6, mhpmevent6h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent6h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent7h
	csrr s0, mhpmevent7h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent7h, t1    # clear all bits
	csrrs t6, mhpmevent7h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent7h, t1    # set all bits
	csrrc t6, mhpmevent7h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent7h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent8h
	csrr s0, mhpmevent8h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent8h, t1    # clear all bits
	csrrs t6, mhpmevent8h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent8h, t1    # set all bits
	csrrc t6, mhpmevent8h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent8h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent9h
	csrr s0, mhpmevent9h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent9h, t1    # clear all bits
	csrrs t6, mhpmevent9h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent9h, t1    # set all bits
	csrrc t6, mhpmevent9h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent9h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent10h
	csrr s0, mhpmevent10h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent10h, t1    # clear all bits
	csrrs t6, mhpmevent10h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent10h, t1    # set all bits
	csrrc t6, mhpmevent10h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent10h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent11h
	csrr s0, mhpmevent11h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent11h, t1    # clear all bits
	csrrs t6, mhpmevent11h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent11h, t1    # set all bits
	csrrc t6, mhpmevent11h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent11h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent12h
	csrr s0, mhpmevent12h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent12h, t1    # clear all bits
	csrrs t6, mhpmevent12h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent12h, t1    # set all bits
	csrrc t6, mhpmevent12h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent12h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent13h
	csrr s0, mhpmevent13h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent13h, t1    # clear all bits
	csrrs t6, mhpmevent13h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent13h, t1    # set all bits
	csrrc t6, mhpmevent13h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent13h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent14h
	csrr s0, mhpmevent14h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent14h, t1    # clear all bits
	csrrs t6, mhpmevent14h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent14h, t1    # set all bits
	csrrc t6, mhpmevent14h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent14h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent15h
	csrr s0, mhpmevent15h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent15h, t1    # clear all bits
	csrrs t6, mhpmevent15h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent15h, t1    # set all bits
	csrrc t6, mhpmevent15h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent15h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent16h
	csrr s0, mhpmevent16h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent16h, t1    # clear all bits
	csrrs t6, mhpmevent16h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent16h, t1    # set all bits
	csrrc t6, mhpmevent16h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent16h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent17h
	csrr s0, mhpmevent17h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent17h, t1    # clear all bits
	csrrs t6, mhpmevent17h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent17h, t1    # set all bits
	csrrc t6, mhpmevent17h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent17h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent18h
	csrr s0, mhpmevent18h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent18h, t1    # clear all bits
	csrrs t6, mhpmevent18h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent18h, t1    # set all bits
	csrrc t6, mhpmevent18h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent18h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent19h
	csrr s0, mhpmevent19h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent19h, t1    # clear all bits
	csrrs t6, mhpmevent19h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent19h, t1    # set all bits
	csrrc t6, mhpmevent19h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent19h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent20h
	csrr s0, mhpmevent20h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent20h, t1    # clear all bits
	csrrs t6, mhpmevent20h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent20h, t1    # set all bits
	csrrc t6, mhpmevent20h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent20h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent21h
	csrr s0, mhpmevent21h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent21h, t1    # clear all bits
	csrrs t6, mhpmevent21h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent21h, t1    # set all bits
	csrrc t6, mhpmevent21h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent21h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent22h
	csrr s0, mhpmevent22h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent22h, t1    # clear all bits
	csrrs t6, mhpmevent22h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent22h, t1    # set all bits
	csrrc t6, mhpmevent22h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent22h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent23h
	csrr s0, mhpmevent23h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent23h, t1    # clear all bits
	csrrs t6, mhpmevent23h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent23h, t1    # set all bits
	csrrc t6, mhpmevent23h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent23h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent24h
	csrr s0, mhpmevent24h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent24h, t1    # clear all bits
	csrrs t6, mhpmevent24h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent24h, t1    # set all bits
	csrrc t6, mhpmevent24h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent24h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent25h
	csrr s0, mhpmevent25h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent25h, t1    # clear all bits
	csrrs t6, mhpmevent25h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent25h, t1    # set all bits
	csrrc t6, mhpmevent25h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent25h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent26h
	csrr s0, mhpmevent26h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent26h, t1    # clear all bits
	csrrs t6, mhpmevent26h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent26h, t1    # set all bits
	csrrc t6, mhpmevent26h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent26h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent27h
	csrr s0, mhpmevent27h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent27h, t1    # clear all bits
	csrrs t6, mhpmevent27h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent27h, t1    # set all bits
	csrrc t6, mhpmevent27h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent27h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent28h
	csrr s0, mhpmevent28h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent28h, t1    # clear all bits
	csrrs t6, mhpmevent28h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent28h, t1    # set all bits
	csrrc t6, mhpmevent28h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent28h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent29h
	csrr s0, mhpmevent29h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent29h, t1    # clear all bits
	csrrs t6, mhpmevent29h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent29h, t1    # set all bits
	csrrc t6, mhpmevent29h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent29h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent30h
	csrr s0, mhpmevent30h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent30h, t1    # clear all bits
	csrrs t6, mhpmevent30h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent30h, t1    # set all bits
	csrrc t6, mhpmevent30h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent30h, s0    # restore CSR

// Testing walking zeros and ones for CSR mhpmevent31h
	csrr s0, mhpmevent31h	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mhpmevent31h, t1    # clear all bits
	csrrs t6, mhpmevent31h, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mhpmevent31h, t1    # set all bits
	csrrc t6, mhpmevent31h, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mhpmevent31h, s0    # restore CSR
#endif
