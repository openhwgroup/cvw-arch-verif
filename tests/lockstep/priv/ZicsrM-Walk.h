
// Testing walking zeros and ones for CSR mstatus
	csrr s0, mstatus	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mstatus, t1    # clear all bits
	csrrs t6, mstatus, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mstatus, t1    # set all bits
	csrrc t6, mstatus, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mstatus, s0    # restore CSR

// Testing walking zeros and ones for CSR mcause
	csrr s0, mcause	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mcause, t1    # clear all bits
	csrrs t6, mcause, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mcause, t1    # set all bits
	csrrc t6, mcause, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mcause, s0    # restore CSR

// Testing walking zeros and ones for CSR misa
	csrr s0, misa	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, misa, t1    # clear all bits
	csrrs t6, misa, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, misa, t1    # set all bits
	csrrc t6, misa, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, misa, s0    # restore CSR

// Testing walking zeros and ones for CSR medeleg
	csrr s0, medeleg	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, medeleg, t1    # clear all bits
	csrrs t6, medeleg, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, medeleg, t1    # set all bits
	csrrc t6, medeleg, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, medeleg, s0    # restore CSR

// Testing walking zeros and ones for CSR mideleg
	csrr s0, mideleg	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mideleg, t1    # clear all bits
	csrrs t6, mideleg, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mideleg, t1    # set all bits
	csrrc t6, mideleg, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mideleg, s0    # restore CSR

// Testing walking zeros and ones for CSR mie
	csrr s0, mie	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mie, t1    # clear all bits
	csrrs t6, mie, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mie, t1    # set all bits
	csrrc t6, mie, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mie, s0    # restore CSR

// Testing walking zeros and ones for CSR mtvec
	csrr s0, mtvec	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mtvec, t1    # clear all bits
	csrrs t6, mtvec, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mtvec, t1    # set all bits
	csrrc t6, mtvec, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mtvec, s0    # restore CSR

// Testing walking zeros and ones for CSR mcounteren
	csrr s0, mcounteren	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mcounteren, t1    # clear all bits
	csrrs t6, mcounteren, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mcounteren, t1    # set all bits
	csrrc t6, mcounteren, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mcounteren, s0    # restore CSR

// Testing walking zeros and ones for CSR mscratch
	csrr s0, mscratch	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mscratch, t1    # clear all bits
	csrrs t6, mscratch, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mscratch, t1    # set all bits
	csrrc t6, mscratch, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mscratch, s0    # restore CSR

// Testing walking zeros and ones for CSR mepc
	csrr s0, mepc	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mepc, t1    # clear all bits
	csrrs t6, mepc, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mepc, t1    # set all bits
	csrrc t6, mepc, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mepc, s0    # restore CSR

// Testing walking zeros and ones for CSR mtval
	csrr s0, mtval	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mtval, t1    # clear all bits
	csrrs t6, mtval, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mtval, t1    # set all bits
	csrrc t6, mtval, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mtval, s0    # restore CSR

// Testing walking zeros and ones for CSR mip
	csrr s0, mip	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mip, t1    # clear all bits
	csrrs t6, mip, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mip, t1    # set all bits
	csrrc t6, mip, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mip, s0    # restore CSR

// Testing walking zeros and ones for CSR menvcfg
	csrr s0, menvcfg	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, menvcfg, t1    # clear all bits
	csrrs t6, menvcfg, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, menvcfg, t1    # set all bits
	csrrc t6, menvcfg, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, menvcfg, s0    # restore CSR

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

// Testing walking zeros and ones for CSR mstatush
	csrr s0, mstatush	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mstatush, t1    # clear all bits
	csrrs t6, mstatush, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mstatush, t1    # set all bits
	csrrc t6, mstatush, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mstatush, s0    # restore CSR

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

// Testing walking zeros and ones for CSR mseccfg
	csrr s0, mseccfg	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mseccfg, t1    # clear all bits
	csrrs t6, mseccfg, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mseccfg, t1    # set all bits
	csrrc t6, mseccfg, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mseccfg, s0    # restore CSR

// Testing walking zeros and ones for CSR mseccfgh
	csrr s0, mseccfgh	# save CSR
	li t1, -1           # all 1s
	li t0, 1            # 1 in lsb
	1: csrrc t6, mseccfgh, t1    # clear all bits
	csrrs t6, mseccfgh, t0    # set walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	li t0, 1            # 1 in lsb
1:  csrrs t6, mseccfgh, t1    # set all bits
	csrrc t6, mseccfgh, t0    # clear walking 1
	slli t0, t0, 1      # walk the 1
	bnez t0, 1b         # repeat until all bits are walked
	csrrw t6, mseccfgh, s0    # restore CSR

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
