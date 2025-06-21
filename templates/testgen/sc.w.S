# sc.w.S
# custom tests for store conditional

# cp_custom_aqrl
# test acquire and release modifiers
    la t0, scratch
    li t2, 0xF2345678
    sc.w t1, t2, (t0)
    RVTEST_SIGUPD(SIGPOINTER, t1)
    sc.w.rl t1, t2, (t0)
    RVTEST_SIGUPD(SIGPOINTER, t1)
    sc.w.aqrl t1, t2, (t0)
    RVTEST_SIGUPD(SIGPOINTER, t1)

   // SIG_POINTER_INCREMENT(16) # number - (space in bytes for words). Always add after completing a region of memory offsets.

# cp_custom_sc_lrsc
    li t3, 0x23456789
    li t4, 0x3456789A

    # should succeed
    lr.w t1, (t0)
    sc.w t2, t3, (t0)
    RVTEST_SIGUPD(SIGPOINTER, t2)

    # should fail because of intervening sc
    lr.w t1, (t0)
    sc.w t2, t3, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t2)
    sc.w t5, t4, (t0) # fails
    RVTEST_SIGUPD(SIGPOINTER, t5)

# cp_custom_sc_addresses
    # loop over distances of 0 to 120 from lr to sc address
    li t6, 0        # initialize offset to 0
1:
    add t5, t0, t6      # scratch address + offset
    lr.w t1, (t0)       # load from reservation set
    sc.w t1, t3, (t5)   # try store conditional, should succeed if in same set
    RVTEST_SIGUPD(SIGPOINTER, t1)
    sc.w t1, t3, (t5)   # try again, and it should fail this time
    RVTEST_SIGUPD(SIGPOINTER, t1)

    # for RV64, also check different size lr vs. sc
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.d t1, (t0)
            sc.w t1, t3, (t5)
            RVTEST_SIGUPD(SIGPOINTER, t1)
         #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

    addi t6, t6, 4      # increment offset
    slti t5, t6, 129    # offset <= 128
    bnez t5, 1b         # repeat until done

# cp_custom_sc_after_store
    # should not care about intervening stores
    lr.w t1, (t0)
    sb t3, 3(t0)      # store byte
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    sh t3, 2(t0)      # store half
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    sw t3, 0(t0)      # store word
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            sd t3, 0(t0)      # store double
            sc.w t5, t4, (t0) # succeeds
            RVTEST_SIGUPD(SIGPOINTER, t5)
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif

# cp_custom_sc_after_load
    # should not care about intervening loads

    lr.w t1, (t0)
    lb t3, 3(t0)      # load byte
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lb t3, 128(t0)      # load byte
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lbu t3, 2(t0)      # load byte unsigned
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lbu t3, 128(t0)      # load byte unsigned
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    //SIG_POINTER_INCREMENT(16) # number - (space in bytes for words). Always add after completing a region of memory offsets.

    lr.w t1, (t0)
    lh t3, 2(t0)      # load half
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lh t3, 128(t0)      # load half
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lhu t3, 0(t0)      # load half unsigned
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lhu t3, 128(t0)      # load half unsigned
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lw t3, 0(t0)      # load word
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    lr.w t1, (t0)
    lw t3, 128(t0)      # load word
    sc.w t5, t4, (t0) # succeeds
    RVTEST_SIGUPD(SIGPOINTER, t5)

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.w t1, (t0)
            lwu t3, 0(t0)      # load word unsigned
            sc.w t5, t4, (t0) # succeeds
            RVTEST_SIGUPD(SIGPOINTER, t5)

            lr.w t1, (t0)
            lwu t3, 128(t0)      # load word unsigned
            sc.w t5, t4, (t0) # succeeds
            RVTEST_SIGUPD(SIGPOINTER, t5)

            lr.w t1, (t0)
            ld t3, 0(t0)      # load double
            sc.w t5, t4, (t0) # succeeds
            RVTEST_SIGUPD(SIGPOINTER, t5)

            lr.w t1, (t0)
            ld t3, 128(t0)      # load double
            sc.w t5, t4, (t0) # succeeds
            RVTEST_SIGUPD(SIGPOINTER, t5)

        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
