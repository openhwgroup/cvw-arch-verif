#include "WALLY-init-lib.h"
# Vector Add .S

main:

    li t0, 0x00000600
    li t2, 0
    csrrs t1, mstatus, t0

    csrw vcsr, t2

    vsetvli t0, x0, e8, m1, ta, ma


    la t0, addvals         # Load addr addvals into t0
    addi t1, t0, 64        # T1 = addr of v2
    vl1r.v v1, (t0)       # Load v1
    vl1r.v v2, (t1)       # Load v2

    vadd.vv v3, v1, v2    # Vector addition: v3 = v1 + v2

    vs1r.v v3, (t0)       # Store result back in memory


.data
.align 8
addvals:
    .dword 1, 2, 3, 4, 5, 6, 7, 8   #v1
    .dword 10, 20, 30, 40, 50, 60, 70, 80  #v2


finished:
    j done