# fence.i.S
# custom tests for fence.i

# cp_custom_fencei

    li t2, 0        # running total
    jal selfmodify  # should increment t2 to 1
    la t0, selfmodify
    lw t1, 8(t0)    # load the addi t2, t2, 5 statement
    sw t1, 0(t0)    # store it at selfmodify
    fence.i         # synchronize self-modified code so j done is replaced with ret
    jal selfmodify  # try new behavior.  Should increment t2 to 6, not 2
    j around

selfmodify:
    addi t2, t2, 1  # original code
    ret
    addi t2, t2, 5  # borrow this as new code

around:
