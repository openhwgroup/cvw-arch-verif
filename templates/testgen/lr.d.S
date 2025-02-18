# lr.w.S
# custom tests for load reserved

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0x123456789ABCDEF0
    sd t2, 0(t0)
    lr.d t1, (t0)
    lr.d.aq t2, (t0)
    lr.d.aqrl t3, (t0)

   

