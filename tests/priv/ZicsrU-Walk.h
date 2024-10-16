
// Testing walking zeros and ones for CSR fflags
	csrr s0, fflags	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, fflags, t1    # clear all bits
	csrrs t6, fflags, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, fflags, t1    # set all bits
	csrrc t6, fflags, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, fflags, s0    # restore CSR

// Testing walking zeros and ones for CSR frm
	csrr s0, frm	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, frm, t1    # clear all bits
	csrrs t6, frm, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, frm, t1    # set all bits
	csrrc t6, frm, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, frm, s0    # restore CSR

// Testing walking zeros and ones for CSR fcsr
	csrr s0, fcsr	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, fcsr, t1    # clear all bits
	csrrs t6, fcsr, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, fcsr, t1    # set all bits
	csrrc t6, fcsr, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, fcsr, s0    # restore CSR
