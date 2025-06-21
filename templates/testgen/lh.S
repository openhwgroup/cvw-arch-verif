# lh.S
# test all halfword-aligned operations
la t0, scratch
li t1, 0x9ABCDEF0
li t2, 0x12345678
sw t1, 0(t0)  // Initialize memory
sw t2, 4(t0)

#cp_align_hword: imm[2:1]=00
lh t1, 0(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)


#cp_align_hword: imm[2:1]=01
lh t1, 2(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

#cp_align_hword: imm[2:1]=10
lh t1, 4(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)

#cp_align_hword: imm[2:1]=11
lh t1, 6(t0)
RVTEST_SIGUPD(SIGPOINTER, t1)
