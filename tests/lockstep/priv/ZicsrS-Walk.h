
// Testing walking zeros and ones for CSR sstatus
	csrr s0, sstatus	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, sstatus, t1    # clear all bits
	csrrs t6, sstatus, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, sstatus, t1    # set all bits
	csrrc t6, sstatus, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, sstatus, s0    # restore CSR

// Testing walking zeros and ones for CSR scause
	csrr s0, scause	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, scause, t1    # clear all bits
	csrrs t6, scause, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, scause, t1    # set all bits
	csrrc t6, scause, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, scause, s0    # restore CSR

// Testing walking zeros and ones for CSR sie
	csrr s0, sie	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, sie, t1    # clear all bits
	csrrs t6, sie, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, sie, t1    # set all bits
	csrrc t6, sie, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, sie, s0    # restore CSR

// Testing walking zeros and ones for CSR stvec
	csrr s0, stvec	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, stvec, t1    # clear all bits
	csrrs t6, stvec, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, stvec, t1    # set all bits
	csrrc t6, stvec, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, stvec, s0    # restore CSR

// Testing walking zeros and ones for CSR scounteren
	csrr s0, scounteren	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, scounteren, t1    # clear all bits
	csrrs t6, scounteren, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, scounteren, t1    # set all bits
	csrrc t6, scounteren, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, scounteren, s0    # restore CSR

// Testing walking zeros and ones for CSR senvcfg
	csrr s0, senvcfg	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, senvcfg, t1    # clear all bits
	csrrs t6, senvcfg, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, senvcfg, t1    # set all bits
	csrrc t6, senvcfg, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, senvcfg, s0    # restore CSR

// Testing walking zeros and ones for CSR sscratch
	csrr s0, sscratch	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, sscratch, t1    # clear all bits
	csrrs t6, sscratch, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, sscratch, t1    # set all bits
	csrrc t6, sscratch, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, sscratch, s0    # restore CSR

// Testing walking zeros and ones for CSR sepc
	csrr s0, sepc	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, sepc, t1    # clear all bits
	csrrs t6, sepc, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, sepc, t1    # set all bits
	csrrc t6, sepc, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, sepc, s0    # restore CSR

// Testing walking zeros and ones for CSR stval
	csrr s0, stval	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, stval, t1    # clear all bits
	csrrs t6, stval, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, stval, t1    # set all bits
	csrrc t6, stval, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, stval, s0    # restore CSR

// Testing walking zeros and ones for CSR sip
	csrr s0, sip	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, sip, t1    # clear all bits
	csrrs t6, sip, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, sip, t1    # set all bits
	csrrc t6, sip, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, sip, s0    # restore CSR

// Testing walking zeros and ones for CSR satp
	csrr s0, satp	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, satp, t1    # clear all bits
	csrrs t6, satp, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, satp, t1    # set all bits
	csrrc t6, satp, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, satp, s0    # restore CSR

// Testing walking zeros and ones for CSR 0x120
	csrr s0, 0x120	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, 0x120, t1    # clear all bits
	csrrs t6, 0x120, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, 0x120, t1    # set all bits
	csrrc t6, 0x120, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, 0x120, s0    # restore CSR

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
