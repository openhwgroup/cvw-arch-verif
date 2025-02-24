// Additional tests to (unsuccessfully) write PMP from S and U mode; running these in M mode mucks up the PMP and hangs the DUT

// Testing CSR 0x3a0
	csrr x16, 0x3a0	// Read CSR
	li x3, -1
	csrrw x7, 0x3a0, x3	// Write all 1s to CSR
	csrrw x7, 0x3a0, x0	// Write all 0s to CSR
	csrrs x7, 0x3a0, x3	// Set all CSR bits
	csrrc x7, 0x3a0, x3	// Clear all CSR bits
	csrrw x7, 0x3a0, x16	// Restore CSR

// Testing CSR 0x3a1
	csrr x16, 0x3a1	// Read CSR
	li x12, -1
	csrrw x24, 0x3a1, x12	// Write all 1s to CSR
	csrrw x24, 0x3a1, x0	// Write all 0s to CSR
	csrrs x24, 0x3a1, x12	// Set all CSR bits
	csrrc x24, 0x3a1, x12	// Clear all CSR bits
	csrrw x24, 0x3a1, x16	// Restore CSR

// Testing CSR 0x3a2
	csrr x20, 0x3a2	// Read CSR
	li x14, -1
	csrrw x9, 0x3a2, x14	// Write all 1s to CSR
	csrrw x9, 0x3a2, x0	// Write all 0s to CSR
	csrrs x9, 0x3a2, x14	// Set all CSR bits
	csrrc x9, 0x3a2, x14	// Clear all CSR bits
	csrrw x9, 0x3a2, x20	// Restore CSR

// Testing CSR 0x3a3
	csrr x6, 0x3a3	// Read CSR
	li x24, -1
	csrrw x31, 0x3a3, x24	// Write all 1s to CSR
	csrrw x31, 0x3a3, x0	// Write all 0s to CSR
	csrrs x31, 0x3a3, x24	// Set all CSR bits
	csrrc x31, 0x3a3, x24	// Clear all CSR bits
	csrrw x31, 0x3a3, x6	// Restore CSR

// Testing CSR 0x3a4
	csrr x1, 0x3a4	// Read CSR
	li x30, -1
	csrrw x28, 0x3a4, x30	// Write all 1s to CSR
	csrrw x28, 0x3a4, x0	// Write all 0s to CSR
	csrrs x28, 0x3a4, x30	// Set all CSR bits
	csrrc x28, 0x3a4, x30	// Clear all CSR bits
	csrrw x28, 0x3a4, x1	// Restore CSR

// Testing CSR 0x3a5
	csrr x28, 0x3a5	// Read CSR
	li x21, -1
	csrrw x16, 0x3a5, x21	// Write all 1s to CSR
	csrrw x16, 0x3a5, x0	// Write all 0s to CSR
	csrrs x16, 0x3a5, x21	// Set all CSR bits
	csrrc x16, 0x3a5, x21	// Clear all CSR bits
	csrrw x16, 0x3a5, x28	// Restore CSR

// Testing CSR 0x3a6
	csrr x9, 0x3a6	// Read CSR
	li x2, -1
	csrrw x3, 0x3a6, x2	// Write all 1s to CSR
	csrrw x3, 0x3a6, x0	// Write all 0s to CSR
	csrrs x3, 0x3a6, x2	// Set all CSR bits
	csrrc x3, 0x3a6, x2	// Clear all CSR bits
	csrrw x3, 0x3a6, x9	// Restore CSR

// Testing CSR 0x3a7
	csrr x20, 0x3a7	// Read CSR
	li x21, -1
	csrrw x24, 0x3a7, x21	// Write all 1s to CSR
	csrrw x24, 0x3a7, x0	// Write all 0s to CSR
	csrrs x24, 0x3a7, x21	// Set all CSR bits
	csrrc x24, 0x3a7, x21	// Clear all CSR bits
	csrrw x24, 0x3a7, x20	// Restore CSR

// Testing CSR 0x3a8
	csrr x2, 0x3a8	// Read CSR
	li x26, -1
	csrrw x12, 0x3a8, x26	// Write all 1s to CSR
	csrrw x12, 0x3a8, x0	// Write all 0s to CSR
	csrrs x12, 0x3a8, x26	// Set all CSR bits
	csrrc x12, 0x3a8, x26	// Clear all CSR bits
	csrrw x12, 0x3a8, x2	// Restore CSR

// Testing CSR 0x3a9
	csrr x27, 0x3a9	// Read CSR
	li x18, -1
	csrrw x30, 0x3a9, x18	// Write all 1s to CSR
	csrrw x30, 0x3a9, x0	// Write all 0s to CSR
	csrrs x30, 0x3a9, x18	// Set all CSR bits
	csrrc x30, 0x3a9, x18	// Clear all CSR bits
	csrrw x30, 0x3a9, x27	// Restore CSR

// Testing CSR 0x3aa
	csrr x16, 0x3aa	// Read CSR
	li x28, -1
	csrrw x14, 0x3aa, x28	// Write all 1s to CSR
	csrrw x14, 0x3aa, x0	// Write all 0s to CSR
	csrrs x14, 0x3aa, x28	// Set all CSR bits
	csrrc x14, 0x3aa, x28	// Clear all CSR bits
	csrrw x14, 0x3aa, x16	// Restore CSR

// Testing CSR 0x3ab
	csrr x27, 0x3ab	// Read CSR
	li x30, -1
	csrrw x19, 0x3ab, x30	// Write all 1s to CSR
	csrrw x19, 0x3ab, x0	// Write all 0s to CSR
	csrrs x19, 0x3ab, x30	// Set all CSR bits
	csrrc x19, 0x3ab, x30	// Clear all CSR bits
	csrrw x19, 0x3ab, x27	// Restore CSR

// Testing CSR 0x3ac
	csrr x29, 0x3ac	// Read CSR
	li x21, -1
	csrrw x16, 0x3ac, x21	// Write all 1s to CSR
	csrrw x16, 0x3ac, x0	// Write all 0s to CSR
	csrrs x16, 0x3ac, x21	// Set all CSR bits
	csrrc x16, 0x3ac, x21	// Clear all CSR bits
	csrrw x16, 0x3ac, x29	// Restore CSR

// Testing CSR 0x3ad
	csrr x25, 0x3ad	// Read CSR
	li x4, -1
	csrrw x7, 0x3ad, x4	// Write all 1s to CSR
	csrrw x7, 0x3ad, x0	// Write all 0s to CSR
	csrrs x7, 0x3ad, x4	// Set all CSR bits
	csrrc x7, 0x3ad, x4	// Clear all CSR bits
	csrrw x7, 0x3ad, x25	// Restore CSR

// Testing CSR 0x3ae
	csrr x28, 0x3ae	// Read CSR
	li x22, -1
	csrrw x2, 0x3ae, x22	// Write all 1s to CSR
	csrrw x2, 0x3ae, x0	// Write all 0s to CSR
	csrrs x2, 0x3ae, x22	// Set all CSR bits
	csrrc x2, 0x3ae, x22	// Clear all CSR bits
	csrrw x2, 0x3ae, x28	// Restore CSR

// Testing CSR 0x3af
	csrr x12, 0x3af	// Read CSR
	li x13, -1
	csrrw x29, 0x3af, x13	// Write all 1s to CSR
	csrrw x29, 0x3af, x0	// Write all 0s to CSR
	csrrs x29, 0x3af, x13	// Set all CSR bits
	csrrc x29, 0x3af, x13	// Clear all CSR bits
	csrrw x29, 0x3af, x12	// Restore CSR

// Testing CSR 0x3b0
	csrr x9, 0x3b0	// Read CSR
	li x12, -1
	csrrw x17, 0x3b0, x12	// Write all 1s to CSR
	csrrw x17, 0x3b0, x0	// Write all 0s to CSR
	csrrs x17, 0x3b0, x12	// Set all CSR bits
	csrrc x17, 0x3b0, x12	// Clear all CSR bits
	csrrw x17, 0x3b0, x9	// Restore CSR

// Testing CSR 0x3b1
	csrr x20, 0x3b1	// Read CSR
	li x11, -1
	csrrw x27, 0x3b1, x11	// Write all 1s to CSR
	csrrw x27, 0x3b1, x0	// Write all 0s to CSR
	csrrs x27, 0x3b1, x11	// Set all CSR bits
	csrrc x27, 0x3b1, x11	// Clear all CSR bits
	csrrw x27, 0x3b1, x20	// Restore CSR

// Testing CSR 0x3b2
	csrr x5, 0x3b2	// Read CSR
	li x11, -1
	csrrw x4, 0x3b2, x11	// Write all 1s to CSR
	csrrw x4, 0x3b2, x0	// Write all 0s to CSR
	csrrs x4, 0x3b2, x11	// Set all CSR bits
	csrrc x4, 0x3b2, x11	// Clear all CSR bits
	csrrw x4, 0x3b2, x5	// Restore CSR

// Testing CSR 0x3b3
	csrr x24, 0x3b3	// Read CSR
	li x12, -1
	csrrw x3, 0x3b3, x12	// Write all 1s to CSR
	csrrw x3, 0x3b3, x0	// Write all 0s to CSR
	csrrs x3, 0x3b3, x12	// Set all CSR bits
	csrrc x3, 0x3b3, x12	// Clear all CSR bits
	csrrw x3, 0x3b3, x24	// Restore CSR

// Testing CSR 0x3b4
	csrr x9, 0x3b4	// Read CSR
	li x30, -1
	csrrw x12, 0x3b4, x30	// Write all 1s to CSR
	csrrw x12, 0x3b4, x0	// Write all 0s to CSR
	csrrs x12, 0x3b4, x30	// Set all CSR bits
	csrrc x12, 0x3b4, x30	// Clear all CSR bits
	csrrw x12, 0x3b4, x9	// Restore CSR

// Testing CSR 0x3b5
	csrr x13, 0x3b5	// Read CSR
	li x4, -1
	csrrw x28, 0x3b5, x4	// Write all 1s to CSR
	csrrw x28, 0x3b5, x0	// Write all 0s to CSR
	csrrs x28, 0x3b5, x4	// Set all CSR bits
	csrrc x28, 0x3b5, x4	// Clear all CSR bits
	csrrw x28, 0x3b5, x13	// Restore CSR

// Testing CSR 0x3b6
	csrr x11, 0x3b6	// Read CSR
	li x19, -1
	csrrw x5, 0x3b6, x19	// Write all 1s to CSR
	csrrw x5, 0x3b6, x0	// Write all 0s to CSR
	csrrs x5, 0x3b6, x19	// Set all CSR bits
	csrrc x5, 0x3b6, x19	// Clear all CSR bits
	csrrw x5, 0x3b6, x11	// Restore CSR

// Testing CSR 0x3b7
	csrr x27, 0x3b7	// Read CSR
	li x13, -1
	csrrw x17, 0x3b7, x13	// Write all 1s to CSR
	csrrw x17, 0x3b7, x0	// Write all 0s to CSR
	csrrs x17, 0x3b7, x13	// Set all CSR bits
	csrrc x17, 0x3b7, x13	// Clear all CSR bits
	csrrw x17, 0x3b7, x27	// Restore CSR

// Testing CSR 0x3b8
	csrr x10, 0x3b8	// Read CSR
	li x30, -1
	csrrw x31, 0x3b8, x30	// Write all 1s to CSR
	csrrw x31, 0x3b8, x0	// Write all 0s to CSR
	csrrs x31, 0x3b8, x30	// Set all CSR bits
	csrrc x31, 0x3b8, x30	// Clear all CSR bits
	csrrw x31, 0x3b8, x10	// Restore CSR

// Testing CSR 0x3b9
	csrr x9, 0x3b9	// Read CSR
	li x12, -1
	csrrw x29, 0x3b9, x12	// Write all 1s to CSR
	csrrw x29, 0x3b9, x0	// Write all 0s to CSR
	csrrs x29, 0x3b9, x12	// Set all CSR bits
	csrrc x29, 0x3b9, x12	// Clear all CSR bits
	csrrw x29, 0x3b9, x9	// Restore CSR

// Testing CSR 0x3ba
	csrr x6, 0x3ba	// Read CSR
	li x19, -1
	csrrw x2, 0x3ba, x19	// Write all 1s to CSR
	csrrw x2, 0x3ba, x0	// Write all 0s to CSR
	csrrs x2, 0x3ba, x19	// Set all CSR bits
	csrrc x2, 0x3ba, x19	// Clear all CSR bits
	csrrw x2, 0x3ba, x6	// Restore CSR

// Testing CSR 0x3bb
	csrr x4, 0x3bb	// Read CSR
	li x7, -1
	csrrw x16, 0x3bb, x7	// Write all 1s to CSR
	csrrw x16, 0x3bb, x0	// Write all 0s to CSR
	csrrs x16, 0x3bb, x7	// Set all CSR bits
	csrrc x16, 0x3bb, x7	// Clear all CSR bits
	csrrw x16, 0x3bb, x4	// Restore CSR

// Testing CSR 0x3bc
	csrr x3, 0x3bc	// Read CSR
	li x11, -1
	csrrw x28, 0x3bc, x11	// Write all 1s to CSR
	csrrw x28, 0x3bc, x0	// Write all 0s to CSR
	csrrs x28, 0x3bc, x11	// Set all CSR bits
	csrrc x28, 0x3bc, x11	// Clear all CSR bits
	csrrw x28, 0x3bc, x3	// Restore CSR

// Testing CSR 0x3bd
	csrr x8, 0x3bd	// Read CSR
	li x9, -1
	csrrw x26, 0x3bd, x9	// Write all 1s to CSR
	csrrw x26, 0x3bd, x0	// Write all 0s to CSR
	csrrs x26, 0x3bd, x9	// Set all CSR bits
	csrrc x26, 0x3bd, x9	// Clear all CSR bits
	csrrw x26, 0x3bd, x8	// Restore CSR

// Testing CSR 0x3be
	csrr x15, 0x3be	// Read CSR
	li x6, -1
	csrrw x14, 0x3be, x6	// Write all 1s to CSR
	csrrw x14, 0x3be, x0	// Write all 0s to CSR
	csrrs x14, 0x3be, x6	// Set all CSR bits
	csrrc x14, 0x3be, x6	// Clear all CSR bits
	csrrw x14, 0x3be, x15	// Restore CSR

// Testing CSR 0x3bf
	csrr x21, 0x3bf	// Read CSR
	li x7, -1
	csrrw x18, 0x3bf, x7	// Write all 1s to CSR
	csrrw x18, 0x3bf, x0	// Write all 0s to CSR
	csrrs x18, 0x3bf, x7	// Set all CSR bits
	csrrc x18, 0x3bf, x7	// Clear all CSR bits
	csrrw x18, 0x3bf, x21	// Restore CSR

// Testing CSR 0x3c0
	csrr x17, 0x3c0	// Read CSR
	li x18, -1
	csrrw x15, 0x3c0, x18	// Write all 1s to CSR
	csrrw x15, 0x3c0, x0	// Write all 0s to CSR
	csrrs x15, 0x3c0, x18	// Set all CSR bits
	csrrc x15, 0x3c0, x18	// Clear all CSR bits
	csrrw x15, 0x3c0, x17	// Restore CSR

// Testing CSR 0x3c1
	csrr x6, 0x3c1	// Read CSR
	li x16, -1
	csrrw x23, 0x3c1, x16	// Write all 1s to CSR
	csrrw x23, 0x3c1, x0	// Write all 0s to CSR
	csrrs x23, 0x3c1, x16	// Set all CSR bits
	csrrc x23, 0x3c1, x16	// Clear all CSR bits
	csrrw x23, 0x3c1, x6	// Restore CSR

// Testing CSR 0x3c2
	csrr x5, 0x3c2	// Read CSR
	li x16, -1
	csrrw x18, 0x3c2, x16	// Write all 1s to CSR
	csrrw x18, 0x3c2, x0	// Write all 0s to CSR
	csrrs x18, 0x3c2, x16	// Set all CSR bits
	csrrc x18, 0x3c2, x16	// Clear all CSR bits
	csrrw x18, 0x3c2, x5	// Restore CSR

// Testing CSR 0x3c3
	csrr x24, 0x3c3	// Read CSR
	li x30, -1
	csrrw x12, 0x3c3, x30	// Write all 1s to CSR
	csrrw x12, 0x3c3, x0	// Write all 0s to CSR
	csrrs x12, 0x3c3, x30	// Set all CSR bits
	csrrc x12, 0x3c3, x30	// Clear all CSR bits
	csrrw x12, 0x3c3, x24	// Restore CSR

// Testing CSR 0x3c4
	csrr x22, 0x3c4	// Read CSR
	li x20, -1
	csrrw x17, 0x3c4, x20	// Write all 1s to CSR
	csrrw x17, 0x3c4, x0	// Write all 0s to CSR
	csrrs x17, 0x3c4, x20	// Set all CSR bits
	csrrc x17, 0x3c4, x20	// Clear all CSR bits
	csrrw x17, 0x3c4, x22	// Restore CSR

// Testing CSR 0x3c5
	csrr x25, 0x3c5	// Read CSR
	li x23, -1
	csrrw x2, 0x3c5, x23	// Write all 1s to CSR
	csrrw x2, 0x3c5, x0	// Write all 0s to CSR
	csrrs x2, 0x3c5, x23	// Set all CSR bits
	csrrc x2, 0x3c5, x23	// Clear all CSR bits
	csrrw x2, 0x3c5, x25	// Restore CSR

// Testing CSR 0x3c6
	csrr x7, 0x3c6	// Read CSR
	li x6, -1
	csrrw x3, 0x3c6, x6	// Write all 1s to CSR
	csrrw x3, 0x3c6, x0	// Write all 0s to CSR
	csrrs x3, 0x3c6, x6	// Set all CSR bits
	csrrc x3, 0x3c6, x6	// Clear all CSR bits
	csrrw x3, 0x3c6, x7	// Restore CSR

// Testing CSR 0x3c7
	csrr x23, 0x3c7	// Read CSR
	li x27, -1
	csrrw x11, 0x3c7, x27	// Write all 1s to CSR
	csrrw x11, 0x3c7, x0	// Write all 0s to CSR
	csrrs x11, 0x3c7, x27	// Set all CSR bits
	csrrc x11, 0x3c7, x27	// Clear all CSR bits
	csrrw x11, 0x3c7, x23	// Restore CSR

// Testing CSR 0x3c8
	csrr x13, 0x3c8	// Read CSR
	li x16, -1
	csrrw x20, 0x3c8, x16	// Write all 1s to CSR
	csrrw x20, 0x3c8, x0	// Write all 0s to CSR
	csrrs x20, 0x3c8, x16	// Set all CSR bits
	csrrc x20, 0x3c8, x16	// Clear all CSR bits
	csrrw x20, 0x3c8, x13	// Restore CSR

// Testing CSR 0x3c9
	csrr x17, 0x3c9	// Read CSR
	li x13, -1
	csrrw x2, 0x3c9, x13	// Write all 1s to CSR
	csrrw x2, 0x3c9, x0	// Write all 0s to CSR
	csrrs x2, 0x3c9, x13	// Set all CSR bits
	csrrc x2, 0x3c9, x13	// Clear all CSR bits
	csrrw x2, 0x3c9, x17	// Restore CSR

// Testing CSR 0x3ca
	csrr x19, 0x3ca	// Read CSR
	li x30, -1
	csrrw x11, 0x3ca, x30	// Write all 1s to CSR
	csrrw x11, 0x3ca, x0	// Write all 0s to CSR
	csrrs x11, 0x3ca, x30	// Set all CSR bits
	csrrc x11, 0x3ca, x30	// Clear all CSR bits
	csrrw x11, 0x3ca, x19	// Restore CSR

// Testing CSR 0x3cb
	csrr x5, 0x3cb	// Read CSR
	li x6, -1
	csrrw x9, 0x3cb, x6	// Write all 1s to CSR
	csrrw x9, 0x3cb, x0	// Write all 0s to CSR
	csrrs x9, 0x3cb, x6	// Set all CSR bits
	csrrc x9, 0x3cb, x6	// Clear all CSR bits
	csrrw x9, 0x3cb, x5	// Restore CSR

// Testing CSR 0x3cc
	csrr x21, 0x3cc	// Read CSR
	li x23, -1
	csrrw x6, 0x3cc, x23	// Write all 1s to CSR
	csrrw x6, 0x3cc, x0	// Write all 0s to CSR
	csrrs x6, 0x3cc, x23	// Set all CSR bits
	csrrc x6, 0x3cc, x23	// Clear all CSR bits
	csrrw x6, 0x3cc, x21	// Restore CSR

// Testing CSR 0x3cd
	csrr x19, 0x3cd	// Read CSR
	li x6, -1
	csrrw x28, 0x3cd, x6	// Write all 1s to CSR
	csrrw x28, 0x3cd, x0	// Write all 0s to CSR
	csrrs x28, 0x3cd, x6	// Set all CSR bits
	csrrc x28, 0x3cd, x6	// Clear all CSR bits
	csrrw x28, 0x3cd, x19	// Restore CSR

// Testing CSR 0x3ce
	csrr x15, 0x3ce	// Read CSR
	li x25, -1
	csrrw x27, 0x3ce, x25	// Write all 1s to CSR
	csrrw x27, 0x3ce, x0	// Write all 0s to CSR
	csrrs x27, 0x3ce, x25	// Set all CSR bits
	csrrc x27, 0x3ce, x25	// Clear all CSR bits
	csrrw x27, 0x3ce, x15	// Restore CSR

// Testing CSR 0x3cf
	csrr x4, 0x3cf	// Read CSR
	li x20, -1
	csrrw x24, 0x3cf, x20	// Write all 1s to CSR
	csrrw x24, 0x3cf, x0	// Write all 0s to CSR
	csrrs x24, 0x3cf, x20	// Set all CSR bits
	csrrc x24, 0x3cf, x20	// Clear all CSR bits
	csrrw x24, 0x3cf, x4	// Restore CSR

// Testing CSR 0x3d0
	csrr x12, 0x3d0	// Read CSR
	li x27, -1
	csrrw x20, 0x3d0, x27	// Write all 1s to CSR
	csrrw x20, 0x3d0, x0	// Write all 0s to CSR
	csrrs x20, 0x3d0, x27	// Set all CSR bits
	csrrc x20, 0x3d0, x27	// Clear all CSR bits
	csrrw x20, 0x3d0, x12	// Restore CSR

// Testing CSR 0x3d1
	csrr x27, 0x3d1	// Read CSR
	li x29, -1
	csrrw x20, 0x3d1, x29	// Write all 1s to CSR
	csrrw x20, 0x3d1, x0	// Write all 0s to CSR
	csrrs x20, 0x3d1, x29	// Set all CSR bits
	csrrc x20, 0x3d1, x29	// Clear all CSR bits
	csrrw x20, 0x3d1, x27	// Restore CSR

// Testing CSR 0x3d2
	csrr x8, 0x3d2	// Read CSR
	li x18, -1
	csrrw x21, 0x3d2, x18	// Write all 1s to CSR
	csrrw x21, 0x3d2, x0	// Write all 0s to CSR
	csrrs x21, 0x3d2, x18	// Set all CSR bits
	csrrc x21, 0x3d2, x18	// Clear all CSR bits
	csrrw x21, 0x3d2, x8	// Restore CSR

// Testing CSR 0x3d3
	csrr x20, 0x3d3	// Read CSR
	li x13, -1
	csrrw x11, 0x3d3, x13	// Write all 1s to CSR
	csrrw x11, 0x3d3, x0	// Write all 0s to CSR
	csrrs x11, 0x3d3, x13	// Set all CSR bits
	csrrc x11, 0x3d3, x13	// Clear all CSR bits
	csrrw x11, 0x3d3, x20	// Restore CSR

// Testing CSR 0x3d4
	csrr x5, 0x3d4	// Read CSR
	li x19, -1
	csrrw x17, 0x3d4, x19	// Write all 1s to CSR
	csrrw x17, 0x3d4, x0	// Write all 0s to CSR
	csrrs x17, 0x3d4, x19	// Set all CSR bits
	csrrc x17, 0x3d4, x19	// Clear all CSR bits
	csrrw x17, 0x3d4, x5	// Restore CSR

// Testing CSR 0x3d5
	csrr x26, 0x3d5	// Read CSR
	li x20, -1
	csrrw x15, 0x3d5, x20	// Write all 1s to CSR
	csrrw x15, 0x3d5, x0	// Write all 0s to CSR
	csrrs x15, 0x3d5, x20	// Set all CSR bits
	csrrc x15, 0x3d5, x20	// Clear all CSR bits
	csrrw x15, 0x3d5, x26	// Restore CSR

// Testing CSR 0x3d6
	csrr x17, 0x3d6	// Read CSR
	li x4, -1
	csrrw x13, 0x3d6, x4	// Write all 1s to CSR
	csrrw x13, 0x3d6, x0	// Write all 0s to CSR
	csrrs x13, 0x3d6, x4	// Set all CSR bits
	csrrc x13, 0x3d6, x4	// Clear all CSR bits
	csrrw x13, 0x3d6, x17	// Restore CSR

// Testing CSR 0x3d7
	csrr x27, 0x3d7	// Read CSR
	li x13, -1
	csrrw x10, 0x3d7, x13	// Write all 1s to CSR
	csrrw x10, 0x3d7, x0	// Write all 0s to CSR
	csrrs x10, 0x3d7, x13	// Set all CSR bits
	csrrc x10, 0x3d7, x13	// Clear all CSR bits
	csrrw x10, 0x3d7, x27	// Restore CSR

// Testing CSR 0x3d8
	csrr x11, 0x3d8	// Read CSR
	li x15, -1
	csrrw x19, 0x3d8, x15	// Write all 1s to CSR
	csrrw x19, 0x3d8, x0	// Write all 0s to CSR
	csrrs x19, 0x3d8, x15	// Set all CSR bits
	csrrc x19, 0x3d8, x15	// Clear all CSR bits
	csrrw x19, 0x3d8, x11	// Restore CSR

// Testing CSR 0x3d9
	csrr x22, 0x3d9	// Read CSR
	li x28, -1
	csrrw x26, 0x3d9, x28	// Write all 1s to CSR
	csrrw x26, 0x3d9, x0	// Write all 0s to CSR
	csrrs x26, 0x3d9, x28	// Set all CSR bits
	csrrc x26, 0x3d9, x28	// Clear all CSR bits
	csrrw x26, 0x3d9, x22	// Restore CSR

// Testing CSR 0x3da
	csrr x21, 0x3da	// Read CSR
	li x11, -1
	csrrw x13, 0x3da, x11	// Write all 1s to CSR
	csrrw x13, 0x3da, x0	// Write all 0s to CSR
	csrrs x13, 0x3da, x11	// Set all CSR bits
	csrrc x13, 0x3da, x11	// Clear all CSR bits
	csrrw x13, 0x3da, x21	// Restore CSR

// Testing CSR 0x3db
	csrr x15, 0x3db	// Read CSR
	li x4, -1
	csrrw x28, 0x3db, x4	// Write all 1s to CSR
	csrrw x28, 0x3db, x0	// Write all 0s to CSR
	csrrs x28, 0x3db, x4	// Set all CSR bits
	csrrc x28, 0x3db, x4	// Clear all CSR bits
	csrrw x28, 0x3db, x15	// Restore CSR

// Testing CSR 0x3dc
	csrr x31, 0x3dc	// Read CSR
	li x5, -1
	csrrw x16, 0x3dc, x5	// Write all 1s to CSR
	csrrw x16, 0x3dc, x0	// Write all 0s to CSR
	csrrs x16, 0x3dc, x5	// Set all CSR bits
	csrrc x16, 0x3dc, x5	// Clear all CSR bits
	csrrw x16, 0x3dc, x31	// Restore CSR

// Testing CSR 0x3dd
	csrr x16, 0x3dd	// Read CSR
	li x15, -1
	csrrw x6, 0x3dd, x15	// Write all 1s to CSR
	csrrw x6, 0x3dd, x0	// Write all 0s to CSR
	csrrs x6, 0x3dd, x15	// Set all CSR bits
	csrrc x6, 0x3dd, x15	// Clear all CSR bits
	csrrw x6, 0x3dd, x16	// Restore CSR

// Testing CSR 0x3de
	csrr x25, 0x3de	// Read CSR
	li x7, -1
	csrrw x24, 0x3de, x7	// Write all 1s to CSR
	csrrw x24, 0x3de, x0	// Write all 0s to CSR
	csrrs x24, 0x3de, x7	// Set all CSR bits
	csrrc x24, 0x3de, x7	// Clear all CSR bits
	csrrw x24, 0x3de, x25	// Restore CSR

// Testing CSR 0x3df
	csrr x6, 0x3df	// Read CSR
	li x23, -1
	csrrw x4, 0x3df, x23	// Write all 1s to CSR
	csrrw x4, 0x3df, x0	// Write all 0s to CSR
	csrrs x4, 0x3df, x23	// Set all CSR bits
	csrrc x4, 0x3df, x23	// Clear all CSR bits
	csrrw x4, 0x3df, x6	// Restore CSR

// Testing CSR 0x3e0
	csrr x21, 0x3e0	// Read CSR
	li x27, -1
	csrrw x23, 0x3e0, x27	// Write all 1s to CSR
	csrrw x23, 0x3e0, x0	// Write all 0s to CSR
	csrrs x23, 0x3e0, x27	// Set all CSR bits
	csrrc x23, 0x3e0, x27	// Clear all CSR bits
	csrrw x23, 0x3e0, x21	// Restore CSR

// Testing CSR 0x3e1
	csrr x21, 0x3e1	// Read CSR
	li x12, -1
	csrrw x5, 0x3e1, x12	// Write all 1s to CSR
	csrrw x5, 0x3e1, x0	// Write all 0s to CSR
	csrrs x5, 0x3e1, x12	// Set all CSR bits
	csrrc x5, 0x3e1, x12	// Clear all CSR bits
	csrrw x5, 0x3e1, x21	// Restore CSR

// Testing CSR 0x3e2
	csrr x26, 0x3e2	// Read CSR
	li x27, -1
	csrrw x19, 0x3e2, x27	// Write all 1s to CSR
	csrrw x19, 0x3e2, x0	// Write all 0s to CSR
	csrrs x19, 0x3e2, x27	// Set all CSR bits
	csrrc x19, 0x3e2, x27	// Clear all CSR bits
	csrrw x19, 0x3e2, x26	// Restore CSR

// Testing CSR 0x3e3
	csrr x17, 0x3e3	// Read CSR
	li x6, -1
	csrrw x19, 0x3e3, x6	// Write all 1s to CSR
	csrrw x19, 0x3e3, x0	// Write all 0s to CSR
	csrrs x19, 0x3e3, x6	// Set all CSR bits
	csrrc x19, 0x3e3, x6	// Clear all CSR bits
	csrrw x19, 0x3e3, x17	// Restore CSR

// Testing CSR 0x3e4
	csrr x21, 0x3e4	// Read CSR
	li x18, -1
	csrrw x15, 0x3e4, x18	// Write all 1s to CSR
	csrrw x15, 0x3e4, x0	// Write all 0s to CSR
	csrrs x15, 0x3e4, x18	// Set all CSR bits
	csrrc x15, 0x3e4, x18	// Clear all CSR bits
	csrrw x15, 0x3e4, x21	// Restore CSR

// Testing CSR 0x3e5
	csrr x8, 0x3e5	// Read CSR
	li x14, -1
	csrrw x18, 0x3e5, x14	// Write all 1s to CSR
	csrrw x18, 0x3e5, x0	// Write all 0s to CSR
	csrrs x18, 0x3e5, x14	// Set all CSR bits
	csrrc x18, 0x3e5, x14	// Clear all CSR bits
	csrrw x18, 0x3e5, x8	// Restore CSR

// Testing CSR 0x3e6
	csrr x16, 0x3e6	// Read CSR
	li x21, -1
	csrrw x29, 0x3e6, x21	// Write all 1s to CSR
	csrrw x29, 0x3e6, x0	// Write all 0s to CSR
	csrrs x29, 0x3e6, x21	// Set all CSR bits
	csrrc x29, 0x3e6, x21	// Clear all CSR bits
	csrrw x29, 0x3e6, x16	// Restore CSR

// Testing CSR 0x3e7
	csrr x6, 0x3e7	// Read CSR
	li x31, -1
	csrrw x2, 0x3e7, x31	// Write all 1s to CSR
	csrrw x2, 0x3e7, x0	// Write all 0s to CSR
	csrrs x2, 0x3e7, x31	// Set all CSR bits
	csrrc x2, 0x3e7, x31	// Clear all CSR bits
	csrrw x2, 0x3e7, x6	// Restore CSR

// Testing CSR 0x3e8
	csrr x20, 0x3e8	// Read CSR
	li x17, -1
	csrrw x9, 0x3e8, x17	// Write all 1s to CSR
	csrrw x9, 0x3e8, x0	// Write all 0s to CSR
	csrrs x9, 0x3e8, x17	// Set all CSR bits
	csrrc x9, 0x3e8, x17	// Clear all CSR bits
	csrrw x9, 0x3e8, x20	// Restore CSR

// Testing CSR 0x3e9
	csrr x10, 0x3e9	// Read CSR
	li x17, -1
	csrrw x4, 0x3e9, x17	// Write all 1s to CSR
	csrrw x4, 0x3e9, x0	// Write all 0s to CSR
	csrrs x4, 0x3e9, x17	// Set all CSR bits
	csrrc x4, 0x3e9, x17	// Clear all CSR bits
	csrrw x4, 0x3e9, x10	// Restore CSR

// Testing CSR 0x3ea
	csrr x26, 0x3ea	// Read CSR
	li x1, -1
	csrrw x16, 0x3ea, x1	// Write all 1s to CSR
	csrrw x16, 0x3ea, x0	// Write all 0s to CSR
	csrrs x16, 0x3ea, x1	// Set all CSR bits
	csrrc x16, 0x3ea, x1	// Clear all CSR bits
	csrrw x16, 0x3ea, x26	// Restore CSR

// Testing CSR 0x3eb
	csrr x9, 0x3eb	// Read CSR
	li x14, -1
	csrrw x2, 0x3eb, x14	// Write all 1s to CSR
	csrrw x2, 0x3eb, x0	// Write all 0s to CSR
	csrrs x2, 0x3eb, x14	// Set all CSR bits
	csrrc x2, 0x3eb, x14	// Clear all CSR bits
	csrrw x2, 0x3eb, x9	// Restore CSR

// Testing CSR 0x3ec
	csrr x29, 0x3ec	// Read CSR
	li x23, -1
	csrrw x9, 0x3ec, x23	// Write all 1s to CSR
	csrrw x9, 0x3ec, x0	// Write all 0s to CSR
	csrrs x9, 0x3ec, x23	// Set all CSR bits
	csrrc x9, 0x3ec, x23	// Clear all CSR bits
	csrrw x9, 0x3ec, x29	// Restore CSR

// Testing CSR 0x3ed
	csrr x16, 0x3ed	// Read CSR
	li x2, -1
	csrrw x27, 0x3ed, x2	// Write all 1s to CSR
	csrrw x27, 0x3ed, x0	// Write all 0s to CSR
	csrrs x27, 0x3ed, x2	// Set all CSR bits
	csrrc x27, 0x3ed, x2	// Clear all CSR bits
	csrrw x27, 0x3ed, x16	// Restore CSR

// Testing CSR 0x3ee
	csrr x18, 0x3ee	// Read CSR
	li x27, -1
	csrrw x31, 0x3ee, x27	// Write all 1s to CSR
	csrrw x31, 0x3ee, x0	// Write all 0s to CSR
	csrrs x31, 0x3ee, x27	// Set all CSR bits
	csrrc x31, 0x3ee, x27	// Clear all CSR bits
	csrrw x31, 0x3ee, x18	// Restore CSR

// Testing CSR 0x3ef
	csrr x16, 0x3ef	// Read CSR
	li x25, -1
	csrrw x19, 0x3ef, x25	// Write all 1s to CSR
	csrrw x19, 0x3ef, x0	// Write all 0s to CSR
	csrrs x19, 0x3ef, x25	// Set all CSR bits
	csrrc x19, 0x3ef, x25	// Clear all CSR bits
	csrrw x19, 0x3ef, x16	// Restore CSR
