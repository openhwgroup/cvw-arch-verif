
self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.data 

.align 4
signature:
    // ***dh it would be nice to write the proper number of words here based on the size of the signature, but use 8 for starter
    .fill 8*(__riscv_xlen/32),4,0xdeadbeef
.end
