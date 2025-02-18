# lr.w.S
# custom tests for load reserved

# cp_custom_aqrl 
# test acquire and release modifiers
    la t0, scratch
    li t2, 0x12345678
    sw t2, 0(t0)
    lr.w t1, (t0)
    lr.w.aq t2, (t0)
    lr.w.aqrl t3, (t0)

   

