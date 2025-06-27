# lhu.S
# test all halfword-aligned operations
la t0, scratch
li t1, 0x9ABCDEF0
li t2, 0x12345678
sw t1, 0(t0)  // Initialize memory
sw t2, 4(t0)

#cp_align_hword: imm[2:1]=00
lhu t3, 0(t0)
RVTEST_SIGUPD(SIGPOINTER, t3)

#cp_align_hword: imm[2:1]=01
lhu t3, 2(t0)
RVTEST_SIGUPD(SIGPOINTER, t3)

#cp_align_hword: imm[2:1]=10
lhu t3, 4(t0)
RVTEST_SIGUPD(SIGPOINTER, t3)

#cp_align_hword: imm[2:1]=11
lhu t3, 6(t0)
RVTEST_SIGUPD(SIGPOINTER, t3)
