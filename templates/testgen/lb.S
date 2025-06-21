# lb.S
# test all 8 byte alignments
la t0, scratch
li t1, 0x9ABCDEF0
li t2, 0x12345678
sw t1, 0(t0)  // Initialize memory
sw t2, 4(t0)

# cp_align_byte: imm[2:0]=000
lb t1, 0(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

# cp_align_byte: imm[2:0]=001
lb t1, 1(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

# cp_align_byte: imm[2:0]=010
lb t1, 2(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

# cp_align_byte: imm[2:0]=011
lb t1, 3(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

# cp_align_byte: imm[2:0]=100
lb t1, 4(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

# cp_align_byte: imm[2:0]=101
lb t1, 5(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

# cp_align_byte: imm[2:0]=110
lb t1, 6(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

# cp_align_byte: imm[2:0]=111
lb t1, 7(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)
