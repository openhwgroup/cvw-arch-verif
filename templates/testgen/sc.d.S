# sc.S
# custom tests for store conditional

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0x123456789ABCDEF0
    sc.d t1, t2, (t0)
    sc.d.rl t1, t2, (t0)
    sc.d.aqrl t1, t2, (t0)

# cp_custom_sc_lrsc
    li t3, 0x2345678998765432
    li t4, 0x3456789ABCDEF012
    li t5, 0x456789ABCDEF0123

    # should succeed
    lr.d t1, (t0)
    sc.d t2, t3, (t0)

    # should succeed
    lr.w t1, (t0)
    sc.d t2, t4, (t0)

    # should succeed
    lr.d t1, (t0)
    sc.w t2, t5, (t0)

    # should fail because of intervening sc
    lr.d t1, (t0)
    sc.d t2, t3, (t0) # succeeds
    sc.d t5, t4, (t0) # fails

# cp_custom_sc_address
    # loop over distances of 0 to 120 from lr to sc address
    li t6, 0        # initialize offset to 0
1:
    add t5, t0, t6      # scratch address + offset
    lr.d t1, (t0)       # load from reservation set
    sc.d t5, t3, (t5)   # try store conditional, should succeed if in same set
    sc.d t5, t3, (t5)   # try again, and it should fail this time
    addi t6, t6, 8      # increment offset
    slti t5, t6, 129    # offset <= 128
    bnez t5, 1b         # repeat until done

# cp_custom_sc_after_store
    # should not care about intervening stores
    lr.d t1, (t0)
    sb t3, 3(t0)      # store byte
    sc.d t5, t4, (t0) # succeeds

    lr.d t1, (t0)
    sh t3, 2(t0)      # store half
    sc.d t5, t4, (t0) # succeeds

    lr.d t1, (t0)
    sw t3, 4(t0)      # store word
    sc.d t5, t4, (t0) # succeeds

    lr.d t1, (t0)
    sd t3, 0(t0)      # store double
    sc.d t5, t4, (t0) # succeeds
