# fence.i.S
# custom tests for fence.i

# cp_custom_fencei

    li t2, 0        # running total
    jal selfmodify  # should increment t2 to 1
    la t0, selfmodify
    la t1, adds          # t1 = address of the replacement instruction
    lw t1, 0(t1)          # t2 = encoded instruction "addi t2, t2, 5"
    sw t1, 0(t0)    # store it at selfmodify
    fence.i         # synchronize self-modified code so addi uses 5 rather than 1
    jal selfmodify  # try new behavior.  Should increment t2 to 6, not 2
    j around

selfmodify:
    addi t2, t2, 1  # original code
    RVTEST_SIGUPD(SIGPOINTER, t2)
    ret
adds:
    addi t2, t2, 5  # borrow this as new code

around:
