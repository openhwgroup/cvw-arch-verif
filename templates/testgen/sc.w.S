# sc.S
# custom tests for store conditional

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0xF2345678
    sc.w t1, t2, (t0)
    sc.w.rl t1, t2, (t0)
    sc.w.aqrl t1, t2, (t0)

# cp_custom_sc_lrsc
    li t3, 0x23456789
    li t4, 0x3456789A

    # should succeed
    lr.w t1, (t0)
    sc.w t2, t3, (t0)

    # should fail because of intervening sc
    lr.w t1, (t0)
    sc.w t2, t3, (t0) # succeeds
    sc.w t5, t4, (t0) # fails

# cp_custom_sc_address
    # loop over distances of 0 to 120 from lr to sc address
    li t6, 0        # initialize offset to 0
1:
    add t5, t0, t6      # scratch address + offset
    lr.w t1, (t0)       # load from reservation set
    sc.w t5, t3, (t5)   # try store conditional, should succeed if in same set
    sc.w t5, t3, (t5)   # try again, and it should fail this time
    addi t6, t6, 4      # increment offset
    slti t5, t6, 129    # offset <= 128
    bnez t5, 1b         # repeat until done

# cp_custom_sc_after_store
    # should not care about intervening stores
    lr.w t1, (t0)
    sb t3, 3(t0)      # store byte
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    sh t3, 2(t0)      # store half
    sc.w t5, t4, (t0) # succeeds

    lr.w t1, (t0)
    sw t3, 0(t0)      # store word
    sc.w t5, t4, (t0) # succeeds

